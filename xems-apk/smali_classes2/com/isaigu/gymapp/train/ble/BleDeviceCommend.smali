.class public Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;
.super Ljava/lang/Object;
.source "BleDeviceCommend.java"


# instance fields
.field private checksum:B

.field private commend:B

.field private head:B

.field private length:B

.field private pdu:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/16 v0, 0x53

    iput-byte v0, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->head:B

    .line 18
    return-void
.end method

.method public constructor <init>(B[B)V
    .registers 4
    .param p1, "commend"    # B
    .param p2, "pdu"    # [B

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/16 v0, 0x53

    iput-byte v0, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->head:B

    .line 21
    iput-byte p1, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->commend:B

    .line 22
    iput-object p2, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->pdu:[B

    .line 23
    array-length v0, p2

    add-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->length:B

    .line 24
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->computeChecksum()V

    .line 25
    return-void
.end method

.method private computeChecksum()V
    .registers 4

    .line 28
    iget-byte v0, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->checksum:B

    iget-byte v1, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->head:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->checksum:B

    .line 29
    iget-byte v1, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->length:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->checksum:B

    .line 30
    iget-byte v1, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->commend:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->checksum:B

    .line 31
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    iget-object v1, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->pdu:[B

    array-length v2, v1

    if-ge v0, v2, :cond_25

    .line 32
    iget-byte v2, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->checksum:B

    aget-byte v1, v1, v0

    add-int/2addr v2, v1

    int-to-byte v1, v2

    iput-byte v1, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->checksum:B

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 34
    .end local v0    # "i":I
    :cond_25
    return-void
.end method

.method private readByte(Ljava/io/InputStream;)B
    .registers 5
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    .line 114
    .local v0, "b":B
    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 117
    return v0

    .line 115
    :cond_9
    new-instance v1, Ljava/io/IOException;

    const-string v2, "socket closed!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readByte(Ljava/io/InputStream;[B)[B
    .registers 7
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, "total":I
    const/4 v1, 0x0

    .line 123
    .local v1, "count":I
    :goto_2
    array-length v2, p2

    if-ge v0, v2, :cond_18

    .line 124
    array-length v2, p2

    sub-int/2addr v2, v0

    invoke-virtual {p1, p2, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 125
    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    .line 128
    add-int/2addr v0, v1

    goto :goto_2

    .line 126
    :cond_10
    new-instance v2, Ljava/io/IOException;

    const-string v3, "socket closed!"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 130
    :cond_18
    return-object p2
.end method

.method private readHead(Ljava/io/InputStream;)V
    .registers 4
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    :goto_0
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->readByte(Ljava/io/InputStream;)B

    move-result v0

    iput-byte v0, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->head:B

    .line 136
    const/16 v1, 0x53

    if-ne v1, v0, :cond_b

    .line 137
    return-void

    .line 136
    :cond_b
    goto :goto_0
.end method


# virtual methods
.method public getChecksum()B
    .registers 2

    .line 69
    iget-byte v0, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->checksum:B

    return v0
.end method

.method public getCommend()B
    .registers 2

    .line 53
    iget-byte v0, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->commend:B

    return v0
.end method

.method public getHead()B
    .registers 2

    .line 37
    iget-byte v0, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->head:B

    return v0
.end method

.method public getLength()B
    .registers 2

    .line 45
    iget-byte v0, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->length:B

    return v0
.end method

.method public getPdu()[B
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->pdu:[B

    return-object v0
.end method

.method public readCommend(Ljava/io/InputStream;)Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;
    .registers 3
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->readHead(Ljava/io/InputStream;)V

    .line 104
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->readByte(Ljava/io/InputStream;)B

    move-result v0

    iput-byte v0, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->length:B

    .line 105
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->readByte(Ljava/io/InputStream;)B

    move-result v0

    iput-byte v0, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->commend:B

    .line 106
    iget-byte v0, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->length:B

    add-int/lit8 v0, v0, -0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->pdu:[B

    .line 107
    invoke-direct {p0, p1, v0}, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->readByte(Ljava/io/InputStream;[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->pdu:[B

    .line 108
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->readByte(Ljava/io/InputStream;)B

    move-result v0

    iput-byte v0, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->checksum:B

    .line 109
    return-object p0
.end method

.method public readCommendFromByte([B)Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;
    .registers 6
    .param p1, "data"    # [B

    .line 86
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_19

    .line 87
    .local v0, "stream":Ljava/io/ByteArrayInputStream;
    :try_start_5
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->readCommend(Ljava/io/InputStream;)Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 88
    :try_start_9
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_19

    .line 87
    return-object v1

    .line 86
    :catchall_d
    move-exception v1

    .end local v0    # "stream":Ljava/io/ByteArrayInputStream;
    .end local p1    # "data":[B
    :try_start_e
    throw v1
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_f

    .line 88
    .restart local v0    # "stream":Ljava/io/ByteArrayInputStream;
    .restart local p1    # "data":[B
    :catchall_f
    move-exception v2

    :try_start_10
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_14

    goto :goto_18

    :catchall_14
    move-exception v3

    :try_start_15
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "data":[B
    :goto_18
    throw v2
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_19} :catch_19

    .end local v0    # "stream":Ljava/io/ByteArrayInputStream;
    .restart local p1    # "data":[B
    :catch_19
    move-exception v0

    .line 89
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setChecksum(B)V
    .registers 2
    .param p1, "checksum"    # B

    .line 73
    iput-byte p1, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->checksum:B

    .line 74
    return-void
.end method

.method public setCommend(B)V
    .registers 2
    .param p1, "commend"    # B

    .line 57
    iput-byte p1, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->commend:B

    .line 58
    return-void
.end method

.method public setHead(B)V
    .registers 2
    .param p1, "head"    # B

    .line 41
    iput-byte p1, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->head:B

    .line 42
    return-void
.end method

.method public setLength(B)V
    .registers 2
    .param p1, "length"    # B

    .line 49
    iput-byte p1, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->length:B

    .line 50
    return-void
.end method

.method public setPdu([B)V
    .registers 2
    .param p1, "pdu"    # [B

    .line 65
    iput-object p1, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->pdu:[B

    .line 66
    return-void
.end method

.method public writeCommend(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    iget-byte v0, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->head:B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 95
    iget-byte v0, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->length:B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 96
    iget-byte v0, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->commend:B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 97
    iget-object v0, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->pdu:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 98
    iget-byte v0, p0, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->checksum:B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 99
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 100
    return-void
.end method

.method public writeCommendToByte()[B
    .registers 5

    .line 77
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_1c

    .line 78
    .local v0, "stream":Ljava/io/ByteArrayOutputStream;
    :try_start_5
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->writeCommend(Ljava/io/OutputStream;)V

    .line 79
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    .line 80
    :try_start_c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_1c

    .line 79
    return-object v1

    .line 77
    :catchall_10
    move-exception v1

    .end local v0    # "stream":Ljava/io/ByteArrayOutputStream;
    :try_start_11
    throw v1
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_12

    .line 80
    .restart local v0    # "stream":Ljava/io/ByteArrayOutputStream;
    :catchall_12
    move-exception v2

    :try_start_13
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_1b

    :catchall_17
    move-exception v3

    :try_start_18
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1b
    throw v2
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1c} :catch_1c

    .end local v0    # "stream":Ljava/io/ByteArrayOutputStream;
    :catch_1c
    move-exception v0

    .line 81
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
