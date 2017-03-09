/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.ColorStateList
 */
package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.support.annotation.Nullable;
import android.support.v7.widget.CardViewDelegate;

interface CardViewImpl {
    public ColorStateList getBackgroundColor(CardViewDelegate var1);

    public float getElevation(CardViewDelegate var1);

    public float getMaxElevation(CardViewDelegate var1);

    public float getMinHeight(CardViewDelegate var1);

    public float getMinWidth(CardViewDelegate var1);

    public float getRadius(CardViewDelegate var1);

    public void initStatic();

    public void initialize(CardViewDelegate var1, Context var2, ColorStateList var3, float var4, float var5, float var6);

    public void onCompatPaddingChanged(CardViewDelegate var1);

    public void onPreventCornerOverlapChanged(CardViewDelegate var1);

    public void setBackgroundColor(CardViewDelegate var1, @Nullable ColorStateList var2);

    public void setElevation(CardViewDelegate var1, float var2);

    public void setMaxElevation(CardViewDelegate var1, float var2);

    public void setRadius(CardViewDelegate var1, float var2);

    public void updatePadding(CardViewDelegate var1);
}

