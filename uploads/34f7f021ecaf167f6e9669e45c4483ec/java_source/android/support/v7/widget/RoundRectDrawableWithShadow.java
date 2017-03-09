/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.res.ColorStateList
 *  android.content.res.Resources
 *  android.graphics.Canvas
 *  android.graphics.ColorFilter
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
package android.support.v7.widget;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.support.v7.cardview.R;

class RoundRectDrawableWithShadow
extends Drawable {
    static final double COS_45 = Math.cos(Math.toRadians(45.0));
    static final float SHADOW_MULTIPLIER = 1.5f;
    static RoundRectHelper sRoundRectHelper;
    private boolean mAddPaddingForCorners = true;
    private ColorStateList mBackground;
    final RectF mCardBounds;
    float mCornerRadius;
    Paint mCornerShadowPaint;
    Path mCornerShadowPath;
    private boolean mDirty = true;
    Paint mEdgeShadowPaint;
    final int mInsetShadow;
    float mMaxShadowSize;
    Paint mPaint;
    private boolean mPrintedShadowClipWarning = false;
    float mRawMaxShadowSize;
    float mRawShadowSize;
    private final int mShadowEndColor;
    float mShadowSize;
    private final int mShadowStartColor;

    RoundRectDrawableWithShadow(Resources resources, ColorStateList colorStateList, float f2, float f3, float f4) {
        this.mShadowStartColor = resources.getColor(R.color.cardview_shadow_start_color);
        this.mShadowEndColor = resources.getColor(R.color.cardview_shadow_end_color);
        this.mInsetShadow = resources.getDimensionPixelSize(R.dimen.cardview_compat_inset_shadow);
        this.mPaint = new Paint(5);
        this.setBackground(colorStateList);
        this.mCornerShadowPaint = new Paint(5);
        this.mCornerShadowPaint.setStyle(Paint.Style.FILL);
        this.mCornerRadius = (int)(0.5f + f2);
        this.mCardBounds = new RectF();
        this.mEdgeShadowPaint = new Paint(this.mCornerShadowPaint);
        this.mEdgeShadowPaint.setAntiAlias(false);
        this.setShadowSize(f3, f4);
    }

    private void buildComponents(Rect rect) {
        float f2 = this.mRawMaxShadowSize * 1.5f;
        this.mCardBounds.set((float)rect.left + this.mRawMaxShadowSize, (float)rect.top + f2, (float)rect.right - this.mRawMaxShadowSize, (float)rect.bottom - f2);
        this.buildShadowCorners();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void buildShadowCorners() {
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
        float f2 = this.mCornerRadius / (this.mCornerRadius + this.mShadowSize);
        rectF = this.mCornerShadowPaint;
        float f3 = this.mCornerRadius;
        float f4 = this.mShadowSize;
        int n2 = this.mShadowStartColor;
        int n3 = this.mShadowStartColor;
        int n4 = this.mShadowEndColor;
        rectF2 = Shader.TileMode.CLAMP;
        rectF.setShader((Shader)new RadialGradient(0.0f, 0.0f, f3 + f4, new int[]{n2, n3, n4}, new float[]{0.0f, f2, 1.0f}, (Shader.TileMode)rectF2));
        rectF = this.mEdgeShadowPaint;
        f2 = - this.mCornerRadius;
        f3 = this.mShadowSize;
        f4 = - this.mCornerRadius;
        float f5 = this.mShadowSize;
        n2 = this.mShadowStartColor;
        n3 = this.mShadowStartColor;
        n4 = this.mShadowEndColor;
        rectF2 = Shader.TileMode.CLAMP;
        rectF.setShader((Shader)new LinearGradient(0.0f, f2 + f3, 0.0f, f4 - f5, new int[]{n2, n3, n4}, new float[]{0.0f, 0.5f, 1.0f}, (Shader.TileMode)rectF2));
        this.mEdgeShadowPaint.setAntiAlias(false);
    }

    static float calculateHorizontalPadding(float f2, float f3, boolean bl) {
        float f4 = f2;
        if (bl) {
            f4 = (float)((double)f2 + (1.0 - COS_45) * (double)f3);
        }
        return f4;
    }

    static float calculateVerticalPadding(float f2, float f3, boolean bl) {
        if (bl) {
            return (float)((double)(1.5f * f2) + (1.0 - COS_45) * (double)f3);
        }
        return 1.5f * f2;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void drawShadow(Canvas canvas) {
        float f2 = - this.mCornerRadius - this.mShadowSize;
        float f3 = this.mCornerRadius + (float)this.mInsetShadow + this.mRawShadowSize / 2.0f;
        int n2 = this.mCardBounds.width() - 2.0f * f3 > 0.0f ? 1 : 0;
        boolean bl = this.mCardBounds.height() - 2.0f * f3 > 0.0f;
        int n3 = canvas.save();
        canvas.translate(this.mCardBounds.left + f3, this.mCardBounds.top + f3);
        canvas.drawPath(this.mCornerShadowPath, this.mCornerShadowPaint);
        if (n2 != 0) {
            canvas.drawRect(0.0f, f2, this.mCardBounds.width() - 2.0f * f3, - this.mCornerRadius, this.mEdgeShadowPaint);
        }
        canvas.restoreToCount(n3);
        n3 = canvas.save();
        canvas.translate(this.mCardBounds.right - f3, this.mCardBounds.bottom - f3);
        canvas.rotate(180.0f);
        canvas.drawPath(this.mCornerShadowPath, this.mCornerShadowPaint);
        if (n2 != 0) {
            float f4 = this.mCardBounds.width();
            float f5 = - this.mCornerRadius;
            canvas.drawRect(0.0f, f2, f4 - 2.0f * f3, this.mShadowSize + f5, this.mEdgeShadowPaint);
        }
        canvas.restoreToCount(n3);
        n2 = canvas.save();
        canvas.translate(this.mCardBounds.left + f3, this.mCardBounds.bottom - f3);
        canvas.rotate(270.0f);
        canvas.drawPath(this.mCornerShadowPath, this.mCornerShadowPaint);
        if (bl) {
            canvas.drawRect(0.0f, f2, this.mCardBounds.height() - 2.0f * f3, - this.mCornerRadius, this.mEdgeShadowPaint);
        }
        canvas.restoreToCount(n2);
        n2 = canvas.save();
        canvas.translate(this.mCardBounds.right - f3, this.mCardBounds.top + f3);
        canvas.rotate(90.0f);
        canvas.drawPath(this.mCornerShadowPath, this.mCornerShadowPaint);
        if (bl) {
            canvas.drawRect(0.0f, f2, this.mCardBounds.height() - 2.0f * f3, - this.mCornerRadius, this.mEdgeShadowPaint);
        }
        canvas.restoreToCount(n2);
    }

    private void setBackground(ColorStateList colorStateList) {
        ColorStateList colorStateList2 = colorStateList;
        if (colorStateList == null) {
            colorStateList2 = ColorStateList.valueOf((int)0);
        }
        this.mBackground = colorStateList2;
        this.mPaint.setColor(this.mBackground.getColorForState(this.getState(), this.mBackground.getDefaultColor()));
    }

    private int toEven(float f2) {
        int n2;
        int n3 = n2 = (int)(0.5f + f2);
        if (n2 % 2 == 1) {
            n3 = n2 - 1;
        }
        return n3;
    }

    public void draw(Canvas canvas) {
        if (this.mDirty) {
            this.buildComponents(this.getBounds());
            this.mDirty = false;
        }
        canvas.translate(0.0f, this.mRawShadowSize / 2.0f);
        this.drawShadow(canvas);
        canvas.translate(0.0f, (- this.mRawShadowSize) / 2.0f);
        sRoundRectHelper.drawRoundRect(canvas, this.mCardBounds, this.mCornerRadius, this.mPaint);
    }

    ColorStateList getColor() {
        return this.mBackground;
    }

    float getCornerRadius() {
        return this.mCornerRadius;
    }

    void getMaxShadowAndCornerPadding(Rect rect) {
        this.getPadding(rect);
    }

    float getMaxShadowSize() {
        return this.mRawMaxShadowSize;
    }

    float getMinHeight() {
        float f2 = Math.max(this.mRawMaxShadowSize, this.mCornerRadius + (float)this.mInsetShadow + this.mRawMaxShadowSize * 1.5f / 2.0f);
        return (this.mRawMaxShadowSize * 1.5f + (float)this.mInsetShadow) * 2.0f + 2.0f * f2;
    }

    float getMinWidth() {
        float f2 = Math.max(this.mRawMaxShadowSize, this.mCornerRadius + (float)this.mInsetShadow + this.mRawMaxShadowSize / 2.0f);
        return (this.mRawMaxShadowSize + (float)this.mInsetShadow) * 2.0f + 2.0f * f2;
    }

    public int getOpacity() {
        return -3;
    }

    public boolean getPadding(Rect rect) {
        int n2 = (int)Math.ceil(RoundRectDrawableWithShadow.calculateVerticalPadding(this.mRawMaxShadowSize, this.mCornerRadius, this.mAddPaddingForCorners));
        int n3 = (int)Math.ceil(RoundRectDrawableWithShadow.calculateHorizontalPadding(this.mRawMaxShadowSize, this.mCornerRadius, this.mAddPaddingForCorners));
        rect.set(n3, n2, n3, n2);
        return true;
    }

    float getShadowSize() {
        return this.mRawShadowSize;
    }

    public boolean isStateful() {
        if (this.mBackground != null && this.mBackground.isStateful() || super.isStateful()) {
            return true;
        }
        return false;
    }

    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.mDirty = true;
    }

    protected boolean onStateChange(int[] arrn) {
        int n2 = this.mBackground.getColorForState(arrn, this.mBackground.getDefaultColor());
        if (this.mPaint.getColor() == n2) {
            return false;
        }
        this.mPaint.setColor(n2);
        this.mDirty = true;
        this.invalidateSelf();
        return true;
    }

    public void setAddPaddingForCorners(boolean bl) {
        this.mAddPaddingForCorners = bl;
        this.invalidateSelf();
    }

    public void setAlpha(int n2) {
        this.mPaint.setAlpha(n2);
        this.mCornerShadowPaint.setAlpha(n2);
        this.mEdgeShadowPaint.setAlpha(n2);
    }

    void setColor(@Nullable ColorStateList colorStateList) {
        this.setBackground(colorStateList);
        this.invalidateSelf();
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.mPaint.setColorFilter(colorFilter);
    }

    void setCornerRadius(float f2) {
        if (f2 < 0.0f) {
            throw new IllegalArgumentException("Invalid radius " + f2 + ". Must be >= 0");
        }
        if (this.mCornerRadius == (f2 = (float)((int)(0.5f + f2)))) {
            return;
        }
        this.mCornerRadius = f2;
        this.mDirty = true;
        this.invalidateSelf();
    }

    void setMaxShadowSize(float f2) {
        this.setShadowSize(this.mRawShadowSize, f2);
    }

    void setShadowSize(float f2) {
        this.setShadowSize(f2, this.mRawMaxShadowSize);
    }

    void setShadowSize(float f2, float f3) {
        if (f2 < 0.0f) {
            throw new IllegalArgumentException("Invalid shadow size " + f2 + ". Must be >= 0");
        }
        if (f3 < 0.0f) {
            throw new IllegalArgumentException("Invalid max shadow size " + f3 + ". Must be >= 0");
        }
        float f4 = this.toEven(f2);
        float f5 = this.toEven(f3);
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
        this.mShadowSize = (int)(1.5f * f2 + (float)this.mInsetShadow + 0.5f);
        this.mMaxShadowSize = (float)this.mInsetShadow + f5;
        this.mDirty = true;
        this.invalidateSelf();
    }

    static interface RoundRectHelper {
        public void drawRoundRect(Canvas var1, RectF var2, float var3, Paint var4);
    }

}

