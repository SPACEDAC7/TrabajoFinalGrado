/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.view.LayoutInflater
 */
package android.support.v4.view;

import android.os.Build;
import android.support.v4.view.LayoutInflaterCompatBase;
import android.support.v4.view.LayoutInflaterCompatHC;
import android.support.v4.view.LayoutInflaterCompatLollipop;
import android.support.v4.view.LayoutInflaterFactory;
import android.view.LayoutInflater;

public final class LayoutInflaterCompat {
    static final LayoutInflaterCompatImpl IMPL;

    static {
        int n2 = Build.VERSION.SDK_INT;
        IMPL = n2 >= 21 ? new LayoutInflaterCompatImplV21() : (n2 >= 11 ? new LayoutInflaterCompatImplV11() : new LayoutInflaterCompatImplBase());
    }

    private LayoutInflaterCompat() {
    }

    public static LayoutInflaterFactory getFactory(LayoutInflater layoutInflater) {
        return IMPL.getFactory(layoutInflater);
    }

    public static void setFactory(LayoutInflater layoutInflater, LayoutInflaterFactory layoutInflaterFactory) {
        IMPL.setFactory(layoutInflater, layoutInflaterFactory);
    }

    static interface LayoutInflaterCompatImpl {
        public LayoutInflaterFactory getFactory(LayoutInflater var1);

        public void setFactory(LayoutInflater var1, LayoutInflaterFactory var2);
    }

    static class LayoutInflaterCompatImplBase
    implements LayoutInflaterCompatImpl {
        LayoutInflaterCompatImplBase() {
        }

        @Override
        public LayoutInflaterFactory getFactory(LayoutInflater layoutInflater) {
            return LayoutInflaterCompatBase.getFactory(layoutInflater);
        }

        @Override
        public void setFactory(LayoutInflater layoutInflater, LayoutInflaterFactory layoutInflaterFactory) {
            LayoutInflaterCompatBase.setFactory(layoutInflater, layoutInflaterFactory);
        }
    }

    static class LayoutInflaterCompatImplV11
    extends LayoutInflaterCompatImplBase {
        LayoutInflaterCompatImplV11() {
        }

        @Override
        public void setFactory(LayoutInflater layoutInflater, LayoutInflaterFactory layoutInflaterFactory) {
            LayoutInflaterCompatHC.setFactory(layoutInflater, layoutInflaterFactory);
        }
    }

    static class LayoutInflaterCompatImplV21
    extends LayoutInflaterCompatImplV11 {
        LayoutInflaterCompatImplV21() {
        }

        @Override
        public void setFactory(LayoutInflater layoutInflater, LayoutInflaterFactory layoutInflaterFactory) {
            LayoutInflaterCompatLollipop.setFactory(layoutInflater, layoutInflaterFactory);
        }
    }

}

