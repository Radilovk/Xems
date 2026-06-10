package com.isaigu.gymapp.train;

import com.isaigu.gymapp.train.model.TrainItem;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.stream.Stream;

/* loaded from: /workspace/classes2.dex */
public class TrainItemManager {
    private List<TrainItem> itemList = new ArrayList();
    public boolean[] partsControl;
    private boolean[] partsDisabled;

    public TrainItemManager(boolean[] partsDisabled, boolean[] partsControl) {
        this.partsDisabled = partsDisabled;
        this.partsControl = partsControl;
        addEmptyItem();
    }

    public void addTrainItem(TrainItem item) {
        Integer oldIndex = getItemIndexByMac(item.data.macAddress);
        if (oldIndex == null) {
            this.itemList.add(this.itemList.size() - 1, item);
        } else {
            this.itemList.get(oldIndex.intValue()).stop();
            this.itemList.set(oldIndex.intValue(), item);
        }
        item.init(this.partsDisabled, this.partsControl);
        addEmptyItem();
    }

    public void removeTrainItem(TrainItem item) {
        if (item.isEmpty()) {
            return;
        }
        item.close();
        this.itemList.remove(item);
        addEmptyItem();
    }

    public void disConnected(final String mac) {
        notEmptyItems().filter(new Predicate() { // from class: com.isaigu.gymapp.train.-$$Lambda$TrainItemManager$8QiScp-GZjwaEkIyUVx85Se19CM
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean equalsIgnoreCase;
                equalsIgnoreCase = mac.equalsIgnoreCase(((TrainItem) obj).data.macAddress);
                return equalsIgnoreCase;
            }
        }).forEach(new Consumer() { // from class: com.isaigu.gymapp.train.-$$Lambda$TrainItemManager$8fxKzS-Whjx8imRzARpmAFnkMAg
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((TrainItem) obj).close();
            }
        });
    }

    public void startAll() {
        notEmptyItems().forEach(new Consumer() { // from class: com.isaigu.gymapp.train.-$$Lambda$TrainItemManager$dckSelME1xT1TvFlGaBew1-ULiw
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((TrainItem) obj).start();
            }
        });
    }

    public void stopAll() {
        notEmptyItems().forEach(new Consumer() { // from class: com.isaigu.gymapp.train.-$$Lambda$TrainItemManager$BfRETC9lVVHxNTQpHrRL39OJZCU
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((TrainItem) obj).stop();
            }
        });
    }

    public void closeAll() {
        notEmptyItems().forEach(new Consumer() { // from class: com.isaigu.gymapp.train.-$$Lambda$TrainItemManager$ssmggD6556uKwmvrE6Jxr09vWQg
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((TrainItem) obj).close();
            }
        });
    }

    public void resetAll() {
        notEmptyItems().forEach(new Consumer() { // from class: com.isaigu.gymapp.train.-$$Lambda$TrainItemManager$OQ9f6M-0QZvRtx_CNTPQv5E9KD8
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((TrainItem) obj).reset();
            }
        });
    }

    public void addAllPartValue(final int value) {
        final AtomicBoolean anyMaSelected = new AtomicBoolean(false);
        notEmptyItems().forEach(new Consumer() { // from class: com.isaigu.gymapp.train.-$$Lambda$TrainItemManager$NH_2vasCxMVn7scoo3q5zW5xA-M
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                TrainItemManager.lambda$addAllPartValue$6(anyMaSelected, value, (TrainItem) obj);
            }
        });
        if (!anyMaSelected.get()) {
            notEmptyItems().forEach(new Consumer() { // from class: com.isaigu.gymapp.train.-$$Lambda$TrainItemManager$UF59B4EXu0W6VouWuS5ErUQhZs4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((TrainItem) obj).addAllPartValue(value);
                }
            });
        }
    }

    static /* synthetic */ void lambda$addAllPartValue$6(AtomicBoolean anyMaSelected, int value, TrainItem i) {
        if (i.isMaSelected()) {
            anyMaSelected.set(true);
            i.addStrenth(value);
        }
    }

    static /* synthetic */ boolean lambda$notEmptyItems$8(TrainItem i) {
        return !i.isEmpty();
    }

    public Stream<TrainItem> notEmptyItems() {
        return this.itemList.stream().filter(new Predicate() { // from class: com.isaigu.gymapp.train.-$$Lambda$TrainItemManager$Kosc8Ha0r48eyhMxskX_v4sFLfU
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return TrainItemManager.lambda$notEmptyItems$8((TrainItem) obj);
            }
        });
    }

    private Integer getItemIndexByMac(String mac) {
        for (int i = 0; i < this.itemList.size(); i++) {
            TrainItem item = this.itemList.get(i);
            if (!item.isEmpty() && mac.equalsIgnoreCase(this.itemList.get(i).data.macAddress)) {
                return Integer.valueOf(i);
            }
        }
        return null;
    }

    private void addEmptyItem() {
        int deviceCount = 0;
        List<TrainItem> emptyItems = new ArrayList<>();
        for (TrainItem item : this.itemList) {
            if (!item.isEmpty()) {
                deviceCount++;
            } else {
                emptyItems.add(item);
            }
        }
        Iterator<TrainItem> it = emptyItems.iterator();
        while (it.hasNext()) {
            this.itemList.remove(it.next());
        }
        if (deviceCount >= 6) {
            return;
        }
        if (deviceCount >= 3) {
            this.itemList.add(new TrainItem(true));
            return;
        }
        for (int i = 0; i < 3 - deviceCount; i++) {
            this.itemList.add(new TrainItem(true));
        }
    }

    public List<TrainItem> getItemList() {
        return this.itemList;
    }
}
