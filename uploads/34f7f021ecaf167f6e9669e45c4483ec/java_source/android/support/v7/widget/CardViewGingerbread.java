/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.ColorStateList
 *  android.content.res.Resources
 *  android.graphics.Canvas
 *  android.graphics.Paint
 *  android.graphics.Rect
 *  android.graphics.RectF
 *  android.graphics.drawable.Drawable
 */
package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.support.v7.widget.CardViewDelegate;
import android.support.v7.widget.CardViewImpl;
import android.support.v7.widget.RoundRectDrawableWithShadow;

class CardViewGingerbread
implements CardViewImpl {
    final RectF sCornerRect = new RectF();

    CardViewGingerbread() {
    }

    private RoundRectDrawableWithShadow createBackground(Context context, ColorStateList colorStateList, float f2, float f3, float f4) {
        return new RoundRectDrawableWithShadow(context.getResources(), colorStateList, f2, f3, f4);
    }

    private RoundRectDrawableWithShadow getShadowBackground(CardViewDelegate cardViewDelegate) {
        return (RoundRectDrawableWithShadow)cardViewDelegate.getCardBackground();
    }

    @Override
    public ColorStateList getBackgroundColor(CardViewDelegate cardViewDelegate) {
        return this.getShadowBackground(cardViewDelegate).getColor();
    }

    @Override
    public float getElevation(CardViewDelegate cardViewDelegate) {
        return this.getShadowBackground(cardViewDelegate).getShadowSize();
    }

    @Override
    public float getMaxElevation(CardViewDelegate cardViewDelegate) {
        return this.getShadowBackground(cardViewDelegate).getMaxShadowSize();
    }

    @Override
    public float getMinHeight(CardViewDelegate cardViewDelegate) {
        return this.getShadowBackground(cardViewDelegate).getMinHeight();
    }

    @Override
    public float getMinWidth(CardViewDelegate cardViewDelegate) {
        return this.getShadowBackground(cardViewDelegate).getMinWidth();
    }

    @Override
    public float getRadius(CardViewDelegate cardViewDelegate) {
        return this.getShadowBackground(cardViewDelegate).getCornerRadius();
    }

    @Override
    public void initStatic() {
        RoundRectDrawableWithShadow.sRoundRectHelper = new RoundRectDrawableWithShadow.RoundRectHelper(){

            @Override
            public void drawRoundRect(Canvas canvas, RectF rectF, float f2, Paint paint) {
                float f3 = f2 * 2.0f;
                float f4 = rectF.width() - f3 - 1.0f;
                float f5 = rectF.height();
                if (f2 >= 1.0f) {
                    float f6 = f2 + 0.5f;
                    CardViewGingerbread.this.sCornerRect.set(- f6, - f6, f6, f6);
                    int n2 = canvas.save();
                    canvas.translate(rectF.left + f6, rectF.top + f6);
                    canvas.drawArc(CardViewGingerbread.this.sCornerRect, 180.0f, 90.0f, true, paint);
                    canvas.translate(f4, 0.0f);
                    canvas.rotate(90.0f);
                    canvas.drawArc(CardViewGingerbread.this.sCornerRect, 180.0f, 90.0f, true, paint);
                    canvas.translate(f5 - f3 - 1.0f, 0.0f);
                    canvas.rotate(90.0f);
                    canvas.drawArc(CardViewGingerbread.this.sCornerRect, 180.0f, 90.0f, true, paint);
                    canvas.translate(f4, 0.0f);
                    canvas.rotate(90.0f);
                    canvas.drawArc(CardViewGingerbread.this.sCornerRect, 180.0f, 90.0f, true, paint);
                    canvas.restoreToCount(n2);
                    canvas.drawRect(rectF.left + f6 - 1.0f, rectF.top, 1.0f + (rectF.right - f6), rectF.top + f6, paint);
                    canvas.drawRect(rectF.left + f6 - 1.0f, rectF.bottom - f6, 1.0f + (rectF.right - f6), rectF.bottom, paint);
                }
                canvas.drawRect(rectF.left, rectF.top + f2, rectF.right, rectF.bottom - f2, paint);
            }
        };
    }

    @Override
    public void initialize(CardViewDelegate cardViewDelegate, Context object, ColorStateList colorStateList, float f2, float f3, float f4) {
        object = this.createBackground((Context)object, colorStateList, f2, f3, f4);
        object.setAddPaddingForCorners(cardViewDelegate.getPreventCornerOverlap());
        cardViewDelegate.setCardBackground((Drawable)object);
        this.updatePadding(cardViewDelegate);
    }

    @Override
    public void onCompatPaddingChanged(CardViewDelegate cardViewDelegate) {
    }

    @Override
    public void onPreventCornerOverlapChanged(CardViewDelegate cardViewDelegate) {
        this.getShadowBackground(cardViewDelegate).setAddPaddingForCorners(cardViewDelegate.getPreventCornerOverlap());
        this.updatePadding(cardViewDelegate);
    }

    @Override
    public void setBackgroundColor(CardViewDelegate cardViewDelegate, @Nullable ColorStateList colorStateList) {
        this.getShadowBackground(cardViewDelegate).setColor(colorStateList);
    }

    @Override
    public void setElevation(CardViewDelegate cardViewDelegate, float f2) {
        this.getShadowBackground(cardViewDelegate).setShadowSize(f2);
    }

    @Override
    public void setMaxElevation(CardViewDelegate cardViewDelegate, float f2) {
        this.getShadowBackground(cardViewDelegate).setMaxShadowSize(f2);
        this.updatePadding(cardViewDelegate);
    }

    @Override
    public void setRadius(CardViewDelegate cardViewDelegate, float f2) {
        this.getShadowBackground(cardViewDelegate).setCornerRadius(f2);
        this.updatePadding(cardViewDelegate);
    }

    @Override
    public void updatePadding(CardViewDelegate cardViewDelegate) {
        Rect rect = new Rect();
        this.getShadowBackground(cardViewDelegate).getMaxShadowAndCornerPadding(rect);
        cardViewDelegate.setMinWidthHeightInternal((int)Math.ceil(this.getMinWidth(cardViewDelegate)), (int)Math.ceil(this.getMinHeight(cardViewDelegate)));
        cardViewDelegate.setShadowPadding(rect.left, rect.top, rect.right, rect.bottom);
    }

}

