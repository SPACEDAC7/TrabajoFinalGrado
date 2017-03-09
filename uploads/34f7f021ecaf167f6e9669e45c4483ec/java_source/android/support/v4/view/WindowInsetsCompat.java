/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Rect
 *  android.os.Build
 *  android.os.Build$VERSION
 */
package android.support.v4.view;

import android.graphics.Rect;
import android.os.Build;
import android.support.v4.view.WindowInsetsCompatApi20;
import android.support.v4.view.WindowInsetsCompatApi21;

public class WindowInsetsCompat {
    private static final WindowInsetsCompatImpl IMPL;
    private final Object mInsets;

    static {
        int n2 = Build.VERSION.SDK_INT;
        IMPL = n2 >= 21 ? new WindowInsetsCompatApi21Impl() : (n2 >= 20 ? new WindowInsetsCompatApi20Impl() : new WindowInsetsCompatBaseImpl());
    }

    /*
     * Enabled aggressive block sorting
     */
    public WindowInsetsCompat(WindowInsetsCompat object) {
        object = object == null ? null : IMPL.getSourceWindowInsets(object.mInsets);
        this.mInsets = object;
    }

    WindowInsetsCompat(Object object) {
        this.mInsets = object;
    }

    static Object unwrap(WindowInsetsCompat windowInsetsCompat) {
        if (windowInsetsCompat == null) {
            return null;
        }
        return windowInsetsCompat.mInsets;
    }

    static WindowInsetsCompat wrap(Object object) {
        if (object == null) {
            return null;
        }
        return new WindowInsetsCompat(object);
    }

    public WindowInsetsCompat consumeStableInsets() {
        return IMPL.consumeStableInsets(this.mInsets);
    }

    public WindowInsetsCompat consumeSystemWindowInsets() {
        return IMPL.consumeSystemWindowInsets(this.mInsets);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (object == null) return false;
        if (this.getClass() != object.getClass()) {
            return false;
        }
        object = (WindowInsetsCompat)object;
        if (this.mInsets != null) return this.mInsets.equals(object.mInsets);
        if (object.mInsets == null) return true;
        return false;
    }

    public int getStableInsetBottom() {
        return IMPL.getStableInsetBottom(this.mInsets);
    }

    public int getStableInsetLeft() {
        return IMPL.getStableInsetLeft(this.mInsets);
    }

    public int getStableInsetRight() {
        return IMPL.getStableInsetRight(this.mInsets);
    }

    public int getStableInsetTop() {
        return IMPL.getStableInsetTop(this.mInsets);
    }

    public int getSystemWindowInsetBottom() {
        return IMPL.getSystemWindowInsetBottom(this.mInsets);
    }

    public int getSystemWindowInsetLeft() {
        return IMPL.getSystemWindowInsetLeft(this.mInsets);
    }

    public int getSystemWindowInsetRight() {
        return IMPL.getSystemWindowInsetRight(this.mInsets);
    }

    public int getSystemWindowInsetTop() {
        return IMPL.getSystemWindowInsetTop(this.mInsets);
    }

    public boolean hasInsets() {
        return IMPL.hasInsets(this.mInsets);
    }

    public boolean hasStableInsets() {
        return IMPL.hasStableInsets(this.mInsets);
    }

    public boolean hasSystemWindowInsets() {
        return IMPL.hasSystemWindowInsets(this.mInsets);
    }

    public int hashCode() {
        if (this.mInsets == null) {
            return 0;
        }
        return this.mInsets.hashCode();
    }

    public boolean isConsumed() {
        return IMPL.isConsumed(this.mInsets);
    }

    public boolean isRound() {
        return IMPL.isRound(this.mInsets);
    }

    public WindowInsetsCompat replaceSystemWindowInsets(int n2, int n3, int n4, int n5) {
        return IMPL.replaceSystemWindowInsets(this.mInsets, n2, n3, n4, n5);
    }

    public WindowInsetsCompat replaceSystemWindowInsets(Rect rect) {
        return IMPL.replaceSystemWindowInsets(this.mInsets, rect);
    }

    private static class WindowInsetsCompatApi20Impl
    extends WindowInsetsCompatBaseImpl {
        WindowInsetsCompatApi20Impl() {
        }

        @Override
        public WindowInsetsCompat consumeSystemWindowInsets(Object object) {
            return new WindowInsetsCompat(WindowInsetsCompatApi20.consumeSystemWindowInsets(object));
        }

        @Override
        public Object getSourceWindowInsets(Object object) {
            return WindowInsetsCompatApi20.getSourceWindowInsets(object);
        }

        @Override
        public int getSystemWindowInsetBottom(Object object) {
            return WindowInsetsCompatApi20.getSystemWindowInsetBottom(object);
        }

        @Override
        public int getSystemWindowInsetLeft(Object object) {
            return WindowInsetsCompatApi20.getSystemWindowInsetLeft(object);
        }

        @Override
        public int getSystemWindowInsetRight(Object object) {
            return WindowInsetsCompatApi20.getSystemWindowInsetRight(object);
        }

        @Override
        public int getSystemWindowInsetTop(Object object) {
            return WindowInsetsCompatApi20.getSystemWindowInsetTop(object);
        }

        @Override
        public boolean hasInsets(Object object) {
            return WindowInsetsCompatApi20.hasInsets(object);
        }

        @Override
        public boolean hasSystemWindowInsets(Object object) {
            return WindowInsetsCompatApi20.hasSystemWindowInsets(object);
        }

        @Override
        public boolean isRound(Object object) {
            return WindowInsetsCompatApi20.isRound(object);
        }

        @Override
        public WindowInsetsCompat replaceSystemWindowInsets(Object object, int n2, int n3, int n4, int n5) {
            return new WindowInsetsCompat(WindowInsetsCompatApi20.replaceSystemWindowInsets(object, n2, n3, n4, n5));
        }
    }

    private static class WindowInsetsCompatApi21Impl
    extends WindowInsetsCompatApi20Impl {
        WindowInsetsCompatApi21Impl() {
        }

        @Override
        public WindowInsetsCompat consumeStableInsets(Object object) {
            return new WindowInsetsCompat(WindowInsetsCompatApi21.consumeStableInsets(object));
        }

        @Override
        public int getStableInsetBottom(Object object) {
            return WindowInsetsCompatApi21.getStableInsetBottom(object);
        }

        @Override
        public int getStableInsetLeft(Object object) {
            return WindowInsetsCompatApi21.getStableInsetLeft(object);
        }

        @Override
        public int getStableInsetRight(Object object) {
            return WindowInsetsCompatApi21.getStableInsetRight(object);
        }

        @Override
        public int getStableInsetTop(Object object) {
            return WindowInsetsCompatApi21.getStableInsetTop(object);
        }

        @Override
        public boolean hasStableInsets(Object object) {
            return WindowInsetsCompatApi21.hasStableInsets(object);
        }

        @Override
        public boolean isConsumed(Object object) {
            return WindowInsetsCompatApi21.isConsumed(object);
        }

        @Override
        public WindowInsetsCompat replaceSystemWindowInsets(Object object, Rect rect) {
            return new WindowInsetsCompat(WindowInsetsCompatApi21.replaceSystemWindowInsets(object, rect));
        }
    }

    private static class WindowInsetsCompatBaseImpl
    implements WindowInsetsCompatImpl {
        WindowInsetsCompatBaseImpl() {
        }

        @Override
        public WindowInsetsCompat consumeStableInsets(Object object) {
            return null;
        }

        @Override
        public WindowInsetsCompat consumeSystemWindowInsets(Object object) {
            return null;
        }

        @Override
        public Object getSourceWindowInsets(Object object) {
            return null;
        }

        @Override
        public int getStableInsetBottom(Object object) {
            return 0;
        }

        @Override
        public int getStableInsetLeft(Object object) {
            return 0;
        }

        @Override
        public int getStableInsetRight(Object object) {
            return 0;
        }

        @Override
        public int getStableInsetTop(Object object) {
            return 0;
        }

        @Override
        public int getSystemWindowInsetBottom(Object object) {
            return 0;
        }

        @Override
        public int getSystemWindowInsetLeft(Object object) {
            return 0;
        }

        @Override
        public int getSystemWindowInsetRight(Object object) {
            return 0;
        }

        @Override
        public int getSystemWindowInsetTop(Object object) {
            return 0;
        }

        @Override
        public boolean hasInsets(Object object) {
            return false;
        }

        @Override
        public boolean hasStableInsets(Object object) {
            return false;
        }

        @Override
        public boolean hasSystemWindowInsets(Object object) {
            return false;
        }

        @Override
        public boolean isConsumed(Object object) {
            return false;
        }

        @Override
        public boolean isRound(Object object) {
            return false;
        }

        @Override
        public WindowInsetsCompat replaceSystemWindowInsets(Object object, int n2, int n3, int n4, int n5) {
            return null;
        }

        @Override
        public WindowInsetsCompat replaceSystemWindowInsets(Object object, Rect rect) {
            return null;
        }
    }

    private static interface WindowInsetsCompatImpl {
        public WindowInsetsCompat consumeStableInsets(Object var1);

        public WindowInsetsCompat consumeSystemWindowInsets(Object var1);

        public Object getSourceWindowInsets(Object var1);

        public int getStableInsetBottom(Object var1);

        public int getStableInsetLeft(Object var1);

        public int getStableInsetRight(Object var1);

        public int getStableInsetTop(Object var1);

        public int getSystemWindowInsetBottom(Object var1);

        public int getSystemWindowInsetLeft(Object var1);

        public int getSystemWindowInsetRight(Object var1);

        public int getSystemWindowInsetTop(Object var1);

        public boolean hasInsets(Object var1);

        public boolean hasStableInsets(Object var1);

        public boolean hasSystemWindowInsets(Object var1);

        public boolean isConsumed(Object var1);

        public boolean isRound(Object var1);

        public WindowInsetsCompat replaceSystemWindowInsets(Object var1, int var2, int var3, int var4, int var5);

        public WindowInsetsCompat replaceSystemWindowInsets(Object var1, Rect var2);
    }

}

