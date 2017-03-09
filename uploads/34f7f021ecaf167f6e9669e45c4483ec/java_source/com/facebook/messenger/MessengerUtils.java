/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.ActivityNotFoundException
 *  android.content.ContentResolver
 *  android.content.Context
 *  android.content.Intent
 *  android.content.pm.PackageInfo
 *  android.content.pm.PackageManager
 *  android.content.pm.PackageManager$NameNotFoundException
 *  android.database.Cursor
 *  android.net.Uri
 *  android.os.Parcelable
 */
package com.facebook.messenger;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.os.Parcelable;
import bolts.AppLinks;
import com.facebook.FacebookSdk;
import com.facebook.messenger.MessengerThreadParams;
import com.facebook.messenger.ShareToMessengerParams;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class MessengerUtils {
    public static final String APPLICATION_ID_PROPERTY = "com.facebook.sdk.ApplicationId";
    public static final String EXTRA_APP_ID = "com.facebook.orca.extra.APPLICATION_ID";
    public static final String EXTRA_EXTERNAL_URI = "com.facebook.orca.extra.EXTERNAL_URI";
    public static final String EXTRA_IS_COMPOSE = "com.facebook.orca.extra.IS_COMPOSE";
    public static final String EXTRA_IS_REPLY = "com.facebook.orca.extra.IS_REPLY";
    public static final String EXTRA_METADATA = "com.facebook.orca.extra.METADATA";
    public static final String EXTRA_PARTICIPANTS = "com.facebook.orca.extra.PARTICIPANTS";
    public static final String EXTRA_PROTOCOL_VERSION = "com.facebook.orca.extra.PROTOCOL_VERSION";
    public static final String EXTRA_REPLY_TOKEN_KEY = "com.facebook.orca.extra.REPLY_TOKEN";
    public static final String EXTRA_THREAD_TOKEN_KEY = "com.facebook.orca.extra.THREAD_TOKEN";
    public static final String ORCA_THREAD_CATEGORY_20150314 = "com.facebook.orca.category.PLATFORM_THREAD_20150314";
    public static final String PACKAGE_NAME = "com.facebook.orca";
    public static final int PROTOCOL_VERSION_20150314 = 20150314;
    private static final String TAG = "MessengerUtils";

    public static void finishShareToMessenger(Activity activity, ShareToMessengerParams shareToMessengerParams) {
        Intent intent = activity.getIntent();
        Set set = intent.getCategories();
        if (set == null) {
            activity.setResult(0, null);
            activity.finish();
            return;
        }
        if (set.contains("com.facebook.orca.category.PLATFORM_THREAD_20150314")) {
            intent = AppLinks.getAppLinkExtras(intent);
            Intent intent2 = new Intent();
            if (set.contains("com.facebook.orca.category.PLATFORM_THREAD_20150314")) {
                intent2.putExtra("com.facebook.orca.extra.PROTOCOL_VERSION", 20150314);
                intent2.putExtra("com.facebook.orca.extra.THREAD_TOKEN", intent.getString("com.facebook.orca.extra.THREAD_TOKEN"));
                intent2.setDataAndType(shareToMessengerParams.uri, shareToMessengerParams.mimeType);
                intent2.setFlags(1);
                intent2.putExtra("com.facebook.orca.extra.APPLICATION_ID", FacebookSdk.getApplicationId());
                intent2.putExtra("com.facebook.orca.extra.METADATA", shareToMessengerParams.metaData);
                intent2.putExtra("com.facebook.orca.extra.EXTERNAL_URI", (Parcelable)shareToMessengerParams.externalUri);
                activity.setResult(-1, intent2);
                activity.finish();
                return;
            }
            throw new RuntimeException();
        }
        activity.setResult(0, null);
        activity.finish();
    }

    private static Set<Integer> getAllAvailableProtocolVersions(Context object) {
        ContentResolver contentResolver = object.getContentResolver();
        object = new HashSet();
        if ((contentResolver = contentResolver.query(Uri.parse((String)"content://com.facebook.orca.provider.MessengerPlatformProvider/versions"), new String[]{"version"}, null, null, null)) != null) {
            try {
                int n2 = contentResolver.getColumnIndex("version");
                while (contentResolver.moveToNext()) {
                    object.add(contentResolver.getInt(n2));
                }
            }
            finally {
                contentResolver.close();
            }
        }
        return object;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static MessengerThreadParams getMessengerThreadParamsForIntent(Intent object) {
        Object object2 = object.getCategories();
        if (object2 == null) {
            return null;
        }
        if (!object2.contains("com.facebook.orca.category.PLATFORM_THREAD_20150314")) return null;
        object = AppLinks.getAppLinkExtras((Intent)object);
        object2 = object.getString("com.facebook.orca.extra.THREAD_TOKEN");
        String string2 = object.getString("com.facebook.orca.extra.METADATA");
        String string3 = object.getString("com.facebook.orca.extra.PARTICIPANTS");
        boolean bl = object.getBoolean("com.facebook.orca.extra.IS_REPLY");
        boolean bl2 = object.getBoolean("com.facebook.orca.extra.IS_COMPOSE");
        object = MessengerThreadParams.Origin.UNKNOWN;
        if (bl) {
            object = MessengerThreadParams.Origin.REPLY_FLOW;
            return new MessengerThreadParams((MessengerThreadParams.Origin)((Object)((Object)object)), (String)object2, string2, MessengerUtils.parseParticipants(string3));
        }
        if (!bl2) return new MessengerThreadParams((MessengerThreadParams.Origin)((Object)((Object)object)), (String)object2, string2, MessengerUtils.parseParticipants(string3));
        object = MessengerThreadParams.Origin.COMPOSE_FLOW;
        return new MessengerThreadParams((MessengerThreadParams.Origin)((Object)object), (String)object2, string2, MessengerUtils.parseParticipants(string3));
    }

    public static boolean hasMessengerInstalled(Context context) {
        try {
            context.getPackageManager().getPackageInfo("com.facebook.orca", 0);
            return true;
        }
        catch (PackageManager.NameNotFoundException var0_1) {
            return false;
        }
    }

    public static void openMessengerInPlayStore(Context context) {
        try {
            MessengerUtils.startViewUri(context, "market://details?id=com.facebook.orca");
            return;
        }
        catch (ActivityNotFoundException var1_1) {
            MessengerUtils.startViewUri(context, "http://play.google.com/store/apps/details?id=com.facebook.orca");
            return;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static List<String> parseParticipants(String list) {
        if (list == null) return Collections.emptyList();
        if (list.length() == 0) {
            return Collections.emptyList();
        }
        String[] arrstring = list.split(",");
        ArrayList<String> arrayList = new ArrayList<String>();
        int n2 = arrstring.length;
        int n3 = 0;
        do {
            list = arrayList;
            if (n3 >= n2) return list;
            arrayList.add(arrstring[n3].trim());
            ++n3;
        } while (true);
    }

    public static void shareToMessenger(Activity activity, int n2, ShareToMessengerParams shareToMessengerParams) {
        if (!MessengerUtils.hasMessengerInstalled((Context)activity)) {
            MessengerUtils.openMessengerInPlayStore((Context)activity);
            return;
        }
        if (MessengerUtils.getAllAvailableProtocolVersions((Context)activity).contains(20150314)) {
            MessengerUtils.shareToMessenger20150314(activity, n2, shareToMessengerParams);
            return;
        }
        MessengerUtils.openMessengerInPlayStore((Context)activity);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private static void shareToMessenger20150314(Activity activity, int n2, ShareToMessengerParams shareToMessengerParams) {
        try {
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setFlags(1);
            intent.setPackage("com.facebook.orca");
            intent.putExtra("android.intent.extra.STREAM", (Parcelable)shareToMessengerParams.uri);
            intent.setType(shareToMessengerParams.mimeType);
            String string2 = FacebookSdk.getApplicationId();
            if (string2 != null) {
                intent.putExtra("com.facebook.orca.extra.PROTOCOL_VERSION", 20150314);
                intent.putExtra("com.facebook.orca.extra.APPLICATION_ID", string2);
                intent.putExtra("com.facebook.orca.extra.METADATA", shareToMessengerParams.metaData);
                intent.putExtra("com.facebook.orca.extra.EXTERNAL_URI", (Parcelable)shareToMessengerParams.externalUri);
            }
            activity.startActivityForResult(intent, n2);
            return;
        }
        catch (ActivityNotFoundException var2_3) {
            activity.startActivity(activity.getPackageManager().getLaunchIntentForPackage("com.facebook.orca"));
            return;
        }
    }

    private static void startViewUri(Context context, String string2) {
        context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse((String)string2)));
    }
}

