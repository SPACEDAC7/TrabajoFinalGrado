/*
 * Decompiled with CFR 0_115.
 */
package android.support.v7.widget;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.support.v4.util.ArrayMap;
import android.support.v4.util.LongSparseArray;
import android.support.v4.util.Pools;
import android.support.v7.widget.RecyclerView;

class ViewInfoStore {
    private static final boolean DEBUG = false;
    @VisibleForTesting
    final ArrayMap<RecyclerView.ViewHolder, InfoRecord> mLayoutHolderMap = new ArrayMap();
    @VisibleForTesting
    final LongSparseArray<RecyclerView.ViewHolder> mOldChangedHolders = new LongSparseArray();

    ViewInfoStore() {
    }

    /*
     * Enabled aggressive block sorting
     */
    private RecyclerView.ItemAnimator.ItemHolderInfo popFromLayoutStep(RecyclerView.ViewHolder object, int n2) {
        Object object2 = null;
        int n3 = this.mLayoutHolderMap.indexOfKey(object);
        if (n3 < 0) {
            return object2;
        }
        InfoRecord infoRecord = this.mLayoutHolderMap.valueAt(n3);
        Object object3 = object2;
        if (infoRecord == null) return object3;
        object3 = object2;
        if ((infoRecord.flags & n2) == 0) return object3;
        infoRecord.flags &= ~ n2;
        if (n2 == 4) {
            object = infoRecord.preInfo;
        } else {
            if (n2 != 8) {
                throw new IllegalArgumentException("Must provide flag PRE or POST");
            }
            object = infoRecord.postInfo;
        }
        object3 = object;
        if ((infoRecord.flags & 12) != 0) return object3;
        this.mLayoutHolderMap.removeAt(n3);
        InfoRecord.recycle(infoRecord);
        return object;
    }

    void addToAppearedInPreLayoutHolders(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo) {
        InfoRecord infoRecord;
        InfoRecord infoRecord2 = infoRecord = this.mLayoutHolderMap.get(viewHolder);
        if (infoRecord == null) {
            infoRecord2 = InfoRecord.obtain();
            this.mLayoutHolderMap.put(viewHolder, infoRecord2);
        }
        infoRecord2.flags |= 2;
        infoRecord2.preInfo = itemHolderInfo;
    }

    void addToDisappearedInLayout(RecyclerView.ViewHolder viewHolder) {
        InfoRecord infoRecord;
        InfoRecord infoRecord2 = infoRecord = this.mLayoutHolderMap.get(viewHolder);
        if (infoRecord == null) {
            infoRecord2 = InfoRecord.obtain();
            this.mLayoutHolderMap.put(viewHolder, infoRecord2);
        }
        infoRecord2.flags |= 1;
    }

    void addToOldChangeHolders(long l2, RecyclerView.ViewHolder viewHolder) {
        this.mOldChangedHolders.put(l2, viewHolder);
    }

    void addToPostLayout(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo) {
        InfoRecord infoRecord;
        InfoRecord infoRecord2 = infoRecord = this.mLayoutHolderMap.get(viewHolder);
        if (infoRecord == null) {
            infoRecord2 = InfoRecord.obtain();
            this.mLayoutHolderMap.put(viewHolder, infoRecord2);
        }
        infoRecord2.postInfo = itemHolderInfo;
        infoRecord2.flags |= 8;
    }

    void addToPreLayout(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo) {
        InfoRecord infoRecord;
        InfoRecord infoRecord2 = infoRecord = this.mLayoutHolderMap.get(viewHolder);
        if (infoRecord == null) {
            infoRecord2 = InfoRecord.obtain();
            this.mLayoutHolderMap.put(viewHolder, infoRecord2);
        }
        infoRecord2.preInfo = itemHolderInfo;
        infoRecord2.flags |= 4;
    }

    void clear() {
        this.mLayoutHolderMap.clear();
        this.mOldChangedHolders.clear();
    }

    RecyclerView.ViewHolder getFromOldChangeHolders(long l2) {
        return this.mOldChangedHolders.get(l2);
    }

    boolean isDisappearing(RecyclerView.ViewHolder object) {
        if ((object = this.mLayoutHolderMap.get(object)) != null && (object.flags & 1) != 0) {
            return true;
        }
        return false;
    }

    boolean isInPreLayout(RecyclerView.ViewHolder object) {
        if ((object = this.mLayoutHolderMap.get(object)) != null && (object.flags & 4) != 0) {
            return true;
        }
        return false;
    }

    void onDetach() {
        InfoRecord.drainCache();
    }

    public void onViewDetached(RecyclerView.ViewHolder viewHolder) {
        this.removeFromDisappearedInLayout(viewHolder);
    }

    @Nullable
    RecyclerView.ItemAnimator.ItemHolderInfo popFromPostLayout(RecyclerView.ViewHolder viewHolder) {
        return this.popFromLayoutStep(viewHolder, 8);
    }

    @Nullable
    RecyclerView.ItemAnimator.ItemHolderInfo popFromPreLayout(RecyclerView.ViewHolder viewHolder) {
        return this.popFromLayoutStep(viewHolder, 4);
    }

    /*
     * Enabled aggressive block sorting
     */
    void process(ProcessCallback processCallback) {
        int n2 = this.mLayoutHolderMap.size() - 1;
        while (n2 >= 0) {
            RecyclerView.ViewHolder viewHolder = this.mLayoutHolderMap.keyAt(n2);
            InfoRecord infoRecord = this.mLayoutHolderMap.removeAt(n2);
            if ((infoRecord.flags & 3) == 3) {
                processCallback.unused(viewHolder);
            } else if ((infoRecord.flags & 1) != 0) {
                if (infoRecord.preInfo == null) {
                    processCallback.unused(viewHolder);
                } else {
                    processCallback.processDisappeared(viewHolder, infoRecord.preInfo, infoRecord.postInfo);
                }
            } else if ((infoRecord.flags & 14) == 14) {
                processCallback.processAppeared(viewHolder, infoRecord.preInfo, infoRecord.postInfo);
            } else if ((infoRecord.flags & 12) == 12) {
                processCallback.processPersistent(viewHolder, infoRecord.preInfo, infoRecord.postInfo);
            } else if ((infoRecord.flags & 4) != 0) {
                processCallback.processDisappeared(viewHolder, infoRecord.preInfo, null);
            } else if ((infoRecord.flags & 8) != 0) {
                processCallback.processAppeared(viewHolder, infoRecord.preInfo, infoRecord.postInfo);
            } else if ((infoRecord.flags & 2) != 0) {
                // empty if block
            }
            InfoRecord.recycle(infoRecord);
            --n2;
        }
        return;
    }

    void removeFromDisappearedInLayout(RecyclerView.ViewHolder object) {
        if ((object = this.mLayoutHolderMap.get(object)) == null) {
            return;
        }
        object.flags &= -2;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    void removeViewHolder(RecyclerView.ViewHolder var1_1) {
        var2_2 = this.mOldChangedHolders.size() - 1;
        do {
            if (var2_2 < 0) ** GOTO lbl6
            if (var1_1 == this.mOldChangedHolders.valueAt(var2_2)) {
                this.mOldChangedHolders.removeAt(var2_2);
lbl6: // 2 sources:
                if ((var1_1 = this.mLayoutHolderMap.remove(var1_1)) == null) return;
                InfoRecord.recycle((InfoRecord)var1_1);
                return;
            }
            --var2_2;
        } while (true);
    }

    static class InfoRecord {
        static final int FLAG_APPEAR = 2;
        static final int FLAG_APPEAR_AND_DISAPPEAR = 3;
        static final int FLAG_APPEAR_PRE_AND_POST = 14;
        static final int FLAG_DISAPPEARED = 1;
        static final int FLAG_POST = 8;
        static final int FLAG_PRE = 4;
        static final int FLAG_PRE_AND_POST = 12;
        static Pools.Pool<InfoRecord> sPool = new Pools.SimplePool<InfoRecord>(20);
        int flags;
        @Nullable
        RecyclerView.ItemAnimator.ItemHolderInfo postInfo;
        @Nullable
        RecyclerView.ItemAnimator.ItemHolderInfo preInfo;

        private InfoRecord() {
        }

        static void drainCache() {
            while (sPool.acquire() != null) {
            }
        }

        static InfoRecord obtain() {
            InfoRecord infoRecord;
            InfoRecord infoRecord2 = infoRecord = sPool.acquire();
            if (infoRecord == null) {
                infoRecord2 = new InfoRecord();
            }
            return infoRecord2;
        }

        static void recycle(InfoRecord infoRecord) {
            infoRecord.flags = 0;
            infoRecord.preInfo = null;
            infoRecord.postInfo = null;
            sPool.release(infoRecord);
        }
    }

    static interface ProcessCallback {
        public void processAppeared(RecyclerView.ViewHolder var1, @Nullable RecyclerView.ItemAnimator.ItemHolderInfo var2, RecyclerView.ItemAnimator.ItemHolderInfo var3);

        public void processDisappeared(RecyclerView.ViewHolder var1, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo var2, @Nullable RecyclerView.ItemAnimator.ItemHolderInfo var3);

        public void processPersistent(RecyclerView.ViewHolder var1, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo var2, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo var3);

        public void unused(RecyclerView.ViewHolder var1);
    }

}

