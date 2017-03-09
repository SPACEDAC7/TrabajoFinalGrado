/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.content.res.Resources$Theme
 *  android.content.res.TypedArray
 *  android.graphics.Canvas
 *  android.graphics.ColorFilter
 *  android.graphics.Paint
 *  android.graphics.Paint$Cap
 *  android.graphics.Paint$Join
 *  android.graphics.Paint$Style
 *  android.graphics.Path
 *  android.graphics.Rect
 *  android.graphics.drawable.Drawable
 *  android.util.AttributeSet
 */
package android.support.v7.graphics.drawable;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.annotation.ColorInt;
import android.support.annotation.FloatRange;
import android.support.annotation.RestrictTo;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public class DrawerArrowDrawable
extends Drawable {
    public static final int ARROW_DIRECTION_END = 3;
    public static final int ARROW_DIRECTION_LEFT = 0;
    public static final int ARROW_DIRECTION_RIGHT = 1;
    public static final int ARROW_DIRECTION_START = 2;
    private static final float ARROW_HEAD_ANGLE = (float)Math.toRadians(45.0);
    private float mArrowHeadLength;
    private float mArrowShaftLength;
    private float mBarGap;
    private float mBarLength;
    private int mDirection = 2;
    private float mMaxCutForBarSize;
    private final Paint mPaint = new Paint();
    private final Path mPath = new Path();
    private float mProgress;
    private final int mSize;
    private boolean mSpin;
    private boolean mVerticalMirror = false;

    public DrawerArrowDrawable(Context context) {
        this.mPaint.setStyle(Paint.Style.STROKE);
        this.mPaint.setStrokeJoin(Paint.Join.MITER);
        this.mPaint.setStrokeCap(Paint.Cap.BUTT);
        this.mPaint.setAntiAlias(true);
        context = context.getTheme().obtainStyledAttributes(null, R.styleable.DrawerArrowToggle, R.attr.drawerArrowStyle, R.style.Base_Widget_AppCompat_DrawerArrowToggle);
        this.setColor(context.getColor(R.styleable.DrawerArrowToggle_color, 0));
        this.setBarThickness(context.getDimension(R.styleable.DrawerArrowToggle_thickness, 0.0f));
        this.setSpinEnabled(context.getBoolean(R.styleable.DrawerArrowToggle_spinBars, true));
        this.setGapSize(Math.round(context.getDimension(R.styleable.DrawerArrowToggle_gapBetweenBars, 0.0f)));
        this.mSize = context.getDimensionPixelSize(R.styleable.DrawerArrowToggle_drawableSize, 0);
        this.mBarLength = Math.round(context.getDimension(R.styleable.DrawerArrowToggle_barLength, 0.0f));
        this.mArrowHeadLength = Math.round(context.getDimension(R.styleable.DrawerArrowToggle_arrowHeadLength, 0.0f));
        this.mArrowShaftLength = context.getDimension(R.styleable.DrawerArrowToggle_arrowShaftLength, 0.0f);
        context.recycle();
    }

    private static float lerp(float f2, float f3, float f4) {
        return (f3 - f2) * f4 + f2;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void draw(Canvas canvas) {
        int n2;
        Rect rect = this.getBounds();
        switch (this.mDirection) {
            default: {
                n2 = DrawableCompat.getLayoutDirection(this) == 1 ? 1 : 0;
            }
            case 0: {
                n2 = 0;
                break;
            }
            case 1: {
                n2 = 1;
                break;
            }
            case 3: {
                if (DrawableCompat.getLayoutDirection(this) == 0) {
                    n2 = 1;
                    break;
                }
                n2 = 0;
                break;
            }
        }
        float f2 = (float)Math.sqrt(this.mArrowHeadLength * this.mArrowHeadLength * 2.0f);
        float f3 = DrawerArrowDrawable.lerp(this.mBarLength, f2, this.mProgress);
        float f4 = DrawerArrowDrawable.lerp(this.mBarLength, this.mArrowShaftLength, this.mProgress);
        float f5 = Math.round(DrawerArrowDrawable.lerp(0.0f, this.mMaxCutForBarSize, this.mProgress));
        float f6 = DrawerArrowDrawable.lerp(0.0f, ARROW_HEAD_ANGLE, this.mProgress);
        f2 = n2 != 0 ? 0.0f : -180.0f;
        float f7 = n2 != 0 ? 180.0f : 0.0f;
        f2 = DrawerArrowDrawable.lerp(f2, f7, this.mProgress);
        f7 = Math.round((double)f3 * Math.cos(f6));
        f3 = Math.round((double)f3 * Math.sin(f6));
        this.mPath.rewind();
        f6 = DrawerArrowDrawable.lerp(this.mBarGap + this.mPaint.getStrokeWidth(), - this.mMaxCutForBarSize, this.mProgress);
        float f8 = (- f4) / 2.0f;
        this.mPath.moveTo(f8 + f5, 0.0f);
        this.mPath.rLineTo(f4 - 2.0f * f5, 0.0f);
        this.mPath.moveTo(f8, f6);
        this.mPath.rLineTo(f7, f3);
        this.mPath.moveTo(f8, - f6);
        this.mPath.rLineTo(f7, - f3);
        this.mPath.close();
        canvas.save();
        f7 = this.mPaint.getStrokeWidth();
        f7 = (float)((double)((int)((float)rect.height() - 3.0f * f7 - this.mBarGap * 2.0f) / 4 * 2) + ((double)f7 * 1.5 + (double)this.mBarGap));
        canvas.translate((float)rect.centerX(), f7);
        if (this.mSpin) {
            n2 = this.mVerticalMirror ^ n2 ? -1 : 1;
            canvas.rotate((float)n2 * f2);
        } else if (n2 != 0) {
            canvas.rotate(180.0f);
        }
        canvas.drawPath(this.mPath, this.mPaint);
        canvas.restore();
    }

    public float getArrowHeadLength() {
        return this.mArrowHeadLength;
    }

    public float getArrowShaftLength() {
        return this.mArrowShaftLength;
    }

    public float getBarLength() {
        return this.mBarLength;
    }

    public float getBarThickness() {
        return this.mPaint.getStrokeWidth();
    }

    @ColorInt
    public int getColor() {
        return this.mPaint.getColor();
    }

    public int getDirection() {
        return this.mDirection;
    }

    public float getGapSize() {
        return this.mBarGap;
    }

    public int getIntrinsicHeight() {
        return this.mSize;
    }

    public int getIntrinsicWidth() {
        return this.mSize;
    }

    public int getOpacity() {
        return -3;
    }

    public final Paint getPaint() {
        return this.mPaint;
    }

    @FloatRange(from=0.0, to=1.0)
    public float getProgress() {
        return this.mProgress;
    }

    public boolean isSpinEnabled() {
        return this.mSpin;
    }

    public void setAlpha(int n2) {
        if (n2 != this.mPaint.getAlpha()) {
            this.mPaint.setAlpha(n2);
            this.invalidateSelf();
        }
    }

    public void setArrowHeadLength(float f2) {
        if (this.mArrowHeadLength != f2) {
            this.mArrowHeadLength = f2;
            this.invalidateSelf();
        }
    }

    public void setArrowShaftLength(float f2) {
        if (this.mArrowShaftLength != f2) {
            this.mArrowShaftLength = f2;
            this.invalidateSelf();
        }
    }

    public void setBarLength(float f2) {
        if (this.mBarLength != f2) {
            this.mBarLength = f2;
            this.invalidateSelf();
        }
    }

    public void setBarThickness(float f2) {
        if (this.mPaint.getStrokeWidth() != f2) {
            this.mPaint.setStrokeWidth(f2);
            this.mMaxCutForBarSize = (float)((double)(f2 / 2.0f) * Math.cos(ARROW_HEAD_ANGLE));
            this.invalidateSelf();
        }
    }

    public void setColor(@ColorInt int n2) {
        if (n2 != this.mPaint.getColor()) {
            this.mPaint.setColor(n2);
            this.invalidateSelf();
        }
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.mPaint.setColorFilter(colorFilter);
        this.invalidateSelf();
    }

    public void setDirection(int n2) {
        if (n2 != this.mDirection) {
            this.mDirection = n2;
            this.invalidateSelf();
        }
    }

    public void setGapSize(float f2) {
        if (f2 != this.mBarGap) {
            this.mBarGap = f2;
            this.invalidateSelf();
        }
    }

    public void setProgress(@FloatRange(from=0.0, to=1.0) float f2) {
        if (this.mProgress != f2) {
            this.mProgress = f2;
            this.invalidateSelf();
        }
    }

    public void setSpinEnabled(boolean bl) {
        if (this.mSpin != bl) {
            this.mSpin = bl;
            this.invalidateSelf();
        }
    }

    public void setVerticalMirror(boolean bl) {
        if (this.mVerticalMirror != bl) {
            this.mVerticalMirror = bl;
            this.invalidateSelf();
        }
    }

    @Retention(value=RetentionPolicy.SOURCE)
    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public static @interface ArrowDirection {
    }

}

