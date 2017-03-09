/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.ColorStateList
 *  android.graphics.drawable.Drawable
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.text.method.PasswordTransformationMethod
 *  android.text.method.TransformationMethod
 *  android.util.AttributeSet
 *  android.widget.TextView
 */
package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v7.appcompat.R;
import android.support.v7.text.AllCapsTransformationMethod;
import android.support.v7.widget.AppCompatDrawableManager;
import android.support.v7.widget.AppCompatTextHelperV17;
import android.support.v7.widget.TintInfo;
import android.support.v7.widget.TintTypedArray;
import android.text.method.PasswordTransformationMethod;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.widget.TextView;

class AppCompatTextHelper {
    private TintInfo mDrawableBottomTint;
    private TintInfo mDrawableLeftTint;
    private TintInfo mDrawableRightTint;
    private TintInfo mDrawableTopTint;
    final TextView mView;

    AppCompatTextHelper(TextView textView) {
        this.mView = textView;
    }

    static AppCompatTextHelper create(TextView textView) {
        if (Build.VERSION.SDK_INT >= 17) {
            return new AppCompatTextHelperV17(textView);
        }
        return new AppCompatTextHelper(textView);
    }

    protected static TintInfo createTintInfo(Context context, AppCompatDrawableManager object, int n2) {
        if ((context = object.getTintList(context, n2)) != null) {
            object = new TintInfo();
            object.mHasTintList = true;
            object.mTintList = context;
            return object;
        }
        return null;
    }

    final void applyCompoundDrawableTint(Drawable drawable2, TintInfo tintInfo) {
        if (drawable2 != null && tintInfo != null) {
            AppCompatDrawableManager.tintDrawable(drawable2, tintInfo, this.mView.getDrawableState());
        }
    }

    void applyCompoundDrawablesTints() {
        if (this.mDrawableLeftTint != null || this.mDrawableTopTint != null || this.mDrawableRightTint != null || this.mDrawableBottomTint != null) {
            Drawable[] arrdrawable = this.mView.getCompoundDrawables();
            this.applyCompoundDrawableTint(arrdrawable[0], this.mDrawableLeftTint);
            this.applyCompoundDrawableTint(arrdrawable[1], this.mDrawableTopTint);
            this.applyCompoundDrawableTint(arrdrawable[2], this.mDrawableRightTint);
            this.applyCompoundDrawableTint(arrdrawable[3], this.mDrawableBottomTint);
        }
    }

    void loadFromAttributes(AttributeSet object, int n2) {
        Context context = this.mView.getContext();
        Object object2 = AppCompatDrawableManager.get();
        TintTypedArray tintTypedArray = TintTypedArray.obtainStyledAttributes(context, (AttributeSet)object, R.styleable.AppCompatTextHelper, n2, 0);
        int n3 = tintTypedArray.getResourceId(R.styleable.AppCompatTextHelper_android_textAppearance, -1);
        if (tintTypedArray.hasValue(R.styleable.AppCompatTextHelper_android_drawableLeft)) {
            this.mDrawableLeftTint = AppCompatTextHelper.createTintInfo(context, (AppCompatDrawableManager)object2, tintTypedArray.getResourceId(R.styleable.AppCompatTextHelper_android_drawableLeft, 0));
        }
        if (tintTypedArray.hasValue(R.styleable.AppCompatTextHelper_android_drawableTop)) {
            this.mDrawableTopTint = AppCompatTextHelper.createTintInfo(context, (AppCompatDrawableManager)object2, tintTypedArray.getResourceId(R.styleable.AppCompatTextHelper_android_drawableTop, 0));
        }
        if (tintTypedArray.hasValue(R.styleable.AppCompatTextHelper_android_drawableRight)) {
            this.mDrawableRightTint = AppCompatTextHelper.createTintInfo(context, (AppCompatDrawableManager)object2, tintTypedArray.getResourceId(R.styleable.AppCompatTextHelper_android_drawableRight, 0));
        }
        if (tintTypedArray.hasValue(R.styleable.AppCompatTextHelper_android_drawableBottom)) {
            this.mDrawableBottomTint = AppCompatTextHelper.createTintInfo(context, (AppCompatDrawableManager)object2, tintTypedArray.getResourceId(R.styleable.AppCompatTextHelper_android_drawableBottom, 0));
        }
        tintTypedArray.recycle();
        boolean bl = this.mView.getTransformationMethod() instanceof PasswordTransformationMethod;
        boolean bl2 = false;
        boolean bl3 = false;
        int n4 = 0;
        int n5 = 0;
        TintTypedArray tintTypedArray2 = null;
        object2 = null;
        Object var13_13 = null;
        tintTypedArray = null;
        TintTypedArray tintTypedArray3 = null;
        if (n3 != -1) {
            TintTypedArray tintTypedArray4 = TintTypedArray.obtainStyledAttributes(context, n3, R.styleable.TextAppearance);
            bl2 = bl3;
            n4 = n5;
            if (!bl) {
                bl2 = bl3;
                n4 = n5;
                if (tintTypedArray4.hasValue(R.styleable.TextAppearance_textAllCaps)) {
                    n4 = 1;
                    bl2 = tintTypedArray4.getBoolean(R.styleable.TextAppearance_textAllCaps, false);
                }
            }
            object2 = tintTypedArray2;
            tintTypedArray2 = tintTypedArray3;
            if (Build.VERSION.SDK_INT < 23) {
                tintTypedArray = var13_13;
                if (tintTypedArray4.hasValue(R.styleable.TextAppearance_android_textColor)) {
                    tintTypedArray = tintTypedArray4.getColorStateList(R.styleable.TextAppearance_android_textColor);
                }
                object2 = tintTypedArray;
                tintTypedArray2 = tintTypedArray3;
                if (tintTypedArray4.hasValue(R.styleable.TextAppearance_android_textColorHint)) {
                    tintTypedArray2 = tintTypedArray4.getColorStateList(R.styleable.TextAppearance_android_textColorHint);
                    object2 = tintTypedArray;
                }
            }
            tintTypedArray4.recycle();
            tintTypedArray = tintTypedArray2;
        }
        tintTypedArray3 = TintTypedArray.obtainStyledAttributes(context, (AttributeSet)object, R.styleable.TextAppearance, n2, 0);
        bl3 = bl2;
        n2 = n4;
        if (!bl) {
            bl3 = bl2;
            n2 = n4;
            if (tintTypedArray3.hasValue(R.styleable.TextAppearance_textAllCaps)) {
                n2 = 1;
                bl3 = tintTypedArray3.getBoolean(R.styleable.TextAppearance_textAllCaps, false);
            }
        }
        object = object2;
        tintTypedArray2 = tintTypedArray;
        if (Build.VERSION.SDK_INT < 23) {
            if (tintTypedArray3.hasValue(R.styleable.TextAppearance_android_textColor)) {
                object2 = tintTypedArray3.getColorStateList(R.styleable.TextAppearance_android_textColor);
            }
            object = object2;
            tintTypedArray2 = tintTypedArray;
            if (tintTypedArray3.hasValue(R.styleable.TextAppearance_android_textColorHint)) {
                tintTypedArray2 = tintTypedArray3.getColorStateList(R.styleable.TextAppearance_android_textColorHint);
                object = object2;
            }
        }
        tintTypedArray3.recycle();
        if (object != null) {
            this.mView.setTextColor((ColorStateList)object);
        }
        if (tintTypedArray2 != null) {
            this.mView.setHintTextColor((ColorStateList)tintTypedArray2);
        }
        if (!bl && n2 != 0) {
            this.setAllCaps(bl3);
        }
    }

    void onSetTextAppearance(Context object, int n2) {
        ColorStateList colorStateList;
        if ((object = TintTypedArray.obtainStyledAttributes((Context)object, n2, R.styleable.TextAppearance)).hasValue(R.styleable.TextAppearance_textAllCaps)) {
            this.setAllCaps(object.getBoolean(R.styleable.TextAppearance_textAllCaps, false));
        }
        if (Build.VERSION.SDK_INT < 23 && object.hasValue(R.styleable.TextAppearance_android_textColor) && (colorStateList = object.getColorStateList(R.styleable.TextAppearance_android_textColor)) != null) {
            this.mView.setTextColor(colorStateList);
        }
        object.recycle();
    }

    /*
     * Enabled aggressive block sorting
     */
    void setAllCaps(boolean bl) {
        TextView textView = this.mView;
        AllCapsTransformationMethod allCapsTransformationMethod = bl ? new AllCapsTransformationMethod(this.mView.getContext()) : null;
        textView.setTransformationMethod((TransformationMethod)allCapsTransformationMethod);
    }
}

