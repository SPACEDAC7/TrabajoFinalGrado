/*
 * Decompiled with CFR 0_115.
 */
package android.support.v7.widget;

import android.support.v7.widget.AdapterHelper;
import java.util.List;

class OpReorderer {
    final Callback mCallback;

    public OpReorderer(Callback callback) {
        this.mCallback = callback;
    }

    private int getLastMoveOutOfOrder(List<AdapterHelper.UpdateOp> list) {
        boolean bl = false;
        for (int i2 = list.size() - 1; i2 >= 0; --i2) {
            boolean bl2;
            if (list.get((int)i2).cmd == 8) {
                bl2 = bl;
                if (bl) {
                    return i2;
                }
            } else {
                bl2 = true;
            }
            bl = bl2;
        }
        return -1;
    }

    private void swapMoveAdd(List<AdapterHelper.UpdateOp> list, int n2, AdapterHelper.UpdateOp updateOp, int n3, AdapterHelper.UpdateOp updateOp2) {
        int n4 = 0;
        if (updateOp.itemCount < updateOp2.positionStart) {
            n4 = 0 - 1;
        }
        int n5 = n4;
        if (updateOp.positionStart < updateOp2.positionStart) {
            n5 = n4 + 1;
        }
        if (updateOp2.positionStart <= updateOp.positionStart) {
            updateOp.positionStart += updateOp2.itemCount;
        }
        if (updateOp2.positionStart <= updateOp.itemCount) {
            updateOp.itemCount += updateOp2.itemCount;
        }
        updateOp2.positionStart += n5;
        list.set(n2, updateOp2);
        list.set(n3, updateOp);
    }

    private void swapMoveOp(List<AdapterHelper.UpdateOp> list, int n2, int n3) {
        AdapterHelper.UpdateOp updateOp = list.get(n2);
        AdapterHelper.UpdateOp updateOp2 = list.get(n3);
        switch (updateOp2.cmd) {
            default: {
                return;
            }
            case 2: {
                this.swapMoveRemove(list, n2, updateOp, n3, updateOp2);
                return;
            }
            case 1: {
                this.swapMoveAdd(list, n2, updateOp, n3, updateOp2);
                return;
            }
            case 4: 
        }
        this.swapMoveUpdate(list, n2, updateOp, n3, updateOp2);
    }

    void reorderOps(List<AdapterHelper.UpdateOp> list) {
        int n2;
        while ((n2 = this.getLastMoveOutOfOrder(list)) != -1) {
            this.swapMoveOp(list, n2, n2 + 1);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    void swapMoveRemove(List<AdapterHelper.UpdateOp> list, int n2, AdapterHelper.UpdateOp updateOp, int n3, AdapterHelper.UpdateOp updateOp2) {
        int n4;
        int n5;
        int n6;
        AdapterHelper.UpdateOp updateOp3 = null;
        int n7 = 0;
        if (updateOp.positionStart < updateOp.itemCount) {
            n6 = n4 = 0;
            n5 = n7;
            if (updateOp2.positionStart == updateOp.positionStart) {
                n6 = n4;
                n5 = n7;
                if (updateOp2.itemCount == updateOp.itemCount - updateOp.positionStart) {
                    n5 = 1;
                    n6 = n4;
                }
            }
        } else {
            n6 = n4 = 1;
            n5 = n7;
            if (updateOp2.positionStart == updateOp.itemCount + 1) {
                n6 = n4;
                n5 = n7;
                if (updateOp2.itemCount == updateOp.positionStart - updateOp.itemCount) {
                    n5 = 1;
                    n6 = n4;
                }
            }
        }
        if (updateOp.itemCount < updateOp2.positionStart) {
            --updateOp2.positionStart;
        } else if (updateOp.itemCount < updateOp2.positionStart + updateOp2.itemCount) {
            --updateOp2.itemCount;
            updateOp.cmd = 2;
            updateOp.itemCount = 1;
            if (updateOp2.itemCount != 0) return;
            list.remove(n3);
            this.mCallback.recycleUpdateOp(updateOp2);
            return;
        }
        if (updateOp.positionStart <= updateOp2.positionStart) {
            ++updateOp2.positionStart;
        } else if (updateOp.positionStart < updateOp2.positionStart + updateOp2.itemCount) {
            n7 = updateOp2.positionStart;
            n4 = updateOp2.itemCount;
            int n8 = updateOp.positionStart;
            updateOp3 = this.mCallback.obtainUpdateOp(2, updateOp.positionStart + 1, n7 + n4 - n8, null);
            updateOp2.itemCount = updateOp.positionStart - updateOp2.positionStart;
        }
        if (n5 != 0) {
            list.set(n2, updateOp2);
            list.remove(n3);
            this.mCallback.recycleUpdateOp(updateOp);
            return;
        }
        if (n6 != 0) {
            if (updateOp3 != null) {
                if (updateOp.positionStart > updateOp3.positionStart) {
                    updateOp.positionStart -= updateOp3.itemCount;
                }
                if (updateOp.itemCount > updateOp3.positionStart) {
                    updateOp.itemCount -= updateOp3.itemCount;
                }
            }
            if (updateOp.positionStart > updateOp2.positionStart) {
                updateOp.positionStart -= updateOp2.itemCount;
            }
            if (updateOp.itemCount > updateOp2.positionStart) {
                updateOp.itemCount -= updateOp2.itemCount;
            }
        } else {
            if (updateOp3 != null) {
                if (updateOp.positionStart >= updateOp3.positionStart) {
                    updateOp.positionStart -= updateOp3.itemCount;
                }
                if (updateOp.itemCount >= updateOp3.positionStart) {
                    updateOp.itemCount -= updateOp3.itemCount;
                }
            }
            if (updateOp.positionStart >= updateOp2.positionStart) {
                updateOp.positionStart -= updateOp2.itemCount;
            }
            if (updateOp.itemCount >= updateOp2.positionStart) {
                updateOp.itemCount -= updateOp2.itemCount;
            }
        }
        list.set(n2, updateOp2);
        if (updateOp.positionStart != updateOp.itemCount) {
            list.set(n3, updateOp);
        } else {
            list.remove(n3);
        }
        if (updateOp3 == null) return;
        list.add(n2, updateOp3);
    }

    /*
     * Enabled aggressive block sorting
     */
    void swapMoveUpdate(List<AdapterHelper.UpdateOp> list, int n2, AdapterHelper.UpdateOp updateOp, int n3, AdapterHelper.UpdateOp updateOp2) {
        AdapterHelper.UpdateOp updateOp3 = null;
        AdapterHelper.UpdateOp updateOp4 = null;
        if (updateOp.itemCount < updateOp2.positionStart) {
            --updateOp2.positionStart;
        } else if (updateOp.itemCount < updateOp2.positionStart + updateOp2.itemCount) {
            --updateOp2.itemCount;
            updateOp3 = this.mCallback.obtainUpdateOp(4, updateOp.positionStart, 1, updateOp2.payload);
        }
        if (updateOp.positionStart <= updateOp2.positionStart) {
            ++updateOp2.positionStart;
        } else if (updateOp.positionStart < updateOp2.positionStart + updateOp2.itemCount) {
            int n4 = updateOp2.positionStart + updateOp2.itemCount - updateOp.positionStart;
            updateOp4 = this.mCallback.obtainUpdateOp(4, updateOp.positionStart + 1, n4, updateOp2.payload);
            updateOp2.itemCount -= n4;
        }
        list.set(n3, updateOp);
        if (updateOp2.itemCount > 0) {
            list.set(n2, updateOp2);
        } else {
            list.remove(n2);
            this.mCallback.recycleUpdateOp(updateOp2);
        }
        if (updateOp3 != null) {
            list.add(n2, updateOp3);
        }
        if (updateOp4 != null) {
            list.add(n2, updateOp4);
        }
    }

    static interface Callback {
        public AdapterHelper.UpdateOp obtainUpdateOp(int var1, int var2, int var3, Object var4);

        public void recycleUpdateOp(AdapterHelper.UpdateOp var1);
    }

}

