/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.content.res.Resources$Theme
 *  android.content.res.TypedArray
 *  android.graphics.drawable.Drawable
 *  android.util.TypedValue
 */
package android.support.v4.content.res;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.annotation.AnyRes;
import android.support.annotation.RestrictTo;
import android.support.annotation.StyleableRes;
import android.util.TypedValue;

@RestrictTo(value={RestrictTo.Scope.GROUP_ID})
public class TypedArrayUtils {
    public static int getAttr(Context context, int n2, int n3) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(n2, typedValue, true);
        if (typedValue.resourceId != 0) {
            return n2;
        }
        return n3;
    }

    public static boolean getBoolean(TypedArray typedArray, @StyleableRes int n2, @StyleableRes int n3, boolean bl) {
        return typedArray.getBoolean(n2, typedArray.getBoolean(n3, bl));
    }

    public static Drawable getDrawable(TypedArray typedArray, @StyleableRes int n2, @StyleableRes int n3) {
        Drawable drawable2;
        Drawable drawable3 = drawable2 = typedArray.getDrawable(n2);
        if (drawable2 == null) {
            drawable3 = typedArray.getDrawable(n3);
        }
        return drawable3;
    }

    public static int getInt(TypedArray typedArray, @StyleableRes int n2, @StyleableRes int n3, int n4) {
        return typedArray.getInt(n2, typedArray.getInt(n3, n4));
    }

    @AnyRes
    public static int getResourceId(TypedArray typedArray, @StyleableRes int n2, @StyleableRes int n3, @AnyRes int n4) {
        return typedArray.getResourceId(n2, typedArray.getResourceId(n3, n4));
    }

    public static String getString(TypedArray typedArray, @StyleableRes int n2, @StyleableRes int n3) {
        String string2;
        String string3 = string2 = typedArray.getString(n2);
        if (string2 == null) {
            string3 = typedArray.getString(n3);
        }
        return string3;
    }

    public static CharSequence[] getTextArray(TypedArray typedArray, @StyleableRes int n2, @StyleableRes int n3) {
        CharSequence[] arrcharSequence;
        CharSequence[] arrcharSequence2 = arrcharSequence = typedArray.getTextArray(n2);
        if (arrcharSequence == null) {
            arrcharSequence2 = typedArray.getTextArray(n3);
        }
        return arrcharSequence2;
    }
}

