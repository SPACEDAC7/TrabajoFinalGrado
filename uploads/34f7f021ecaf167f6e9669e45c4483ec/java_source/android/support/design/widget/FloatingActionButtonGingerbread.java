/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.ColorStateList
 *  android.graphics.PorterDuff
 *  android.graphics.PorterDuff$Mode
 *  android.graphics.Rect
 *  android.graphics.drawable.Drawable
 *  android.graphics.drawable.GradientDrawable
 *  android.graphics.drawable.LayerDrawable
 *  android.view.animation.Animation
 *  android.view.animation.Animation$AnimationListener
 *  android.view.animation.AnimationUtils
 *  android.view.animation.Interpolator
 */
package android.support.design.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.design.R;
import android.support.design.widget.AnimationUtils;
import android.support.design.widget.CircularBorderDrawable;
import android.support.design.widget.FloatingActionButtonImpl;
import android.support.design.widget.ShadowDrawableWrapper;
import android.support.design.widget.ShadowViewDelegate;
import android.support.design.widget.StateListAnimator;
import android.support.design.widget.ValueAnimatorCompat;
import android.support.design.widget.VisibilityAwareImageButton;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.view.animation.Animation;
import android.view.animation.Interpolator;

class FloatingActionButtonGingerbread
extends FloatingActionButtonImpl {
    ShadowDrawableWrapper mShadowDrawable;
    private final StateListAnimator mStateListAnimator = new StateListAnimator();

    FloatingActionButtonGingerbread(VisibilityAwareImageButton visibilityAwareImageButton, ShadowViewDelegate shadowViewDelegate, ValueAnimatorCompat.Creator creator) {
        super(visibilityAwareImageButton, shadowViewDelegate, creator);
        this.mStateListAnimator.addState(PRESSED_ENABLED_STATE_SET, this.createAnimator(new ElevateToTranslationZAnimation()));
        this.mStateListAnimator.addState(FOCUSED_ENABLED_STATE_SET, this.createAnimator(new ElevateToTranslationZAnimation()));
        this.mStateListAnimator.addState(ENABLED_STATE_SET, this.createAnimator(new ResetElevationAnimation()));
        this.mStateListAnimator.addState(EMPTY_STATE_SET, this.createAnimator(new DisabledElevationAnimation()));
    }

    private ValueAnimatorCompat createAnimator(@NonNull ShadowAnimatorImpl shadowAnimatorImpl) {
        ValueAnimatorCompat valueAnimatorCompat = this.mAnimatorCreator.createAnimator();
        valueAnimatorCompat.setInterpolator(ANIM_INTERPOLATOR);
        valueAnimatorCompat.setDuration(100);
        valueAnimatorCompat.addListener(shadowAnimatorImpl);
        valueAnimatorCompat.addUpdateListener(shadowAnimatorImpl);
        valueAnimatorCompat.setFloatValues(0.0f, 1.0f);
        return valueAnimatorCompat;
    }

    private static ColorStateList createColorStateList(int n2) {
        int[][] arrarrn = new int[3][];
        int[] arrn = new int[3];
        arrarrn[0] = FOCUSED_ENABLED_STATE_SET;
        arrn[0] = n2;
        int n3 = 0 + 1;
        arrarrn[n3] = PRESSED_ENABLED_STATE_SET;
        arrn[n3] = n2;
        n2 = n3 + 1;
        arrarrn[n2] = new int[0];
        arrn[n2] = 0;
        return new ColorStateList((int[][])arrarrn, arrn);
    }

    @Override
    float getElevation() {
        return this.mElevation;
    }

    @Override
    void getPadding(Rect rect) {
        this.mShadowDrawable.getPadding(rect);
    }

    @Override
    void hide(final @Nullable FloatingActionButtonImpl.InternalVisibilityChangedListener internalVisibilityChangedListener, final boolean bl) {
        if (this.isOrWillBeHidden()) {
            return;
        }
        this.mAnimState = 1;
        Animation animation = android.view.animation.AnimationUtils.loadAnimation((Context)this.mView.getContext(), (int)R.anim.design_fab_out);
        animation.setInterpolator(AnimationUtils.FAST_OUT_LINEAR_IN_INTERPOLATOR);
        animation.setDuration(200);
        animation.setAnimationListener((Animation.AnimationListener)new AnimationUtils.AnimationListenerAdapter(){

            @Override
            public void onAnimationEnd(Animation animation) {
                FloatingActionButtonGingerbread.this.mAnimState = 0;
                FloatingActionButtonGingerbread.this.mView.internalSetVisibility(8, bl);
                if (internalVisibilityChangedListener != null) {
                    internalVisibilityChangedListener.onHidden();
                }
            }
        });
        this.mView.startAnimation(animation);
    }

    @Override
    void jumpDrawableToCurrentState() {
        this.mStateListAnimator.jumpToCurrentState();
    }

    @Override
    void onCompatShadowChanged() {
    }

    @Override
    void onDrawableStateChanged(int[] arrn) {
        this.mStateListAnimator.setState(arrn);
    }

    @Override
    void onElevationsChanged(float f2, float f3) {
        if (this.mShadowDrawable != null) {
            this.mShadowDrawable.setShadowSize(f2, this.mPressedTranslationZ + f2);
            this.updatePadding();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    void setBackgroundDrawable(ColorStateList arrdrawable, PorterDuff.Mode mode, int n2, int n3) {
        this.mShapeDrawable = DrawableCompat.wrap((Drawable)this.createShapeDrawable());
        DrawableCompat.setTintList(this.mShapeDrawable, (ColorStateList)arrdrawable);
        if (mode != null) {
            DrawableCompat.setTintMode(this.mShapeDrawable, mode);
        }
        this.mRippleDrawable = DrawableCompat.wrap((Drawable)this.createShapeDrawable());
        DrawableCompat.setTintList(this.mRippleDrawable, FloatingActionButtonGingerbread.createColorStateList(n2));
        if (n3 > 0) {
            this.mBorderDrawable = this.createBorderDrawable(n3, (ColorStateList)arrdrawable);
            arrdrawable = new Drawable[]{this.mBorderDrawable, this.mShapeDrawable, this.mRippleDrawable};
        } else {
            this.mBorderDrawable = null;
            arrdrawable = new Drawable[]{this.mShapeDrawable, this.mRippleDrawable};
        }
        this.mContentBackground = new LayerDrawable(arrdrawable);
        this.mShadowDrawable = new ShadowDrawableWrapper(this.mView.getContext(), this.mContentBackground, this.mShadowViewDelegate.getRadius(), this.mElevation, this.mElevation + this.mPressedTranslationZ);
        this.mShadowDrawable.setAddPaddingForCorners(false);
        this.mShadowViewDelegate.setBackgroundDrawable(this.mShadowDrawable);
    }

    @Override
    void setBackgroundTintList(ColorStateList colorStateList) {
        if (this.mShapeDrawable != null) {
            DrawableCompat.setTintList(this.mShapeDrawable, colorStateList);
        }
        if (this.mBorderDrawable != null) {
            this.mBorderDrawable.setBorderTint(colorStateList);
        }
    }

    @Override
    void setBackgroundTintMode(PorterDuff.Mode mode) {
        if (this.mShapeDrawable != null) {
            DrawableCompat.setTintMode(this.mShapeDrawable, mode);
        }
    }

    @Override
    void setRippleColor(int n2) {
        if (this.mRippleDrawable != null) {
            DrawableCompat.setTintList(this.mRippleDrawable, FloatingActionButtonGingerbread.createColorStateList(n2));
        }
    }

    @Override
    void show(final @Nullable FloatingActionButtonImpl.InternalVisibilityChangedListener internalVisibilityChangedListener, boolean bl) {
        if (this.isOrWillBeShown()) {
            return;
        }
        this.mAnimState = 2;
        this.mView.internalSetVisibility(0, bl);
        Animation animation = android.view.animation.AnimationUtils.loadAnimation((Context)this.mView.getContext(), (int)R.anim.design_fab_in);
        animation.setDuration(200);
        animation.setInterpolator(AnimationUtils.LINEAR_OUT_SLOW_IN_INTERPOLATOR);
        animation.setAnimationListener((Animation.AnimationListener)new AnimationUtils.AnimationListenerAdapter(){

            @Override
            public void onAnimationEnd(Animation animation) {
                FloatingActionButtonGingerbread.this.mAnimState = 0;
                if (internalVisibilityChangedListener != null) {
                    internalVisibilityChangedListener.onShown();
                }
            }
        });
        this.mView.startAnimation(animation);
    }

    private class DisabledElevationAnimation
    extends ShadowAnimatorImpl {
        DisabledElevationAnimation() {
            super();
        }

        @Override
        protected float getTargetShadowSize() {
            return 0.0f;
        }
    }

    private class ElevateToTranslationZAnimation
    extends ShadowAnimatorImpl {
        ElevateToTranslationZAnimation() {
            super();
        }

        @Override
        protected float getTargetShadowSize() {
            return FloatingActionButtonGingerbread.this.mElevation + FloatingActionButtonGingerbread.this.mPressedTranslationZ;
        }
    }

    private class ResetElevationAnimation
    extends ShadowAnimatorImpl {
        ResetElevationAnimation() {
            super();
        }

        @Override
        protected float getTargetShadowSize() {
            return FloatingActionButtonGingerbread.this.mElevation;
        }
    }

    private abstract class ShadowAnimatorImpl
    extends ValueAnimatorCompat.AnimatorListenerAdapter
    implements ValueAnimatorCompat.AnimatorUpdateListener {
        private float mShadowSizeEnd;
        private float mShadowSizeStart;
        private boolean mValidValues;

        private ShadowAnimatorImpl() {
        }

        protected abstract float getTargetShadowSize();

        @Override
        public void onAnimationEnd(ValueAnimatorCompat valueAnimatorCompat) {
            FloatingActionButtonGingerbread.this.mShadowDrawable.setShadowSize(this.mShadowSizeEnd);
            this.mValidValues = false;
        }

        @Override
        public void onAnimationUpdate(ValueAnimatorCompat valueAnimatorCompat) {
            if (!this.mValidValues) {
                this.mShadowSizeStart = FloatingActionButtonGingerbread.this.mShadowDrawable.getShadowSize();
                this.mShadowSizeEnd = this.getTargetShadowSize();
                this.mValidValues = true;
            }
            FloatingActionButtonGingerbread.this.mShadowDrawable.setShadowSize(this.mShadowSizeStart + (this.mShadowSizeEnd - this.mShadowSizeStart) * valueAnimatorCompat.getAnimatedFraction());
        }
    }

}

