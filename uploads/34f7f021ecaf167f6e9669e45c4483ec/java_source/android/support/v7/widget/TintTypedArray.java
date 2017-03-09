/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.ColorStateList
 *  android.content.res.Resources
 *  android.content.res.TypedArray
 *  android.graphics.drawable.Drawable
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.util.AttributeSet
 *  android.util.TypedValue
 */
package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.RestrictTo;
import android.support.v7.content.res.AppCompatResources;
import android.support.v7.widget.AppCompatDrawableManager;
import android.util.AttributeSet;
import android.util.TypedValue;

@RestrictTo(value={RestrictTo.Scope.GROUP_ID})
public class TintTypedArray {
    private final Context mContext;
    private TypedValue mTypedValue;
    private final TypedArray mWrapped;

    private TintTypedArray(Context context, TypedArray typedArray) {
        this.mContext = context;
        this.mWrapped = typedArray;
    }

    public static TintTypedArray obtainStyledAttributes(Context context, int n2, int[] arrn) {
        return new TintTypedArray(context, context.obtainStyledAttributes(n2, arrn));
    }

    public static TintTypedArray obtainStyledAttributes(Context context, AttributeSet attributeSet, int[] arrn) {
        return new TintTypedArray(context, context.obtainStyledAttributes(attributeSet, arrn));
    }

    public static TintTypedArray obtainStyledAttributes(Context context, AttributeSet attributeSet, int[] arrn, int n2, int n3) {
        return new TintTypedArray(context, context.obtainStyledAttributes(attributeSet, arrn, n2, n3));
    }

    public boolean getBoolean(int n2, boolean bl) {
        return this.mWrapped.getBoolean(n2, bl);
    }

    public int getChangingConfigurations() {
        return this.mWrapped.getChangingConfigurations();
    }

    public int getColor(int n2, int n3) {
        return this.mWrapped.getColor(n2, n3);
    }

    public ColorStateList getColorStateList(int n2) {
        int n3;
        ColorStateList colorStateList;
        if (this.mWrapped.hasValue(n2) && (n3 = this.mWrapped.getResourceId(n2, 0)) != 0 && (colorStateList = AppCompatResources.getColorStateList(this.mContext, n3)) != null) {
            return colorStateList;
        }
        return this.mWrapped.getColorStateList(n2);
    }

    public float getDimension(int n2, float f2) {
        return this.mWrapped.getDimension(n2, f2);
    }

    public int getDimensionPixelOffset(int n2, int n3) {
        return this.mWrapped.getDimensionPixelOffset(n2, n3);
    }

    public int getDimensionPixelSize(int n2, int n3) {
        return this.mWrapped.getDimensionPixelSize(n2, n3);
    }

    public Drawable getDrawable(int n2) {
        int n3;
        if (this.mWrapped.hasValue(n2) && (n3 = this.mWrapped.getResourceId(n2, 0)) != 0) {
            return AppCompatResources.getDrawable(this.mContext, n3);
        }
        return this.mWrapped.getDrawable(n2);
    }

    public Drawable getDrawableIfKnown(int n2) {
        if (this.mWrapped.hasValue(n2) && (n2 = this.mWrapped.getResourceId(n2, 0)) != 0) {
            return AppCompatDrawableManager.get().getDrawable(this.mContext, n2, true);
        }
        return null;
    }

    public float getFloat(int n2, float f2) {
        return this.mWrapped.getFloat(n2, f2);
    }

    public float getFraction(int n2, int n3, int n4, float f2) {
        return this.mWrapped.getFraction(n2, n3, n4, f2);
    }

    public int getIndex(int n2) {
        return this.mWrapped.getIndex(n2);
    }

    public int getIndexCount() {
        return this.mWrapped.getIndexCount();
    }

    public int getInt(int n2, int n3) {
        return this.mWrapped.getInt(n2, n3);
    }

    public int getInteger(int n2, int n3) {
        return this.mWrapped.getInteger(n2, n3);
    }

    public int getLayoutDimension(int n2, int n3) {
        return this.mWrapped.getLayoutDimension(n2, n3);
    }

    public int getLayoutDimension(int n2, String string2) {
        return this.mWrapped.getLayoutDimension(n2, string2);
    }

    public String getNonResourceString(int n2) {
        return this.mWrapped.getNonResourceString(n2);
    }

    public String getPositionDescription() {
        return this.mWrapped.getPositionDescription();
    }

    public int getResourceId(int n2, int n3) {
        return this.mWrapped.getResourceId(n2, n3);
    }

    public Resources getResources() {
        return this.mWrapped.getResources();
    }

    public String getString(int n2) {
        return this.mWrapped.getString(n2);
    }

    public CharSequence getText(int n2) {
        return this.mWrapped.getText(n2);
    }

    public CharSequence[] getTextArray(int n2) {
        return this.mWrapped.getTextArray(n2);
    }

    public int getType(int n2) {
        if (Build.VERSION.SDK_INT >= 21) {
            return this.mWrapped.getType(n2);
        }
        if (this.mTypedValue == null) {
            this.mTypedValue = new TypedValue();
        }
        this.mWrapped.getValue(n2, this.mTypedValue);
        return this.mTypedValue.type;
    }

    public boolean getValue(int n2, TypedValue typedValue) {
        return this.mWrapped.getValue(n2, typedValue);
    }

    public boolean hasValue(int n2) {
        return this.mWrapped.hasValue(n2);
    }

    public int length() {
        return this.mWrapped.length();
    }

    public TypedValue peekValue(int n2) {
        return this.mWrapped.peekValue(n2);
    }

    public void recycle() {
        this.mWrapped.recycle();
    }
}

