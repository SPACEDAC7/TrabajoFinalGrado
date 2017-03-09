/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.os.Bundle
 *  android.text.TextUtils
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.facebook.login;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.login.DefaultAudience;
import com.facebook.login.LoginBehavior;
import com.facebook.login.LoginClient;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

class LoginLogger {
    static final String EVENT_EXTRAS_DEFAULT_AUDIENCE = "default_audience";
    static final String EVENT_EXTRAS_LOGIN_BEHAVIOR = "login_behavior";
    static final String EVENT_EXTRAS_MISSING_INTERNET_PERMISSION = "no_internet_permission";
    static final String EVENT_EXTRAS_NEW_PERMISSIONS = "new_permissions";
    static final String EVENT_EXTRAS_NOT_TRIED = "not_tried";
    static final String EVENT_EXTRAS_PERMISSIONS = "permissions";
    static final String EVENT_EXTRAS_REQUEST_CODE = "request_code";
    static final String EVENT_EXTRAS_TRY_LOGIN_ACTIVITY = "try_login_activity";
    static final String EVENT_NAME_LOGIN_COMPLETE = "fb_mobile_login_complete";
    static final String EVENT_NAME_LOGIN_METHOD_COMPLETE = "fb_mobile_login_method_complete";
    static final String EVENT_NAME_LOGIN_METHOD_START = "fb_mobile_login_method_start";
    static final String EVENT_NAME_LOGIN_START = "fb_mobile_login_start";
    static final String EVENT_PARAM_AUTH_LOGGER_ID = "0_auth_logger_id";
    static final String EVENT_PARAM_ERROR_CODE = "4_error_code";
    static final String EVENT_PARAM_ERROR_MESSAGE = "5_error_message";
    static final String EVENT_PARAM_EXTRAS = "6_extras";
    static final String EVENT_PARAM_LOGIN_RESULT = "2_result";
    static final String EVENT_PARAM_METHOD = "3_method";
    static final String EVENT_PARAM_METHOD_RESULT_SKIPPED = "skipped";
    static final String EVENT_PARAM_TIMESTAMP = "1_timestamp_ms";
    private final AppEventsLogger appEventsLogger;
    private String applicationId;

    LoginLogger(Context context, String string2) {
        this.applicationId = string2;
        this.appEventsLogger = AppEventsLogger.newLogger(context, string2);
    }

    static Bundle newAuthorizationLoggingBundle(String string2) {
        Bundle bundle = new Bundle();
        bundle.putLong("1_timestamp_ms", System.currentTimeMillis());
        bundle.putString("0_auth_logger_id", string2);
        bundle.putString("3_method", "");
        bundle.putString("2_result", "");
        bundle.putString("5_error_message", "");
        bundle.putString("4_error_code", "");
        bundle.putString("6_extras", "");
        return bundle;
    }

    public String getApplicationId() {
        return this.applicationId;
    }

    public void logAuthorizationMethodComplete(String string2, String string3, String string4, String string5, String string6, Map<String, String> map) {
        string2 = LoginLogger.newAuthorizationLoggingBundle(string2);
        if (string4 != null) {
            string2.putString("2_result", string4);
        }
        if (string5 != null) {
            string2.putString("5_error_message", string5);
        }
        if (string6 != null) {
            string2.putString("4_error_code", string6);
        }
        if (map != null && !map.isEmpty()) {
            string2.putString("6_extras", new JSONObject(map).toString());
        }
        string2.putString("3_method", string3);
        this.appEventsLogger.logSdkEvent("fb_mobile_login_method_complete", null, (Bundle)string2);
    }

    public void logAuthorizationMethodStart(String string2, String string3) {
        string2 = LoginLogger.newAuthorizationLoggingBundle(string2);
        string2.putString("3_method", string3);
        this.appEventsLogger.logSdkEvent("fb_mobile_login_method_start", null, (Bundle)string2);
    }

    public void logCompleteLogin(String object, Map<String, String> object2, LoginClient.Result.Code object3, Map<String, String> map, Exception exception) {
        Bundle bundle = LoginLogger.newAuthorizationLoggingBundle((String)object);
        if (object3 != null) {
            bundle.putString("2_result", object3.getLoggingValue());
        }
        if (exception != null && exception.getMessage() != null) {
            bundle.putString("5_error_message", exception.getMessage());
        }
        object = null;
        if (!object2.isEmpty()) {
            object = new JSONObject(object2);
        }
        object3 = object;
        if (map != null) {
            object2 = object;
            if (object == null) {
                object2 = new JSONObject();
            }
            try {
                object = map.entrySet().iterator();
            }
            catch (JSONException var1_2) {
                object3 = object2;
            }
            do {
                object3 = object2;
                if (object.hasNext()) {
                    object3 = (Map.Entry)object.next();
                    object2.put((String)object3.getKey(), object3.getValue());
                    continue;
                }
                break;
            } while (true);
        }
        if (object3 != null) {
            bundle.putString("6_extras", object3.toString());
        }
        this.appEventsLogger.logSdkEvent("fb_mobile_login_complete", null, bundle);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void logStartLogin(LoginClient.Request request) {
        Bundle bundle;
        bundle = LoginLogger.newAuthorizationLoggingBundle(request.getAuthId());
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("login_behavior", (Object)request.getLoginBehavior().toString());
            jSONObject.put("request_code", LoginClient.getLoginRequestCode());
            jSONObject.put("permissions", (Object)TextUtils.join((CharSequence)",", request.getPermissions()));
            jSONObject.put("default_audience", (Object)request.getDefaultAudience().toString());
            bundle.putString("6_extras", jSONObject.toString());
        }
        catch (JSONException var1_2) {}
        this.appEventsLogger.logSdkEvent("fb_mobile_login_start", null, bundle);
    }

    public void logUnexpectedError(String string2, String string3) {
        this.logUnexpectedError(string2, string3, "");
    }

    public void logUnexpectedError(String string2, String string3, String string4) {
        Bundle bundle = LoginLogger.newAuthorizationLoggingBundle("");
        bundle.putString("2_result", LoginClient.Result.Code.ERROR.getLoggingValue());
        bundle.putString("5_error_message", string3);
        bundle.putString("3_method", string4);
        this.appEventsLogger.logSdkEvent(string2, null, bundle);
    }
}

