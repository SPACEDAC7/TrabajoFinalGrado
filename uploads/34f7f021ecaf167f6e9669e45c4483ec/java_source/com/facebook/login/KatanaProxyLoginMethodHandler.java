/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.ActivityNotFoundException
 *  android.content.Context
 *  android.content.Intent
 *  android.os.Bundle
 *  android.os.Parcel
 *  android.os.Parcelable
 *  android.os.Parcelable$Creator
 */
package com.facebook.login;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import com.facebook.AccessTokenSource;
import com.facebook.FacebookException;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.Utility;
import com.facebook.login.DefaultAudience;
import com.facebook.login.LoginClient;
import com.facebook.login.LoginMethodHandler;
import java.util.Collection;
import java.util.Set;

class KatanaProxyLoginMethodHandler
extends LoginMethodHandler {
    public static final Parcelable.Creator<KatanaProxyLoginMethodHandler> CREATOR = new Parcelable.Creator(){

        public KatanaProxyLoginMethodHandler createFromParcel(Parcel parcel) {
            return new KatanaProxyLoginMethodHandler(parcel);
        }

        public KatanaProxyLoginMethodHandler[] newArray(int n2) {
            return new KatanaProxyLoginMethodHandler[n2];
        }
    };

    KatanaProxyLoginMethodHandler(Parcel parcel) {
        super(parcel);
    }

    KatanaProxyLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private LoginClient.Result handleResultOk(LoginClient.Request request, Intent object) {
        String string2;
        String string3;
        LoginClient.Result result = null;
        Bundle bundle = object.getExtras();
        object = string3 = bundle.getString("error");
        if (string3 == null) {
            object = bundle.getString("error_type");
        }
        String string4 = bundle.getString("error_code");
        string3 = string2 = bundle.getString("error_message");
        if (string2 == null) {
            string3 = bundle.getString("error_description");
        }
        if (!Utility.isNullOrEmpty(string2 = bundle.getString("e2e"))) {
            this.logWebLoginCompleted(string2);
        }
        if (object == null && string4 == null && string3 == null) {
            try {
                return LoginClient.Result.createTokenResult(request, KatanaProxyLoginMethodHandler.createAccessTokenFromWebBundle(request.getPermissions(), bundle, AccessTokenSource.FACEBOOK_APPLICATION_WEB, request.getApplicationId()));
            }
            catch (FacebookException var2_3) {
                return LoginClient.Result.createErrorResult(request, null, var2_3.getMessage());
            }
        }
        if (ServerProtocol.errorsProxyAuthDisabled.contains(object)) return result;
        if (!ServerProtocol.errorsUserCanceled.contains(object)) return LoginClient.Result.createErrorResult(request, (String)object, string3, string4);
        return LoginClient.Result.createCancelResult(request, null);
    }

    public int describeContents() {
        return 0;
    }

    @Override
    String getNameForLogging() {
        return "katana_proxy_auth";
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    boolean onActivityResult(int n2, int n3, Intent object) {
        LoginClient.Request request = this.loginClient.getPendingRequest();
        object = object == null ? LoginClient.Result.createCancelResult(request, "Operation canceled") : (n3 == 0 ? LoginClient.Result.createCancelResult(request, object.getStringExtra("error")) : (n3 != -1 ? LoginClient.Result.createErrorResult(request, "Unexpected resultCode from authorization.", null) : this.handleResultOk(request, (Intent)object)));
        if (object != null) {
            this.loginClient.completeAndValidate((LoginClient.Result)object);
            return true;
        }
        this.loginClient.tryNextHandler();
        return true;
    }

    @Override
    boolean tryAuthorize(LoginClient.Request request) {
        String string2 = LoginClient.getE2E();
        request = NativeProtocol.createProxyAuthIntent((Context)this.loginClient.getActivity(), request.getApplicationId(), request.getPermissions(), string2, request.isRerequest(), request.getDefaultAudience());
        this.addLoggingExtra("e2e", string2);
        return this.tryIntent((Intent)request, LoginClient.getLoginRequestCode());
    }

    protected boolean tryIntent(Intent intent, int n2) {
        if (intent == null) {
            return false;
        }
        try {
            this.loginClient.getFragment().startActivityForResult(intent, n2);
            return true;
        }
        catch (ActivityNotFoundException var1_2) {
            return false;
        }
    }

    @Override
    public void writeToParcel(Parcel parcel, int n2) {
        super.writeToParcel(parcel, n2);
    }

}

