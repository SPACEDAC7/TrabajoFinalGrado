/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Canvas
 *  android.graphics.Paint
 *  android.graphics.Paint$Style
 *  android.text.Layout
 *  android.text.style.LeadingMarginSpan
 *  android.text.style.LineBackgroundSpan
 */
package com.buzzfeed.spicerack.ui.utils;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.Layout;
import android.text.style.LeadingMarginSpan;
import android.text.style.LineBackgroundSpan;

public class CustomQuoteSpan
implements LeadingMarginSpan,
LineBackgroundSpan {
    private final int backgroundColor;
    private final float gap;
    private final int stripeColor;
    private final float stripeWidth;

    public CustomQuoteSpan(int n2, int n3, float f2, float f3) {
        this.backgroundColor = n2;
        this.stripeColor = n3;
        this.stripeWidth = f2;
        this.gap = f3;
    }

    public void drawBackground(Canvas canvas, Paint paint, int n2, int n3, int n4, int n5, int n6, CharSequence charSequence, int n7, int n8, int n9) {
        n5 = paint.getColor();
        paint.setColor(this.backgroundColor);
        canvas.drawRect((float)n2, (float)n4, (float)n3, (float)n6, paint);
        paint.setColor(n5);
    }

    public void drawLeadingMargin(Canvas canvas, Paint paint, int n2, int n3, int n4, int n5, int n6, CharSequence charSequence, int n7, int n8, boolean bl, Layout layout2) {
        charSequence = paint.getStyle();
        n5 = paint.getColor();
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(this.stripeColor);
        float f2 = n2;
        float f3 = n4;
        float f4 = n2;
        canvas.drawRect(f2, f3, (float)n3 * this.stripeWidth + f4, (float)n6, paint);
        paint.setStyle((Paint.Style)charSequence);
        paint.setColor(n5);
    }

    public int getLeadingMargin(boolean bl) {
        return (int)(this.stripeWidth + this.gap);
    }
}

