/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.animation.Animator
 *  android.animation.AnimatorSet
 *  android.animation.AnimatorSet$Builder
 *  android.animation.ObjectAnimator
 *  android.animation.StateListAnimator
 *  android.animation.TimeInterpolator
 *  android.annotation.TargetApi
 *  android.content.res.ColorStateList
 *  android.graphics.PorterDuff
 *  android.graphics.PorterDuff$Mode
 *  android.graphics.Rect
 *  android.graphics.drawable.Drawable
 *  android.graphics.drawable.GradientDrawable
 *  android.graphics.drawable.InsetDrawable
 *  android.graphics.drawable.LayerDrawable
 *  android.graphics.drawable.RippleDrawable
 *  android.util.Property
 *  android.view.View
 *  android.view.animation.Interpolator
 */
package android.support.design.widget;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.animation.TimeInterpolator;
import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.support.design.widget.CircularBorderDrawable;
import android.support.design.widget.CircularBorderDrawableLollipop;
import android.support.design.widget.FloatingActionButtonIcs;
import android.support.design.widget.ShadowDrawableWrapper;
import android.support.design.widget.ShadowViewDelegate;
import android.support.design.widget.ValueAnimatorCompat;
import android.support.design.widget.VisibilityAwareImageButton;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.util.Property;
import android.view.View;
import android.view.animation.Interpolator;

@TargetApi(value=21)
class FloatingActionButtonLollipop
extends FloatingActionButtonIcs {
    private InsetDrawable mInsetDrawable;

    FloatingActionButtonLollipop(VisibilityAwareImageButton visibilityAwareImageButton, ShadowViewDelegate shadowViewDelegate, ValueAnimatorCompat.Creator creator) {
        super(visibilityAwareImageButton, shadowViewDelegate, creator);
    }

    @Override
    public float getElevation() {
        return this.mView.getElevation();
    }

    @Override
    void getPadding(Rect rect) {
        if (this.mShadowViewDelegate.isCompatPaddingEnabled()) {
            float f2 = this.mShadowViewDelegate.getRadius();
            float f3 = this.getElevation() + this.mPressedTranslationZ;
            int n2 = (int)Math.ceil(ShadowDrawableWrapper.calculateHorizontalPadding(f3, f2, false));
            int n3 = (int)Math.ceil(ShadowDrawableWrapper.calculateVerticalPadding(f3, f2, false));
            rect.set(n2, n3, n2, n3);
            return;
        }
        rect.set(0, 0, 0, 0);
    }

    @Override
    void jumpDrawableToCurrentState() {
    }

    @Override
    CircularBorderDrawable newCircularDrawable() {
        return new CircularBorderDrawableLollipop();
    }

    @Override
    void onCompatShadowChanged() {
        this.updatePadding();
    }

    @Override
    void onDrawableStateChanged(int[] arrn) {
    }

    @Override
    void onElevationsChanged(float f2, float f3) {
        StateListAnimator stateListAnimator = new StateListAnimator();
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play((Animator)ObjectAnimator.ofFloat((Object)((Object)this.mView), (String)"elevation", (float[])new float[]{f2}).setDuration(0)).with((Animator)ObjectAnimator.ofFloat((Object)((Object)this.mView), (Property)View.TRANSLATION_Z, (float[])new float[]{f3}).setDuration(100));
        animatorSet.setInterpolator((TimeInterpolator)ANIM_INTERPOLATOR);
        stateListAnimator.addState(PRESSED_ENABLED_STATE_SET, (Animator)animatorSet);
        animatorSet = new AnimatorSet();
        animatorSet.play((Animator)ObjectAnimator.ofFloat((Object)((Object)this.mView), (String)"elevation", (float[])new float[]{f2}).setDuration(0)).with((Animator)ObjectAnimator.ofFloat((Object)((Object)this.mView), (Property)View.TRANSLATION_Z, (float[])new float[]{f3}).setDuration(100));
        animatorSet.setInterpolator((TimeInterpolator)ANIM_INTERPOLATOR);
        stateListAnimator.addState(FOCUSED_ENABLED_STATE_SET, (Animator)animatorSet);
        animatorSet = new AnimatorSet();
        AnimatorSet animatorSet2 = new AnimatorSet();
        animatorSet2.play((Animator)ObjectAnimator.ofFloat((Object)((Object)this.mView), (Property)View.TRANSLATION_Z, (float[])new float[]{0.0f}).setDuration(100)).after(100);
        animatorSet.play((Animator)ObjectAnimator.ofFloat((Object)((Object)this.mView), (String)"elevation", (float[])new float[]{f2}).setDuration(0)).with((Animator)animatorSet2);
        animatorSet.setInterpolator((TimeInterpolator)ANIM_INTERPOLATOR);
        stateListAnimator.addState(ENABLED_STATE_SET, (Animator)animatorSet);
        animatorSet = new AnimatorSet();
        animatorSet.play((Animator)ObjectAnimator.ofFloat((Object)((Object)this.mView), (String)"elevation", (float[])new float[]{0.0f}).setDuration(0)).with((Animator)ObjectAnimator.ofFloat((Object)((Object)this.mView), (Property)View.TRANSLATION_Z, (float[])new float[]{0.0f}).setDuration(0));
        animatorSet.setInterpolator((TimeInterpolator)ANIM_INTERPOLATOR);
        stateListAnimator.addState(EMPTY_STATE_SET, (Animator)animatorSet);
        this.mView.setStateListAnimator(stateListAnimator);
        if (this.mShadowViewDelegate.isCompatPaddingEnabled()) {
            this.updatePadding();
        }
    }

    @Override
    void onPaddingUpdated(Rect rect) {
        if (this.mShadowViewDelegate.isCompatPaddingEnabled()) {
            this.mInsetDrawable = new InsetDrawable(this.mRippleDrawable, rect.left, rect.top, rect.right, rect.bottom);
            this.mShadowViewDelegate.setBackgroundDrawable((Drawable)this.mInsetDrawable);
            return;
        }
        this.mShadowViewDelegate.setBackgroundDrawable(this.mRippleDrawable);
    }

    @Override
    boolean requirePreDrawListener() {
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    void setBackgroundDrawable(ColorStateList colorStateList, PorterDuff.Mode mode, int n2, int n3) {
        this.mShapeDrawable = DrawableCompat.wrap((Drawable)this.createShapeDrawable());
        DrawableCompat.setTintList(this.mShapeDrawable, colorStateList);
        if (mode != null) {
            DrawableCompat.setTintMode(this.mShapeDrawable, mode);
        }
        if (n3 > 0) {
            this.mBorderDrawable = this.createBorderDrawable(n3, colorStateList);
            colorStateList = new LayerDrawable(new Drawable[]{this.mBorderDrawable, this.mShapeDrawable});
        } else {
            this.mBorderDrawable = null;
            colorStateList = this.mShapeDrawable;
        }
        this.mContentBackground = this.mRippleDrawable = new RippleDrawable(ColorStateList.valueOf((int)n2), (Drawable)colorStateList, null);
        this.mShadowViewDelegate.setBackgroundDrawable(this.mRippleDrawable);
    }

    @Override
    void setRippleColor(int n2) {
        if (this.mRippleDrawable instanceof RippleDrawable) {
            ((RippleDrawable)this.mRippleDrawable).setColor(ColorStateList.valueOf((int)n2));
            return;
        }
        super.setRippleColor(n2);
    }
}

