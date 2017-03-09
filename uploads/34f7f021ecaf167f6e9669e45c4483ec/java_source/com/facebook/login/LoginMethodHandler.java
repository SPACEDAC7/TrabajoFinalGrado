/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.Intent
 *  android.os.Bundle
 *  android.os.Parcel
 *  android.os.Parcelable
 *  android.util.Base64
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.facebook.login;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.app.FragmentActivity;
import android.util.Base64;
import com.facebook.AccessToken;
import com.facebook.AccessTokenSource;
import com.facebook.FacebookException;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.internal.Utility;
import com.facebook.login.LoginClient;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

abstract class LoginMethodHandler
implements Parcelable {
    protected LoginClient loginClient;
    Map<String, String> methodLoggingExtras;

    LoginMethodHandler(Parcel parcel) {
        this.methodLoggingExtras = Utility.readStringMapFromParcel(parcel);
    }

    LoginMethodHandler(LoginClient loginClient) {
        this.loginClient = loginClient;
    }

    static AccessToken createAccessTokenFromNativeLogin(Bundle bundle, AccessTokenSource accessTokenSource, String string2) {
        Date date = Utility.getBundleLongAsDate(bundle, "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH", new Date(0));
        ArrayList arrayList = bundle.getStringArrayList("com.facebook.platform.extra.PERMISSIONS");
        String string3 = bundle.getString("com.facebook.platform.extra.ACCESS_TOKEN");
        if (Utility.isNullOrEmpty(string3)) {
            return null;
        }
        return new AccessToken(string3, string2, bundle.getString("com.facebook.platform.extra.USER_ID"), arrayList, null, accessTokenSource, date, new Date());
    }

    public static AccessToken createAccessTokenFromWebBundle(Collection<String> collection, Bundle bundle, AccessTokenSource accessTokenSource, String string2) throws FacebookException {
        Date date = Utility.getBundleLongAsDate(bundle, "expires_in", new Date());
        String string3 = bundle.getString("access_token");
        Object object = bundle.getString("granted_scopes");
        if (!Utility.isNullOrEmpty((String)object)) {
            collection = new ArrayList<String>(Arrays.asList(object.split(",")));
        }
        String string4 = bundle.getString("denied_scopes");
        object = null;
        if (!Utility.isNullOrEmpty(string4)) {
            object = new ArrayList<String>(Arrays.asList(string4.split(",")));
        }
        if (Utility.isNullOrEmpty(string3)) {
            return null;
        }
        return new AccessToken(string3, string2, LoginMethodHandler.getUserIDFromSignedRequest(bundle.getString("signed_request")), collection, (Collection<String>)object, accessTokenSource, date, new Date());
    }

    /*
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private static String getUserIDFromSignedRequest(String object) throws FacebookException {
        if (object == null) throw new FacebookException("Authorization response does not contain the signed_request");
        if (object.isEmpty()) {
            throw new FacebookException("Authorization response does not contain the signed_request");
        }
        try {
            object = object.split("\\.");
            if (object.length != 2) throw new FacebookException("Failed to retrieve user_id from signed_request");
            return new JSONObject(new String(Base64.decode((String)object[1], (int)0), "UTF-8")).getString("user_id");
        }
        catch (JSONException var0_1) {
            // empty catch block
        }
        throw new FacebookException("Failed to retrieve user_id from signed_request");
        catch (UnsupportedEncodingException unsupportedEncodingException) {
            throw new FacebookException("Failed to retrieve user_id from signed_request");
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void addLoggingExtra(String string2, Object object) {
        if (this.methodLoggingExtras == null) {
            this.methodLoggingExtras = new HashMap<String, String>();
        }
        Map<String, String> map = this.methodLoggingExtras;
        object = object == null ? null : object.toString();
        map.put(string2, (String)object);
    }

    void cancel() {
    }

    abstract String getNameForLogging();

    protected void logWebLoginCompleted(String string2) {
        String string3 = this.loginClient.getPendingRequest().getApplicationId();
        AppEventsLogger appEventsLogger = AppEventsLogger.newLogger((Context)this.loginClient.getActivity(), string3);
        Bundle bundle = new Bundle();
        bundle.putString("fb_web_login_e2e", string2);
        bundle.putLong("fb_web_login_switchback_time", System.currentTimeMillis());
        bundle.putString("app_id", string3);
        appEventsLogger.logSdkEvent("fb_dialogs_web_login_dialog_complete", null, bundle);
    }

    boolean needsInternetPermission() {
        return false;
    }

    boolean onActivityResult(int n2, int n3, Intent intent) {
        return false;
    }

    void setLoginClient(LoginClient loginClient) {
        if (this.loginClient != null) {
            throw new FacebookException("Can't set LoginClient if it is already set.");
        }
        this.loginClient = loginClient;
    }

    abstract boolean tryAuthorize(LoginClient.Request var1);

    public void writeToParcel(Parcel parcel, int n2) {
        Utility.writeStringMapToParcel(parcel, this.methodLoggingExtras);
    }
}

