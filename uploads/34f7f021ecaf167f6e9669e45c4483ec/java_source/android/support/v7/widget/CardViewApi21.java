/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.ColorStateList
 *  android.graphics.drawable.Drawable
 *  android.view.View
 */
package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.support.v7.widget.CardViewDelegate;
import android.support.v7.widget.CardViewImpl;
import android.support.v7.widget.RoundRectDrawable;
import android.support.v7.widget.RoundRectDrawableWithShadow;
import android.view.View;

class CardViewApi21
implements CardViewImpl {
    CardViewApi21() {
    }

    private RoundRectDrawable getCardBackground(CardViewDelegate cardViewDelegate) {
        return (RoundRectDrawable)cardViewDelegate.getCardBackground();
    }

    @Override
    public ColorStateList getBackgroundColor(CardViewDelegate cardViewDelegate) {
        return this.getCardBackground(cardViewDelegate).getColor();
    }

    @Override
    public float getElevation(CardViewDelegate cardViewDelegate) {
        return cardViewDelegate.getCardView().getElevation();
    }

    @Override
    public float getMaxElevation(CardViewDelegate cardViewDelegate) {
        return this.getCardBackground(cardViewDelegate).getPadding();
    }

    @Override
    public float getMinHeight(CardViewDelegate cardViewDelegate) {
        return this.getRadius(cardViewDelegate) * 2.0f;
    }

    @Override
    public float getMinWidth(CardViewDelegate cardViewDelegate) {
        return this.getRadius(cardViewDelegate) * 2.0f;
    }

    @Override
    public float getRadius(CardViewDelegate cardViewDelegate) {
        return this.getCardBackground(cardViewDelegate).getRadius();
    }

    @Override
    public void initStatic() {
    }

    @Override
    public void initialize(CardViewDelegate cardViewDelegate, Context context, ColorStateList colorStateList, float f2, float f3, float f4) {
        cardViewDelegate.setCardBackground(new RoundRectDrawable(colorStateList, f2));
        context = cardViewDelegate.getCardView();
        context.setClipToOutline(true);
        context.setElevation(f3);
        this.setMaxElevation(cardViewDelegate, f4);
    }

    @Override
    public void onCompatPaddingChanged(CardViewDelegate cardViewDelegate) {
        this.setMaxElevation(cardViewDelegate, this.getMaxElevation(cardViewDelegate));
    }

    @Override
    public void onPreventCornerOverlapChanged(CardViewDelegate cardViewDelegate) {
        this.setMaxElevation(cardViewDelegate, this.getMaxElevation(cardViewDelegate));
    }

    @Override
    public void setBackgroundColor(CardViewDelegate cardViewDelegate, @Nullable ColorStateList colorStateList) {
        this.getCardBackground(cardViewDelegate).setColor(colorStateList);
    }

    @Override
    public void setElevation(CardViewDelegate cardViewDelegate, float f2) {
        cardViewDelegate.getCardView().setElevation(f2);
    }

    @Override
    public void setMaxElevation(CardViewDelegate cardViewDelegate, float f2) {
        this.getCardBackground(cardViewDelegate).setPadding(f2, cardViewDelegate.getUseCompatPadding(), cardViewDelegate.getPreventCornerOverlap());
        this.updatePadding(cardViewDelegate);
    }

    @Override
    public void setRadius(CardViewDelegate cardViewDelegate, float f2) {
        this.getCardBackground(cardViewDelegate).setRadius(f2);
    }

    @Override
    public void updatePadding(CardViewDelegate cardViewDelegate) {
        if (!cardViewDelegate.getUseCompatPadding()) {
            cardViewDelegate.setShadowPadding(0, 0, 0, 0);
            return;
        }
        float f2 = this.getMaxElevation(cardViewDelegate);
        float f3 = this.getRadius(cardViewDelegate);
        int n2 = (int)Math.ceil(RoundRectDrawableWithShadow.calculateHorizontalPadding(f2, f3, cardViewDelegate.getPreventCornerOverlap()));
        int n3 = (int)Math.ceil(RoundRectDrawableWithShadow.calculateVerticalPadding(f2, f3, cardViewDelegate.getPreventCornerOverlap()));
        cardViewDelegate.setShadowPadding(n2, n3, n2, n3);
    }
}

