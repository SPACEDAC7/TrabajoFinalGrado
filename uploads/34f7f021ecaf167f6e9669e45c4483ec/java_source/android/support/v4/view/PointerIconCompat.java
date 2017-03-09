/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.graphics.Bitmap
 */
package android.support.v4.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.support.annotation.RestrictTo;
import android.support.v4.os.BuildCompat;
import android.support.v4.view.PointerIconCompatApi24;

public final class PointerIconCompat {
    static final PointerIconCompatImpl IMPL = BuildCompat.isAtLeastN() ? new Api24PointerIconCompatImpl() : new BasePointerIconCompatImpl();
    public static final int TYPE_ALIAS = 1010;
    public static final int TYPE_ALL_SCROLL = 1013;
    public static final int TYPE_ARROW = 1000;
    public static final int TYPE_CELL = 1006;
    public static final int TYPE_CONTEXT_MENU = 1001;
    public static final int TYPE_COPY = 1011;
    public static final int TYPE_CROSSHAIR = 1007;
    public static final int TYPE_DEFAULT = 1000;
    public static final int TYPE_GRAB = 1020;
    public static final int TYPE_GRABBING = 1021;
    public static final int TYPE_HAND = 1002;
    public static final int TYPE_HELP = 1003;
    public static final int TYPE_HORIZONTAL_DOUBLE_ARROW = 1014;
    public static final int TYPE_NO_DROP = 1012;
    public static final int TYPE_NULL = 0;
    public static final int TYPE_TEXT = 1008;
    public static final int TYPE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW = 1017;
    public static final int TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW = 1016;
    public static final int TYPE_VERTICAL_DOUBLE_ARROW = 1015;
    public static final int TYPE_VERTICAL_TEXT = 1009;
    public static final int TYPE_WAIT = 1004;
    public static final int TYPE_ZOOM_IN = 1018;
    public static final int TYPE_ZOOM_OUT = 1019;
    private Object mPointerIcon;

    private PointerIconCompat(Object object) {
        this.mPointerIcon = object;
    }

    public static PointerIconCompat create(Bitmap bitmap, float f2, float f3) {
        return new PointerIconCompat(IMPL.create(bitmap, f2, f3));
    }

    public static PointerIconCompat getSystemIcon(Context context, int n2) {
        return new PointerIconCompat(IMPL.getSystemIcon(context, n2));
    }

    public static PointerIconCompat load(Resources resources, int n2) {
        return new PointerIconCompat(IMPL.load(resources, n2));
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public Object getPointerIcon() {
        return this.mPointerIcon;
    }

    static class Api24PointerIconCompatImpl
    extends BasePointerIconCompatImpl {
        Api24PointerIconCompatImpl() {
        }

        @Override
        public Object create(Bitmap bitmap, float f2, float f3) {
            return PointerIconCompatApi24.create(bitmap, f2, f3);
        }

        @Override
        public Object getSystemIcon(Context context, int n2) {
            return PointerIconCompatApi24.getSystemIcon(context, n2);
        }

        @Override
        public Object load(Resources resources, int n2) {
            return PointerIconCompatApi24.load(resources, n2);
        }
    }

    static class BasePointerIconCompatImpl
    implements PointerIconCompatImpl {
        BasePointerIconCompatImpl() {
        }

        @Override
        public Object create(Bitmap bitmap, float f2, float f3) {
            return null;
        }

        @Override
        public Object getSystemIcon(Context context, int n2) {
            return null;
        }

        @Override
        public Object load(Resources resources, int n2) {
            return null;
        }
    }

    static interface PointerIconCompatImpl {
        public Object create(Bitmap var1, float var2, float var3);

        public Object getSystemIcon(Context var1, int var2);

        public Object load(Resources var1, int var2);
    }

}

