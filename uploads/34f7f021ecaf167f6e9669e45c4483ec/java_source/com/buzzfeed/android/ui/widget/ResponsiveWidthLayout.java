/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.util.AttributeSet
 *  android.view.View
 *  android.view.View$MeasureSpec
 *  android.widget.RelativeLayout
 */
package com.buzzfeed.android.ui.widget;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;

public class ResponsiveWidthLayout
extends RelativeLayout {
    private int maxWidth = 0;

    public ResponsiveWidthLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.maxWidth = (int)this.getResources().getDimension(2131427481);
    }

    protected void onMeasure(int n2, int n3) {
        int n4 = View.MeasureSpec.getSize((int)n2);
        int n5 = n2;
        if (this.maxWidth > 0) {
            n5 = n2;
            if (this.maxWidth < n4) {
                n2 = View.MeasureSpec.getMode((int)n2);
                n5 = View.MeasureSpec.makeMeasureSpec((int)this.maxWidth, (int)n2);
            }
        }
        super.onMeasure(n5, n3);
    }
}

