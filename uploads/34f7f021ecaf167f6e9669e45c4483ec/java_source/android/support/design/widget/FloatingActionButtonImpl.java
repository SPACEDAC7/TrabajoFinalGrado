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
 *  android.view.ViewTreeObserver
 *  android.view.ViewTreeObserver$OnPreDrawListener
 *  android.view.animation.Interpolator
 */
package android.support.design.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.support.annotation.Nullable;
import android.support.design.R;
import android.support.design.widget.AnimationUtils;
import android.support.design.widget.CircularBorderDrawable;
import android.support.design.widget.ShadowViewDelegate;
import android.support.design.widget.ValueAnimatorCompat;
import android.support.design.widget.VisibilityAwareImageButton;
import android.support.v4.content.ContextCompat;
import android.view.ViewTreeObserver;
import android.view.animation.Interpolator;

abstract class FloatingActionButtonImpl {
    static final Interpolator ANIM_INTERPOLATOR = AnimationUtils.FAST_OUT_LINEAR_IN_INTERPOLATOR;
    static final int ANIM_STATE_HIDING = 1;
    static final int ANIM_STATE_NONE = 0;
    static final int ANIM_STATE_SHOWING = 2;
    static final int[] EMPTY_STATE_SET;
    static final int[] ENABLED_STATE_SET;
    static final int[] FOCUSED_ENABLED_STATE_SET;
    static final long PRESSED_ANIM_DELAY = 100;
    static final long PRESSED_ANIM_DURATION = 100;
    static final int[] PRESSED_ENABLED_STATE_SET;
    static final int SHOW_HIDE_ANIM_DURATION = 200;
    int mAnimState = 0;
    final ValueAnimatorCompat.Creator mAnimatorCreator;
    CircularBorderDrawable mBorderDrawable;
    Drawable mContentBackground;
    float mElevation;
    private ViewTreeObserver.OnPreDrawListener mPreDrawListener;
    float mPressedTranslationZ;
    Drawable mRippleDrawable;
    final ShadowViewDelegate mShadowViewDelegate;
    Drawable mShapeDrawable;
    private final Rect mTmpRect = new Rect();
    final VisibilityAwareImageButton mView;

    static {
        PRESSED_ENABLED_STATE_SET = new int[]{16842919, 16842910};
        FOCUSED_ENABLED_STATE_SET = new int[]{16842908, 16842910};
        ENABLED_STATE_SET = new int[]{16842910};
        EMPTY_STATE_SET = new int[0];
    }

    FloatingActionButtonImpl(VisibilityAwareImageButton visibilityAwareImageButton, ShadowViewDelegate shadowViewDelegate, ValueAnimatorCompat.Creator creator) {
        this.mView = visibilityAwareImageButton;
        this.mShadowViewDelegate = shadowViewDelegate;
        this.mAnimatorCreator = creator;
    }

    private void ensurePreDrawListener() {
        if (this.mPreDrawListener == null) {
            this.mPreDrawListener = new ViewTreeObserver.OnPreDrawListener(){

                public boolean onPreDraw() {
                    FloatingActionButtonImpl.this.onPreDraw();
                    return true;
                }
            };
        }
    }

    CircularBorderDrawable createBorderDrawable(int n2, ColorStateList colorStateList) {
        Context context = this.mView.getContext();
        CircularBorderDrawable circularBorderDrawable = this.newCircularDrawable();
        circularBorderDrawable.setGradientColors(ContextCompat.getColor(context, R.color.design_fab_stroke_top_outer_color), ContextCompat.getColor(context, R.color.design_fab_stroke_top_inner_color), ContextCompat.getColor(context, R.color.design_fab_stroke_end_inner_color), ContextCompat.getColor(context, R.color.design_fab_stroke_end_outer_color));
        circularBorderDrawable.setBorderWidth(n2);
        circularBorderDrawable.setBorderTint(colorStateList);
        return circularBorderDrawable;
    }

    GradientDrawable createShapeDrawable() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(-1);
        return gradientDrawable;
    }

    final Drawable getContentBackground() {
        return this.mContentBackground;
    }

    abstract float getElevation();

    abstract void getPadding(Rect var1);

    abstract void hide(@Nullable InternalVisibilityChangedListener var1, boolean var2);

    /*
     * Enabled aggressive block sorting
     */
    boolean isOrWillBeHidden() {
        if (this.mView.getVisibility() == 0) {
            if (this.mAnimState == 1) return true;
            return false;
        }
        if (this.mAnimState == 2) return false;
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    boolean isOrWillBeShown() {
        if (this.mView.getVisibility() != 0) {
            if (this.mAnimState == 2) return true;
            return false;
        }
        if (this.mAnimState == 1) return false;
        return true;
    }

    abstract void jumpDrawableToCurrentState();

    CircularBorderDrawable newCircularDrawable() {
        return new CircularBorderDrawable();
    }

    void onAttachedToWindow() {
        if (this.requirePreDrawListener()) {
            this.ensurePreDrawListener();
            this.mView.getViewTreeObserver().addOnPreDrawListener(this.mPreDrawListener);
        }
    }

    abstract void onCompatShadowChanged();

    void onDetachedFromWindow() {
        if (this.mPreDrawListener != null) {
            this.mView.getViewTreeObserver().removeOnPreDrawListener(this.mPreDrawListener);
            this.mPreDrawListener = null;
        }
    }

    abstract void onDrawableStateChanged(int[] var1);

    abstract void onElevationsChanged(float var1, float var2);

    void onPaddingUpdated(Rect rect) {
    }

    void onPreDraw() {
    }

    boolean requirePreDrawListener() {
        return false;
    }

    abstract void setBackgroundDrawable(ColorStateList var1, PorterDuff.Mode var2, int var3, int var4);

    abstract void setBackgroundTintList(ColorStateList var1);

    abstract void setBackgroundTintMode(PorterDuff.Mode var1);

    final void setElevation(float f2) {
        if (this.mElevation != f2) {
            this.mElevation = f2;
            this.onElevationsChanged(f2, this.mPressedTranslationZ);
        }
    }

    final void setPressedTranslationZ(float f2) {
        if (this.mPressedTranslationZ != f2) {
            this.mPressedTranslationZ = f2;
            this.onElevationsChanged(this.mElevation, f2);
        }
    }

    abstract void setRippleColor(int var1);

    abstract void show(@Nullable InternalVisibilityChangedListener var1, boolean var2);

    final void updatePadding() {
        Rect rect = this.mTmpRect;
        this.getPadding(rect);
        this.onPaddingUpdated(rect);
        this.mShadowViewDelegate.setShadowPadding(rect.left, rect.top, rect.right, rect.bottom);
    }

    static interface InternalVisibilityChangedListener {
        public void onHidden();

        public void onShown();
    }

}

