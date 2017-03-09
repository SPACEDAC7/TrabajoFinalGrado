/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.drawable.Drawable
 *  android.widget.TextView
 */
package android.support.v4.widget;

import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.widget.TextView;

class TextViewCompatJbMr1 {
    TextViewCompatJbMr1() {
    }

    /*
     * Enabled aggressive block sorting
     */
    public static Drawable[] getCompoundDrawablesRelative(@NonNull TextView arrdrawable) {
        boolean bl = true;
        if (arrdrawable.getLayoutDirection() != 1) {
            bl = false;
        }
        arrdrawable = arrdrawable.getCompoundDrawables();
        if (bl) {
            Drawable drawable2 = arrdrawable[2];
            Drawable drawable3 = arrdrawable[0];
            arrdrawable[0] = drawable2;
            arrdrawable[2] = drawable3;
        }
        return arrdrawable;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void setCompoundDrawablesRelative(@NonNull TextView textView, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4, @Nullable Drawable drawable5) {
        boolean bl = true;
        if (textView.getLayoutDirection() != 1) {
            bl = false;
        }
        Drawable drawable6 = bl ? drawable4 : drawable2;
        if (!bl) {
            drawable2 = drawable4;
        }
        textView.setCompoundDrawables(drawable6, drawable3, drawable2, drawable5);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void setCompoundDrawablesRelativeWithIntrinsicBounds(@NonNull TextView textView, int n2, int n3, int n4, int n5) {
        boolean bl = true;
        if (textView.getLayoutDirection() != 1) {
            bl = false;
        }
        int n6 = bl ? n4 : n2;
        if (!bl) {
            n2 = n4;
        }
        textView.setCompoundDrawablesWithIntrinsicBounds(n6, n3, n2, n5);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void setCompoundDrawablesRelativeWithIntrinsicBounds(@NonNull TextView textView, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4, @Nullable Drawable drawable5) {
        boolean bl = true;
        if (textView.getLayoutDirection() != 1) {
            bl = false;
        }
        Drawable drawable6 = bl ? drawable4 : drawable2;
        if (!bl) {
            drawable2 = drawable4;
        }
        textView.setCompoundDrawablesWithIntrinsicBounds(drawable6, drawable3, drawable2, drawable5);
    }
}

