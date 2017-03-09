/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.animation.Animator
 *  android.animation.Animator$AnimatorListener
 *  android.animation.ObjectAnimator
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

import android.animation.Animator;
import android.animation.ObjectAnimator;
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
import com.buzzfeed.toolkit.util.AnimatorListener;
import uk.co.chrisjenx.calligraphy.TypefaceUtils;

public class TextCardView
extends CardView {
    private TextView mTextView;

    public TextCardView(Context context) {
        this(context, null);
    }

    public TextCardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TextCardView(Context context, AttributeSet attributeSet, int n2) {
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
        n2 = (int)TextCardView.convertDpToPx(this.getContext(), 10.0f);
        attributeSet.setPadding(n2, 0, n2, 0);
        this.addView((View)attributeSet);
        this.mTextView = attributeSet;
        this.mTextView.setTypeface(TypefaceUtils.load((AssetManager)context.getAssets(), (String)"fonts/ProximaNova-Sbold.ttf"));
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

    public void setText(final CharSequence charSequence, boolean bl) {
        if (!bl) {
            this.mTextView.setText(charSequence);
            return;
        }
        ObjectAnimator objectAnimator = ObjectAnimator.ofFloat((Object)this.mTextView, (String)"alpha", (float[])new float[]{1.0f, 0.0f});
        objectAnimator.setDuration(500);
        objectAnimator.addListener((Animator.AnimatorListener)new AnimatorListener(){

            @Override
            public void onAnimationEnd(Animator animator2) {
                TextCardView.this.mTextView.setText(charSequence);
                animator2 = ObjectAnimator.ofFloat((Object)TextCardView.this.mTextView, (String)"alpha", (float[])new float[]{0.0f, 1.0f});
                animator2.setDuration(500);
                animator2.start();
            }
        });
        objectAnimator.start();
    }

}

