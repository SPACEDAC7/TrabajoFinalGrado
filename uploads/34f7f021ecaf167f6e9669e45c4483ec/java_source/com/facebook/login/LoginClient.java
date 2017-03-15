/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.Intent
 *  android.os.Bundle
 *  android.os.Parcel
 *  android.os.Parcelable
 *  android.os.Parcelable$Creator
 *  android.text.TextUtils
 *  org.json.JSONArray
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.facebook.login;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import com.facebook.AccessToken;
import com.facebook.AccessTokenSource;
import com.facebook.FacebookException;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.facebook.HttpMethod;
import com.facebook.R;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.facebook.login.DefaultAudience;
import com.facebook.login.GetTokenLoginMethodHandler;
import com.facebook.login.KatanaProxyLoginMethodHandler;
import com.facebook.login.LoginBehavior;
import com.facebook.login.LoginLogger;
import com.facebook.login.LoginMethodHandler;
import com.facebook.login.WebViewLoginMethodHandler;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class LoginClient
implements Parcelable {
    public static final Parcelable.Creator<LoginClient> CREATOR = new Parcelable.Creator(){

        public LoginClient createFromParcel(Parcel parcel) {
            return new LoginClient(parcel);
        }

        public LoginClient[] newArray(int n2) {
            return new LoginClient[n2];
        }
    };
    BackgroundProcessingListener backgroundProcessingListener;
    boolean checkedInternetPermission;
    int currentHandler = -1;
    Fragment fragment;
    LoginMethodHandler[] handlersToTry;
    Map<String, String> loggingExtras;
    private LoginLogger loginLogger;
    OnCompletedListener onCompletedListener;
    Request pendingRequest;

    public LoginClient(Parcel parcel) {
        Parcelable[] arrparcelable = parcel.readParcelableArray(LoginMethodHandler.class.getClassLoader());
        this.handlersToTry = new LoginMethodHandler[arrparcelable.length];
        for (int i2 = 0; i2 < arrparcelable.length; ++i2) {
            this.handlersToTry[i2] = (LoginMethodHandler)arrparcelable[i2];
            this.handlersToTry[i2].setLoginClient(this);
        }
        this.currentHandler = parcel.readInt();
        this.pendingRequest = (Request)parcel.readParcelable(Request.class.getClassLoader());
        this.loggingExtras = Utility.readStringMapFromParcel(parcel);
    }

    public LoginClient(Fragment fragment) {
        this.fragment = fragment;
    }

    private void addLoggingExtra(String string2, String string3, boolean bl) {
        if (this.loggingExtras == null) {
            this.loggingExtras = new HashMap<String, String>();
        }
        String string4 = string3;
        if (this.loggingExtras.containsKey(string2)) {
            string4 = string3;
            if (bl) {
                string4 = this.loggingExtras.get(string2) + "," + string3;
            }
        }
        this.loggingExtras.put(string2, string4);
    }

    private void completeWithFailure() {
        this.complete(Result.createErrorResult(this.pendingRequest, "Login attempt failed.", null));
    }

    private static AccessToken createFromTokenWithRefreshedPermissions(AccessToken accessToken, Collection<String> collection, Collection<String> collection2) {
        return new AccessToken(accessToken.getToken(), accessToken.getApplicationId(), accessToken.getUserId(), collection, collection2, accessToken.getSource(), accessToken.getExpires(), accessToken.getLastRefresh());
    }

    private LoginMethodHandler getCurrentHandler() {
        if (this.currentHandler >= 0) {
            return this.handlersToTry[this.currentHandler];
        }
        return null;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static String getE2E() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("init", System.currentTimeMillis());
        }
        catch (JSONException var1_1) {
            return jSONObject.toString();
        }
        do {
            return jSONObject.toString();
            break;
        } while (true);
    }

    private LoginMethodHandler[] getHandlersToTry(Request arrloginMethodHandler) {
        ArrayList<LoginMethodHandler> arrayList = new ArrayList<LoginMethodHandler>();
        if ((arrloginMethodHandler = arrloginMethodHandler.getLoginBehavior()).allowsKatanaAuth()) {
            arrayList.add(new GetTokenLoginMethodHandler(this));
            arrayList.add(new KatanaProxyLoginMethodHandler(this));
        }
        if (arrloginMethodHandler.allowsWebViewAuth()) {
            arrayList.add(new WebViewLoginMethodHandler(this));
        }
        arrloginMethodHandler = new LoginMethodHandler[arrayList.size()];
        arrayList.toArray(arrloginMethodHandler);
        return arrloginMethodHandler;
    }

    private LoginLogger getLogger() {
        if (this.loginLogger == null || !this.loginLogger.getApplicationId().equals(this.pendingRequest.getApplicationId())) {
            this.loginLogger = new LoginLogger((Context)this.getActivity(), this.pendingRequest.getApplicationId());
        }
        return this.loginLogger;
    }

    public static int getLoginRequestCode() {
        return CallbackManagerImpl.RequestCodeOffset.Login.toRequestCode();
    }

    /*
     * Enabled aggressive block sorting
     */
    private static PermissionsPair handlePermissionResponse(GraphResponse graphResponse) {
        if (graphResponse.getError() != null || (graphResponse = graphResponse.getJSONObject()) == null || (graphResponse = graphResponse.optJSONArray("data")) == null || graphResponse.length() == 0) {
            return null;
        }
        ArrayList<String> arrayList = new ArrayList<String>(graphResponse.length());
        ArrayList<String> arrayList2 = new ArrayList<String>(graphResponse.length());
        int n2 = 0;
        while (n2 < graphResponse.length()) {
            Object object = graphResponse.optJSONObject(n2);
            String string2 = object.optString("permission");
            if (string2 != null && !string2.equals("installed") && (object = object.optString("status")) != null) {
                if (object.equals("granted")) {
                    arrayList.add(string2);
                } else if (object.equals("declined")) {
                    arrayList2.add(string2);
                }
            }
            ++n2;
        }
        return new PermissionsPair(arrayList, arrayList2);
    }

    private void logAuthorizationMethodComplete(String string2, Result result, Map<String, String> map) {
        this.logAuthorizationMethodComplete(string2, result.code.getLoggingValue(), result.errorMessage, result.errorCode, map);
    }

    private void logAuthorizationMethodComplete(String string2, String string3, String string4, String string5, Map<String, String> map) {
        if (this.pendingRequest == null) {
            this.getLogger().logUnexpectedError("fb_mobile_login_method_complete", "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest.", string2);
            return;
        }
        this.getLogger().logAuthorizationMethodComplete(this.pendingRequest.getAuthId(), string2, string3, string4, string5, map);
    }

    private void notifyOnCompleteListener(Result result) {
        if (this.onCompletedListener != null) {
            this.onCompletedListener.onCompleted(result);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    void authorize(Request request) {
        if (request == null) {
            return;
        }
        if (this.pendingRequest != null) {
            throw new FacebookException("Attempted to authorize while a request is pending.");
        }
        if (AccessToken.getCurrentAccessToken() != null) {
            if (!this.checkInternetPermission()) return;
        }
        this.pendingRequest = request;
        this.handlersToTry = this.getHandlersToTry(request);
        this.tryNextHandler();
    }

    void cancelCurrentHandler() {
        if (this.currentHandler >= 0) {
            this.getCurrentHandler().cancel();
        }
    }

    boolean checkInternetPermission() {
        if (this.checkedInternetPermission) {
            return true;
        }
        if (this.checkPermission("android.permission.INTERNET") != 0) {
            Object object = this.getActivity();
            String string2 = object.getString(R.string.com_facebook_internet_permission_error_title);
            object = object.getString(R.string.com_facebook_internet_permission_error_message);
            this.complete(Result.createErrorResult(this.pendingRequest, string2, (String)object));
            return false;
        }
        this.checkedInternetPermission = true;
        return true;
    }

    int checkPermission(String string2) {
        return this.getActivity().checkCallingOrSelfPermission(string2);
    }

    void complete(Result result) {
        LoginMethodHandler loginMethodHandler = this.getCurrentHandler();
        if (loginMethodHandler != null) {
            this.logAuthorizationMethodComplete(loginMethodHandler.getNameForLogging(), result, loginMethodHandler.methodLoggingExtras);
        }
        if (this.loggingExtras != null) {
            result.loggingExtras = this.loggingExtras;
        }
        this.handlersToTry = null;
        this.currentHandler = -1;
        this.pendingRequest = null;
        this.loggingExtras = null;
        this.notifyOnCompleteListener(result);
    }

    void completeAndValidate(Result result) {
        if (result.token != null && AccessToken.getCurrentAccessToken() != null) {
            this.validateSameFbidAndFinish(result);
            return;
        }
        this.complete(result);
    }

    GraphRequest createGetPermissionsRequest(String string2) {
        Bundle bundle = new Bundle();
        bundle.putString("access_token", string2);
        return new GraphRequest(null, "me/permissions", bundle, HttpMethod.GET, null);
    }

    GraphRequest createGetProfileIdRequest(String string2) {
        Bundle bundle = new Bundle();
        bundle.putString("fields", "id");
        bundle.putString("access_token", string2);
        return new GraphRequest(null, "me", bundle, HttpMethod.GET, null);
    }

    public int describeContents() {
        return 0;
    }

    FragmentActivity getActivity() {
        return this.fragment.getActivity();
    }

    BackgroundProcessingListener getBackgroundProcessingListener() {
        return this.backgroundProcessingListener;
    }

    public Fragment getFragment() {
        return this.fragment;
    }

    boolean getInProgress() {
        if (this.pendingRequest != null && this.currentHandler >= 0) {
            return true;
        }
        return false;
    }

    OnCompletedListener getOnCompletedListener() {
        return this.onCompletedListener;
    }

    public Request getPendingRequest() {
        return this.pendingRequest;
    }

    void notifyBackgroundProcessingStart() {
        if (this.backgroundProcessingListener != null) {
            this.backgroundProcessingListener.onBackgroundProcessingStarted();
        }
    }

    void notifyBackgroundProcessingStop() {
        if (this.backgroundProcessingListener != null) {
            this.backgroundProcessingListener.onBackgroundProcessingStopped();
        }
    }

    public boolean onActivityResult(int n2, int n3, Intent intent) {
        if (this.pendingRequest != null) {
            return this.getCurrentHandler().onActivityResult(n2, n3, intent);
        }
        return false;
    }

    void setBackgroundProcessingListener(BackgroundProcessingListener backgroundProcessingListener) {
        this.backgroundProcessingListener = backgroundProcessingListener;
    }

    void setFragment(Fragment fragment) {
        if (this.fragment != null) {
            throw new FacebookException("Can't set fragment once it is already set.");
        }
        this.fragment = fragment;
    }

    void setOnCompletedListener(OnCompletedListener onCompletedListener) {
        this.onCompletedListener = onCompletedListener;
    }

    void startOrContinueAuth(Request request) {
        if (!this.getInProgress()) {
            this.authorize(request);
        }
    }

    boolean tryCurrentHandler() {
        LoginMethodHandler loginMethodHandler = this.getCurrentHandler();
        if (loginMethodHandler.needsInternetPermission() && !this.checkInternetPermission()) {
            this.addLoggingExtra("no_internet_permission", "1", false);
            return false;
        }
        boolean bl = loginMethodHandler.tryAuthorize(this.pendingRequest);
        if (bl) {
            this.getLogger().logAuthorizationMethodStart(this.pendingRequest.getAuthId(), loginMethodHandler.getNameForLogging());
            return bl;
        }
        this.addLoggingExtra("not_tried", loginMethodHandler.getNameForLogging(), true);
        return bl;
    }

    /*
     * Enabled aggressive block sorting
     */
    void tryNextHandler() {
        if (this.currentHandler >= 0) {
            this.logAuthorizationMethodComplete(this.getCurrentHandler().getNameForLogging(), "skipped", null, null, this.getCurrentHandler().methodLoggingExtras);
        }
        while (this.handlersToTry != null && this.currentHandler < this.handlersToTry.length - 1) {
            ++this.currentHandler;
            if (!this.tryCurrentHandler()) continue;
            return;
        }
        if (this.pendingRequest == null) {
            return;
        }
        this.completeWithFailure();
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    void validateSameFbidAndFinish(Result var1_1) {
        if (var1_1.token == null) {
            throw new FacebookException("Can't validate without a token");
        }
        var2_3 = AccessToken.getCurrentAccessToken();
        var3_4 = var1_1.token;
        if (var2_3 == null || var3_4 == null) ** GOTO lbl-1000
        try {
            if (var2_3.getUserId().equals(var3_4.getUserId())) {
                var1_1 = Result.createTokenResult(this.pendingRequest, var1_1.token);
            } else lbl-1000: // 2 sources:
            {
                var1_1 = Result.createErrorResult(this.pendingRequest, "User logged in as different Facebook user.", null);
            }
            this.complete(var1_1);
            return;
        }
        catch (Exception var1_2) {
            this.complete(Result.createErrorResult(this.pendingRequest, "Caught exception", var1_2.getMessage()));
            return;
        }
    }

    public void writeToParcel(Parcel parcel, int n2) {
        parcel.writeParcelableArray(this.handlersToTry, n2);
        parcel.writeInt(this.currentHandler);
        parcel.writeParcelable((Parcelable)this.pendingRequest, n2);
        Utility.writeStringMapToParcel(parcel, this.loggingExtras);
    }

    static interface BackgroundProcessingListener {
        public void onBackgroundProcessingStarted();

        public void onBackgroundProcessingStopped();
    }

    public static interface OnCompletedListener {
        public void onCompleted(Result var1);
    }

    private static class PermissionsPair {
        List<String> declinedPermissions;
        List<String> grantedPermissions;

        public PermissionsPair(List<String> list, List<String> list2) {
            this.grantedPermissions = list;
            this.declinedPermissions = list2;
        }

        public List<String> getDeclinedPermissions() {
            return this.declinedPermissions;
        }

        public List<String> getGrantedPermissions() {
            return this.grantedPermissions;
        }
    }

    public static class Request
    implements Parcelable {
        public static final Parcelable.Creator<Request> CREATOR = new Parcelable.Creator(){

            public Request createFromParcel(Parcel parcel) {
                return new Request(parcel);
            }

            public Request[] newArray(int n2) {
                return new Request[n2];
            }
        };
        private final String applicationId;
        private final String authId;
        private final DefaultAudience defaultAudience;
        private boolean isRerequest;
        private final LoginBehavior loginBehavior;
        private Set<String> permissions;

        /*
         * Enabled aggressive block sorting
         */
        private Request(Parcel parcel) {
            Object var3_2 = null;
            this.isRerequest = false;
            Object object = parcel.readString();
            object = object != null ? LoginBehavior.valueOf((String)object) : null;
            this.loginBehavior = object;
            object = new ArrayList();
            parcel.readStringList(object);
            this.permissions = new HashSet<String>((Collection<String>)object);
            String string2 = parcel.readString();
            object = var3_2;
            if (string2 != null) {
                object = DefaultAudience.valueOf(string2);
            }
            this.defaultAudience = object;
            this.applicationId = parcel.readString();
            this.authId = parcel.readString();
            boolean bl = parcel.readByte() != 0;
            this.isRerequest = bl;
        }

        /*
         * Enabled aggressive block sorting
         */
        Request(LoginBehavior loginBehavior, Set<String> set, DefaultAudience defaultAudience, String string2, String string3) {
            this.isRerequest = false;
            this.loginBehavior = loginBehavior;
            if (set == null) {
                set = new HashSet<String>();
            }
            this.permissions = set;
            this.defaultAudience = defaultAudience;
            this.applicationId = string2;
            this.authId = string3;
        }

        public int describeContents() {
            return 0;
        }

        String getApplicationId() {
            return this.applicationId;
        }

        String getAuthId() {
            return this.authId;
        }

        DefaultAudience getDefaultAudience() {
            return this.defaultAudience;
        }

        LoginBehavior getLoginBehavior() {
            return this.loginBehavior;
        }

        Set<String> getPermissions() {
            return this.permissions;
        }

        boolean isRerequest() {
            return this.isRerequest;
        }

        void setPermissions(Set<String> set) {
            Validate.notNull(set, "permissions");
            this.permissions = set;
        }

        void setRerequest(boolean bl) {
            this.isRerequest = bl;
        }

        /*
         * Enabled aggressive block sorting
         */
        public void writeToParcel(Parcel parcel, int n2) {
            Object var4_3 = null;
            String string2 = this.loginBehavior != null ? this.loginBehavior.name() : null;
            parcel.writeString(string2);
            parcel.writeStringList(new ArrayList<String>(this.permissions));
            string2 = var4_3;
            if (this.defaultAudience != null) {
                string2 = this.defaultAudience.name();
            }
            parcel.writeString(string2);
            parcel.writeString(this.applicationId);
            parcel.writeString(this.authId);
            n2 = this.isRerequest ? 1 : 0;
            parcel.writeByte((byte)n2);
        }

    }

    public static class Result
    implements Parcelable {
        public static final Parcelable.Creator<Result> CREATOR = new Parcelable.Creator(){

            public Result createFromParcel(Parcel parcel) {
                return new Result(parcel);
            }

            public Result[] newArray(int n2) {
                return new Result[n2];
            }
        };
        final Code code;
        final String errorCode;
        final String errorMessage;
        public Map<String, String> loggingExtras;
        final Request request;
        final AccessToken token;

        private Result(Parcel parcel) {
            this.code = Code.valueOf(parcel.readString());
            this.token = (AccessToken)parcel.readParcelable(AccessToken.class.getClassLoader());
            this.errorMessage = parcel.readString();
            this.errorCode = parcel.readString();
            this.request = (Request)parcel.readParcelable(Request.class.getClassLoader());
            this.loggingExtras = Utility.readStringMapFromParcel(parcel);
        }

        Result(Request request, Code code, AccessToken accessToken, String string2, String string3) {
            Validate.notNull((Object)code, "code");
            this.request = request;
            this.token = accessToken;
            this.errorMessage = string2;
            this.code = code;
            this.errorCode = string3;
        }

        static Result createCancelResult(Request request, String string2) {
            return new Result(request, Code.CANCEL, null, string2, null);
        }

        static Result createErrorResult(Request request, String string2, String string3) {
            return Result.createErrorResult(request, string2, string3, null);
        }

        static Result createErrorResult(Request request, String string2, String string3, String string4) {
            string2 = TextUtils.join((CharSequence)": ", Utility.asListNoNulls(string2, string3));
            return new Result(request, Code.ERROR, null, string2, string4);
        }

        static Result createTokenResult(Request request, AccessToken accessToken) {
            return new Result(request, Code.SUCCESS, accessToken, null, null);
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int n2) {
            parcel.writeString(this.code.name());
            parcel.writeParcelable((Parcelable)this.token, n2);
            parcel.writeString(this.errorMessage);
            parcel.writeString(this.errorCode);
            parcel.writeParcelable((Parcelable)this.request, n2);
            Utility.writeStringMapToParcel(parcel, this.loggingExtras);
        }

        static enum Code {
            SUCCESS("success"),
            CANCEL("cancel"),
            ERROR("error");
            
            private final String loggingValue;

            private Code(String string3) {
                this.loggingValue = string3;
            }

            String getLoggingValue() {
                return this.loggingValue;
            }
        }

    }

}

