/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Bundle
 *  org.json.JSONException
 */
package com.facebook.internal;

import android.os.Bundle;
import com.facebook.FacebookSdk;
import com.facebook.LoggingBehavior;
import com.facebook.internal.BundleJSONConverter;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;
import java.util.Collection;
import org.json.JSONException;

public final class ServerProtocol {
    private static final String DIALOG_AUTHORITY_FORMAT = "m.%s";
    public static final String DIALOG_CANCEL_URI = "fbconnect://cancel";
    public static final String DIALOG_PARAM_ACCESS_TOKEN = "access_token";
    public static final String DIALOG_PARAM_APP_ID = "app_id";
    public static final String DIALOG_PARAM_AUTH_TYPE = "auth_type";
    public static final String DIALOG_PARAM_CLIENT_ID = "client_id";
    public static final String DIALOG_PARAM_DEFAULT_AUDIENCE = "default_audience";
    public static final String DIALOG_PARAM_DISPLAY = "display";
    public static final String DIALOG_PARAM_DISPLAY_TOUCH = "touch";
    public static final String DIALOG_PARAM_E2E = "e2e";
    public static final String DIALOG_PARAM_LEGACY_OVERRIDE = "legacy_override";
    public static final String DIALOG_PARAM_REDIRECT_URI = "redirect_uri";
    public static final String DIALOG_PARAM_RESPONSE_TYPE = "response_type";
    public static final String DIALOG_PARAM_RETURN_SCOPES = "return_scopes";
    public static final String DIALOG_PARAM_SCOPE = "scope";
    public static final String DIALOG_PATH = "dialog/";
    public static final String DIALOG_REDIRECT_URI = "fbconnect://success";
    public static final String DIALOG_REREQUEST_AUTH_TYPE = "rerequest";
    public static final String DIALOG_RESPONSE_TYPE_TOKEN_AND_SIGNED_REQUEST = "token,signed_request";
    public static final String DIALOG_RETURN_SCOPES_TRUE = "true";
    public static final String FALLBACK_DIALOG_DISPLAY_VALUE_TOUCH = "touch";
    public static final String FALLBACK_DIALOG_PARAM_APP_ID = "app_id";
    public static final String FALLBACK_DIALOG_PARAM_BRIDGE_ARGS = "bridge_args";
    public static final String FALLBACK_DIALOG_PARAM_KEY_HASH = "android_key_hash";
    public static final String FALLBACK_DIALOG_PARAM_METHOD_ARGS = "method_args";
    public static final String FALLBACK_DIALOG_PARAM_METHOD_RESULTS = "method_results";
    public static final String FALLBACK_DIALOG_PARAM_VERSION = "version";
    public static final String GRAPH_API_VERSION = "v2.3";
    private static final String GRAPH_URL_FORMAT = "https://graph.%s";
    private static final String GRAPH_VIDEO_URL_FORMAT = "https://graph-video.%s";
    private static final String TAG = ServerProtocol.class.getName();
    public static final Collection<String> errorsProxyAuthDisabled = Utility.unmodifiableCollection("service_disabled", "AndroidAuthKillSwitchException");
    public static final Collection<String> errorsUserCanceled = Utility.unmodifiableCollection("access_denied", "OAuthAccessDeniedException");

    public static final String getAPIVersion() {
        return "v2.3";
    }

    public static final String getDialogAuthority() {
        return String.format("m.%s", FacebookSdk.getFacebookDomain());
    }

    public static final String getGraphUrlBase() {
        return String.format("https://graph.%s", FacebookSdk.getFacebookDomain());
    }

    public static final String getGraphVideoUrlBase() {
        return String.format("https://graph-video.%s", FacebookSdk.getFacebookDomain());
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static Bundle getQueryParamsForPlatformActivityIntentWebFallback(String string2, int n2, Bundle bundle) {
        String string3 = FacebookSdk.getApplicationSignature(FacebookSdk.getApplicationContext());
        if (Utility.isNullOrEmpty(string3)) {
            return null;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putString("android_key_hash", string3);
        bundle2.putString("app_id", FacebookSdk.getApplicationId());
        bundle2.putInt("version", n2);
        bundle2.putString("display", "touch");
        string3 = new Bundle();
        string3.putString("action_id", string2);
        string2 = bundle;
        if (bundle == null) {
            string2 = new Bundle();
        }
        try {
            bundle = BundleJSONConverter.convertToJSON((Bundle)string3);
            string2 = BundleJSONConverter.convertToJSON((Bundle)string2);
            if (bundle == null || string2 == null) return null;
        }
        catch (JSONException var0_1) {
            Logger.log(LoggingBehavior.DEVELOPER_ERRORS, 6, TAG, "Error creating Url -- " + (Object)var0_1);
            return null;
        }
        bundle2.putString("bridge_args", bundle.toString());
        bundle2.putString("method_args", string2.toString());
        return bundle2;
    }
}

