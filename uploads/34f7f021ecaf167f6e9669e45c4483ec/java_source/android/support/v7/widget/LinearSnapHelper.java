/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.PointF
 *  android.view.View
 */
package android.support.v7.widget;

import android.graphics.PointF;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.widget.OrientationHelper;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.SnapHelper;
import android.view.View;

public class LinearSnapHelper
extends SnapHelper {
    private static final float INVALID_DISTANCE = 1.0f;
    @Nullable
    private OrientationHelper mHorizontalHelper;
    @Nullable
    private OrientationHelper mVerticalHelper;

    /*
     * Enabled aggressive block sorting
     */
    private float computeDistancePerChild(RecyclerView.LayoutManager layoutManager, OrientationHelper orientationHelper) {
        int n2;
        View view = null;
        View view2 = null;
        int n3 = Integer.MAX_VALUE;
        int n4 = Integer.MIN_VALUE;
        int n5 = layoutManager.getChildCount();
        if (n5 == 0) {
            return 1.0f;
        }
        for (int i2 = 0; i2 < n5; ++i2) {
            View view3;
            int n6;
            View view4 = layoutManager.getChildAt(i2);
            int n7 = layoutManager.getPosition(view4);
            if (n7 == -1) {
                view3 = view;
                n6 = n3;
                n3 = n4;
            } else {
                n2 = n3;
                if (n7 < n3) {
                    n2 = n7;
                    view = view4;
                }
                n3 = n4;
                n6 = n2;
                view3 = view;
                if (n7 > n4) {
                    n3 = n7;
                    view2 = view4;
                    n6 = n2;
                    view3 = view;
                }
            }
            n4 = n3;
            n3 = n6;
            view = view3;
        }
        if (view == null || view2 == null) {
            return 1.0f;
        }
        n2 = Math.min(orientationHelper.getDecoratedStart(view), orientationHelper.getDecoratedStart(view2));
        n2 = Math.max(orientationHelper.getDecoratedEnd(view), orientationHelper.getDecoratedEnd(view2)) - n2;
        if (n2 == 0) {
            return 1.0f;
        }
        return 1.0f * (float)n2 / (float)(n4 - n3 + 1);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private int distanceToCenter(@NonNull RecyclerView.LayoutManager layoutManager, @NonNull View view, OrientationHelper orientationHelper) {
        int n2;
        int n3 = orientationHelper.getDecoratedStart(view);
        int n4 = orientationHelper.getDecoratedMeasurement(view) / 2;
        if (layoutManager.getClipToPadding()) {
            n2 = orientationHelper.getStartAfterPadding() + orientationHelper.getTotalSpace() / 2;
            do {
                return n3 + n4 - n2;
                break;
            } while (true);
        }
        n2 = orientationHelper.getEnd() / 2;
        return n3 + n4 - n2;
    }

    /*
     * Enabled aggressive block sorting
     */
    private int estimateNextPositionDiffForFling(RecyclerView.LayoutManager layoutManager, OrientationHelper orientationHelper, int n2, int n3) {
        int[] arrn = this.calculateScrollDistance(n2, n3);
        float f2 = this.computeDistancePerChild(layoutManager, orientationHelper);
        if (f2 <= 0.0f) {
            return 0;
        }
        n2 = Math.abs(arrn[0]) > Math.abs(arrn[1]) ? arrn[0] : arrn[1];
        if (n2 > 0) {
            return (int)Math.floor((float)n2 / f2);
        }
        return (int)Math.ceil((float)n2 / f2);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Nullable
    private View findCenterView(RecyclerView.LayoutManager layoutManager, OrientationHelper orientationHelper) {
        int n2 = layoutManager.getChildCount();
        if (n2 == 0) {
            return null;
        }
        View view = null;
        int n3 = layoutManager.getClipToPadding() ? orientationHelper.getStartAfterPadding() + orientationHelper.getTotalSpace() / 2 : orientationHelper.getEnd() / 2;
        int n4 = Integer.MAX_VALUE;
        int n5 = 0;
        do {
            View view2 = view;
            if (n5 >= n2) return view2;
            view2 = layoutManager.getChildAt(n5);
            int n6 = Math.abs(orientationHelper.getDecoratedStart(view2) + orientationHelper.getDecoratedMeasurement(view2) / 2 - n3);
            int n7 = n4;
            if (n6 < n4) {
                n7 = n6;
                view = view2;
            }
            ++n5;
            n4 = n7;
        } while (true);
    }

    @NonNull
    private OrientationHelper getHorizontalHelper(@NonNull RecyclerView.LayoutManager layoutManager) {
        if (this.mHorizontalHelper == null || this.mHorizontalHelper.mLayoutManager != layoutManager) {
            this.mHorizontalHelper = OrientationHelper.createHorizontalHelper(layoutManager);
        }
        return this.mHorizontalHelper;
    }

    @NonNull
    private OrientationHelper getVerticalHelper(@NonNull RecyclerView.LayoutManager layoutManager) {
        if (this.mVerticalHelper == null || this.mVerticalHelper.mLayoutManager != layoutManager) {
            this.mVerticalHelper = OrientationHelper.createVerticalHelper(layoutManager);
        }
        return this.mVerticalHelper;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public int[] calculateDistanceToFinalSnap(@NonNull RecyclerView.LayoutManager layoutManager, @NonNull View view) {
        int[] arrn = new int[2];
        arrn[0] = layoutManager.canScrollHorizontally() ? this.distanceToCenter(layoutManager, view, this.getHorizontalHelper(layoutManager)) : 0;
        if (layoutManager.canScrollVertically()) {
            arrn[1] = this.distanceToCenter(layoutManager, view, this.getVerticalHelper(layoutManager));
            return arrn;
        }
        arrn[1] = 0;
        return arrn;
    }

    @Override
    public View findSnapView(RecyclerView.LayoutManager layoutManager) {
        if (layoutManager.canScrollVertically()) {
            return this.findCenterView(layoutManager, this.getVerticalHelper(layoutManager));
        }
        if (layoutManager.canScrollHorizontally()) {
            return this.findCenterView(layoutManager, this.getHorizontalHelper(layoutManager));
        }
        return null;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public int findTargetSnapPosition(RecyclerView.LayoutManager layoutManager, int n2, int n3) {
        int n4 = -1;
        if (!(layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider)) {
            return n4;
        }
        int n5 = layoutManager.getItemCount();
        int n6 = n4;
        if (n5 == 0) return n6;
        View view = this.findSnapView(layoutManager);
        n6 = n4;
        if (view == null) return n6;
        int n7 = layoutManager.getPosition(view);
        n6 = n4;
        if (n7 == -1) return n6;
        view = ((RecyclerView.SmoothScroller.ScrollVectorProvider)((Object)layoutManager)).computeScrollVectorForPosition(n5 - 1);
        n6 = n4;
        if (view == null) return n6;
        if (layoutManager.canScrollHorizontally()) {
            n2 = n6 = this.estimateNextPositionDiffForFling(layoutManager, this.getHorizontalHelper(layoutManager), n2, 0);
            if (view.x < 0.0f) {
                n2 = - n6;
            }
        } else {
            n2 = 0;
        }
        if (layoutManager.canScrollVertically()) {
            n3 = n6 = this.estimateNextPositionDiffForFling(layoutManager, this.getVerticalHelper(layoutManager), 0, n3);
            if (view.y < 0.0f) {
                n3 = - n6;
            }
        } else {
            n3 = 0;
        }
        if (layoutManager.canScrollVertically()) {
            n2 = n3;
        }
        n6 = n4;
        if (n2 == 0) return n6;
        n2 = n3 = n7 + n2;
        if (n3 < 0) {
            n2 = 0;
        }
        n6 = n2;
        if (n2 < n5) return n6;
        return n5 - 1;
    }
}

