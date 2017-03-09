/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.graphics.Rect
 *  android.util.AttributeSet
 *  android.view.View
 *  android.view.View$MeasureSpec
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 */
package android.support.design.widget;

import android.content.Context;
import android.graphics.Rect;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.MathUtils;
import android.support.design.widget.ViewOffsetBehavior;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.WindowInsetsCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import java.util.List;

abstract class HeaderScrollingViewBehavior
extends ViewOffsetBehavior<View> {
    private int mOverlayTop;
    final Rect mTempRect1 = new Rect();
    final Rect mTempRect2 = new Rect();
    private int mVerticalLayoutGap = 0;

    public HeaderScrollingViewBehavior() {
    }

    public HeaderScrollingViewBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private static int resolveGravity(int n2) {
        int n3 = n2;
        if (n2 == 0) {
            n3 = 8388659;
        }
        return n3;
    }

    abstract View findFirstDependency(List<View> var1);

    final int getOverlapPixelsForOffset(View view) {
        if (this.mOverlayTop == 0) {
            return 0;
        }
        return MathUtils.constrain((int)(this.getOverlapRatioForOffset(view) * (float)this.mOverlayTop), 0, this.mOverlayTop);
    }

    float getOverlapRatioForOffset(View view) {
        return 1.0f;
    }

    public final int getOverlayTop() {
        return this.mOverlayTop;
    }

    int getScrollRange(View view) {
        return view.getMeasuredHeight();
    }

    final int getVerticalLayoutGap() {
        return this.mVerticalLayoutGap;
    }

    @Override
    protected void layoutChild(CoordinatorLayout coordinatorLayout, View view, int n2) {
        View view2 = this.findFirstDependency(coordinatorLayout.getDependencies(view));
        if (view2 != null) {
            CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams)view.getLayoutParams();
            Rect rect = this.mTempRect1;
            rect.set(coordinatorLayout.getPaddingLeft() + layoutParams.leftMargin, view2.getBottom() + layoutParams.topMargin, coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight() - layoutParams.rightMargin, coordinatorLayout.getHeight() + view2.getBottom() - coordinatorLayout.getPaddingBottom() - layoutParams.bottomMargin);
            WindowInsetsCompat windowInsetsCompat = coordinatorLayout.getLastWindowInsets();
            if (windowInsetsCompat != null && ViewCompat.getFitsSystemWindows((View)coordinatorLayout) && !ViewCompat.getFitsSystemWindows(view)) {
                rect.left += windowInsetsCompat.getSystemWindowInsetLeft();
                rect.right -= windowInsetsCompat.getSystemWindowInsetRight();
            }
            coordinatorLayout = this.mTempRect2;
            GravityCompat.apply(HeaderScrollingViewBehavior.resolveGravity(layoutParams.gravity), view.getMeasuredWidth(), view.getMeasuredHeight(), rect, (Rect)coordinatorLayout, n2);
            n2 = this.getOverlapPixelsForOffset(view2);
            view.layout(coordinatorLayout.left, coordinatorLayout.top - n2, coordinatorLayout.right, coordinatorLayout.bottom - n2);
            this.mVerticalLayoutGap = coordinatorLayout.top - view2.getBottom();
            return;
        }
        super.layoutChild(coordinatorLayout, view, n2);
        this.mVerticalLayoutGap = 0;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public boolean onMeasureChild(CoordinatorLayout coordinatorLayout, View view, int n2, int n3, int n4, int n5) {
        View view2;
        int n6 = view.getLayoutParams().height;
        if ((n6 == -1 || n6 == -2) && (view2 = this.findFirstDependency(coordinatorLayout.getDependencies(view))) != null) {
            int n7;
            if (ViewCompat.getFitsSystemWindows(view2) && !ViewCompat.getFitsSystemWindows(view)) {
                ViewCompat.setFitsSystemWindows(view, true);
                if (ViewCompat.getFitsSystemWindows(view)) {
                    view.requestLayout();
                    return true;
                }
            }
            n4 = n7 = View.MeasureSpec.getSize((int)n4);
            if (n7 == 0) {
                n4 = coordinatorLayout.getHeight();
            }
            int n8 = view2.getMeasuredHeight();
            int n9 = this.getScrollRange(view2);
            n7 = n6 == -1 ? 1073741824 : Integer.MIN_VALUE;
            coordinatorLayout.onMeasureChild(view, n2, n3, View.MeasureSpec.makeMeasureSpec((int)(n4 - n8 + n9), (int)n7), n5);
            return true;
        }
        return false;
    }

    public final void setOverlayTop(int n2) {
        this.mOverlayTop = n2;
    }
}

