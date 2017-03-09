/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.res.ColorStateList
 *  android.graphics.PorterDuff
 *  android.graphics.PorterDuff$Mode
 *  android.graphics.drawable.Drawable
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.widget.CompoundButton
 */
package android.support.v4.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.widget.CompoundButtonCompatApi23;
import android.support.v4.widget.CompoundButtonCompatGingerbread;
import android.support.v4.widget.CompoundButtonCompatLollipop;
import android.widget.CompoundButton;

public final class CompoundButtonCompat {
    private static final CompoundButtonCompatImpl IMPL;

    static {
        int n2 = Build.VERSION.SDK_INT;
        IMPL = n2 >= 23 ? new Api23CompoundButtonImpl() : (n2 >= 21 ? new LollipopCompoundButtonImpl() : new BaseCompoundButtonCompat());
    }

    private CompoundButtonCompat() {
    }

    @Nullable
    public static Drawable getButtonDrawable(@NonNull CompoundButton compoundButton) {
        return IMPL.getButtonDrawable(compoundButton);
    }

    @Nullable
    public static ColorStateList getButtonTintList(@NonNull CompoundButton compoundButton) {
        return IMPL.getButtonTintList(compoundButton);
    }

    @Nullable
    public static PorterDuff.Mode getButtonTintMode(@NonNull CompoundButton compoundButton) {
        return IMPL.getButtonTintMode(compoundButton);
    }

    public static void setButtonTintList(@NonNull CompoundButton compoundButton, @Nullable ColorStateList colorStateList) {
        IMPL.setButtonTintList(compoundButton, colorStateList);
    }

    public static void setButtonTintMode(@NonNull CompoundButton compoundButton, @Nullable PorterDuff.Mode mode) {
        IMPL.setButtonTintMode(compoundButton, mode);
    }

    static class Api23CompoundButtonImpl
    extends LollipopCompoundButtonImpl {
        Api23CompoundButtonImpl() {
        }

        @Override
        public Drawable getButtonDrawable(CompoundButton compoundButton) {
            return CompoundButtonCompatApi23.getButtonDrawable(compoundButton);
        }
    }

    static class BaseCompoundButtonCompat
    implements CompoundButtonCompatImpl {
        BaseCompoundButtonCompat() {
        }

        @Override
        public Drawable getButtonDrawable(CompoundButton compoundButton) {
            return CompoundButtonCompatGingerbread.getButtonDrawable(compoundButton);
        }

        @Override
        public ColorStateList getButtonTintList(CompoundButton compoundButton) {
            return CompoundButtonCompatGingerbread.getButtonTintList(compoundButton);
        }

        @Override
        public PorterDuff.Mode getButtonTintMode(CompoundButton compoundButton) {
            return CompoundButtonCompatGingerbread.getButtonTintMode(compoundButton);
        }

        @Override
        public void setButtonTintList(CompoundButton compoundButton, ColorStateList colorStateList) {
            CompoundButtonCompatGingerbread.setButtonTintList(compoundButton, colorStateList);
        }

        @Override
        public void setButtonTintMode(CompoundButton compoundButton, PorterDuff.Mode mode) {
            CompoundButtonCompatGingerbread.setButtonTintMode(compoundButton, mode);
        }
    }

    static interface CompoundButtonCompatImpl {
        public Drawable getButtonDrawable(CompoundButton var1);

        public ColorStateList getButtonTintList(CompoundButton var1);

        public PorterDuff.Mode getButtonTintMode(CompoundButton var1);

        public void setButtonTintList(CompoundButton var1, ColorStateList var2);

        public void setButtonTintMode(CompoundButton var1, PorterDuff.Mode var2);
    }

    static class LollipopCompoundButtonImpl
    extends BaseCompoundButtonCompat {
        LollipopCompoundButtonImpl() {
        }

        @Override
        public ColorStateList getButtonTintList(CompoundButton compoundButton) {
            return CompoundButtonCompatLollipop.getButtonTintList(compoundButton);
        }

        @Override
        public PorterDuff.Mode getButtonTintMode(CompoundButton compoundButton) {
            return CompoundButtonCompatLollipop.getButtonTintMode(compoundButton);
        }

        @Override
        public void setButtonTintList(CompoundButton compoundButton, ColorStateList colorStateList) {
            CompoundButtonCompatLollipop.setButtonTintList(compoundButton, colorStateList);
        }

        @Override
        public void setButtonTintMode(CompoundButton compoundButton, PorterDuff.Mode mode) {
            CompoundButtonCompatLollipop.setButtonTintMode(compoundButton, mode);
        }
    }

}

