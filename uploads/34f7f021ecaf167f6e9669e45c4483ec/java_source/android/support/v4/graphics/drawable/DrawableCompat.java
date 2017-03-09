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
 *  android.os.Build
 *  android.os.Build$VERSION
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
import android.os.Build;
import android.support.annotation.ColorInt;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.graphics.drawable.DrawableCompatApi23;
import android.support.v4.graphics.drawable.DrawableCompatBase;
import android.support.v4.graphics.drawable.DrawableCompatHoneycomb;
import android.support.v4.graphics.drawable.DrawableCompatJellybeanMr1;
import android.support.v4.graphics.drawable.DrawableCompatKitKat;
import android.support.v4.graphics.drawable.DrawableCompatLollipop;
import android.support.v4.graphics.drawable.DrawableWrapper;
import android.util.AttributeSet;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class DrawableCompat {
    static final DrawableImpl IMPL;

    static {
        int n2 = Build.VERSION.SDK_INT;
        IMPL = n2 >= 23 ? new MDrawableImpl() : (n2 >= 21 ? new LollipopDrawableImpl() : (n2 >= 19 ? new KitKatDrawableImpl() : (n2 >= 17 ? new JellybeanMr1DrawableImpl() : (n2 >= 11 ? new HoneycombDrawableImpl() : new BaseDrawableImpl()))));
    }

    private DrawableCompat() {
    }

    public static void applyTheme(@NonNull Drawable drawable2, @NonNull Resources.Theme theme) {
        IMPL.applyTheme(drawable2, theme);
    }

    public static boolean canApplyTheme(@NonNull Drawable drawable2) {
        return IMPL.canApplyTheme(drawable2);
    }

    public static void clearColorFilter(@NonNull Drawable drawable2) {
        IMPL.clearColorFilter(drawable2);
    }

    public static int getAlpha(@NonNull Drawable drawable2) {
        return IMPL.getAlpha(drawable2);
    }

    public static ColorFilter getColorFilter(@NonNull Drawable drawable2) {
        return IMPL.getColorFilter(drawable2);
    }

    public static int getLayoutDirection(@NonNull Drawable drawable2) {
        return IMPL.getLayoutDirection(drawable2);
    }

    public static void inflate(@NonNull Drawable drawable2, @NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) throws XmlPullParserException, IOException {
        IMPL.inflate(drawable2, resources, xmlPullParser, attributeSet, theme);
    }

    public static boolean isAutoMirrored(@NonNull Drawable drawable2) {
        return IMPL.isAutoMirrored(drawable2);
    }

    public static void jumpToCurrentState(@NonNull Drawable drawable2) {
        IMPL.jumpToCurrentState(drawable2);
    }

    public static void setAutoMirrored(@NonNull Drawable drawable2, boolean bl) {
        IMPL.setAutoMirrored(drawable2, bl);
    }

    public static void setHotspot(@NonNull Drawable drawable2, float f2, float f3) {
        IMPL.setHotspot(drawable2, f2, f3);
    }

    public static void setHotspotBounds(@NonNull Drawable drawable2, int n2, int n3, int n4, int n5) {
        IMPL.setHotspotBounds(drawable2, n2, n3, n4, n5);
    }

    public static boolean setLayoutDirection(@NonNull Drawable drawable2, int n2) {
        return IMPL.setLayoutDirection(drawable2, n2);
    }

    public static void setTint(@NonNull Drawable drawable2, @ColorInt int n2) {
        IMPL.setTint(drawable2, n2);
    }

    public static void setTintList(@NonNull Drawable drawable2, @Nullable ColorStateList colorStateList) {
        IMPL.setTintList(drawable2, colorStateList);
    }

    public static void setTintMode(@NonNull Drawable drawable2, @Nullable PorterDuff.Mode mode) {
        IMPL.setTintMode(drawable2, mode);
    }

    public static <T extends Drawable> T unwrap(@NonNull Drawable drawable2) {
        Drawable drawable3 = drawable2;
        if (drawable2 instanceof DrawableWrapper) {
            drawable3 = ((DrawableWrapper)drawable2).getWrappedDrawable();
        }
        return (T)drawable3;
    }

    public static Drawable wrap(@NonNull Drawable drawable2) {
        return IMPL.wrap(drawable2);
    }

    static class BaseDrawableImpl
    implements DrawableImpl {
        BaseDrawableImpl() {
        }

        @Override
        public void applyTheme(Drawable drawable2, Resources.Theme theme) {
        }

        @Override
        public boolean canApplyTheme(Drawable drawable2) {
            return false;
        }

        @Override
        public void clearColorFilter(Drawable drawable2) {
            drawable2.clearColorFilter();
        }

        @Override
        public int getAlpha(Drawable drawable2) {
            return 0;
        }

        @Override
        public ColorFilter getColorFilter(Drawable drawable2) {
            return null;
        }

        @Override
        public int getLayoutDirection(Drawable drawable2) {
            return 0;
        }

        @Override
        public void inflate(Drawable drawable2, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws IOException, XmlPullParserException {
            DrawableCompatBase.inflate(drawable2, resources, xmlPullParser, attributeSet, theme);
        }

        @Override
        public boolean isAutoMirrored(Drawable drawable2) {
            return false;
        }

        @Override
        public void jumpToCurrentState(Drawable drawable2) {
        }

        @Override
        public void setAutoMirrored(Drawable drawable2, boolean bl) {
        }

        @Override
        public void setHotspot(Drawable drawable2, float f2, float f3) {
        }

        @Override
        public void setHotspotBounds(Drawable drawable2, int n2, int n3, int n4, int n5) {
        }

        @Override
        public boolean setLayoutDirection(Drawable drawable2, int n2) {
            return false;
        }

        @Override
        public void setTint(Drawable drawable2, int n2) {
            DrawableCompatBase.setTint(drawable2, n2);
        }

        @Override
        public void setTintList(Drawable drawable2, ColorStateList colorStateList) {
            DrawableCompatBase.setTintList(drawable2, colorStateList);
        }

        @Override
        public void setTintMode(Drawable drawable2, PorterDuff.Mode mode) {
            DrawableCompatBase.setTintMode(drawable2, mode);
        }

        @Override
        public Drawable wrap(Drawable drawable2) {
            return DrawableCompatBase.wrapForTinting(drawable2);
        }
    }

    static interface DrawableImpl {
        public void applyTheme(Drawable var1, Resources.Theme var2);

        public boolean canApplyTheme(Drawable var1);

        public void clearColorFilter(Drawable var1);

        public int getAlpha(Drawable var1);

        public ColorFilter getColorFilter(Drawable var1);

        public int getLayoutDirection(Drawable var1);

        public void inflate(Drawable var1, Resources var2, XmlPullParser var3, AttributeSet var4, Resources.Theme var5) throws IOException, XmlPullParserException;

        public boolean isAutoMirrored(Drawable var1);

        public void jumpToCurrentState(Drawable var1);

        public void setAutoMirrored(Drawable var1, boolean var2);

        public void setHotspot(Drawable var1, float var2, float var3);

        public void setHotspotBounds(Drawable var1, int var2, int var3, int var4, int var5);

        public boolean setLayoutDirection(Drawable var1, int var2);

        public void setTint(Drawable var1, int var2);

        public void setTintList(Drawable var1, ColorStateList var2);

        public void setTintMode(Drawable var1, PorterDuff.Mode var2);

        public Drawable wrap(Drawable var1);
    }

    static class HoneycombDrawableImpl
    extends BaseDrawableImpl {
        HoneycombDrawableImpl() {
        }

        @Override
        public void jumpToCurrentState(Drawable drawable2) {
            DrawableCompatHoneycomb.jumpToCurrentState(drawable2);
        }

        @Override
        public Drawable wrap(Drawable drawable2) {
            return DrawableCompatHoneycomb.wrapForTinting(drawable2);
        }
    }

    static class JellybeanMr1DrawableImpl
    extends HoneycombDrawableImpl {
        JellybeanMr1DrawableImpl() {
        }

        @Override
        public int getLayoutDirection(Drawable drawable2) {
            int n2 = DrawableCompatJellybeanMr1.getLayoutDirection(drawable2);
            if (n2 >= 0) {
                return n2;
            }
            return 0;
        }

        @Override
        public boolean setLayoutDirection(Drawable drawable2, int n2) {
            return DrawableCompatJellybeanMr1.setLayoutDirection(drawable2, n2);
        }
    }

    static class KitKatDrawableImpl
    extends JellybeanMr1DrawableImpl {
        KitKatDrawableImpl() {
        }

        @Override
        public int getAlpha(Drawable drawable2) {
            return DrawableCompatKitKat.getAlpha(drawable2);
        }

        @Override
        public boolean isAutoMirrored(Drawable drawable2) {
            return DrawableCompatKitKat.isAutoMirrored(drawable2);
        }

        @Override
        public void setAutoMirrored(Drawable drawable2, boolean bl) {
            DrawableCompatKitKat.setAutoMirrored(drawable2, bl);
        }

        @Override
        public Drawable wrap(Drawable drawable2) {
            return DrawableCompatKitKat.wrapForTinting(drawable2);
        }
    }

    static class LollipopDrawableImpl
    extends KitKatDrawableImpl {
        LollipopDrawableImpl() {
        }

        @Override
        public void applyTheme(Drawable drawable2, Resources.Theme theme) {
            DrawableCompatLollipop.applyTheme(drawable2, theme);
        }

        @Override
        public boolean canApplyTheme(Drawable drawable2) {
            return DrawableCompatLollipop.canApplyTheme(drawable2);
        }

        @Override
        public void clearColorFilter(Drawable drawable2) {
            DrawableCompatLollipop.clearColorFilter(drawable2);
        }

        @Override
        public ColorFilter getColorFilter(Drawable drawable2) {
            return DrawableCompatLollipop.getColorFilter(drawable2);
        }

        @Override
        public void inflate(Drawable drawable2, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws IOException, XmlPullParserException {
            DrawableCompatLollipop.inflate(drawable2, resources, xmlPullParser, attributeSet, theme);
        }

        @Override
        public void setHotspot(Drawable drawable2, float f2, float f3) {
            DrawableCompatLollipop.setHotspot(drawable2, f2, f3);
        }

        @Override
        public void setHotspotBounds(Drawable drawable2, int n2, int n3, int n4, int n5) {
            DrawableCompatLollipop.setHotspotBounds(drawable2, n2, n3, n4, n5);
        }

        @Override
        public void setTint(Drawable drawable2, int n2) {
            DrawableCompatLollipop.setTint(drawable2, n2);
        }

        @Override
        public void setTintList(Drawable drawable2, ColorStateList colorStateList) {
            DrawableCompatLollipop.setTintList(drawable2, colorStateList);
        }

        @Override
        public void setTintMode(Drawable drawable2, PorterDuff.Mode mode) {
            DrawableCompatLollipop.setTintMode(drawable2, mode);
        }

        @Override
        public Drawable wrap(Drawable drawable2) {
            return DrawableCompatLollipop.wrapForTinting(drawable2);
        }
    }

    static class MDrawableImpl
    extends LollipopDrawableImpl {
        MDrawableImpl() {
        }

        @Override
        public void clearColorFilter(Drawable drawable2) {
            drawable2.clearColorFilter();
        }

        @Override
        public int getLayoutDirection(Drawable drawable2) {
            return DrawableCompatApi23.getLayoutDirection(drawable2);
        }

        @Override
        public boolean setLayoutDirection(Drawable drawable2, int n2) {
            return DrawableCompatApi23.setLayoutDirection(drawable2, n2);
        }

        @Override
        public Drawable wrap(Drawable drawable2) {
            return drawable2;
        }
    }

}

