/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.PorterDuff
 *  android.graphics.PorterDuff$Mode
 *  android.graphics.Rect
 *  android.graphics.drawable.Drawable
 *  android.graphics.drawable.Drawable$ConstantState
 *  android.graphics.drawable.DrawableContainer
 *  android.graphics.drawable.DrawableContainer$DrawableContainerState
 *  android.graphics.drawable.GradientDrawable
 *  android.graphics.drawable.InsetDrawable
 *  android.graphics.drawable.LayerDrawable
 *  android.graphics.drawable.ScaleDrawable
 *  android.os.Build
 *  android.os.Build$VERSION
 */
package android.support.v7.widget;

import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ScaleDrawable;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.v7.graphics.drawable.DrawableWrapper;
import android.support.v7.widget.ThemeUtils;

@RestrictTo(value={RestrictTo.Scope.GROUP_ID})
public class DrawableUtils {
    public static final Rect INSETS_NONE = new Rect();
    private static final String TAG = "DrawableUtils";
    private static final String VECTOR_DRAWABLE_CLAZZ_NAME = "android.graphics.drawable.VectorDrawable";
    private static Class<?> sInsetsClazz;

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static {
        if (Build.VERSION.SDK_INT < 18) return;
        try {
            sInsetsClazz = Class.forName("android.graphics.Insets");
            return;
        }
        catch (ClassNotFoundException var0) {
            return;
        }
    }

    private DrawableUtils() {
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public static boolean canSafelyMutateDrawable(@NonNull Drawable arrdrawable) {
        if (Build.VERSION.SDK_INT < 15 && arrdrawable instanceof InsetDrawable) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 15) {
            if (arrdrawable instanceof GradientDrawable) return false;
        }
        if (Build.VERSION.SDK_INT < 17) {
            if (arrdrawable instanceof LayerDrawable) return false;
        }
        if (arrdrawable instanceof DrawableContainer) {
            if (!((arrdrawable = arrdrawable.getConstantState()) instanceof DrawableContainer.DrawableContainerState)) return true;
            arrdrawable = ((DrawableContainer.DrawableContainerState)arrdrawable).getChildren();
            int n2 = arrdrawable.length;
            int n3 = 0;
            while (n3 < n2) {
                if (!DrawableUtils.canSafelyMutateDrawable(arrdrawable[n3])) return false;
                ++n3;
            }
            return true;
        }
        if (arrdrawable instanceof android.support.v4.graphics.drawable.DrawableWrapper) {
            return DrawableUtils.canSafelyMutateDrawable(((android.support.v4.graphics.drawable.DrawableWrapper)arrdrawable).getWrappedDrawable());
        }
        if (arrdrawable instanceof DrawableWrapper) {
            return DrawableUtils.canSafelyMutateDrawable(((DrawableWrapper)arrdrawable).getWrappedDrawable());
        }
        if (!(arrdrawable instanceof ScaleDrawable)) return true;
        return DrawableUtils.canSafelyMutateDrawable(((ScaleDrawable)arrdrawable).getDrawable());
    }

    static void fixDrawable(@NonNull Drawable drawable2) {
        if (Build.VERSION.SDK_INT == 21 && "android.graphics.drawable.VectorDrawable".equals(drawable2.getClass().getName())) {
            DrawableUtils.fixVectorDrawableTinting(drawable2);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private static void fixVectorDrawableTinting(Drawable drawable2) {
        int[] arrn = drawable2.getState();
        if (arrn == null || arrn.length == 0) {
            drawable2.setState(ThemeUtils.CHECKED_STATE_SET);
        } else {
            drawable2.setState(ThemeUtils.EMPTY_STATE_SET);
        }
        drawable2.setState(arrn);
    }

    /*
     * Exception decompiling
     */
    public static Rect getOpticalBounds(Drawable var0) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: Extractable last case doesn't follow previous
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.examineSwitchContiguity(SwitchReplacer.java:486)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.replaceRawSwitches(SwitchReplacer.java:65)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:425)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:220)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:165)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:354)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:751)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:683)
        // org.benf.cfr.reader.Main.doJar(Main.java:129)
        // org.benf.cfr.reader.Main.main(Main.java:181)
        throw new IllegalStateException("Decompilation failed");
    }

    /*
     * Enabled aggressive block sorting
     */
    static PorterDuff.Mode parseTintMode(int n2, PorterDuff.Mode mode) {
        switch (n2) {
            default: {
                return mode;
            }
            case 3: {
                return PorterDuff.Mode.SRC_OVER;
            }
            case 5: {
                return PorterDuff.Mode.SRC_IN;
            }
            case 9: {
                return PorterDuff.Mode.SRC_ATOP;
            }
            case 14: {
                return PorterDuff.Mode.MULTIPLY;
            }
            case 15: {
                return PorterDuff.Mode.SCREEN;
            }
            case 16: {
                if (Build.VERSION.SDK_INT < 11) return mode;
                return PorterDuff.Mode.valueOf((String)"ADD");
            }
        }
    }
}

