/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.graphics.Bitmap
 *  android.util.AttributeSet
 *  android.widget.ProgressBar
 *  android.widget.RatingBar
 */
package android.support.v7.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R;
import android.support.v7.widget.AppCompatProgressBarHelper;
import android.util.AttributeSet;
import android.widget.ProgressBar;
import android.widget.RatingBar;

public class AppCompatRatingBar
extends RatingBar {
    private AppCompatProgressBarHelper mAppCompatProgressBarHelper;

    public AppCompatRatingBar(Context context) {
        this(context, null);
    }

    public AppCompatRatingBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.ratingBarStyle);
    }

    public AppCompatRatingBar(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
        this.mAppCompatProgressBarHelper = new AppCompatProgressBarHelper((ProgressBar)this);
        this.mAppCompatProgressBarHelper.loadFromAttributes(attributeSet, n2);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    protected void onMeasure(int n2, int n3) {
        synchronized (this) {
            super.onMeasure(n2, n3);
            Bitmap bitmap = this.mAppCompatProgressBarHelper.getSampleTime();
            if (bitmap != null) {
                this.setMeasuredDimension(ViewCompat.resolveSizeAndState(bitmap.getWidth() * this.getNumStars(), n2, 0), this.getMeasuredHeight());
            }
            return;
        }
    }
}

