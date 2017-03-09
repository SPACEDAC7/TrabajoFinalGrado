/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.View
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 */
package android.support.v7.widget;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

class ChildHelper {
    private static final boolean DEBUG = false;
    private static final String TAG = "ChildrenHelper";
    final Bucket mBucket;
    final Callback mCallback;
    final List<View> mHiddenViews;

    ChildHelper(Callback callback) {
        this.mCallback = callback;
        this.mBucket = new Bucket();
        this.mHiddenViews = new ArrayList<View>();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private int getOffset(int n2) {
        if (n2 < 0) {
            return -1;
        }
        int n3 = this.mCallback.getChildCount();
        int n4 = n2;
        while (n4 < n3) {
            int n5 = n2 - (n4 - this.mBucket.countOnesBefore(n4));
            if (n5 == 0) {
                do {
                    n2 = n4;
                    if (!this.mBucket.get(n4)) return n2;
                    ++n4;
                } while (true);
            }
            n4 += n5;
        }
        return -1;
    }

    private void hideViewInternal(View view) {
        this.mHiddenViews.add(view);
        this.mCallback.onEnteredHiddenState(view);
    }

    private boolean unhideViewInternal(View view) {
        if (this.mHiddenViews.remove((Object)view)) {
            this.mCallback.onLeftHiddenState(view);
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    void addView(View view, int n2, boolean bl) {
        n2 = n2 < 0 ? this.mCallback.getChildCount() : this.getOffset(n2);
        this.mBucket.insert(n2, bl);
        if (bl) {
            this.hideViewInternal(view);
        }
        this.mCallback.addView(view, n2);
    }

    void addView(View view, boolean bl) {
        this.addView(view, -1, bl);
    }

    /*
     * Enabled aggressive block sorting
     */
    void attachViewToParent(View view, int n2, ViewGroup.LayoutParams layoutParams, boolean bl) {
        n2 = n2 < 0 ? this.mCallback.getChildCount() : this.getOffset(n2);
        this.mBucket.insert(n2, bl);
        if (bl) {
            this.hideViewInternal(view);
        }
        this.mCallback.attachViewToParent(view, n2, layoutParams);
    }

    void detachViewFromParent(int n2) {
        n2 = this.getOffset(n2);
        this.mBucket.remove(n2);
        this.mCallback.detachViewFromParent(n2);
    }

    View findHiddenNonRemovedView(int n2, int n3) {
        int n4 = this.mHiddenViews.size();
        for (int i2 = 0; i2 < n4; ++i2) {
            View view = this.mHiddenViews.get(i2);
            RecyclerView.ViewHolder viewHolder = this.mCallback.getChildViewHolder(view);
            if (viewHolder.getLayoutPosition() != n2 || viewHolder.isInvalid() || viewHolder.isRemoved() || n3 != -1 && viewHolder.getItemViewType() != n3) continue;
            return view;
        }
        return null;
    }

    View getChildAt(int n2) {
        n2 = this.getOffset(n2);
        return this.mCallback.getChildAt(n2);
    }

    int getChildCount() {
        return this.mCallback.getChildCount() - this.mHiddenViews.size();
    }

    View getUnfilteredChildAt(int n2) {
        return this.mCallback.getChildAt(n2);
    }

    int getUnfilteredChildCount() {
        return this.mCallback.getChildCount();
    }

    void hide(View view) {
        int n2 = this.mCallback.indexOfChild(view);
        if (n2 < 0) {
            throw new IllegalArgumentException("view is not a child, cannot hide " + (Object)view);
        }
        this.mBucket.set(n2);
        this.hideViewInternal(view);
    }

    /*
     * Enabled aggressive block sorting
     */
    int indexOfChild(View view) {
        int n2 = this.mCallback.indexOfChild(view);
        if (n2 == -1 || this.mBucket.get(n2)) {
            return -1;
        }
        return n2 - this.mBucket.countOnesBefore(n2);
    }

    boolean isHidden(View view) {
        return this.mHiddenViews.contains((Object)view);
    }

    void removeAllViewsUnfiltered() {
        this.mBucket.reset();
        for (int i2 = this.mHiddenViews.size() - 1; i2 >= 0; --i2) {
            this.mCallback.onLeftHiddenState(this.mHiddenViews.get(i2));
            this.mHiddenViews.remove(i2);
        }
        this.mCallback.removeAllViews();
    }

    void removeView(View view) {
        int n2 = this.mCallback.indexOfChild(view);
        if (n2 < 0) {
            return;
        }
        if (this.mBucket.remove(n2)) {
            this.unhideViewInternal(view);
        }
        this.mCallback.removeViewAt(n2);
    }

    void removeViewAt(int n2) {
        View view = this.mCallback.getChildAt(n2 = this.getOffset(n2));
        if (view == null) {
            return;
        }
        if (this.mBucket.remove(n2)) {
            this.unhideViewInternal(view);
        }
        this.mCallback.removeViewAt(n2);
    }

    boolean removeViewIfHidden(View view) {
        int n2 = this.mCallback.indexOfChild(view);
        if (n2 == -1) {
            if (this.unhideViewInternal(view)) {
                // empty if block
            }
            return true;
        }
        if (this.mBucket.get(n2)) {
            this.mBucket.remove(n2);
            if (!this.unhideViewInternal(view)) {
                // empty if block
            }
            this.mCallback.removeViewAt(n2);
            return true;
        }
        return false;
    }

    public String toString() {
        return this.mBucket.toString() + ", hidden list:" + this.mHiddenViews.size();
    }

    void unhide(View view) {
        int n2 = this.mCallback.indexOfChild(view);
        if (n2 < 0) {
            throw new IllegalArgumentException("view is not a child, cannot hide " + (Object)view);
        }
        if (!this.mBucket.get(n2)) {
            throw new RuntimeException("trying to unhide a view that was not hidden" + (Object)view);
        }
        this.mBucket.clear(n2);
        this.unhideViewInternal(view);
    }

    static class Bucket {
        static final int BITS_PER_WORD = 64;
        static final long LAST_BIT = Long.MIN_VALUE;
        long mData = 0;
        Bucket next;

        Bucket() {
        }

        private void ensureNext() {
            if (this.next == null) {
                this.next = new Bucket();
            }
        }

        void clear(int n2) {
            if (n2 >= 64) {
                if (this.next != null) {
                    this.next.clear(n2 - 64);
                }
                return;
            }
            this.mData &= 1 << n2 ^ -1;
        }

        int countOnesBefore(int n2) {
            if (this.next == null) {
                if (n2 >= 64) {
                    return Long.bitCount(this.mData);
                }
                return Long.bitCount(this.mData & (1 << n2) - 1);
            }
            if (n2 < 64) {
                return Long.bitCount(this.mData & (1 << n2) - 1);
            }
            return this.next.countOnesBefore(n2 - 64) + Long.bitCount(this.mData);
        }

        boolean get(int n2) {
            if (n2 >= 64) {
                this.ensureNext();
                return this.next.get(n2 - 64);
            }
            if ((this.mData & 1 << n2) != 0) {
                return true;
            }
            return false;
        }

        /*
         * Enabled aggressive block sorting
         */
        void insert(int n2, boolean bl) {
            if (n2 >= 64) {
                this.ensureNext();
                this.next.insert(n2 - 64, bl);
                return;
            } else {
                boolean bl2 = (this.mData & Long.MIN_VALUE) != 0;
                long l2 = (1 << n2) - 1;
                this.mData = this.mData & l2 | (this.mData & (-1 ^ l2)) << 1;
                if (bl) {
                    this.set(n2);
                } else {
                    this.clear(n2);
                }
                if (!bl2 && this.next == null) return;
                {
                    this.ensureNext();
                    this.next.insert(0, bl2);
                    return;
                }
            }
        }

        /*
         * Enabled aggressive block sorting
         */
        boolean remove(int n2) {
            if (n2 >= 64) {
                this.ensureNext();
                return this.next.remove(n2 - 64);
            }
            long l2 = 1 << n2;
            boolean bl = (this.mData & l2) != 0;
            this.mData &= -1 ^ l2;
            this.mData = this.mData & l2 | Long.rotateRight(this.mData & (-1 ^ --l2), 1);
            boolean bl2 = bl;
            if (this.next == null) return bl2;
            if (this.next.get(0)) {
                this.set(63);
            }
            this.next.remove(0);
            return bl;
        }

        void reset() {
            this.mData = 0;
            if (this.next != null) {
                this.next.reset();
            }
        }

        void set(int n2) {
            if (n2 >= 64) {
                this.ensureNext();
                this.next.set(n2 - 64);
                return;
            }
            this.mData |= 1 << n2;
        }

        public String toString() {
            if (this.next == null) {
                return Long.toBinaryString(this.mData);
            }
            return this.next.toString() + "xx" + Long.toBinaryString(this.mData);
        }
    }

    static interface Callback {
        public void addView(View var1, int var2);

        public void attachViewToParent(View var1, int var2, ViewGroup.LayoutParams var3);

        public void detachViewFromParent(int var1);

        public View getChildAt(int var1);

        public int getChildCount();

        public RecyclerView.ViewHolder getChildViewHolder(View var1);

        public int indexOfChild(View var1);

        public void onEnteredHiddenState(View var1);

        public void onLeftHiddenState(View var1);

        public void removeAllViews();

        public void removeViewAt(int var1);
    }

}

