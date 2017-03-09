/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Dialog
 *  android.content.Context
 *  android.content.SharedPreferences
 *  android.content.SharedPreferences$Editor
 *  android.os.Bundle
 *  android.os.Parcel
 *  android.os.Parcelable
 *  android.os.Parcelable$Creator
 *  android.text.TextUtils
 *  android.webkit.CookieSyncManager
 */
package com.facebook.login;

import android.app.Dialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.text.TextUtils;
import android.webkit.CookieSyncManager;
import com.facebook.AccessToken;
import com.facebook.AccessTokenSource;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookServiceException;
import com.facebook.internal.FacebookDialogFragment;
import com.facebook.internal.Utility;
import com.facebook.internal.WebDialog;
import com.facebook.login.DefaultAudience;
import com.facebook.login.LoginClient;
import com.facebook.login.LoginMethodHandler;
import java.util.Locale;
import java.util.Set;

class WebViewLoginMethodHandler
extends LoginMethodHandler {
    public static final Parcelable.Creator<WebViewLoginMethodHandler> CREATOR = new Parcelable.Creator(){

        public WebViewLoginMethodHandler createFromParcel(Parcel parcel) {
            return new WebViewLoginMethodHandler(parcel);
        }

        public WebViewLoginMethodHandler[] newArray(int n2) {
            return new WebViewLoginMethodHandler[n2];
        }
    };
    private static final String WEB_VIEW_AUTH_HANDLER_STORE = "com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY";
    private static final String WEB_VIEW_AUTH_HANDLER_TOKEN_KEY = "TOKEN";
    private String e2e;
    private WebDialog loginDialog;

    WebViewLoginMethodHandler(Parcel parcel) {
        super(parcel);
        this.e2e = parcel.readString();
    }

    WebViewLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
    }

    private String loadCookieToken() {
        return this.loginClient.getActivity().getSharedPreferences("com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY", 0).getString("TOKEN", "");
    }

    private void saveCookieToken(String string2) {
        this.loginClient.getActivity().getSharedPreferences("com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY", 0).edit().putString("TOKEN", string2).apply();
    }

    @Override
    void cancel() {
        if (this.loginDialog != null) {
            this.loginDialog.cancel();
            this.loginDialog = null;
        }
    }

    public int describeContents() {
        return 0;
    }

    @Override
    String getNameForLogging() {
        return "web_view";
    }

    @Override
    boolean needsInternetPermission() {
        return true;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    void onWebDialogComplete(LoginClient.Request object, Bundle object2, FacebookException facebookException) {
        if (object2 != null) {
            if (object2.containsKey("e2e")) {
                this.e2e = object2.getString("e2e");
            }
            try {
                object2 = WebViewLoginMethodHandler.createAccessTokenFromWebBundle(object.getPermissions(), (Bundle)object2, AccessTokenSource.WEB_VIEW, object.getApplicationId());
                object = LoginClient.Result.createTokenResult(this.loginClient.getPendingRequest(), (AccessToken)object2);
                CookieSyncManager.createInstance((Context)this.loginClient.getActivity()).sync();
                this.saveCookieToken(object2.getToken());
            }
            catch (FacebookException var1_2) {
                object = LoginClient.Result.createErrorResult(this.loginClient.getPendingRequest(), null, var1_2.getMessage());
            }
        } else if (facebookException instanceof FacebookOperationCanceledException) {
            object = LoginClient.Result.createCancelResult(this.loginClient.getPendingRequest(), "User canceled log in.");
        } else {
            this.e2e = null;
            object = null;
            object2 = facebookException.getMessage();
            if (facebookException instanceof FacebookServiceException) {
                object2 = ((FacebookServiceException)facebookException).getRequestError();
                object = String.format(Locale.ROOT, "%d", object2.getErrorCode());
                object2 = object2.toString();
            }
            object = LoginClient.Result.createErrorResult(this.loginClient.getPendingRequest(), null, (String)object2, (String)object);
        }
        if (!Utility.isNullOrEmpty(this.e2e)) {
            this.logWebLoginCompleted(this.e2e);
        }
        this.loginClient.completeAndValidate((LoginClient.Result)object);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    boolean tryAuthorize(LoginClient.Request object) {
        Object object2;
        Bundle bundle = new Bundle();
        if (!Utility.isNullOrEmpty(object.getPermissions())) {
            object2 = TextUtils.join((CharSequence)",", object.getPermissions());
            bundle.putString("scope", (String)object2);
            this.addLoggingExtra("scope", object2);
        }
        bundle.putString("default_audience", object.getDefaultAudience().getNativeProtocolAudience());
        object2 = AccessToken.getCurrentAccessToken();
        object2 = object2 != null ? object2.getToken() : null;
        if (object2 != null && object2.equals(this.loadCookieToken())) {
            bundle.putString("access_token", (String)object2);
            this.addLoggingExtra("access_token", "1");
        } else {
            Utility.clearFacebookCookies((Context)this.loginClient.getActivity());
            this.addLoggingExtra("access_token", "0");
        }
        WebDialog.OnCompleteListener onCompleteListener = new WebDialog.OnCompleteListener((LoginClient.Request)object){
            final /* synthetic */ LoginClient.Request val$request;

            @Override
            public void onComplete(Bundle bundle, FacebookException facebookException) {
                WebViewLoginMethodHandler.this.onWebDialogComplete(this.val$request, bundle, facebookException);
            }
        };
        this.e2e = LoginClient.getE2E();
        this.addLoggingExtra("e2e", this.e2e);
        object2 = this.loginClient.getActivity();
        this.loginDialog = new AuthDialogBuilder((Context)object2, object.getApplicationId(), bundle).setE2E(this.e2e).setIsRerequest(object.isRerequest()).setOnCompleteListener(onCompleteListener).build();
        object = new FacebookDialogFragment();
        object.setRetainInstance(true);
        object.setDialog(this.loginDialog);
        object.show(object2.getSupportFragmentManager(), "FacebookDialogFragment");
        return true;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n2) {
        super.writeToParcel(parcel, n2);
        parcel.writeString(this.e2e);
    }

    static class AuthDialogBuilder
    extends WebDialog.Builder {
        private static final String OAUTH_DIALOG = "oauth";
        static final String REDIRECT_URI = "fbconnect://success";
        private String e2e;
        private boolean isRerequest;

        public AuthDialogBuilder(Context context, String string2, Bundle bundle) {
            super(context, string2, "oauth", bundle);
        }

        @Override
        public WebDialog build() {
            Bundle bundle = this.getParameters();
            bundle.putString("redirect_uri", "fbconnect://success");
            bundle.putString("client_id", this.getApplicationId());
            bundle.putString("e2e", this.e2e);
            bundle.putString("response_type", "token,signed_request");
            bundle.putString("return_scopes", "true");
            if (this.isRerequest) {
                bundle.putString("auth_type", "rerequest");
            }
            return new WebDialog(this.getContext(), "oauth", bundle, this.getTheme(), this.getListener());
        }

        public AuthDialogBuilder setE2E(String string2) {
            this.e2e = string2;
            return this;
        }

        public AuthDialogBuilder setIsRerequest(boolean bl) {
            this.isRerequest = bl;
            return this;
        }
    }

}

