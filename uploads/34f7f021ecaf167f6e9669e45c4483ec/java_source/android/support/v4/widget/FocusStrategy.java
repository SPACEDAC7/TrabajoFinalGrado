/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Rect
 */
package android.support.v4.widget;

import android.graphics.Rect;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

class FocusStrategy {
    FocusStrategy() {
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static boolean beamBeats(int n2, @NonNull Rect rect, @NonNull Rect rect2, @NonNull Rect rect3) {
        boolean bl = true;
        boolean bl2 = FocusStrategy.beamsOverlap(n2, rect, rect2);
        if (FocusStrategy.beamsOverlap(n2, rect, rect3)) return false;
        if (!bl2) {
            return false;
        }
        bl2 = bl;
        if (!FocusStrategy.isToDirectionOf(n2, rect, rect3)) return bl2;
        bl2 = bl;
        if (n2 == 17) return bl2;
        bl2 = bl;
        if (n2 == 66) return bl2;
        bl2 = bl;
        if (FocusStrategy.majorAxisDistance(n2, rect, rect2) < FocusStrategy.majorAxisDistanceToFarEdge(n2, rect, rect3)) return bl2;
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private static boolean beamsOverlap(int n2, @NonNull Rect rect, @NonNull Rect rect2) {
        switch (n2) {
            default: {
                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            case 17: 
            case 66: {
                if (rect2.bottom < rect.top) return false;
                if (rect2.top > rect.bottom) return false;
                return true;
            }
            case 33: 
            case 130: 
        }
        if (rect2.right < rect.left) return false;
        if (rect2.left <= rect.right) return true;
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static <L, T> T findNextFocusInAbsoluteDirection(@NonNull L l2, @NonNull CollectionAdapter<L, T> collectionAdapter, @NonNull BoundsAdapter<T> boundsAdapter, @Nullable T t2, @NonNull Rect rect, int n2) {
        Rect rect2 = new Rect(rect);
        switch (n2) {
            default: {
                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            case 17: {
                rect2.offset(rect.width() + 1, 0);
                break;
            }
            case 66: {
                rect2.offset(- rect.width() + 1, 0);
                break;
            }
            case 33: {
                rect2.offset(0, rect.height() + 1);
                break;
            }
            case 130: {
                rect2.offset(0, - rect.height() + 1);
            }
        }
        T t3 = null;
        int n3 = collectionAdapter.size(l2);
        Rect rect3 = new Rect();
        int n4 = 0;
        while (n4 < n3) {
            L l3 = collectionAdapter.get(l2, n4);
            if (l3 != t2) {
                boundsAdapter.obtainBounds(l3, rect3);
                if (FocusStrategy.isBetterCandidate(n2, rect, rect3, rect2)) {
                    rect2.set(rect3);
                    t3 = (T)l3;
                }
            }
            ++n4;
        }
        return t3;
    }

    public static <L, T> T findNextFocusInRelativeDirection(@NonNull L l2, @NonNull CollectionAdapter<L, T> collectionAdapter, @NonNull BoundsAdapter<T> boundsAdapter, @Nullable T t2, int n2, boolean bl, boolean bl2) {
        int n3 = collectionAdapter.size(l2);
        ArrayList<T> arrayList = new ArrayList<T>(n3);
        for (int i2 = 0; i2 < n3; ++i2) {
            arrayList.add(collectionAdapter.get(l2, i2));
        }
        Collections.sort(arrayList, new SequentialComparator<T>(bl, boundsAdapter));
        switch (n2) {
            default: {
                throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}.");
            }
            case 2: {
                return FocusStrategy.getNextFocusable(t2, arrayList, bl2);
            }
            case 1: 
        }
        return FocusStrategy.getPreviousFocusable(t2, arrayList, bl2);
    }

    /*
     * Enabled aggressive block sorting
     */
    private static <T> T getNextFocusable(T t2, ArrayList<T> arrayList, boolean bl) {
        int n2 = arrayList.size();
        int n3 = t2 == null ? -1 : arrayList.lastIndexOf(t2);
        if (++n3 < n2) {
            return arrayList.get(n3);
        }
        if (bl && n2 > 0) {
            return arrayList.get(0);
        }
        return null;
    }

    /*
     * Enabled aggressive block sorting
     */
    private static <T> T getPreviousFocusable(T t2, ArrayList<T> arrayList, boolean bl) {
        int n2 = arrayList.size();
        int n3 = t2 == null ? n2 : arrayList.indexOf(t2);
        if (--n3 >= 0) {
            return arrayList.get(n3);
        }
        if (bl && n2 > 0) {
            return arrayList.get(n2 - 1);
        }
        return null;
    }

    private static int getWeightedDistanceFor(int n2, int n3) {
        return n2 * 13 * n2 + n3 * n3;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static boolean isBetterCandidate(int n2, @NonNull Rect rect, @NonNull Rect rect2, @NonNull Rect rect3) {
        boolean bl = true;
        if (!FocusStrategy.isCandidate(rect, rect2, n2)) {
            return false;
        }
        boolean bl2 = bl;
        if (!FocusStrategy.isCandidate(rect, rect3, n2)) return bl2;
        bl2 = bl;
        if (FocusStrategy.beamBeats(n2, rect, rect2, rect3)) return bl2;
        if (FocusStrategy.beamBeats(n2, rect, rect3, rect2)) {
            return false;
        }
        bl2 = bl;
        if (FocusStrategy.getWeightedDistanceFor(FocusStrategy.majorAxisDistance(n2, rect, rect2), FocusStrategy.minorAxisDistance(n2, rect, rect2)) < FocusStrategy.getWeightedDistanceFor(FocusStrategy.majorAxisDistance(n2, rect, rect3), FocusStrategy.minorAxisDistance(n2, rect, rect3))) return bl2;
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private static boolean isCandidate(@NonNull Rect rect, @NonNull Rect rect2, int n2) {
        switch (n2) {
            default: {
                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            case 17: {
                if (rect.right <= rect2.right) {
                    if (rect.left < rect2.right) return false;
                }
                if (rect.left <= rect2.left) return false;
                return true;
            }
            case 66: {
                if (rect.left >= rect2.left) {
                    if (rect.right > rect2.left) return false;
                }
                if (rect.right < rect2.right) return true;
                return false;
            }
            case 33: {
                if (rect.bottom <= rect2.bottom) {
                    if (rect.top < rect2.bottom) return false;
                }
                if (rect.top > rect2.top) return true;
                return false;
            }
            case 130: 
        }
        if (rect.top >= rect2.top) {
            if (rect.bottom > rect2.top) return false;
        }
        if (rect.bottom < rect2.bottom) return true;
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private static boolean isToDirectionOf(int n2, @NonNull Rect rect, @NonNull Rect rect2) {
        switch (n2) {
            default: {
                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            case 17: {
                if (rect.left < rect2.right) return false;
                return true;
            }
            case 66: {
                if (rect.right <= rect2.left) return true;
                return false;
            }
            case 33: {
                if (rect.top >= rect2.bottom) return true;
                return false;
            }
            case 130: 
        }
        if (rect.bottom <= rect2.top) return true;
        return false;
    }

    private static int majorAxisDistance(int n2, @NonNull Rect rect, @NonNull Rect rect2) {
        return Math.max(0, FocusStrategy.majorAxisDistanceRaw(n2, rect, rect2));
    }

    private static int majorAxisDistanceRaw(int n2, @NonNull Rect rect, @NonNull Rect rect2) {
        switch (n2) {
            default: {
                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            case 17: {
                return rect.left - rect2.right;
            }
            case 66: {
                return rect2.left - rect.right;
            }
            case 33: {
                return rect.top - rect2.bottom;
            }
            case 130: 
        }
        return rect2.top - rect.bottom;
    }

    private static int majorAxisDistanceToFarEdge(int n2, @NonNull Rect rect, @NonNull Rect rect2) {
        return Math.max(1, FocusStrategy.majorAxisDistanceToFarEdgeRaw(n2, rect, rect2));
    }

    private static int majorAxisDistanceToFarEdgeRaw(int n2, @NonNull Rect rect, @NonNull Rect rect2) {
        switch (n2) {
            default: {
                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            case 17: {
                return rect.left - rect2.left;
            }
            case 66: {
                return rect2.right - rect.right;
            }
            case 33: {
                return rect.top - rect2.top;
            }
            case 130: 
        }
        return rect2.bottom - rect.bottom;
    }

    private static int minorAxisDistance(int n2, @NonNull Rect rect, @NonNull Rect rect2) {
        switch (n2) {
            default: {
                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            case 17: 
            case 66: {
                return Math.abs(rect.top + rect.height() / 2 - (rect2.top + rect2.height() / 2));
            }
            case 33: 
            case 130: 
        }
        return Math.abs(rect.left + rect.width() / 2 - (rect2.left + rect2.width() / 2));
    }

    public static interface BoundsAdapter<T> {
        public void obtainBounds(T var1, Rect var2);
    }

    public static interface CollectionAdapter<T, V> {
        public V get(T var1, int var2);

        public int size(T var1);
    }

    private static class SequentialComparator<T>
    implements Comparator<T> {
        private final BoundsAdapter<T> mAdapter;
        private final boolean mIsLayoutRtl;
        private final Rect mTemp1 = new Rect();
        private final Rect mTemp2 = new Rect();

        SequentialComparator(boolean bl, BoundsAdapter<T> boundsAdapter) {
            this.mIsLayoutRtl = bl;
            this.mAdapter = boundsAdapter;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        @Override
        public int compare(T t2, T t3) {
            int n2 = 1;
            int n3 = 1;
            Rect rect = this.mTemp1;
            Rect rect2 = this.mTemp2;
            this.mAdapter.obtainBounds(t2, rect);
            this.mAdapter.obtainBounds(t3, rect2);
            if (rect.top < rect2.top) {
                return -1;
            }
            if (rect.top > rect2.top) {
                return 1;
            }
            if (rect.left < rect2.left) {
                if (!this.mIsLayoutRtl) return -1;
                return n3;
            }
            if (rect.left > rect2.left) {
                if (this.mIsLayoutRtl) return -1;
                return 1;
            }
            if (rect.bottom < rect2.bottom) return -1;
            if (rect.bottom > rect2.bottom) {
                return 1;
            }
            if (rect.right < rect2.right) {
                if (!this.mIsLayoutRtl) return -1;
                return n2;
            }
            if (rect.right <= rect2.right) return 0;
            if (this.mIsLayoutRtl) return -1;
            return 1;
        }
    }

}

