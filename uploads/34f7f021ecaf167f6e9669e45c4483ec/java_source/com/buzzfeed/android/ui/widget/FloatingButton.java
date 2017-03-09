/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.AssetManager
 *  android.content.res.Resources
 *  android.graphics.Typeface
 *  android.util.AttributeSet
 *  android.util.DisplayMetrics
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.widget.TextView
 *  uk.co.chrisjenx.calligraphy.TypefaceUtils
 */
package com.buzzfeed.android.ui.widget;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.support.v7.widget.CardView;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import uk.co.chrisjenx.calligraphy.TypefaceUtils;

public class FloatingButton
extends CardView {
    private TextView mTextView;

    public FloatingButton(Context context) {
        this(context, null);
    }

    public FloatingButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FloatingButton(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
        if (!this.isInEditMode()) {
            this.initialize(attributeSet, n2);
        }
    }

    private static float convertDpToPx(Context context, float f2) {
        return f2 * ((float)context.getResources().getDisplayMetrics().densityDpi / 160.0f);
    }

    private void initialize(AttributeSet attributeSet, int n2) {
        Context context = this.getContext();
        attributeSet = new TextView(context, attributeSet, n2);
        attributeSet.setOnClickListener(null);
        attributeSet.setClickable(false);
        attributeSet.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        attributeSet.setFocusable(true);
        attributeSet.setFocusableInTouchMode(true);
        attributeSet.setGravity(17);
        attributeSet.setTypeface(TypefaceUtils.load((AssetManager)context.getAssets(), (String)"fonts/ProximaNova-Sbold.ttf"));
        n2 = (int)FloatingButton.convertDpToPx(this.getContext(), 10.0f);
        attributeSet.setPadding(n2, 0, n2, 0);
        this.addView((View)attributeSet);
        this.mTextView = attributeSet;
    }

    public CharSequence getText() {
        return this.mTextView.getText();
    }

    public TextView getTextView() {
        return this.mTextView;
    }

    public void setText(int n2) {
        this.setText(this.getContext().getString(n2));
    }

    public void setText(CharSequence charSequence) {
        this.mTextView.setText(charSequence);
    }
}

