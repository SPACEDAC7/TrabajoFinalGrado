/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.res.ColorStateList
 *  android.content.res.Resources
 *  android.content.res.Resources$Theme
 *  android.graphics.ColorFilter
 *  android.graphics.PorterDuff
 *  android.graphics.PorterDuff$Mode
 *  android.graphics.drawable.Drawable
 *  android.graphics.drawable.Drawable$ConstantState
 *  android.graphics.drawable.DrawableContainer
 *  android.graphics.drawable.DrawableContainer$DrawableContainerState
 *  android.graphics.drawable.InsetDrawable
 *  android.util.AttributeSet
 *  org.xmlpull.v1.XmlPullParser
 *  org.xmlpull.v1.XmlPullParserException
 */
package android.support.v4.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.InsetDrawable;
import android.support.v4.graphics.drawable.DrawableWrapper;
import android.support.v4.graphics.drawable.DrawableWrapperLollipop;
import android.support.v4.graphics.drawable.TintAwareDrawable;
import android.util.AttributeSet;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

class DrawableCompatLollipop {
    DrawableCompatLollipop() {
    }

    public static void applyTheme(Drawable drawable2, Resources.Theme theme) {
        drawable2.applyTheme(theme);
    }

    public static boolean canApplyTheme(Drawable drawable2) {
        return drawable2.canApplyTheme();
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void clearColorFilter(Drawable drawable2) {
        drawable2.clearColorFilter();
        if (drawable2 instanceof InsetDrawable) {
            DrawableCompatLollipop.clearColorFilter(((InsetDrawable)drawable2).getDrawable());
            return;
        } else {
            if (drawable2 instanceof DrawableWrapper) {
                DrawableCompatLollipop.clearColorFilter(((DrawableWrapper)drawable2).getWrappedDrawable());
                return;
            }
            if (!(drawable2 instanceof DrawableContainer) || (drawable2 = (DrawableContainer.DrawableContainerState)((DrawableContainer)drawable2).getConstantState()) == null) return;
            {
                int n2 = drawable2.getChildCount();
                for (int i2 = 0; i2 < n2; ++i2) {
                    Drawable drawable3 = drawable2.getChild(i2);
                    if (drawable3 == null) continue;
                    DrawableCompatLollipop.clearColorFilter(drawable3);
                }
            }
        }
    }

    public static ColorFilter getColorFilter(Drawable drawable2) {
        return drawable2.getColorFilter();
    }

    public static void inflate(Drawable drawable2, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws IOException, XmlPullParserException {
        drawable2.inflate(resources, xmlPullParser, attributeSet, theme);
    }

    public static void setHotspot(Drawable drawable2, float f2, float f3) {
        drawable2.setHotspot(f2, f3);
    }

    public static void setHotspotBounds(Drawable drawable2, int n2, int n3, int n4, int n5) {
        drawable2.setHotspotBounds(n2, n3, n4, n5);
    }

    public static void setTint(Drawable drawable2, int n2) {
        drawable2.setTint(n2);
    }

    public static void setTintList(Drawable drawable2, ColorStateList colorStateList) {
        drawable2.setTintList(colorStateList);
    }

    public static void setTintMode(Drawable drawable2, PorterDuff.Mode mode) {
        drawable2.setTintMode(mode);
    }

    public static Drawable wrapForTinting(Drawable drawable2) {
        Drawable drawable3 = drawable2;
        if (!(drawable2 instanceof TintAwareDrawable)) {
            drawable3 = new DrawableWrapperLollipop(drawable2);
        }
        return drawable3;
    }
}

