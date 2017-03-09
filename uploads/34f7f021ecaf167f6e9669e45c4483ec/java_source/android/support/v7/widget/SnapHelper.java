/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.util.DisplayMetrics
 *  android.view.View
 *  android.view.animation.DecelerateInterpolator
 *  android.view.animation.Interpolator
 *  android.widget.Scroller
 */
package android.support.v7.widget;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.widget.LinearSmoothScroller;
import android.support.v7.widget.RecyclerView;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.Scroller;

public abstract class SnapHelper
extends RecyclerView.OnFlingListener {
    static final float MILLISECONDS_PER_INCH = 100.0f;
    private Scroller mGravityScroller;
    RecyclerView mRecyclerView;
    private final RecyclerView.OnScrollListener mScrollListener;

    public SnapHelper() {
        this.mScrollListener = new RecyclerView.OnScrollListener(){
            boolean mScrolled;

            @Override
            public void onScrollStateChanged(RecyclerView recyclerView, int n2) {
                super.onScrollStateChanged(recyclerView, n2);
                if (n2 == 0 && this.mScrolled) {
                    this.mScrolled = false;
                    SnapHelper.this.snapToTargetExistingView();
                }
            }

            @Override
            public void onScrolled(RecyclerView recyclerView, int n2, int n3) {
                if (n2 != 0 || n3 != 0) {
                    this.mScrolled = true;
                }
            }
        };
    }

    @Nullable
    private LinearSmoothScroller createSnapScroller(RecyclerView.LayoutManager layoutManager) {
        if (!(layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider)) {
            return null;
        }
        return new LinearSmoothScroller(this.mRecyclerView.getContext()){

            @Override
            protected float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
                return 100.0f / (float)displayMetrics.densityDpi;
            }

            @Override
            protected void onTargetFound(View arrn, RecyclerView.State state, RecyclerView.SmoothScroller.Action action) {
                arrn = SnapHelper.this.calculateDistanceToFinalSnap(SnapHelper.this.mRecyclerView.getLayoutManager(), (View)arrn);
                int n2 = arrn[0];
                int n3 = arrn[1];
                int n4 = this.calculateTimeForDeceleration(Math.max(Math.abs(n2), Math.abs(n3)));
                if (n4 > 0) {
                    action.update(n2, n3, n4, (Interpolator)this.mDecelerateInterpolator);
                }
            }
        };
    }

    private void destroyCallbacks() {
        this.mRecyclerView.removeOnScrollListener(this.mScrollListener);
        this.mRecyclerView.setOnFlingListener(null);
    }

    private void setupCallbacks() throws IllegalStateException {
        if (this.mRecyclerView.getOnFlingListener() != null) {
            throw new IllegalStateException("An instance of OnFlingListener already set.");
        }
        this.mRecyclerView.addOnScrollListener(this.mScrollListener);
        this.mRecyclerView.setOnFlingListener(this);
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean snapFromFling(@NonNull RecyclerView.LayoutManager layoutManager, int n2, int n3) {
        LinearSmoothScroller linearSmoothScroller;
        if (!(layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider) || (linearSmoothScroller = this.createSnapScroller(layoutManager)) == null || (n2 = this.findTargetSnapPosition(layoutManager, n2, n3)) == -1) {
            return false;
        }
        linearSmoothScroller.setTargetPosition(n2);
        layoutManager.startSmoothScroll(linearSmoothScroller);
        return true;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void attachToRecyclerView(@Nullable RecyclerView recyclerView) throws IllegalStateException {
        if (this.mRecyclerView == recyclerView) {
            return;
        }
        if (this.mRecyclerView != null) {
            this.destroyCallbacks();
        }
        this.mRecyclerView = recyclerView;
        if (this.mRecyclerView == null) return;
        this.setupCallbacks();
        this.mGravityScroller = new Scroller(this.mRecyclerView.getContext(), (Interpolator)new DecelerateInterpolator());
        this.snapToTargetExistingView();
    }

    @Nullable
    public abstract int[] calculateDistanceToFinalSnap(@NonNull RecyclerView.LayoutManager var1, @NonNull View var2);

    public int[] calculateScrollDistance(int n2, int n3) {
        this.mGravityScroller.fling(0, 0, n2, n3, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
        return new int[]{this.mGravityScroller.getFinalX(), this.mGravityScroller.getFinalY()};
    }

    @Nullable
    public abstract View findSnapView(RecyclerView.LayoutManager var1);

    public abstract int findTargetSnapPosition(RecyclerView.LayoutManager var1, int var2, int var3);

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public boolean onFling(int n2, int n3) {
        RecyclerView.LayoutManager layoutManager = this.mRecyclerView.getLayoutManager();
        if (layoutManager == null) {
            return false;
        }
        if (this.mRecyclerView.getAdapter() == null) return false;
        int n4 = this.mRecyclerView.getMinFlingVelocity();
        if (Math.abs(n3) <= n4) {
            if (Math.abs(n2) <= n4) return false;
        }
        if (!this.snapFromFling(layoutManager, n2, n3)) return false;
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    void snapToTargetExistingView() {
        View view;
        int[] arrn;
        if (this.mRecyclerView == null || (arrn = this.mRecyclerView.getLayoutManager()) == null || (view = this.findSnapView((RecyclerView.LayoutManager)arrn)) == null || (arrn = this.calculateDistanceToFinalSnap((RecyclerView.LayoutManager)arrn, view))[0] == 0 && arrn[1] == 0) {
            return;
        }
        this.mRecyclerView.smoothScrollBy(arrn[0], arrn[1]);
    }

}

