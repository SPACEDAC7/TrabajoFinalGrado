/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.ColorStateList
 *  android.graphics.PorterDuff
 *  android.graphics.PorterDuff$Mode
 *  android.graphics.drawable.Drawable
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.util.AttributeSet
 *  android.view.View
 */
package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R;
import android.support.v7.widget.AppCompatDrawableManager;
import android.support.v7.widget.DrawableUtils;
import android.support.v7.widget.TintInfo;
import android.support.v7.widget.TintTypedArray;
import android.util.AttributeSet;
import android.view.View;

class AppCompatBackgroundHelper {
    private int mBackgroundResId = -1;
    private BackgroundTintInfo mBackgroundTint;
    private final AppCompatDrawableManager mDrawableManager;
    private BackgroundTintInfo mInternalBackgroundTint;
    private BackgroundTintInfo mTmpInfo;
    private final View mView;

    AppCompatBackgroundHelper(View view) {
        this.mView = view;
        this.mDrawableManager = AppCompatDrawableManager.get();
    }

    private boolean applyFrameworkTintUsingColorFilter(@NonNull Drawable drawable2) {
        if (this.mTmpInfo == null) {
            this.mTmpInfo = new BackgroundTintInfo();
        }
        BackgroundTintInfo backgroundTintInfo = this.mTmpInfo;
        backgroundTintInfo.clear();
        ColorStateList colorStateList = ViewCompat.getBackgroundTintList(this.mView);
        if (colorStateList != null) {
            backgroundTintInfo.mHasTintList = true;
            backgroundTintInfo.mTintList = colorStateList;
        }
        if ((colorStateList = ViewCompat.getBackgroundTintMode(this.mView)) != null) {
            backgroundTintInfo.mHasTintMode = true;
            backgroundTintInfo.mTintMode = colorStateList;
        }
        if (backgroundTintInfo.mHasTintList || backgroundTintInfo.mHasTintMode) {
            AppCompatDrawableManager.tintDrawable(drawable2, backgroundTintInfo, this.mView.getDrawableState());
            return true;
        }
        return false;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private boolean shouldApplyFrameworkTintUsingColorFilter() {
        boolean bl = true;
        int n2 = Build.VERSION.SDK_INT;
        if (n2 < 21) {
            return false;
        }
        boolean bl2 = bl;
        if (n2 == 21) return bl2;
        bl2 = bl;
        if (this.mInternalBackgroundTint != null) return bl2;
        return false;
    }

    private boolean updateBackgroundTint() {
        if (this.mBackgroundTint != null && this.mBackgroundTint.mHasTintList) {
            ColorStateList colorStateList;
            if (this.mBackgroundResId >= 0 && (colorStateList = this.mDrawableManager.getTintList(this.mView.getContext(), this.mBackgroundResId, this.mBackgroundTint.mOriginalTintList)) != null) {
                this.mBackgroundTint.mTintList = colorStateList;
                return true;
            }
            if (this.mBackgroundTint.mTintList != this.mBackgroundTint.mOriginalTintList) {
                this.mBackgroundTint.mTintList = this.mBackgroundTint.mOriginalTintList;
                return true;
            }
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    void applySupportBackgroundTint() {
        Drawable drawable2 = this.mView.getBackground();
        if (drawable2 == null) return;
        if (this.shouldApplyFrameworkTintUsingColorFilter() && this.applyFrameworkTintUsingColorFilter(drawable2)) {
            return;
        }
        if (this.mBackgroundTint != null) {
            AppCompatDrawableManager.tintDrawable(drawable2, this.mBackgroundTint, this.mView.getDrawableState());
            return;
        }
        if (this.mInternalBackgroundTint == null) return;
        AppCompatDrawableManager.tintDrawable(drawable2, this.mInternalBackgroundTint, this.mView.getDrawableState());
    }

    ColorStateList getSupportBackgroundTintList() {
        if (this.mBackgroundTint != null) {
            return this.mBackgroundTint.mTintList;
        }
        return null;
    }

    PorterDuff.Mode getSupportBackgroundTintMode() {
        if (this.mBackgroundTint != null) {
            return this.mBackgroundTint.mTintMode;
        }
        return null;
    }

    void loadFromAttributes(AttributeSet object, int n2) {
        object = TintTypedArray.obtainStyledAttributes(this.mView.getContext(), (AttributeSet)object, R.styleable.ViewBackgroundHelper, n2, 0);
        try {
            if (object.hasValue(R.styleable.ViewBackgroundHelper_android_background)) {
                this.mBackgroundResId = object.getResourceId(R.styleable.ViewBackgroundHelper_android_background, -1);
                ColorStateList colorStateList = this.mDrawableManager.getTintList(this.mView.getContext(), this.mBackgroundResId);
                if (colorStateList != null) {
                    this.setInternalBackgroundTint(colorStateList);
                }
            }
            if (object.hasValue(R.styleable.ViewBackgroundHelper_backgroundTint)) {
                ViewCompat.setBackgroundTintList(this.mView, object.getColorStateList(R.styleable.ViewBackgroundHelper_backgroundTint));
            }
            if (object.hasValue(R.styleable.ViewBackgroundHelper_backgroundTintMode)) {
                ViewCompat.setBackgroundTintMode(this.mView, DrawableUtils.parseTintMode(object.getInt(R.styleable.ViewBackgroundHelper_backgroundTintMode, -1), null));
            }
            return;
        }
        finally {
            object.recycle();
        }
    }

    void onSetBackgroundDrawable(Drawable drawable2) {
        this.mBackgroundResId = -1;
        this.setInternalBackgroundTint(null);
        if (this.updateBackgroundTint()) {
            this.applySupportBackgroundTint();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    void onSetBackgroundResource(int n2) {
        this.mBackgroundResId = n2;
        ColorStateList colorStateList = this.mDrawableManager != null ? this.mDrawableManager.getTintList(this.mView.getContext(), n2) : null;
        this.setInternalBackgroundTint(colorStateList);
        if (this.updateBackgroundTint()) {
            this.applySupportBackgroundTint();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    void setInternalBackgroundTint(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.mInternalBackgroundTint == null) {
                this.mInternalBackgroundTint = new BackgroundTintInfo();
            }
            this.mInternalBackgroundTint.mTintList = colorStateList;
            this.mInternalBackgroundTint.mHasTintList = true;
        } else {
            this.mInternalBackgroundTint = null;
        }
        this.applySupportBackgroundTint();
    }

    void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (this.mBackgroundTint == null) {
            this.mBackgroundTint = new BackgroundTintInfo();
        }
        this.mBackgroundTint.mOriginalTintList = colorStateList;
        this.mBackgroundTint.mTintList = null;
        this.mBackgroundTint.mHasTintList = true;
        if (this.updateBackgroundTint()) {
            this.applySupportBackgroundTint();
        }
    }

    void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (this.mBackgroundTint == null) {
            this.mBackgroundTint = new BackgroundTintInfo();
        }
        this.mBackgroundTint.mTintMode = mode;
        this.mBackgroundTint.mHasTintMode = true;
        this.applySupportBackgroundTint();
    }

    private static class BackgroundTintInfo
    extends TintInfo {
        public ColorStateList mOriginalTintList;

        BackgroundTintInfo() {
        }

        @Override
        void clear() {
            super.clear();
            this.mOriginalTintList = null;
        }
    }

}

