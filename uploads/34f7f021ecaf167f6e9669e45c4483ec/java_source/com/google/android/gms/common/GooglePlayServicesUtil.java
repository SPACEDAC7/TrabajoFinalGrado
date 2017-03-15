/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.app.Dialog
 *  android.app.PendingIntent
 *  android.content.Context
 *  android.content.DialogInterface
 *  android.content.DialogInterface$OnCancelListener
 *  android.content.Intent
 *  android.content.res.Resources
 *  com.google.android.gms.common.GoogleApiAvailability
 *  com.google.android.gms.common.internal.zzh
 *  com.google.android.gms.common.zze
 */
package com.google.android.gms.common;

import android.app.Activity;
import android.app.Dialog;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.support.v4.app.Fragment;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.internal.zzh;
import com.google.android.gms.common.zze;

public final class GooglePlayServicesUtil
extends zze {
    public static final String GMS_ERROR_DIALOG = "GooglePlayServicesErrorDialog";
    @Deprecated
    public static final String GOOGLE_PLAY_SERVICES_PACKAGE = "com.google.android.gms";
    @Deprecated
    public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = zze.GOOGLE_PLAY_SERVICES_VERSION_CODE;
    public static final String GOOGLE_PLAY_STORE_PACKAGE = "com.android.vending";

    private GooglePlayServicesUtil() {
    }

    @Deprecated
    public static Dialog getErrorDialog(int n2, Activity activity, int n3) {
        return GooglePlayServicesUtil.getErrorDialog(n2, activity, n3, null);
    }

    @Deprecated
    public static Dialog getErrorDialog(int n2, Activity activity, int n3, DialogInterface.OnCancelListener onCancelListener) {
        int n4 = n2;
        if (GooglePlayServicesUtil.zzd((Context)activity, n2)) {
            n4 = 18;
        }
        return GoogleApiAvailability.getInstance().getErrorDialog(activity, n4, n3, onCancelListener);
    }

    @Deprecated
    public static PendingIntent getErrorPendingIntent(int n2, Context context, int n3) {
        return zze.getErrorPendingIntent((int)n2, (Context)context, (int)n3);
    }

    @Deprecated
    public static String getErrorString(int n2) {
        return zze.getErrorString((int)n2);
    }

    @Deprecated
    public static String getOpenSourceSoftwareLicenseInfo(Context context) {
        return zze.getOpenSourceSoftwareLicenseInfo((Context)context);
    }

    public static Context getRemoteContext(Context context) {
        return zze.getRemoteContext((Context)context);
    }

    public static Resources getRemoteResource(Context context) {
        return zze.getRemoteResource((Context)context);
    }

    @Deprecated
    public static int isGooglePlayServicesAvailable(Context context) {
        return zze.isGooglePlayServicesAvailable((Context)context);
    }

    @Deprecated
    public static boolean isUserRecoverableError(int n2) {
        return zze.isUserRecoverableError((int)n2);
    }

    @Deprecated
    public static boolean showErrorDialogFragment(int n2, Activity activity, int n3) {
        return GooglePlayServicesUtil.showErrorDialogFragment(n2, activity, n3, null);
    }

    @Deprecated
    public static boolean showErrorDialogFragment(int n2, Activity activity, int n3, DialogInterface.OnCancelListener onCancelListener) {
        return GooglePlayServicesUtil.showErrorDialogFragment(n2, activity, null, n3, onCancelListener);
    }

    public static boolean showErrorDialogFragment(int n2, Activity activity, Fragment fragment, int n3, DialogInterface.OnCancelListener onCancelListener) {
        int n4 = n2;
        if (GooglePlayServicesUtil.zzd((Context)activity, n2)) {
            n4 = 18;
        }
        GoogleApiAvailability googleApiAvailability = GoogleApiAvailability.getInstance();
        if (fragment == null) {
            return googleApiAvailability.showErrorDialogFragment(activity, n4, n3, onCancelListener);
        }
        if ((fragment = googleApiAvailability.zza((Context)activity, n4, zzh.zza((Fragment)fragment, (Intent)GoogleApiAvailability.getInstance().zzb((Context)activity, n4, "d"), (int)n3), onCancelListener)) == null) {
            return false;
        }
        googleApiAvailability.zza(activity, (Dialog)fragment, "GooglePlayServicesErrorDialog", onCancelListener);
        return true;
    }

    @Deprecated
    public static void showErrorNotification(int n2, Context context) {
        GoogleApiAvailability googleApiAvailability = GoogleApiAvailability.getInstance();
        if (GooglePlayServicesUtil.zzd(context, n2) || GooglePlayServicesUtil.zze(context, n2)) {
            googleApiAvailability.zzbl(context);
            return;
        }
        googleApiAvailability.showErrorNotification(context, n2);
    }

    @Deprecated
    public static boolean zzd(Context context, int n2) {
        return zze.zzd((Context)context, (int)n2);
    }

    @Deprecated
    public static boolean zze(Context context, int n2) {
        return zze.zze((Context)context, (int)n2);
    }
}

