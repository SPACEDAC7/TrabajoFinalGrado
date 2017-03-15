/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.accounts.Account
 *  android.annotation.TargetApi
 *  android.content.ContentResolver
 *  android.content.Context
 *  android.content.Intent
 *  android.os.Bundle
 *  android.os.Parcelable
 *  android.util.Log
 *  com.google.android.gms.auth.AccountChangeEvent
 *  com.google.android.gms.auth.GoogleAuthException
 *  com.google.android.gms.auth.GooglePlayServicesAvailabilityException
 *  com.google.android.gms.auth.TokenData
 *  com.google.android.gms.auth.UserRecoverableAuthException
 *  com.google.android.gms.auth.UserRecoverableNotifiedException
 *  com.google.android.gms.auth.zze
 *  com.google.android.gms.common.internal.zzaa
 */
package com.google.android.gms.auth;

import android.accounts.Account;
import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.RequiresPermission;
import android.util.Log;
import com.google.android.gms.auth.AccountChangeEvent;
import com.google.android.gms.auth.GoogleAuthException;
import com.google.android.gms.auth.GooglePlayServicesAvailabilityException;
import com.google.android.gms.auth.TokenData;
import com.google.android.gms.auth.UserRecoverableAuthException;
import com.google.android.gms.auth.UserRecoverableNotifiedException;
import com.google.android.gms.auth.zze;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.internal.zzaa;
import java.io.IOException;
import java.util.List;

public final class GoogleAuthUtil
extends zze {
    public static final int CHANGE_TYPE_ACCOUNT_ADDED = 1;
    public static final int CHANGE_TYPE_ACCOUNT_REMOVED = 2;
    public static final int CHANGE_TYPE_ACCOUNT_RENAMED_FROM = 3;
    public static final int CHANGE_TYPE_ACCOUNT_RENAMED_TO = 4;
    public static final String GOOGLE_ACCOUNT_TYPE = "com.google";
    public static final String KEY_ANDROID_PACKAGE_NAME;
    public static final String KEY_CALLER_UID;
    public static final String KEY_SUPPRESS_PROGRESS_SCREEN = "suppressProgressScreen";
    public static final String WORK_ACCOUNT_TYPE = "com.google.work";

    static {
        KEY_CALLER_UID = zze.KEY_CALLER_UID;
        KEY_ANDROID_PACKAGE_NAME = zze.KEY_ANDROID_PACKAGE_NAME;
    }

    private GoogleAuthUtil() {
    }

    public static void clearToken(Context context, String string2) throws GooglePlayServicesAvailabilityException, GoogleAuthException, IOException {
        zze.clearToken((Context)context, (String)string2);
    }

    public static List<AccountChangeEvent> getAccountChangeEvents(Context context, int n2, String string2) throws GoogleAuthException, IOException {
        return zze.getAccountChangeEvents((Context)context, (int)n2, (String)string2);
    }

    public static String getAccountId(Context context, String string2) throws GoogleAuthException, IOException {
        return zze.getAccountId((Context)context, (String)string2);
    }

    public static String getToken(Context context, Account account, String string2) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        return zze.getToken((Context)context, (Account)account, (String)string2);
    }

    public static String getToken(Context context, Account account, String string2, Bundle bundle) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        return zze.getToken((Context)context, (Account)account, (String)string2, (Bundle)bundle);
    }

    @Deprecated
    public static String getToken(Context context, String string2, String string3) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        return zze.getToken((Context)context, (String)string2, (String)string3);
    }

    @Deprecated
    public static String getToken(Context context, String string2, String string3, Bundle bundle) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        return zze.getToken((Context)context, (String)string2, (String)string3, (Bundle)bundle);
    }

    public static String getTokenWithNotification(Context context, Account account, String string2, Bundle bundle) throws IOException, UserRecoverableNotifiedException, GoogleAuthException {
        return GoogleAuthUtil.zza(context, account, string2, bundle).getToken();
    }

    public static String getTokenWithNotification(Context context, Account account, String string2, Bundle bundle, Intent intent) throws IOException, UserRecoverableNotifiedException, GoogleAuthException {
        GoogleAuthUtil.zzi((Intent)intent);
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        bundle2.putParcelable("callback_intent", (Parcelable)intent);
        bundle2.putBoolean("handle_notification", true);
        return GoogleAuthUtil.zzb(context, account, string2, bundle2).getToken();
    }

    public static String getTokenWithNotification(Context context, Account account, String string2, Bundle bundle, String string3, Bundle bundle2) throws IOException, UserRecoverableNotifiedException, GoogleAuthException {
        zzaa.zzh((String)string3, (Object)"Authority cannot be empty or null.");
        Bundle bundle3 = bundle;
        if (bundle == null) {
            bundle3 = new Bundle();
        }
        bundle = bundle2;
        if (bundle2 == null) {
            bundle = new Bundle();
        }
        ContentResolver.validateSyncExtrasBundle((Bundle)bundle);
        bundle3.putString("authority", string3);
        bundle3.putBundle("sync_extras", bundle);
        bundle3.putBoolean("handle_notification", true);
        return GoogleAuthUtil.zzb(context, account, string2, bundle3).getToken();
    }

    @Deprecated
    public static String getTokenWithNotification(Context context, String string2, String string3, Bundle bundle) throws IOException, UserRecoverableNotifiedException, GoogleAuthException {
        return GoogleAuthUtil.getTokenWithNotification(context, new Account(string2, "com.google"), string3, bundle);
    }

    @Deprecated
    public static String getTokenWithNotification(Context context, String string2, String string3, Bundle bundle, Intent intent) throws IOException, UserRecoverableNotifiedException, GoogleAuthException {
        return GoogleAuthUtil.getTokenWithNotification(context, new Account(string2, "com.google"), string3, bundle, intent);
    }

    @Deprecated
    public static String getTokenWithNotification(Context context, String string2, String string3, Bundle bundle, String string4, Bundle bundle2) throws IOException, UserRecoverableNotifiedException, GoogleAuthException {
        return GoogleAuthUtil.getTokenWithNotification(context, new Account(string2, "com.google"), string3, bundle, string4, bundle2);
    }

    @Deprecated
    @RequiresPermission(value="android.permission.MANAGE_ACCOUNTS")
    public static void invalidateToken(Context context, String string2) {
        zze.invalidateToken((Context)context, (String)string2);
    }

    @TargetApi(value=23)
    public static Bundle removeAccount(Context context, Account account) throws GoogleAuthException, IOException {
        return zze.removeAccount((Context)context, (Account)account);
    }

    public static TokenData zza(Context context, Account account, String string2, Bundle bundle) throws IOException, UserRecoverableNotifiedException, GoogleAuthException {
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        bundle2.putBoolean("handle_notification", true);
        return GoogleAuthUtil.zzb(context, account, string2, bundle2);
    }

    private static TokenData zzb(Context context, Account account, String string2, Bundle bundle) throws IOException, GoogleAuthException {
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        try {
            account = GoogleAuthUtil.zzc(context, account, string2, bundle2);
            GooglePlayServicesUtil.zzbn((Context)context);
            return account;
        }
        catch (GooglePlayServicesAvailabilityException var1_2) {
            GooglePlayServicesUtil.showErrorNotification(var1_2.getConnectionStatusCode(), context);
            Log.w((String)"GoogleAuthUtil", (String)"Error when getting token", (Throwable)var1_2);
            throw new UserRecoverableNotifiedException("User intervention required. Notification has been pushed.");
        }
        catch (UserRecoverableAuthException var1_3) {
            GooglePlayServicesUtil.zzbn((Context)context);
            Log.w((String)"GoogleAuthUtil", (String)"Error when getting token", (Throwable)var1_3);
            throw new UserRecoverableNotifiedException("User intervention required. Notification has been pushed.");
        }
    }

    public static TokenData zzc(Context context, Account account, String string2, Bundle bundle) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        return zze.zzc((Context)context, (Account)account, (String)string2, (Bundle)bundle);
    }
}

