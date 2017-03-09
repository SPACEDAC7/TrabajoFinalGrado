/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.content.res.Resources$Theme
 *  android.content.res.TypedArray
 *  android.graphics.Canvas
 *  android.graphics.Color
 *  android.graphics.Paint
 *  android.graphics.Paint$Style
 *  android.graphics.Path
 *  android.util.AttributeSet
 *  android.view.View
 */
package com.buzzfeed.android.ui.bookmarks;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;
import com.buzzfeed.android.R;
import com.buzzfeed.toolkit.util.LogUtil;

public class BFBookmarkBackground
extends View {
    private static final int NUM_STRIPES = 3;
    public static final int STYLE_USER_LOGGED = 1;
    public static final int STYLE_USER_NOT_LOGGED = 2;
    private static final String TAG = BFBookmarkBackground.class.getSimpleName();
    private float mBookmarkHeight = 0.0f;
    private Paint mBookmarkPaint = new Paint();
    private Path mBookmarkPath;
    private Paint[] mStripePaints = new Paint[3];
    private Path[] mStripePaths = new Path[3];
    private int mStyle;
    private int mStyleColor1 = Color.argb((int)200, (int)255, (int)0, (int)0);
    private int mStyleColor2 = Color.argb((int)200, (int)0, (int)146, (int)249);
    private float mStyleYOffset;
    private float mXOffset;
    private float mYOffset;

    public BFBookmarkBackground(Context context, AttributeSet attributeSet) {
        int n2;
        super(context, attributeSet);
        this.mBookmarkPaint.setStyle(Paint.Style.FILL);
        this.mBookmarkPaint.setAntiAlias(true);
        this.mBookmarkPath = new Path();
        int n3 = Color.rgb((int)255, (int)154, (int)54);
        int n4 = Color.rgb((int)255, (int)190, (int)65);
        int n5 = Color.rgb((int)255, (int)240, (int)82);
        for (n2 = 0; n2 < 3; ++n2) {
            this.mStripePaints[n2] = new Paint();
            this.mStripePaints[n2].setStyle(Paint.Style.FILL);
            this.mStripePaints[n2].setAntiAlias(true);
            this.mStripePaints[n2].setColor(new int[]{n3, n4, n5}[n2]);
            this.mStripePaths[n2] = new Path();
        }
        context = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.BFBookmarkBackground, 0, 0);
        try {
            n2 = context.getInteger(1, 0);
            this.mBookmarkPaint.setColor(n2);
            this.mBookmarkHeight = context.getDimension(2, 10.0f);
            this.mXOffset = context.getDimension(3, 0.0f);
            this.mYOffset = context.getDimension(4, 0.0f);
            this.mStyle = context.getInteger(0, 2);
            this.setStyleVars(this.mStyle);
            return;
        }
        finally {
            context.recycle();
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private boolean setStyleVars(int n2) {
        String string2 = TAG + ".setStyleVars";
        switch (n2) {
            default: {
                LogUtil.w(string2, "Invalid style " + n2 + " for BFBookmarkBackground.");
                return false;
            }
            case 1: {
                this.mBookmarkPaint.setColor(this.mStyleColor1);
                this.mStyleYOffset = 0.0f;
                do {
                    return true;
                    break;
                } while (true);
            }
            case 2: 
        }
        this.mBookmarkPaint.setColor(this.mStyleColor2);
        this.mStyleYOffset = 65.0f;
        return true;
    }

    public int getStyle() {
        return this.mStyle;
    }

    protected void onDraw(Canvas canvas) {
        for (int i2 = 0; i2 < 3; ++i2) {
            canvas.drawPath(this.mStripePaths[i2], this.mStripePaints[i2]);
        }
        canvas.drawPath(this.mBookmarkPath, this.mBookmarkPaint);
    }

    protected void onSizeChanged(int n2, int n3, int n4, int n5) {
        super.onSizeChanged(n2, n3, n4, n5);
        float f2 = n2;
        float f3 = n3;
        float f4 = f2 / 2.0f;
        float f5 = f3 / 2.0f;
        float f6 = this.mBookmarkHeight;
        f3 = 0.5084f * f6;
        f4 = f4 - f3 / 2.0f + this.mXOffset;
        f5 = f5 - f6 / 2.0f + this.mYOffset - this.mStyleYOffset;
        float f7 = 0.1539f * f6;
        float f8 = 0.27509f * f2 / 2.0f;
        float f9 = 0.27509f * f2 / 2.0f;
        for (n2 = 0; n2 < 3; ++n2) {
            float f10 = 0.1551f * f6 + f5 + f8 + (float)n2 * f7;
            float f11 = 0.1551f * f6 + f5 - f9 + (float)n2 * f7;
            Path path = this.mStripePaths[n2];
            path.reset();
            path.moveTo(0.0f, f10);
            path.lineTo(f2, f11);
            path.lineTo(f2, f11 + f7);
            path.lineTo(0.0f, f10 + f7);
            path.close();
        }
        f2 = f6 + this.mStyleYOffset;
        this.mBookmarkPath.reset();
        this.mBookmarkPath.moveTo(f4, f5);
        this.mBookmarkPath.lineTo(f4, f5 + f2);
        this.mBookmarkPath.lineTo(f3 / 2.0f + f4, 0.82f * f2 + f5);
        this.mBookmarkPath.lineTo(f4 + f3, f5 + f2);
        this.mBookmarkPath.lineTo(f4 + f3, f5);
        this.mBookmarkPath.close();
    }

    public void setStyle(int n2) {
        if (this.setStyleVars(n2)) {
            this.mStyle = n2;
            this.invalidate();
            this.requestLayout();
        }
    }
}

