/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.util.AttributeSet
 *  android.view.View
 *  android.view.ViewGroup
 */
package android.support.design.internal;

import android.content.Context;
import android.support.v4.view.ViewCompat;
import android.support.v7.widget.ViewUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

public class BaselineLayout
extends ViewGroup {
    private int mBaseline = -1;

    public BaselineLayout(Context context) {
        super(context, null, 0);
    }

    public BaselineLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
    }

    public BaselineLayout(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
    }

    public int getBaseline() {
        return this.mBaseline;
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void onLayout(boolean bl, int n2, int n3, int n4, int n5) {
        int n6 = this.getChildCount();
        int n7 = this.getPaddingLeft();
        int n8 = this.getPaddingRight();
        int n9 = this.getPaddingTop();
        n3 = 0;
        while (n3 < n6) {
            View view = this.getChildAt(n3);
            if (view.getVisibility() != 8) {
                int n10 = view.getMeasuredWidth();
                int n11 = view.getMeasuredHeight();
                int n12 = n7 + (n4 - n2 - n8 - n7 - n10) / 2;
                n5 = this.mBaseline != -1 && view.getBaseline() != -1 ? this.mBaseline + n9 - view.getBaseline() : n9;
                view.layout(n12, n5, n12 + n10, n5 + n11);
            }
            ++n3;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void onMeasure(int n2, int n3) {
        int n4;
        int n5 = this.getChildCount();
        int n6 = 0;
        int n7 = 0;
        int n8 = -1;
        int n9 = -1;
        int n10 = 0;
        for (int i2 = 0; i2 < n5; ++i2) {
            View view = this.getChildAt(i2);
            if (view.getVisibility() == 8) continue;
            this.measureChild(view, n2, n3);
            int n11 = view.getBaseline();
            int n12 = n8;
            n4 = n9;
            if (n11 != -1) {
                n12 = Math.max(n8, n11);
                n4 = Math.max(n9, view.getMeasuredHeight() - n11);
            }
            n6 = Math.max(n6, view.getMeasuredWidth());
            n7 = Math.max(n7, view.getMeasuredHeight());
            n10 = ViewUtils.combineMeasuredStates(n10, ViewCompat.getMeasuredState(view));
            n8 = n12;
            n9 = n4;
        }
        n4 = n7;
        if (n8 != -1) {
            n4 = Math.max(n7, n8 + n9);
            this.mBaseline = n8;
        }
        n7 = Math.max(n4, this.getSuggestedMinimumHeight());
        this.setMeasuredDimension(ViewCompat.resolveSizeAndState(Math.max(n6, this.getSuggestedMinimumWidth()), n2, n10), ViewCompat.resolveSizeAndState(n7, n3, n10 << 16));
    }
}

