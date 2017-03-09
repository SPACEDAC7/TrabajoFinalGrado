/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.drawable.Drawable
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.widget.TextView
 */
package android.support.v4.widget;

import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.StyleRes;
import android.support.v4.widget.TextViewCompatApi23;
import android.support.v4.widget.TextViewCompatGingerbread;
import android.support.v4.widget.TextViewCompatJb;
import android.support.v4.widget.TextViewCompatJbMr1;
import android.support.v4.widget.TextViewCompatJbMr2;
import android.widget.TextView;

public final class TextViewCompat {
    static final TextViewCompatImpl IMPL;

    static {
        int n2 = Build.VERSION.SDK_INT;
        IMPL = n2 >= 23 ? new Api23TextViewCompatImpl() : (n2 >= 18 ? new JbMr2TextViewCompatImpl() : (n2 >= 17 ? new JbMr1TextViewCompatImpl() : (n2 >= 16 ? new JbTextViewCompatImpl() : new BaseTextViewCompatImpl())));
    }

    private TextViewCompat() {
    }

    public static Drawable[] getCompoundDrawablesRelative(@NonNull TextView textView) {
        return IMPL.getCompoundDrawablesRelative(textView);
    }

    public static int getMaxLines(@NonNull TextView textView) {
        return IMPL.getMaxLines(textView);
    }

    public static int getMinLines(@NonNull TextView textView) {
        return IMPL.getMinLines(textView);
    }

    public static void setCompoundDrawablesRelative(@NonNull TextView textView, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4, @Nullable Drawable drawable5) {
        IMPL.setCompoundDrawablesRelative(textView, drawable2, drawable3, drawable4, drawable5);
    }

    public static void setCompoundDrawablesRelativeWithIntrinsicBounds(@NonNull TextView textView, @DrawableRes int n2, @DrawableRes int n3, @DrawableRes int n4, @DrawableRes int n5) {
        IMPL.setCompoundDrawablesRelativeWithIntrinsicBounds(textView, n2, n3, n4, n5);
    }

    public static void setCompoundDrawablesRelativeWithIntrinsicBounds(@NonNull TextView textView, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4, @Nullable Drawable drawable5) {
        IMPL.setCompoundDrawablesRelativeWithIntrinsicBounds(textView, drawable2, drawable3, drawable4, drawable5);
    }

    public static void setTextAppearance(@NonNull TextView textView, @StyleRes int n2) {
        IMPL.setTextAppearance(textView, n2);
    }

    static class Api23TextViewCompatImpl
    extends JbMr2TextViewCompatImpl {
        Api23TextViewCompatImpl() {
        }

        @Override
        public void setTextAppearance(@NonNull TextView textView, @StyleRes int n2) {
            TextViewCompatApi23.setTextAppearance(textView, n2);
        }
    }

    static class BaseTextViewCompatImpl
    implements TextViewCompatImpl {
        BaseTextViewCompatImpl() {
        }

        @Override
        public Drawable[] getCompoundDrawablesRelative(@NonNull TextView textView) {
            return TextViewCompatGingerbread.getCompoundDrawablesRelative(textView);
        }

        @Override
        public int getMaxLines(TextView textView) {
            return TextViewCompatGingerbread.getMaxLines(textView);
        }

        @Override
        public int getMinLines(TextView textView) {
            return TextViewCompatGingerbread.getMinLines(textView);
        }

        @Override
        public void setCompoundDrawablesRelative(@NonNull TextView textView, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4, @Nullable Drawable drawable5) {
            textView.setCompoundDrawables(drawable2, drawable3, drawable4, drawable5);
        }

        @Override
        public void setCompoundDrawablesRelativeWithIntrinsicBounds(@NonNull TextView textView, @DrawableRes int n2, @DrawableRes int n3, @DrawableRes int n4, @DrawableRes int n5) {
            textView.setCompoundDrawablesWithIntrinsicBounds(n2, n3, n4, n5);
        }

        @Override
        public void setCompoundDrawablesRelativeWithIntrinsicBounds(@NonNull TextView textView, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4, @Nullable Drawable drawable5) {
            textView.setCompoundDrawablesWithIntrinsicBounds(drawable2, drawable3, drawable4, drawable5);
        }

        @Override
        public void setTextAppearance(TextView textView, @StyleRes int n2) {
            TextViewCompatGingerbread.setTextAppearance(textView, n2);
        }
    }

    static class JbMr1TextViewCompatImpl
    extends JbTextViewCompatImpl {
        JbMr1TextViewCompatImpl() {
        }

        @Override
        public Drawable[] getCompoundDrawablesRelative(@NonNull TextView textView) {
            return TextViewCompatJbMr1.getCompoundDrawablesRelative(textView);
        }

        @Override
        public void setCompoundDrawablesRelative(@NonNull TextView textView, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4, @Nullable Drawable drawable5) {
            TextViewCompatJbMr1.setCompoundDrawablesRelative(textView, drawable2, drawable3, drawable4, drawable5);
        }

        @Override
        public void setCompoundDrawablesRelativeWithIntrinsicBounds(@NonNull TextView textView, @DrawableRes int n2, @DrawableRes int n3, @DrawableRes int n4, @DrawableRes int n5) {
            TextViewCompatJbMr1.setCompoundDrawablesRelativeWithIntrinsicBounds(textView, n2, n3, n4, n5);
        }

        @Override
        public void setCompoundDrawablesRelativeWithIntrinsicBounds(@NonNull TextView textView, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4, @Nullable Drawable drawable5) {
            TextViewCompatJbMr1.setCompoundDrawablesRelativeWithIntrinsicBounds(textView, drawable2, drawable3, drawable4, drawable5);
        }
    }

    static class JbMr2TextViewCompatImpl
    extends JbMr1TextViewCompatImpl {
        JbMr2TextViewCompatImpl() {
        }

        @Override
        public Drawable[] getCompoundDrawablesRelative(@NonNull TextView textView) {
            return TextViewCompatJbMr2.getCompoundDrawablesRelative(textView);
        }

        @Override
        public void setCompoundDrawablesRelative(@NonNull TextView textView, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4, @Nullable Drawable drawable5) {
            TextViewCompatJbMr2.setCompoundDrawablesRelative(textView, drawable2, drawable3, drawable4, drawable5);
        }

        @Override
        public void setCompoundDrawablesRelativeWithIntrinsicBounds(@NonNull TextView textView, @DrawableRes int n2, @DrawableRes int n3, @DrawableRes int n4, @DrawableRes int n5) {
            TextViewCompatJbMr2.setCompoundDrawablesRelativeWithIntrinsicBounds(textView, n2, n3, n4, n5);
        }

        @Override
        public void setCompoundDrawablesRelativeWithIntrinsicBounds(@NonNull TextView textView, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4, @Nullable Drawable drawable5) {
            TextViewCompatJbMr2.setCompoundDrawablesRelativeWithIntrinsicBounds(textView, drawable2, drawable3, drawable4, drawable5);
        }
    }

    static class JbTextViewCompatImpl
    extends BaseTextViewCompatImpl {
        JbTextViewCompatImpl() {
        }

        @Override
        public int getMaxLines(TextView textView) {
            return TextViewCompatJb.getMaxLines(textView);
        }

        @Override
        public int getMinLines(TextView textView) {
            return TextViewCompatJb.getMinLines(textView);
        }
    }

    static interface TextViewCompatImpl {
        public Drawable[] getCompoundDrawablesRelative(@NonNull TextView var1);

        public int getMaxLines(TextView var1);

        public int getMinLines(TextView var1);

        public void setCompoundDrawablesRelative(@NonNull TextView var1, @Nullable Drawable var2, @Nullable Drawable var3, @Nullable Drawable var4, @Nullable Drawable var5);

        public void setCompoundDrawablesRelativeWithIntrinsicBounds(@NonNull TextView var1, @DrawableRes int var2, @DrawableRes int var3, @DrawableRes int var4, @DrawableRes int var5);

        public void setCompoundDrawablesRelativeWithIntrinsicBounds(@NonNull TextView var1, @Nullable Drawable var2, @Nullable Drawable var3, @Nullable Drawable var4, @Nullable Drawable var5);

        public void setTextAppearance(@NonNull TextView var1, @StyleRes int var2);
    }

}

