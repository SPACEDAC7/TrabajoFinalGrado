/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.AlertDialog
 *  android.app.AlertDialog$Builder
 *  android.content.Context
 *  android.content.DialogInterface
 *  android.content.DialogInterface$OnCancelListener
 */
package jackpal.androidterm.compat;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import jackpal.androidterm.compat.AndroidCompat;

public class AlertDialogCompat
extends AlertDialog {
    public static int THEME_DEVICE_DEFAULT_DARK;
    public static int THEME_DEVICE_DEFAULT_LIGHT;
    public static int THEME_HOLO_DARK;
    public static int THEME_HOLO_LIGHT;
    public static int THEME_HOLO_TRADITIONAL;

    static {
        THEME_HOLO_TRADITIONAL = 1;
        THEME_HOLO_DARK = 2;
        THEME_HOLO_LIGHT = 3;
        THEME_DEVICE_DEFAULT_DARK = 4;
        THEME_DEVICE_DEFAULT_LIGHT = 5;
    }

    private AlertDialogCompat(Context context) {
        super(context);
    }

    private AlertDialogCompat(Context context, boolean bl, DialogInterface.OnCancelListener onCancelListener) {
        super(context, bl, onCancelListener);
    }

    public static AlertDialog newInstance(Context context) {
        return new AlertDialogCompat(context);
    }

    public static AlertDialog newInstance(Context context, int n) {
        if (AndroidCompat.SDK >= 14) {
            return new Api14OrLater(context, n);
        }
        if (AndroidCompat.SDK >= 11) {
            return new Api11OrLater(context, n);
        }
        return new AlertDialogCompat(context);
    }

    public static AlertDialog newInstance(Context context, boolean bl, DialogInterface.OnCancelListener onCancelListener) {
        return new AlertDialogCompat(context, bl, onCancelListener);
    }

    public static AlertDialog.Builder newInstanceBuilder(Context context, int n) {
        if (AndroidCompat.SDK >= 11) {
            return new Api11OrLaterBuilder(context, n);
        }
        return new AlertDialog.Builder(context);
    }

    private static class Api11OrLater
    extends AlertDialog {
        public Api11OrLater(Context context, int n) {
            super(context, n);
        }

        public Api11OrLater(Context context, boolean bl, DialogInterface.OnCancelListener onCancelListener) {
            super(context, bl, onCancelListener);
        }
    }

    private static class Api11OrLaterBuilder
    extends AlertDialog.Builder {
        public Api11OrLaterBuilder(Context context) {
            super(context);
        }

        public Api11OrLaterBuilder(Context context, int n) {
            super(context, n);
        }
    }

    private static class Api14OrLater
    extends AlertDialog {
        public Api14OrLater(Context context, int n) {
            super(context, n);
        }

        public Api14OrLater(Context context, boolean bl, DialogInterface.OnCancelListener onCancelListener) {
            super(context, bl, onCancelListener);
        }
    }

}

