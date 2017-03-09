/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.util.AttributeSet
 *  android.view.View
 */
package android.support.design.widget;

import android.content.Context;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.ViewOffsetHelper;
import android.util.AttributeSet;
import android.view.View;

class ViewOffsetBehavior<V extends View>
extends CoordinatorLayout.Behavior<V> {
    private int mTempLeftRightOffset = 0;
    private int mTempTopBottomOffset = 0;
    private ViewOffsetHelper mViewOffsetHelper;

    public ViewOffsetBehavior() {
    }

    public ViewOffsetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public int getLeftAndRightOffset() {
        if (this.mViewOffsetHelper != null) {
            return this.mViewOffsetHelper.getLeftAndRightOffset();
        }
        return 0;
    }

    public int getTopAndBottomOffset() {
        if (this.mViewOffsetHelper != null) {
            return this.mViewOffsetHelper.getTopAndBottomOffset();
        }
        return 0;
    }

    protected void layoutChild(CoordinatorLayout coordinatorLayout, V v2, int n2) {
        coordinatorLayout.onLayoutChild((View)v2, n2);
    }

    @Override
    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, V v2, int n2) {
        this.layoutChild(coordinatorLayout, v2, n2);
        if (this.mViewOffsetHelper == null) {
            this.mViewOffsetHelper = new ViewOffsetHelper((View)v2);
        }
        this.mViewOffsetHelper.onViewLayout();
        if (this.mTempTopBottomOffset != 0) {
            this.mViewOffsetHelper.setTopAndBottomOffset(this.mTempTopBottomOffset);
            this.mTempTopBottomOffset = 0;
        }
        if (this.mTempLeftRightOffset != 0) {
            this.mViewOffsetHelper.setLeftAndRightOffset(this.mTempLeftRightOffset);
            this.mTempLeftRightOffset = 0;
        }
        return true;
    }

    public boolean setLeftAndRightOffset(int n2) {
        if (this.mViewOffsetHelper != null) {
            return this.mViewOffsetHelper.setLeftAndRightOffset(n2);
        }
        this.mTempLeftRightOffset = n2;
        return false;
    }

    public boolean setTopAndBottomOffset(int n2) {
        if (this.mViewOffsetHelper != null) {
            return this.mViewOffsetHelper.setTopAndBottomOffset(n2);
        }
        this.mTempTopBottomOffset = n2;
        return false;
    }
}

