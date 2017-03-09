/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.util.AttributeSet
 *  android.view.View
 */
package com.buzzfeed.toolkit.ui.appbarlayout;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.buzzfeed.toolkit.util.UIUtil;
import com.buzzfeed.toolkit.util.VersionUtil;

public class BleedingOverlay
extends View {
    public BleedingOverlay(Context context) {
        super(context);
    }

    public BleedingOverlay(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public BleedingOverlay(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
    }

    public void onOffsetChanged(int n2, boolean bl) {
        float f2;
        float f3 = f2 = (float)(this.getMeasuredHeight() - UIUtil.getActionBarHeight(this.getContext()));
        if (VersionUtil.hasLollipop()) {
            f3 = f2 - (float)UIUtil.getStatusBarHeight(this.getContext());
        }
        int n3 = n2;
        if (bl) {
            n3 = Math.max(0, (int)f3 - n2);
        }
        this.setAlpha(Math.min(1.0f, Math.max(0.0f, (float)Math.abs(n3) / f3)));
    }
}

