/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.util.AttributeSet
 *  android.view.View
 *  android.view.View$MeasureSpec
 *  android.widget.FrameLayout
 */
package com.google.android.exoplayer;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;

public final class AspectRatioFrameLayout
extends FrameLayout {
    private static final float MAX_ASPECT_RATIO_DEFORMATION_FRACTION = 0.01f;
    private float videoAspectRatio;

    public AspectRatioFrameLayout(Context context) {
        super(context);
    }

    public AspectRatioFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    protected void onMeasure(int n2, int n3) {
        super.onMeasure(n2, n3);
        if (this.videoAspectRatio == 0.0f) {
            return;
        }
        n3 = this.getMeasuredWidth();
        n2 = this.getMeasuredHeight();
        float f2 = (float)n3 / (float)n2;
        if (Math.abs(f2 = this.videoAspectRatio / f2 - 1.0f) <= 0.01f) return;
        if (f2 > 0.0f) {
            n2 = (int)((float)n3 / this.videoAspectRatio);
        } else {
            n3 = (int)((float)n2 * this.videoAspectRatio);
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec((int)n3, (int)1073741824), View.MeasureSpec.makeMeasureSpec((int)n2, (int)1073741824));
    }

    public void setAspectRatio(float f2) {
        if (this.videoAspectRatio != f2) {
            this.videoAspectRatio = f2;
            this.requestLayout();
        }
    }
}

