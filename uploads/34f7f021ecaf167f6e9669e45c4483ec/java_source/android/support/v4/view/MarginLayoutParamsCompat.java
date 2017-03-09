/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.view.ViewGroup
 *  android.view.ViewGroup$MarginLayoutParams
 */
package android.support.v4.view;

import android.os.Build;
import android.support.v4.view.MarginLayoutParamsCompatJellybeanMr1;
import android.view.ViewGroup;

public final class MarginLayoutParamsCompat {
    static final MarginLayoutParamsCompatImpl IMPL = Build.VERSION.SDK_INT >= 17 ? new MarginLayoutParamsCompatImplJbMr1() : new MarginLayoutParamsCompatImplBase();

    private MarginLayoutParamsCompat() {
    }

    public static int getLayoutDirection(ViewGroup.MarginLayoutParams marginLayoutParams) {
        int n2;
        int n3 = n2 = IMPL.getLayoutDirection(marginLayoutParams);
        if (n2 != 0) {
            n3 = n2;
            if (n2 != 1) {
                n3 = 0;
            }
        }
        return n3;
    }

    public static int getMarginEnd(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return IMPL.getMarginEnd(marginLayoutParams);
    }

    public static int getMarginStart(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return IMPL.getMarginStart(marginLayoutParams);
    }

    public static boolean isMarginRelative(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return IMPL.isMarginRelative(marginLayoutParams);
    }

    public static void resolveLayoutDirection(ViewGroup.MarginLayoutParams marginLayoutParams, int n2) {
        IMPL.resolveLayoutDirection(marginLayoutParams, n2);
    }

    public static void setLayoutDirection(ViewGroup.MarginLayoutParams marginLayoutParams, int n2) {
        IMPL.setLayoutDirection(marginLayoutParams, n2);
    }

    public static void setMarginEnd(ViewGroup.MarginLayoutParams marginLayoutParams, int n2) {
        IMPL.setMarginEnd(marginLayoutParams, n2);
    }

    public static void setMarginStart(ViewGroup.MarginLayoutParams marginLayoutParams, int n2) {
        IMPL.setMarginStart(marginLayoutParams, n2);
    }

    static interface MarginLayoutParamsCompatImpl {
        public int getLayoutDirection(ViewGroup.MarginLayoutParams var1);

        public int getMarginEnd(ViewGroup.MarginLayoutParams var1);

        public int getMarginStart(ViewGroup.MarginLayoutParams var1);

        public boolean isMarginRelative(ViewGroup.MarginLayoutParams var1);

        public void resolveLayoutDirection(ViewGroup.MarginLayoutParams var1, int var2);

        public void setLayoutDirection(ViewGroup.MarginLayoutParams var1, int var2);

        public void setMarginEnd(ViewGroup.MarginLayoutParams var1, int var2);

        public void setMarginStart(ViewGroup.MarginLayoutParams var1, int var2);
    }

    static class MarginLayoutParamsCompatImplBase
    implements MarginLayoutParamsCompatImpl {
        MarginLayoutParamsCompatImplBase() {
        }

        @Override
        public int getLayoutDirection(ViewGroup.MarginLayoutParams marginLayoutParams) {
            return 0;
        }

        @Override
        public int getMarginEnd(ViewGroup.MarginLayoutParams marginLayoutParams) {
            return marginLayoutParams.rightMargin;
        }

        @Override
        public int getMarginStart(ViewGroup.MarginLayoutParams marginLayoutParams) {
            return marginLayoutParams.leftMargin;
        }

        @Override
        public boolean isMarginRelative(ViewGroup.MarginLayoutParams marginLayoutParams) {
            return false;
        }

        @Override
        public void resolveLayoutDirection(ViewGroup.MarginLayoutParams marginLayoutParams, int n2) {
        }

        @Override
        public void setLayoutDirection(ViewGroup.MarginLayoutParams marginLayoutParams, int n2) {
        }

        @Override
        public void setMarginEnd(ViewGroup.MarginLayoutParams marginLayoutParams, int n2) {
            marginLayoutParams.rightMargin = n2;
        }

        @Override
        public void setMarginStart(ViewGroup.MarginLayoutParams marginLayoutParams, int n2) {
            marginLayoutParams.leftMargin = n2;
        }
    }

    static class MarginLayoutParamsCompatImplJbMr1
    implements MarginLayoutParamsCompatImpl {
        MarginLayoutParamsCompatImplJbMr1() {
        }

        @Override
        public int getLayoutDirection(ViewGroup.MarginLayoutParams marginLayoutParams) {
            return MarginLayoutParamsCompatJellybeanMr1.getLayoutDirection(marginLayoutParams);
        }

        @Override
        public int getMarginEnd(ViewGroup.MarginLayoutParams marginLayoutParams) {
            return MarginLayoutParamsCompatJellybeanMr1.getMarginEnd(marginLayoutParams);
        }

        @Override
        public int getMarginStart(ViewGroup.MarginLayoutParams marginLayoutParams) {
            return MarginLayoutParamsCompatJellybeanMr1.getMarginStart(marginLayoutParams);
        }

        @Override
        public boolean isMarginRelative(ViewGroup.MarginLayoutParams marginLayoutParams) {
            return MarginLayoutParamsCompatJellybeanMr1.isMarginRelative(marginLayoutParams);
        }

        @Override
        public void resolveLayoutDirection(ViewGroup.MarginLayoutParams marginLayoutParams, int n2) {
            MarginLayoutParamsCompatJellybeanMr1.resolveLayoutDirection(marginLayoutParams, n2);
        }

        @Override
        public void setLayoutDirection(ViewGroup.MarginLayoutParams marginLayoutParams, int n2) {
            MarginLayoutParamsCompatJellybeanMr1.setLayoutDirection(marginLayoutParams, n2);
        }

        @Override
        public void setMarginEnd(ViewGroup.MarginLayoutParams marginLayoutParams, int n2) {
            MarginLayoutParamsCompatJellybeanMr1.setMarginEnd(marginLayoutParams, n2);
        }

        @Override
        public void setMarginStart(ViewGroup.MarginLayoutParams marginLayoutParams, int n2) {
            MarginLayoutParamsCompatJellybeanMr1.setMarginStart(marginLayoutParams, n2);
        }
    }

}

