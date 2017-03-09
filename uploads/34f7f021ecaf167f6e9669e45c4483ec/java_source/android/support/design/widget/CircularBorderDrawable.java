/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.res.ColorStateList
 *  android.graphics.Canvas
 *  android.graphics.ColorFilter
 *  android.graphics.LinearGradient
 *  android.graphics.Paint
 *  android.graphics.Paint$Style
 *  android.graphics.Rect
 *  android.graphics.RectF
 *  android.graphics.Shader
 *  android.graphics.Shader$TileMode
 *  android.graphics.drawable.Drawable
 */
package android.support.design.widget;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.support.v4.graphics.ColorUtils;

class CircularBorderDrawable
extends Drawable {
    private static final float DRAW_STROKE_WIDTH_MULTIPLE = 1.3333f;
    private ColorStateList mBorderTint;
    float mBorderWidth;
    private int mBottomInnerStrokeColor;
    private int mBottomOuterStrokeColor;
    private int mCurrentBorderTintColor;
    private boolean mInvalidateShader = true;
    final Paint mPaint = new Paint(1);
    final Rect mRect = new Rect();
    final RectF mRectF = new RectF();
    private float mRotation;
    private int mTopInnerStrokeColor;
    private int mTopOuterStrokeColor;

    public CircularBorderDrawable() {
        this.mPaint.setStyle(Paint.Style.STROKE);
    }

    private Shader createGradientShader() {
        Rect rect = this.mRect;
        this.copyBounds(rect);
        float f2 = this.mBorderWidth / (float)rect.height();
        int n2 = ColorUtils.compositeColors(this.mTopOuterStrokeColor, this.mCurrentBorderTintColor);
        int n3 = ColorUtils.compositeColors(this.mTopInnerStrokeColor, this.mCurrentBorderTintColor);
        int n4 = ColorUtils.compositeColors(ColorUtils.setAlphaComponent(this.mTopInnerStrokeColor, 0), this.mCurrentBorderTintColor);
        int n5 = ColorUtils.compositeColors(ColorUtils.setAlphaComponent(this.mBottomInnerStrokeColor, 0), this.mCurrentBorderTintColor);
        int n6 = ColorUtils.compositeColors(this.mBottomInnerStrokeColor, this.mCurrentBorderTintColor);
        int n7 = ColorUtils.compositeColors(this.mBottomOuterStrokeColor, this.mCurrentBorderTintColor);
        float f3 = rect.top;
        float f4 = rect.bottom;
        rect = Shader.TileMode.CLAMP;
        return new LinearGradient(0.0f, f3, 0.0f, f4, new int[]{n2, n3, n4, n5, n6, n7}, new float[]{0.0f, f2, 0.5f, 0.5f, 1.0f - f2, 1.0f}, (Shader.TileMode)rect);
    }

    public void draw(Canvas canvas) {
        if (this.mInvalidateShader) {
            this.mPaint.setShader(this.createGradientShader());
            this.mInvalidateShader = false;
        }
        float f2 = this.mPaint.getStrokeWidth() / 2.0f;
        RectF rectF = this.mRectF;
        this.copyBounds(this.mRect);
        rectF.set(this.mRect);
        rectF.left += f2;
        rectF.top += f2;
        rectF.right -= f2;
        rectF.bottom -= f2;
        canvas.save();
        canvas.rotate(this.mRotation, rectF.centerX(), rectF.centerY());
        canvas.drawOval(rectF, this.mPaint);
        canvas.restore();
    }

    public int getOpacity() {
        if (this.mBorderWidth > 0.0f) {
            return -3;
        }
        return -2;
    }

    public boolean getPadding(Rect rect) {
        int n2 = Math.round(this.mBorderWidth);
        rect.set(n2, n2, n2, n2);
        return true;
    }

    public boolean isStateful() {
        if (this.mBorderTint != null && this.mBorderTint.isStateful() || super.isStateful()) {
            return true;
        }
        return false;
    }

    protected void onBoundsChange(Rect rect) {
        this.mInvalidateShader = true;
    }

    protected boolean onStateChange(int[] arrn) {
        int n2;
        if (this.mBorderTint != null && (n2 = this.mBorderTint.getColorForState(arrn, this.mCurrentBorderTintColor)) != this.mCurrentBorderTintColor) {
            this.mInvalidateShader = true;
            this.mCurrentBorderTintColor = n2;
        }
        if (this.mInvalidateShader) {
            this.invalidateSelf();
        }
        return this.mInvalidateShader;
    }

    public void setAlpha(int n2) {
        this.mPaint.setAlpha(n2);
        this.invalidateSelf();
    }

    void setBorderTint(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.mCurrentBorderTintColor = colorStateList.getColorForState(this.getState(), this.mCurrentBorderTintColor);
        }
        this.mBorderTint = colorStateList;
        this.mInvalidateShader = true;
        this.invalidateSelf();
    }

    void setBorderWidth(float f2) {
        if (this.mBorderWidth != f2) {
            this.mBorderWidth = f2;
            this.mPaint.setStrokeWidth(1.3333f * f2);
            this.mInvalidateShader = true;
            this.invalidateSelf();
        }
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.mPaint.setColorFilter(colorFilter);
        this.invalidateSelf();
    }

    void setGradientColors(int n2, int n3, int n4, int n5) {
        this.mTopOuterStrokeColor = n2;
        this.mTopInnerStrokeColor = n3;
        this.mBottomOuterStrokeColor = n4;
        this.mBottomInnerStrokeColor = n5;
    }

    final void setRotation(float f2) {
        if (f2 != this.mRotation) {
            this.mRotation = f2;
            this.invalidateSelf();
        }
    }
}

