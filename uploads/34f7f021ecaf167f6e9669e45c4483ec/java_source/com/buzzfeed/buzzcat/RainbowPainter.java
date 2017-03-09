/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.graphics.Paint
 */
package com.buzzfeed.buzzcat;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Paint;
import com.buzzfeed.buzzcat.R;

public class RainbowPainter {
    private Paint[] mPaint = new Paint[7];

    public RainbowPainter(Context context) {
        this.mPaint[0] = RainbowPainter.generatePaint(context.getResources().getColor(R.color.rainbow_red));
        this.mPaint[1] = RainbowPainter.generatePaint(context.getResources().getColor(R.color.rainbow_orange));
        this.mPaint[2] = RainbowPainter.generatePaint(context.getResources().getColor(R.color.rainbow_yellow));
        this.mPaint[3] = RainbowPainter.generatePaint(context.getResources().getColor(R.color.rainbow_green));
        this.mPaint[4] = RainbowPainter.generatePaint(context.getResources().getColor(R.color.rainbow_blue));
        this.mPaint[5] = RainbowPainter.generatePaint(context.getResources().getColor(R.color.rainbow_indigo));
        this.mPaint[6] = RainbowPainter.generatePaint(context.getResources().getColor(R.color.rainbow_violet));
    }

    private static Paint generatePaint(int n2) {
        Paint paint = new Paint();
        paint.setColor(n2);
        return paint;
    }

    public int getNextIndex(int n2) {
        if (n2 >= this.mPaint.length - 1) {
            return 0;
        }
        return n2 + 1;
    }

    public Paint getPaint(int n2) {
        return this.mPaint[n2];
    }
}

