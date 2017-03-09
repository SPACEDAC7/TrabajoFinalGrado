/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.animation.Animator
 *  android.animation.Animator$AnimatorListener
 *  android.animation.AnimatorListenerAdapter
 *  android.animation.TimeInterpolator
 *  android.graphics.Paint
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.view.View
 *  android.view.ViewPropertyAnimator
 *  android.view.animation.Interpolator
 */
package android.support.design.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.graphics.Paint;
import android.os.Build;
import android.support.annotation.Nullable;
import android.support.design.widget.AnimationUtils;
import android.support.design.widget.CircularBorderDrawable;
import android.support.design.widget.FloatingActionButtonGingerbread;
import android.support.design.widget.FloatingActionButtonImpl;
import android.support.design.widget.ShadowDrawableWrapper;
import android.support.design.widget.ShadowViewDelegate;
import android.support.design.widget.ValueAnimatorCompat;
import android.support.design.widget.VisibilityAwareImageButton;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.Interpolator;

class FloatingActionButtonIcs
extends FloatingActionButtonGingerbread {
    private float mRotation;

    FloatingActionButtonIcs(VisibilityAwareImageButton visibilityAwareImageButton, ShadowViewDelegate shadowViewDelegate, ValueAnimatorCompat.Creator creator) {
        super(visibilityAwareImageButton, shadowViewDelegate, creator);
        this.mRotation = this.mView.getRotation();
    }

    private boolean shouldAnimateVisibilityChange() {
        if (ViewCompat.isLaidOut((View)this.mView) && !this.mView.isInEditMode()) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void updateFromViewRotation() {
        if (Build.VERSION.SDK_INT == 19) {
            if (this.mRotation % 90.0f != 0.0f) {
                if (this.mView.getLayerType() != 1) {
                    this.mView.setLayerType(1, null);
                }
            } else if (this.mView.getLayerType() != 0) {
                this.mView.setLayerType(0, null);
            }
        }
        if (this.mShadowDrawable != null) {
            this.mShadowDrawable.setRotation(- this.mRotation);
        }
        if (this.mBorderDrawable != null) {
            this.mBorderDrawable.setRotation(- this.mRotation);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    void hide(final @Nullable FloatingActionButtonImpl.InternalVisibilityChangedListener internalVisibilityChangedListener, final boolean bl) {
        if (this.isOrWillBeHidden()) {
            return;
        }
        this.mView.animate().cancel();
        if (this.shouldAnimateVisibilityChange()) {
            this.mAnimState = 1;
            this.mView.animate().scaleX(0.0f).scaleY(0.0f).alpha(0.0f).setDuration(200).setInterpolator((TimeInterpolator)AnimationUtils.FAST_OUT_LINEAR_IN_INTERPOLATOR).setListener((Animator.AnimatorListener)new AnimatorListenerAdapter(){
                private boolean mCancelled;

                public void onAnimationCancel(Animator animator2) {
                    this.mCancelled = true;
                }

                public void onAnimationEnd(Animator animator2) {
                    FloatingActionButtonIcs.this.mAnimState = 0;
                    if (!this.mCancelled) {
                        FloatingActionButtonIcs.this.mView.internalSetVisibility(8, bl);
                        if (internalVisibilityChangedListener != null) {
                            internalVisibilityChangedListener.onHidden();
                        }
                    }
                }

                public void onAnimationStart(Animator animator2) {
                    FloatingActionButtonIcs.this.mView.internalSetVisibility(0, bl);
                    this.mCancelled = false;
                }
            });
            return;
        }
        this.mView.internalSetVisibility(8, bl);
        if (internalVisibilityChangedListener == null) return;
        internalVisibilityChangedListener.onHidden();
    }

    @Override
    void onPreDraw() {
        float f2 = this.mView.getRotation();
        if (this.mRotation != f2) {
            this.mRotation = f2;
            this.updateFromViewRotation();
        }
    }

    @Override
    boolean requirePreDrawListener() {
        return true;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    void show(final @Nullable FloatingActionButtonImpl.InternalVisibilityChangedListener internalVisibilityChangedListener, final boolean bl) {
        if (this.isOrWillBeShown()) {
            return;
        }
        this.mView.animate().cancel();
        if (!this.shouldAnimateVisibilityChange()) {
            this.mView.internalSetVisibility(0, bl);
            this.mView.setAlpha(1.0f);
            this.mView.setScaleY(1.0f);
            this.mView.setScaleX(1.0f);
            if (internalVisibilityChangedListener == null) return;
            internalVisibilityChangedListener.onShown();
            return;
        }
        this.mAnimState = 2;
        if (this.mView.getVisibility() != 0) {
            this.mView.setAlpha(0.0f);
            this.mView.setScaleY(0.0f);
            this.mView.setScaleX(0.0f);
        }
        this.mView.animate().scaleX(1.0f).scaleY(1.0f).alpha(1.0f).setDuration(200).setInterpolator((TimeInterpolator)AnimationUtils.LINEAR_OUT_SLOW_IN_INTERPOLATOR).setListener((Animator.AnimatorListener)new AnimatorListenerAdapter(){

            public void onAnimationEnd(Animator animator2) {
                FloatingActionButtonIcs.this.mAnimState = 0;
                if (internalVisibilityChangedListener != null) {
                    internalVisibilityChangedListener.onShown();
                }
            }

            public void onAnimationStart(Animator animator2) {
                FloatingActionButtonIcs.this.mView.internalSetVisibility(0, bl);
            }
        });
    }

}

