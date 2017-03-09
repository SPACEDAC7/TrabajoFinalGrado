/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.graphics.Canvas
 *  android.graphics.LinearGradient
 *  android.graphics.Paint
 *  android.graphics.Paint$Style
 *  android.graphics.Path
 *  android.graphics.Path$FillType
 *  android.graphics.RadialGradient
 *  android.graphics.Rect
 *  android.graphics.RectF
 *  android.graphics.Shader
 *  android.graphics.Shader$TileMode
 *  android.graphics.drawable.Drawable
 */
package android.support.design.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.support.design.R;
import android.support.v4.content.ContextCompat;
import android.support.v7.graphics.drawable.DrawableWrapper;

class ShadowDrawableWrapper
extends DrawableWrapper {
    static final double COS_45 = Math.cos(Math.toRadians(45.0));
    static final float SHADOW_BOTTOM_SCALE = 1.0f;
    static final float SHADOW_HORIZ_SCALE = 0.5f;
    static final float SHADOW_MULTIPLIER = 1.5f;
    static final float SHADOW_TOP_SCALE = 0.25f;
    private boolean mAddPaddingForCorners = true;
    final RectF mContentBounds;
    float mCornerRadius;
    final Paint mCornerShadowPaint;
    Path mCornerShadowPath;
    private boolean mDirty = true;
    final Paint mEdgeShadowPaint;
    float mMaxShadowSize;
    private boolean mPrintedShadowClipWarning = false;
    float mRawMaxShadowSize;
    float mRawShadowSize;
    private float mRotation;
    private final int mShadowEndColor;
    private final int mShadowMiddleColor;
    float mShadowSize;
    private final int mShadowStartColor;

    public ShadowDrawableWrapper(Context context, Drawable drawable2, float f2, float f3, float f4) {
        super(drawable2);
        this.mShadowStartColor = ContextCompat.getColor(context, R.color.design_fab_shadow_start_color);
        this.mShadowMiddleColor = ContextCompat.getColor(context, R.color.design_fab_shadow_mid_color);
        this.mShadowEndColor = ContextCompat.getColor(context, R.color.design_fab_shadow_end_color);
        this.mCornerShadowPaint = new Paint(5);
        this.mCornerShadowPaint.setStyle(Paint.Style.FILL);
        this.mCornerRadius = Math.round(f2);
        this.mContentBounds = new RectF();
        this.mEdgeShadowPaint = new Paint(this.mCornerShadowPaint);
        this.mEdgeShadowPaint.setAntiAlias(false);
        this.setShadowSize(f3, f4);
    }

    private void buildComponents(Rect rect) {
        float f2 = this.mRawMaxShadowSize * 1.5f;
        this.mContentBounds.set((float)rect.left + this.mRawMaxShadowSize, (float)rect.top + f2, (float)rect.right - this.mRawMaxShadowSize, (float)rect.bottom - f2);
        this.getWrappedDrawable().setBounds((int)this.mContentBounds.left, (int)this.mContentBounds.top, (int)this.mContentBounds.right, (int)this.mContentBounds.bottom);
        this.buildShadowCorners();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void buildShadowCorners() {
        int n2;
        int n3;
        Paint paint;
        float f2;
        int n4;
        RectF rectF = new RectF(- this.mCornerRadius, - this.mCornerRadius, this.mCornerRadius, this.mCornerRadius);
        RectF rectF2 = new RectF(rectF);
        rectF2.inset(- this.mShadowSize, - this.mShadowSize);
        if (this.mCornerShadowPath == null) {
            this.mCornerShadowPath = new Path();
        } else {
            this.mCornerShadowPath.reset();
        }
        this.mCornerShadowPath.setFillType(Path.FillType.EVEN_ODD);
        this.mCornerShadowPath.moveTo(- this.mCornerRadius, 0.0f);
        this.mCornerShadowPath.rLineTo(- this.mShadowSize, 0.0f);
        this.mCornerShadowPath.arcTo(rectF2, 180.0f, 90.0f, false);
        this.mCornerShadowPath.arcTo(rectF, 270.0f, -90.0f, false);
        this.mCornerShadowPath.close();
        float f3 = - rectF2.top;
        if (f3 > 0.0f) {
            f2 = this.mCornerRadius / f3;
            float f4 = (1.0f - f2) / 2.0f;
            paint = this.mCornerShadowPaint;
            n4 = this.mShadowStartColor;
            n3 = this.mShadowMiddleColor;
            n2 = this.mShadowEndColor;
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            paint.setShader((Shader)new RadialGradient(0.0f, 0.0f, f3, new int[]{0, n4, n3, n2}, new float[]{0.0f, f2, f2 + f4, 1.0f}, tileMode));
        }
        paint = this.mEdgeShadowPaint;
        f3 = rectF.top;
        f2 = rectF2.top;
        n4 = this.mShadowStartColor;
        n3 = this.mShadowMiddleColor;
        n2 = this.mShadowEndColor;
        rectF = Shader.TileMode.CLAMP;
        paint.setShader((Shader)new LinearGradient(0.0f, f3, 0.0f, f2, new int[]{n4, n3, n2}, new float[]{0.0f, 0.5f, 1.0f}, (Shader.TileMode)rectF));
        this.mEdgeShadowPaint.setAntiAlias(false);
    }

    public static float calculateHorizontalPadding(float f2, float f3, boolean bl) {
        float f4 = f2;
        if (bl) {
            f4 = (float)((double)f2 + (1.0 - COS_45) * (double)f3);
        }
        return f4;
    }

    public static float calculateVerticalPadding(float f2, float f3, boolean bl) {
        if (bl) {
            return (float)((double)(1.5f * f2) + (1.0 - COS_45) * (double)f3);
        }
        return 1.5f * f2;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void drawShadow(Canvas canvas) {
        int n2 = canvas.save();
        canvas.rotate(this.mRotation, this.mContentBounds.centerX(), this.mContentBounds.centerY());
        float f2 = - this.mCornerRadius - this.mShadowSize;
        float f3 = this.mCornerRadius;
        int n3 = this.mContentBounds.width() - 2.0f * f3 > 0.0f ? 1 : 0;
        boolean bl = this.mContentBounds.height() - 2.0f * f3 > 0.0f;
        float f4 = this.mRawShadowSize;
        float f5 = this.mRawShadowSize;
        float f6 = this.mRawShadowSize;
        float f7 = this.mRawShadowSize;
        float f8 = this.mRawShadowSize;
        float f9 = this.mRawShadowSize;
        f6 = f3 / (f3 + (f6 - f7 * 0.5f));
        f4 = f3 / (f3 + (f4 - f5 * 0.25f));
        f8 = f3 / (f3 + (f8 - f9 * 1.0f));
        int n4 = canvas.save();
        canvas.translate(this.mContentBounds.left + f3, this.mContentBounds.top + f3);
        canvas.scale(f6, f4);
        canvas.drawPath(this.mCornerShadowPath, this.mCornerShadowPaint);
        if (n3 != 0) {
            canvas.scale(1.0f / f6, 1.0f);
            canvas.drawRect(0.0f, f2, this.mContentBounds.width() - 2.0f * f3, - this.mCornerRadius, this.mEdgeShadowPaint);
        }
        canvas.restoreToCount(n4);
        n4 = canvas.save();
        canvas.translate(this.mContentBounds.right - f3, this.mContentBounds.bottom - f3);
        canvas.scale(f6, f8);
        canvas.rotate(180.0f);
        canvas.drawPath(this.mCornerShadowPath, this.mCornerShadowPaint);
        if (n3 != 0) {
            canvas.scale(1.0f / f6, 1.0f);
            f9 = this.mContentBounds.width();
            f5 = - this.mCornerRadius;
            canvas.drawRect(0.0f, f2, f9 - 2.0f * f3, this.mShadowSize + f5, this.mEdgeShadowPaint);
        }
        canvas.restoreToCount(n4);
        n3 = canvas.save();
        canvas.translate(this.mContentBounds.left + f3, this.mContentBounds.bottom - f3);
        canvas.scale(f6, f8);
        canvas.rotate(270.0f);
        canvas.drawPath(this.mCornerShadowPath, this.mCornerShadowPaint);
        if (bl) {
            canvas.scale(1.0f / f8, 1.0f);
            canvas.drawRect(0.0f, f2, this.mContentBounds.height() - 2.0f * f3, - this.mCornerRadius, this.mEdgeShadowPaint);
        }
        canvas.restoreToCount(n3);
        n3 = canvas.save();
        canvas.translate(this.mContentBounds.right - f3, this.mContentBounds.top + f3);
        canvas.scale(f6, f4);
        canvas.rotate(90.0f);
        canvas.drawPath(this.mCornerShadowPath, this.mCornerShadowPaint);
        if (bl) {
            canvas.scale(1.0f / f4, 1.0f);
            canvas.drawRect(0.0f, f2, this.mContentBounds.height() - 2.0f * f3, - this.mCornerRadius, this.mEdgeShadowPaint);
        }
        canvas.restoreToCount(n3);
        canvas.restoreToCount(n2);
    }

    private static int toEven(float f2) {
        int n2;
        int n3 = n2 = Math.round(f2);
        if (n2 % 2 == 1) {
            n3 = n2 - 1;
        }
        return n3;
    }

    @Override
    public void draw(Canvas canvas) {
        if (this.mDirty) {
            this.buildComponents(this.getBounds());
            this.mDirty = false;
        }
        this.drawShadow(canvas);
        super.draw(canvas);
    }

    public float getCornerRadius() {
        return this.mCornerRadius;
    }

    public float getMaxShadowSize() {
        return this.mRawMaxShadowSize;
    }

    public float getMinHeight() {
        float f2 = Math.max(this.mRawMaxShadowSize, this.mCornerRadius + this.mRawMaxShadowSize * 1.5f / 2.0f);
        return this.mRawMaxShadowSize * 1.5f * 2.0f + 2.0f * f2;
    }

    public float getMinWidth() {
        float f2 = Math.max(this.mRawMaxShadowSize, this.mCornerRadius + this.mRawMaxShadowSize / 2.0f);
        return this.mRawMaxShadowSize * 2.0f + 2.0f * f2;
    }

    @Override
    public int getOpacity() {
        return -3;
    }

    @Override
    public boolean getPadding(Rect rect) {
        int n2 = (int)Math.ceil(ShadowDrawableWrapper.calculateVerticalPadding(this.mRawMaxShadowSize, this.mCornerRadius, this.mAddPaddingForCorners));
        int n3 = (int)Math.ceil(ShadowDrawableWrapper.calculateHorizontalPadding(this.mRawMaxShadowSize, this.mCornerRadius, this.mAddPaddingForCorners));
        rect.set(n3, n2, n3, n2);
        return true;
    }

    public float getShadowSize() {
        return this.mRawShadowSize;
    }

    @Override
    protected void onBoundsChange(Rect rect) {
        this.mDirty = true;
    }

    public void setAddPaddingForCorners(boolean bl) {
        this.mAddPaddingForCorners = bl;
        this.invalidateSelf();
    }

    @Override
    public void setAlpha(int n2) {
        super.setAlpha(n2);
        this.mCornerShadowPaint.setAlpha(n2);
        this.mEdgeShadowPaint.setAlpha(n2);
    }

    public void setCornerRadius(float f2) {
        if (this.mCornerRadius == (f2 = (float)Math.round(f2))) {
            return;
        }
        this.mCornerRadius = f2;
        this.mDirty = true;
        this.invalidateSelf();
    }

    public void setMaxShadowSize(float f2) {
        this.setShadowSize(this.mRawShadowSize, f2);
    }

    final void setRotation(float f2) {
        if (this.mRotation != f2) {
            this.mRotation = f2;
            this.invalidateSelf();
        }
    }

    public void setShadowSize(float f2) {
        this.setShadowSize(f2, this.mRawMaxShadowSize);
    }

    void setShadowSize(float f2, float f3) {
        if (f2 < 0.0f || f3 < 0.0f) {
            throw new IllegalArgumentException("invalid shadow size");
        }
        float f4 = ShadowDrawableWrapper.toEven(f2);
        float f5 = ShadowDrawableWrapper.toEven(f3);
        f2 = f4;
        if (f4 > f5) {
            f2 = f3 = f5;
            if (!this.mPrintedShadowClipWarning) {
                this.mPrintedShadowClipWarning = true;
                f2 = f3;
            }
        }
        if (this.mRawShadowSize == f2 && this.mRawMaxShadowSize == f5) {
            return;
        }
        this.mRawShadowSize = f2;
        this.mRawMaxShadowSize = f5;
        this.mShadowSize = Math.round(1.5f * f2);
        this.mMaxShadowSize = f5;
        this.mDirty = true;
        this.invalidateSelf();
    }
}

