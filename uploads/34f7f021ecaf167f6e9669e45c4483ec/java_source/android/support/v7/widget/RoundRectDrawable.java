/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.res.ColorStateList
 *  android.graphics.Canvas
 *  android.graphics.ColorFilter
 *  android.graphics.Outline
 *  android.graphics.Paint
 *  android.graphics.PorterDuff
 *  android.graphics.PorterDuff$Mode
 *  android.graphics.PorterDuffColorFilter
 *  android.graphics.Rect
 *  android.graphics.RectF
 *  android.graphics.drawable.Drawable
 */
package android.support.v7.widget;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.support.v7.widget.RoundRectDrawableWithShadow;

class RoundRectDrawable
extends Drawable {
    private ColorStateList mBackground;
    private final RectF mBoundsF;
    private final Rect mBoundsI;
    private boolean mInsetForPadding = false;
    private boolean mInsetForRadius = true;
    private float mPadding;
    private final Paint mPaint;
    private float mRadius;
    private ColorStateList mTint;
    private PorterDuffColorFilter mTintFilter;
    private PorterDuff.Mode mTintMode = PorterDuff.Mode.SRC_IN;

    public RoundRectDrawable(ColorStateList colorStateList, float f2) {
        this.mRadius = f2;
        this.mPaint = new Paint(5);
        this.setBackground(colorStateList);
        this.mBoundsF = new RectF();
        this.mBoundsI = new Rect();
    }

    private PorterDuffColorFilter createTintFilter(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(this.getState(), 0), mode);
    }

    private void setBackground(ColorStateList colorStateList) {
        ColorStateList colorStateList2 = colorStateList;
        if (colorStateList == null) {
            colorStateList2 = ColorStateList.valueOf((int)0);
        }
        this.mBackground = colorStateList2;
        this.mPaint.setColor(this.mBackground.getColorForState(this.getState(), this.mBackground.getDefaultColor()));
    }

    private void updateBounds(Rect rect) {
        Rect rect2 = rect;
        if (rect == null) {
            rect2 = this.getBounds();
        }
        this.mBoundsF.set((float)rect2.left, (float)rect2.top, (float)rect2.right, (float)rect2.bottom);
        this.mBoundsI.set(rect2);
        if (this.mInsetForPadding) {
            float f2 = RoundRectDrawableWithShadow.calculateVerticalPadding(this.mPadding, this.mRadius, this.mInsetForRadius);
            float f3 = RoundRectDrawableWithShadow.calculateHorizontalPadding(this.mPadding, this.mRadius, this.mInsetForRadius);
            this.mBoundsI.inset((int)Math.ceil(f3), (int)Math.ceil(f2));
            this.mBoundsF.set(this.mBoundsI);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void draw(Canvas canvas) {
        boolean bl;
        Paint paint = this.mPaint;
        if (this.mTintFilter != null && paint.getColorFilter() == null) {
            paint.setColorFilter((ColorFilter)this.mTintFilter);
            bl = true;
        } else {
            bl = false;
        }
        canvas.drawRoundRect(this.mBoundsF, this.mRadius, this.mRadius, paint);
        if (bl) {
            paint.setColorFilter(null);
        }
    }

    public ColorStateList getColor() {
        return this.mBackground;
    }

    public int getOpacity() {
        return -3;
    }

    public void getOutline(Outline outline) {
        outline.setRoundRect(this.mBoundsI, this.mRadius);
    }

    float getPadding() {
        return this.mPadding;
    }

    public float getRadius() {
        return this.mRadius;
    }

    public boolean isStateful() {
        if (this.mTint != null && this.mTint.isStateful() || this.mBackground != null && this.mBackground.isStateful() || super.isStateful()) {
            return true;
        }
        return false;
    }

    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.updateBounds(rect);
    }

    /*
     * Enabled aggressive block sorting
     */
    protected boolean onStateChange(int[] arrn) {
        int n2 = this.mBackground.getColorForState(arrn, this.mBackground.getDefaultColor());
        boolean bl = n2 != this.mPaint.getColor();
        if (bl) {
            this.mPaint.setColor(n2);
        }
        boolean bl2 = bl;
        if (this.mTint == null) return bl2;
        bl2 = bl;
        if (this.mTintMode == null) return bl2;
        this.mTintFilter = this.createTintFilter(this.mTint, this.mTintMode);
        return true;
    }

    public void setAlpha(int n2) {
        this.mPaint.setAlpha(n2);
    }

    public void setColor(@Nullable ColorStateList colorStateList) {
        this.setBackground(colorStateList);
        this.invalidateSelf();
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.mPaint.setColorFilter(colorFilter);
    }

    void setPadding(float f2, boolean bl, boolean bl2) {
        if (f2 == this.mPadding && this.mInsetForPadding == bl && this.mInsetForRadius == bl2) {
            return;
        }
        this.mPadding = f2;
        this.mInsetForPadding = bl;
        this.mInsetForRadius = bl2;
        this.updateBounds(null);
        this.invalidateSelf();
    }

    void setRadius(float f2) {
        if (f2 == this.mRadius) {
            return;
        }
        this.mRadius = f2;
        this.updateBounds(null);
        this.invalidateSelf();
    }

    public void setTintList(ColorStateList colorStateList) {
        this.mTint = colorStateList;
        this.mTintFilter = this.createTintFilter(this.mTint, this.mTintMode);
        this.invalidateSelf();
    }

    public void setTintMode(PorterDuff.Mode mode) {
        this.mTintMode = mode;
        this.mTintFilter = this.createTintFilter(this.mTint, this.mTintMode);
        this.invalidateSelf();
    }
}

