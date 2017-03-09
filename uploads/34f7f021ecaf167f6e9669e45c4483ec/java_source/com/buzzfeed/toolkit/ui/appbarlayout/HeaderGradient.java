/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.util.AttributeSet
 *  android.view.View
 *  android.view.View$MeasureSpec
 */
package com.buzzfeed.toolkit.ui.appbarlayout;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.buzzfeed.toolkit.util.UIUtil;
import com.buzzfeed.toolkit.util.VersionUtil;

public class HeaderGradient
extends View {
    public HeaderGradient(Context context) {
        super(context);
    }

    public HeaderGradient(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public HeaderGradient(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
    }

    protected void onMeasure(int n2, int n3) {
        n3 = View.MeasureSpec.getSize((int)n3);
        int n4 = View.MeasureSpec.getSize((int)n2);
        n2 = n3;
        if (VersionUtil.hasLollipop()) {
            n2 = n3 + UIUtil.getStatusBarHeight(this.getContext());
        }
        this.setMeasuredDimension(n4, n2);
    }
}

