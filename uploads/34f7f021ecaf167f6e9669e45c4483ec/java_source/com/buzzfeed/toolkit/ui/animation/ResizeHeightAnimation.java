/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.View
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.view.animation.Animation
 *  android.view.animation.Transformation
 */
package com.buzzfeed.toolkit.ui.animation;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.Transformation;

public class ResizeHeightAnimation
extends Animation {
    final int startHeight;
    final int targetHeight;
    View view;

    public ResizeHeightAnimation(View view, int n2) {
        this.view = view;
        this.targetHeight = n2;
        this.startHeight = view.getHeight();
    }

    protected void applyTransformation(float f2, Transformation transformation) {
        int n2;
        this.view.getLayoutParams().height = n2 = (int)((float)this.startHeight + (float)(this.targetHeight - this.startHeight) * f2);
        this.view.requestLayout();
    }

    public boolean willChangeBounds() {
        return true;
    }
}

