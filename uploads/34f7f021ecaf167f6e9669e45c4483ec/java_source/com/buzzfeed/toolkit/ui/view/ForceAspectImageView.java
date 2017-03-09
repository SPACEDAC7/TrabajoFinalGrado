/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.TypedArray
 *  android.util.AttributeSet
 *  android.view.View
 *  android.view.View$MeasureSpec
 *  android.widget.ImageView
 */
package com.buzzfeed.toolkit.ui.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import com.buzzfeed.toolkit.R;

public class ForceAspectImageView
extends ImageView {
    private float aspectRatio = 0.0f;

    public ForceAspectImageView(Context context) {
        this(context, null);
    }

    public ForceAspectImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ForceAspectImageView(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
        this.aspectRatio = context.obtainStyledAttributes(attributeSet, R.styleable.ForceAspect).getFloat(R.styleable.ForceAspect_aspectRatio, 0.0f);
    }

    public float getAspectRatio() {
        return this.aspectRatio;
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void onMeasure(int n2, int n3) {
        super.onMeasure(n2, n3);
        if (this.aspectRatio == 0.0f) {
            return;
        }
        int n4 = View.MeasureSpec.getMode((int)n2);
        int n5 = View.MeasureSpec.getSize((int)n2);
        int n6 = View.MeasureSpec.getMode((int)n3);
        n2 = View.MeasureSpec.getSize((int)n3);
        if (n4 == 1073741824) {
            n3 = n5;
            if (n6 != 1073741824) {
                n2 = (int)((float)n5 * 1.0f / this.aspectRatio);
                n3 = n5;
            }
        } else if (n6 == 1073741824) {
            n3 = (int)((float)n2 * 1.0f * this.aspectRatio);
        } else {
            n3 = this.getMeasuredWidth();
            n2 = (int)((float)n3 * 1.0f / this.aspectRatio);
        }
        this.setMeasuredDimension(n3, n2);
    }

    public void setAspectRatio(float f2) {
        this.aspectRatio = f2;
    }
}

