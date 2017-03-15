/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.ContentResolver
 *  android.content.Context
 *  android.content.Intent
 *  android.content.pm.ActivityInfo
 *  android.content.pm.PackageManager
 *  android.content.pm.ResolveInfo
 *  android.content.pm.ServiceInfo
 *  android.database.Cursor
 *  android.net.Uri
 *  android.os.Bundle
 *  android.text.TextUtils
 *  com.facebook.internal.NativeProtocol$1
 *  com.facebook.internal.NativeProtocol$KatanaAppInfo
 *  com.facebook.internal.NativeProtocol$MessengerAppInfo
 *  com.facebook.internal.NativeProtocol$NativeAppInfo
 *  com.facebook.internal.NativeProtocol$WakizashiAppInfo
 *  com.facebook.login.DefaultAudience
 */
package com.facebook.internal;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.FacebookSdk;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.Utility;
import com.facebook.login.DefaultAudience;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import java.util.UUID;

public final class NativeProtocol {
    public static final String ACTION_APPINVITE_DIALOG = "com.facebook.platform.action.request.APPINVITES_DIALOG";
    public static final String ACTION_FEED_DIALOG = "com.facebook.platform.action.request.FEED_DIALOG";
    public static final String ACTION_LIKE_DIALOG = "com.facebook.platform.action.request.LIKE_DIALOG";
    public static final String ACTION_MESSAGE_DIALOG = "com.facebook.platform.action.request.MESSAGE_DIALOG";
    public static final String ACTION_OGACTIONPUBLISH_DIALOG = "com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG";
    public static final String ACTION_OGMESSAGEPUBLISH_DIALOG = "com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG";
    public static final String AUDIENCE_EVERYONE = "everyone";
    public static final String AUDIENCE_FRIENDS = "friends";
    public static final String AUDIENCE_ME = "only_me";
    public static final String BRIDGE_ARG_ACTION_ID_STRING = "action_id";
    public static final String BRIDGE_ARG_APP_NAME_STRING = "app_name";
    public static final String BRIDGE_ARG_ERROR_BUNDLE = "error";
    public static final String BRIDGE_ARG_ERROR_CODE = "error_code";
    public static final String BRIDGE_ARG_ERROR_DESCRIPTION = "error_description";
    public static final String BRIDGE_ARG_ERROR_JSON = "error_json";
    public static final String BRIDGE_ARG_ERROR_SUBCODE = "error_subcode";
    public static final String BRIDGE_ARG_ERROR_TYPE = "error_type";
    private static final String CONTENT_SCHEME = "content://";
    public static final String ERROR_APPLICATION_ERROR = "ApplicationError";
    public static final String ERROR_NETWORK_ERROR = "NetworkError";
    public static final String ERROR_PERMISSION_DENIED = "PermissionDenied";
    public static final String ERROR_PROTOCOL_ERROR = "ProtocolError";
    public static final String ERROR_SERVICE_DISABLED = "ServiceDisabled";
    public static final String ERROR_UNKNOWN_ERROR = "UnknownError";
    public static final String ERROR_USER_CANCELED = "UserCanceled";
    public static final String EXTRA_ACCESS_TOKEN = "com.facebook.platform.extra.ACCESS_TOKEN";
    public static final String EXTRA_APPLICATION_ID = "com.facebook.platform.extra.APPLICATION_ID";
    public static final String EXTRA_APPLICATION_NAME = "com.facebook.platform.extra.APPLICATION_NAME";
    public static final String EXTRA_DIALOG_COMPLETE_KEY = "com.facebook.platform.extra.DID_COMPLETE";
    public static final String EXTRA_DIALOG_COMPLETION_GESTURE_KEY = "com.facebook.platform.extra.COMPLETION_GESTURE";
    public static final String EXTRA_EXPIRES_SECONDS_SINCE_EPOCH = "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH";
    public static final String EXTRA_GET_INSTALL_DATA_PACKAGE = "com.facebook.platform.extra.INSTALLDATA_PACKAGE";
    public static final String EXTRA_PERMISSIONS = "com.facebook.platform.extra.PERMISSIONS";
    public static final String EXTRA_PROTOCOL_ACTION = "com.facebook.platform.protocol.PROTOCOL_ACTION";
    public static final String EXTRA_PROTOCOL_BRIDGE_ARGS = "com.facebook.platform.protocol.BRIDGE_ARGS";
    public static final String EXTRA_PROTOCOL_CALL_ID = "com.facebook.platform.protocol.CALL_ID";
    public static final String EXTRA_PROTOCOL_METHOD_ARGS = "com.facebook.platform.protocol.METHOD_ARGS";
    public static final String EXTRA_PROTOCOL_METHOD_RESULTS = "com.facebook.platform.protocol.RESULT_ARGS";
    public static final String EXTRA_PROTOCOL_VERSION = "com.facebook.platform.protocol.PROTOCOL_VERSION";
    static final String EXTRA_PROTOCOL_VERSIONS = "com.facebook.platform.extra.PROTOCOL_VERSIONS";
    public static final String EXTRA_USER_ID = "com.facebook.platform.extra.USER_ID";
    private static final NativeAppInfo FACEBOOK_APP_INFO = new KatanaAppInfo(null);
    private static final String FACEBOOK_PROXY_AUTH_ACTIVITY = "com.facebook.katana.ProxyAuth";
    public static final String FACEBOOK_PROXY_AUTH_APP_ID_KEY = "client_id";
    public static final String FACEBOOK_PROXY_AUTH_E2E_KEY = "e2e";
    public static final String FACEBOOK_PROXY_AUTH_PERMISSIONS_KEY = "scope";
    private static final String FACEBOOK_TOKEN_REFRESH_ACTIVITY = "com.facebook.katana.platform.TokenRefreshService";
    public static final String IMAGE_URL_KEY = "url";
    public static final String IMAGE_USER_GENERATED_KEY = "user_generated";
    static final String INTENT_ACTION_PLATFORM_ACTIVITY = "com.facebook.platform.PLATFORM_ACTIVITY";
    static final String INTENT_ACTION_PLATFORM_SERVICE = "com.facebook.platform.PLATFORM_SERVICE";
    private static final List<Integer> KNOWN_PROTOCOL_VERSIONS;
    public static final int MESSAGE_GET_ACCESS_TOKEN_REPLY = 65537;
    public static final int MESSAGE_GET_ACCESS_TOKEN_REQUEST = 65536;
    public static final int MESSAGE_GET_INSTALL_DATA_REPLY = 65541;
    public static final int MESSAGE_GET_INSTALL_DATA_REQUEST = 65540;
    public static final int MESSAGE_GET_LIKE_STATUS_REPLY = 65543;
    public static final int MESSAGE_GET_LIKE_STATUS_REQUEST = 65542;
    static final int MESSAGE_GET_PROTOCOL_VERSIONS_REPLY = 65539;
    static final int MESSAGE_GET_PROTOCOL_VERSIONS_REQUEST = 65538;
    public static final int NO_PROTOCOL_AVAILABLE = -1;
    public static final String OPEN_GRAPH_CREATE_OBJECT_KEY = "fbsdk:create_object";
    private static final String PLATFORM_PROVIDER_VERSIONS = ".provider.PlatformProvider/versions";
    private static final String PLATFORM_PROVIDER_VERSION_COLUMN = "version";
    public static final int PROTOCOL_VERSION_20121101 = 20121101;
    public static final int PROTOCOL_VERSION_20130502 = 20130502;
    public static final int PROTOCOL_VERSION_20130618 = 20130618;
    public static final int PROTOCOL_VERSION_20131107 = 20131107;
    public static final int PROTOCOL_VERSION_20140204 = 20140204;
    public static final int PROTOCOL_VERSION_20140324 = 20140324;
    public static final int PROTOCOL_VERSION_20140701 = 20140701;
    public static final int PROTOCOL_VERSION_20141001 = 20141001;
    public static final int PROTOCOL_VERSION_20141028 = 20141028;
    public static final int PROTOCOL_VERSION_20141107 = 20141107;
    public static final int PROTOCOL_VERSION_20141218 = 20141218;
    public static final String RESULT_ARGS_ACCESS_TOKEN = "access_token";
    public static final String RESULT_ARGS_DIALOG_COMPLETE_KEY = "didComplete";
    public static final String RESULT_ARGS_DIALOG_COMPLETION_GESTURE_KEY = "completionGesture";
    public static final String RESULT_ARGS_EXPIRES_SECONDS_SINCE_EPOCH = "expires_seconds_since_epoch";
    public static final String RESULT_ARGS_PERMISSIONS = "permissions";
    public static final String STATUS_ERROR_CODE = "com.facebook.platform.status.ERROR_CODE";
    public static final String STATUS_ERROR_DESCRIPTION = "com.facebook.platform.status.ERROR_DESCRIPTION";
    public static final String STATUS_ERROR_JSON = "com.facebook.platform.status.ERROR_JSON";
    public static final String STATUS_ERROR_SUBCODE = "com.facebook.platform.status.ERROR_SUBCODE";
    public static final String STATUS_ERROR_TYPE = "com.facebook.platform.status.ERROR_TYPE";
    public static final String WEB_DIALOG_ACTION = "action";
    public static final String WEB_DIALOG_IS_FALLBACK = "is_fallback";
    public static final String WEB_DIALOG_PARAMS = "params";
    public static final String WEB_DIALOG_URL = "url";
    private static Map<String, List<NativeAppInfo>> actionToAppInfoMap;
    private static List<NativeAppInfo> facebookAppInfoList;

    static {
        facebookAppInfoList = NativeProtocol.buildFacebookAppList();
        actionToAppInfoMap = NativeProtocol.buildActionToAppInfoMap();
        KNOWN_PROTOCOL_VERSIONS = Arrays.asList(20141218, 20141107, 20141028, 20141001, 20140701, 20140324, 20140204, 20131107, 20130618, 20130502, 20121101);
    }

    private static Map<String, List<NativeAppInfo>> buildActionToAppInfoMap() {
        HashMap<String, List<NativeAppInfo>> hashMap = new HashMap<String, List<NativeAppInfo>>();
        ArrayList<MessengerAppInfo> arrayList = new ArrayList<MessengerAppInfo>();
        arrayList.add(new MessengerAppInfo(null));
        hashMap.put("com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG", facebookAppInfoList);
        hashMap.put("com.facebook.platform.action.request.FEED_DIALOG", facebookAppInfoList);
        hashMap.put("com.facebook.platform.action.request.LIKE_DIALOG", facebookAppInfoList);
        hashMap.put("com.facebook.platform.action.request.APPINVITES_DIALOG", facebookAppInfoList);
        hashMap.put("com.facebook.platform.action.request.MESSAGE_DIALOG", arrayList);
        hashMap.put("com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG", arrayList);
        return hashMap;
    }

    private static List<NativeAppInfo> buildFacebookAppList() {
        ArrayList<NativeAppInfo> arrayList = new ArrayList<NativeAppInfo>();
        arrayList.add(FACEBOOK_APP_INFO);
        arrayList.add((NativeAppInfo)new WakizashiAppInfo(null));
        return arrayList;
    }

    private static Uri buildPlatformProviderVersionURI(NativeAppInfo nativeAppInfo) {
        return Uri.parse((String)("content://" + nativeAppInfo.getPackage() + ".provider.PlatformProvider/versions"));
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static int computeLatestAvailableVersionFromVersionSpec(TreeSet<Integer> iterator, int n2, int[] arrn) {
        int n3;
        int n4;
        int n5;
        int n6 = arrn.length - 1;
        iterator = iterator.descendingIterator();
        int n7 = -1;
        do {
            if (!iterator.hasNext()) return -1;
            n3 = (Integer)iterator.next();
            n4 = Math.max(n7, n3);
            for (n5 = n6; n5 >= 0 && arrn[n5] > n3; --n5) {
            }
            if (n5 < 0) {
                return -1;
            }
            n7 = n4;
            n6 = n5;
        } while (arrn[n5] != n3);
        if (n5 % 2 != 0) return -1;
        return Math.min(n4, n2);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static Bundle createBundleForException(FacebookException facebookException) {
        if (facebookException == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        bundle.putString("error_description", facebookException.toString());
        Bundle bundle2 = bundle;
        if (!(facebookException instanceof FacebookOperationCanceledException)) return bundle2;
        bundle.putString("error_type", "UserCanceled");
        return bundle;
    }

    public static Intent createPlatformActivityIntent(Context context, String string2, String string3, int n2, Bundle bundle) {
        if ((context = NativeProtocol.findActivityIntent(context, "com.facebook.platform.PLATFORM_ACTIVITY", string3)) == null) {
            return null;
        }
        NativeProtocol.setupProtocolRequestIntent((Intent)context, string2, string3, n2, bundle);
        return context;
    }

    public static Intent createPlatformServiceIntent(Context context) {
        for (NativeAppInfo nativeAppInfo : facebookAppInfoList) {
            if ((nativeAppInfo = NativeProtocol.validateServiceIntent(context, new Intent("com.facebook.platform.PLATFORM_SERVICE").setPackage(nativeAppInfo.getPackage()).addCategory("android.intent.category.DEFAULT"), nativeAppInfo)) == null) continue;
            return nativeAppInfo;
        }
        return null;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static Intent createProtocolResultIntent(Intent intent, Bundle bundle, FacebookException facebookException) {
        UUID uUID = NativeProtocol.getCallIdFromIntent(intent);
        if (uUID == null) {
            return null;
        }
        Intent intent2 = new Intent();
        intent2.putExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", NativeProtocol.getProtocolVersionFromIntent(intent));
        intent = new Bundle();
        intent.putString("action_id", uUID.toString());
        if (facebookException != null) {
            intent.putBundle("error", NativeProtocol.createBundleForException(facebookException));
        }
        intent2.putExtra("com.facebook.platform.protocol.BRIDGE_ARGS", (Bundle)intent);
        intent = intent2;
        if (bundle == null) return intent;
        intent2.putExtra("com.facebook.platform.protocol.RESULT_ARGS", bundle);
        return intent2;
    }

    public static Intent createProxyAuthIntent(Context context, String string2, Collection<String> collection, String string3, boolean bl, DefaultAudience defaultAudience) {
        for (NativeAppInfo nativeAppInfo : facebookAppInfoList) {
            Intent intent = new Intent().setClassName(nativeAppInfo.getPackage(), "com.facebook.katana.ProxyAuth").putExtra("client_id", string2);
            if (!Utility.isNullOrEmpty(collection)) {
                intent.putExtra("scope", TextUtils.join((CharSequence)",", collection));
            }
            if (!Utility.isNullOrEmpty(string3)) {
                intent.putExtra("e2e", string3);
            }
            intent.putExtra("response_type", "token,signed_request");
            intent.putExtra("return_scopes", "true");
            intent.putExtra("default_audience", defaultAudience.getNativeProtocolAudience());
            intent.putExtra("legacy_override", "v2.3");
            if (bl) {
                intent.putExtra("auth_type", "rerequest");
            }
            if ((nativeAppInfo = NativeProtocol.validateActivityIntent(context, intent, nativeAppInfo)) == null) continue;
            return nativeAppInfo;
        }
        return null;
    }

    public static Intent createTokenRefreshIntent(Context context) {
        for (NativeAppInfo nativeAppInfo : facebookAppInfoList) {
            if ((nativeAppInfo = NativeProtocol.validateServiceIntent(context, new Intent().setClassName(nativeAppInfo.getPackage(), "com.facebook.katana.platform.TokenRefreshService"), nativeAppInfo)) == null) continue;
            return nativeAppInfo;
        }
        return null;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static Intent findActivityIntent(Context context, String string2, String string3) {
        Intent intent = actionToAppInfoMap.get(string3);
        if (intent == null) {
            return null;
        }
        string3 = null;
        Iterator<NativeAppInfo> iterator = intent.iterator();
        do {
            if (!iterator.hasNext()) return string3;
            string3 = iterator.next();
            string3 = intent = NativeProtocol.validateActivityIntent(context, new Intent().setAction(string2).setPackage(string3.getPackage()).addCategory("android.intent.category.DEFAULT"), (NativeAppInfo)string3);
        } while (intent == null);
        return intent;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private static TreeSet<Integer> getAllAvailableProtocolVersionsForAppInfo(NativeAppInfo nativeAppInfo) {
        TreeSet<Integer> treeSet = new TreeSet<Integer>();
        ContentResolver contentResolver = FacebookSdk.getApplicationContext().getContentResolver();
        Uri uri = NativeProtocol.buildPlatformProviderVersionURI(nativeAppInfo);
        nativeAppInfo = null;
        try {
            contentResolver = contentResolver.query(uri, new String[]{"version"}, null, null, null);
            if (contentResolver != null) {
                do {
                    nativeAppInfo = contentResolver;
                    if (contentResolver.moveToNext()) {
                        nativeAppInfo = contentResolver;
                        treeSet.add(contentResolver.getInt(contentResolver.getColumnIndex("version")));
                        continue;
                    }
                    break;
                    break;
                } while (true);
            }
        }
        catch (Throwable var1_3) {
            if (nativeAppInfo != null) {
                nativeAppInfo.close();
            }
            throw var1_3;
        }
        if (contentResolver != null) {
            contentResolver.close();
        }
        return treeSet;
    }

    public static Bundle getBridgeArgumentsFromIntent(Intent intent) {
        if (!NativeProtocol.isVersionCompatibleWithBucketedIntent(NativeProtocol.getProtocolVersionFromIntent(intent))) {
            return null;
        }
        return intent.getBundleExtra("com.facebook.platform.protocol.BRIDGE_ARGS");
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static UUID getCallIdFromIntent(Intent object) {
        if (object == null) return null;
        int n2 = NativeProtocol.getProtocolVersionFromIntent((Intent)object);
        Object var1_3 = null;
        if (NativeProtocol.isVersionCompatibleWithBucketedIntent(n2)) {
            Bundle bundle = object.getBundleExtra("com.facebook.platform.protocol.BRIDGE_ARGS");
            object = var1_3;
            if (bundle != null) {
                object = bundle.getString("action_id");
            }
        } else {
            object = object.getStringExtra("com.facebook.platform.protocol.CALL_ID");
        }
        if (object == null) {
            return null;
        }
        try {
            return UUID.fromString((String)object);
        }
        catch (IllegalArgumentException var0_1) {
            return null;
        }
    }

    public static Bundle getErrorDataFromResultIntent(Intent intent) {
        if (!NativeProtocol.isErrorResult(intent)) {
            return null;
        }
        Bundle bundle = NativeProtocol.getBridgeArgumentsFromIntent(intent);
        if (bundle != null) {
            return bundle.getBundle("error");
        }
        return intent.getExtras();
    }

    public static FacebookException getExceptionFromErrorData(Bundle bundle) {
        String string2;
        String string3;
        if (bundle == null) {
            return null;
        }
        String string4 = string3 = bundle.getString("error_type");
        if (string3 == null) {
            string4 = bundle.getString("com.facebook.platform.status.ERROR_TYPE");
        }
        string3 = string2 = bundle.getString("error_description");
        if (string2 == null) {
            string3 = bundle.getString("com.facebook.platform.status.ERROR_DESCRIPTION");
        }
        if (string4 != null && string4.equalsIgnoreCase("UserCanceled")) {
            return new FacebookOperationCanceledException(string3);
        }
        return new FacebookException(string3);
    }

    public static int getLatestAvailableProtocolVersionForAction(String string2, int[] arrn) {
        return NativeProtocol.getLatestAvailableProtocolVersionForAppInfoList(actionToAppInfoMap.get(string2), arrn);
    }

    private static int getLatestAvailableProtocolVersionForAppInfo(NativeAppInfo nativeAppInfo, int[] arrn) {
        return NativeProtocol.computeLatestAvailableVersionFromVersionSpec(NativeProtocol.getAllAvailableProtocolVersionsForAppInfo(nativeAppInfo), NativeProtocol.getLatestKnownVersion(), arrn);
    }

    private static int getLatestAvailableProtocolVersionForAppInfoList(List<NativeAppInfo> object, int[] arrn) {
        if (object == null) {
            return -1;
        }
        object = object.iterator();
        while (object.hasNext()) {
            int n2 = NativeProtocol.getLatestAvailableProtocolVersionForAppInfo((NativeAppInfo)object.next(), arrn);
            if (n2 == -1) continue;
            return n2;
        }
        return -1;
    }

    public static int getLatestAvailableProtocolVersionForService(int n2) {
        return NativeProtocol.getLatestAvailableProtocolVersionForAppInfoList(facebookAppInfoList, new int[]{n2});
    }

    public static final int getLatestKnownVersion() {
        return KNOWN_PROTOCOL_VERSIONS.get(0);
    }

    public static Bundle getMethodArgumentsFromIntent(Intent intent) {
        if (!NativeProtocol.isVersionCompatibleWithBucketedIntent(NativeProtocol.getProtocolVersionFromIntent(intent))) {
            return intent.getExtras();
        }
        return intent.getBundleExtra("com.facebook.platform.protocol.METHOD_ARGS");
    }

    public static int getProtocolVersionFromIntent(Intent intent) {
        return intent.getIntExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", 0);
    }

    public static Bundle getSuccessResultsFromIntent(Intent intent) {
        int n2 = NativeProtocol.getProtocolVersionFromIntent(intent);
        intent = intent.getExtras();
        if (!NativeProtocol.isVersionCompatibleWithBucketedIntent(n2) || intent == null) {
            return intent;
        }
        return intent.getBundle("com.facebook.platform.protocol.RESULT_ARGS");
    }

    public static boolean isErrorResult(Intent intent) {
        Bundle bundle = NativeProtocol.getBridgeArgumentsFromIntent(intent);
        if (bundle != null) {
            return bundle.containsKey("error");
        }
        return intent.hasExtra("com.facebook.platform.status.ERROR_TYPE");
    }

    public static boolean isVersionCompatibleWithBucketedIntent(int n2) {
        if (KNOWN_PROTOCOL_VERSIONS.contains(n2) && n2 >= 20140701) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void setupProtocolRequestIntent(Intent intent, String string2, String string3, int n2, Bundle bundle) {
        String string4 = FacebookSdk.getApplicationId();
        String string5 = FacebookSdk.getApplicationName();
        intent.putExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", n2).putExtra("com.facebook.platform.protocol.PROTOCOL_ACTION", string3).putExtra("com.facebook.platform.extra.APPLICATION_ID", string4);
        if (NativeProtocol.isVersionCompatibleWithBucketedIntent(n2)) {
            string3 = new Bundle();
            string3.putString("action_id", string2);
            Utility.putNonEmptyString((Bundle)string3, "app_name", string5);
            intent.putExtra("com.facebook.platform.protocol.BRIDGE_ARGS", (Bundle)string3);
            string2 = bundle == null ? new Bundle() : bundle;
            intent.putExtra("com.facebook.platform.protocol.METHOD_ARGS", (Bundle)string2);
            return;
        }
        intent.putExtra("com.facebook.platform.protocol.CALL_ID", string2);
        if (!Utility.isNullOrEmpty(string5)) {
            intent.putExtra("com.facebook.platform.extra.APPLICATION_NAME", string5);
        }
        intent.putExtras(bundle);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static Intent validateActivityIntent(Context context, Intent intent, NativeAppInfo nativeAppInfo) {
        if (intent == null) {
            return null;
        }
        ResolveInfo resolveInfo = context.getPackageManager().resolveActivity(intent, 0);
        if (resolveInfo == null) {
            return null;
        }
        if (nativeAppInfo.validateSignature(context, resolveInfo.activityInfo.packageName)) return intent;
        return null;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static Intent validateServiceIntent(Context context, Intent intent, NativeAppInfo nativeAppInfo) {
        if (intent == null) {
            return null;
        }
        ResolveInfo resolveInfo = context.getPackageManager().resolveService(intent, 0);
        if (resolveInfo == null) {
            return null;
        }
        if (nativeAppInfo.validateSignature(context, resolveInfo.serviceInfo.packageName)) return intent;
        return null;
    }
}

