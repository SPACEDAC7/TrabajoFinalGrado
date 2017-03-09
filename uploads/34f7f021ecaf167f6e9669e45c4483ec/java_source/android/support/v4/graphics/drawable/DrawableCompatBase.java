/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.res.ColorStateList
 *  android.content.res.Resources
 *  android.content.res.Resources$Theme
 *  android.graphics.PorterDuff
 *  android.graphics.PorterDuff$Mode
 *  android.graphics.drawable.Drawable
 *  android.util.AttributeSet
 *  org.xmlpull.v1.XmlPullParser
 *  org.xmlpull.v1.XmlPullParserException
 */
package android.support.v4.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.support.v4.graphics.drawable.DrawableWrapperGingerbread;
import android.support.v4.graphics.drawable.TintAwareDrawable;
import android.util.AttributeSet;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

class DrawableCompatBase {
    DrawableCompatBase() {
    }

    public static void inflate(Drawable drawable2, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws IOException, XmlPullParserException {
        drawable2.inflate(resources, xmlPullParser, attributeSet);
    }

    public static void setTint(Drawable drawable2, int n2) {
        if (drawable2 instanceof TintAwareDrawable) {
            ((TintAwareDrawable)drawable2).setTint(n2);
        }
    }

    public static void setTintList(Drawable drawable2, ColorStateList colorStateList) {
        if (drawable2 instanceof TintAwareDrawable) {
            ((TintAwareDrawable)drawable2).setTintList(colorStateList);
        }
    }

    public static void setTintMode(Drawable drawable2, PorterDuff.Mode mode) {
        if (drawable2 instanceof TintAwareDrawable) {
            ((TintAwareDrawable)drawable2).setTintMode(mode);
        }
    }

    public static Drawable wrapForTinting(Drawable drawable2) {
        Drawable drawable3 = drawable2;
        if (!(drawable2 instanceof TintAwareDrawable)) {
            drawable3 = new DrawableWrapperGingerbread(drawable2);
        }
        return drawable3;
    }
}

