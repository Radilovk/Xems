#!/usr/bin/env python3
"""Pack extracted original APK contents into an installable APK (no apktool)."""

import os
import sys
import zipfile
from pathlib import Path

STORED_SUFFIXES = (".dex", ".arsc")
STORED_NAMES = {"AndroidManifest.xml", "resources.arsc"}


def should_store(name: str) -> bool:
    if name in STORED_NAMES:
        return True
    return name.endswith(STORED_SUFFIXES)


def pack_tree(source_dir: Path, output_apk: Path) -> None:
    files = []
    for root, _dirs, filenames in os.walk(source_dir):
        for filename in filenames:
            if filename.startswith("."):
                continue
            full = Path(root) / filename
            rel = full.relative_to(source_dir).as_posix()
            if rel.startswith("META-INF/"):
                continue
            files.append((rel, full))
    files.sort(key=lambda x: x[0])

    with zipfile.ZipFile(output_apk, "w") as zout:
        for rel, full in files:
            data = full.read_bytes()
            zi = zipfile.ZipInfo(rel)
            if should_store(rel):
                zi.compress_type = zipfile.ZIP_STORED
                zi.file_size = len(data)
                zi.CRC = zipfile.crc32(data) & 0xFFFFFFFF
            else:
                zi.compress_type = zipfile.ZIP_DEFLATED
            zout.writestr(zi, data)


def main() -> int:
    if len(sys.argv) != 3:
        print("Usage: pack-original-apk.py <source-dir> <output.apk>", file=sys.stderr)
        return 1
    source = Path(sys.argv[1])
    output = Path(sys.argv[2])
    if not source.is_dir():
        print(f"Missing source dir: {source}", file=sys.stderr)
        return 1
    pack_tree(source, output)
    print(f"Packed {source} -> {output}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
