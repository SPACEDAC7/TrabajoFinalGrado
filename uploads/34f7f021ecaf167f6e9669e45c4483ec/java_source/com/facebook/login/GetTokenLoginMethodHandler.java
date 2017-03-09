/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.os.Bundle
 *  android.os.Parcel
 *  android.os.Parcelable
 *  android.os.Parcelable$Creator
 *  android.text.TextUtils
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.facebook.login;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import com.facebook.AccessToken;
import com.facebook.AccessTokenSource;
import com.facebook.FacebookException;
import com.facebook.internal.PlatformServiceClient;
import com.facebook.internal.Utility;
import com.facebook.login.GetTokenClient;
import com.facebook.login.LoginClient;
import com.facebook.login.LoginMethodHandler;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

class GetTokenLoginMethodHandler
extends LoginMethodHandler {
    public static final Parcelable.Creator<GetTokenLoginMethodHandler> CREATOR = new Parcelable.Creator(){

        public GetTokenLoginMethodHandler createFromParcel(Parcel parcel) {
            return new GetTokenLoginMethodHandler(parcel);
        }

        public GetTokenLoginMethodHandler[] newArray(int n2) {
            return new GetTokenLoginMethodHandler[n2];
        }
    };
    private GetTokenClient getTokenClient;

    GetTokenLoginMethodHandler(Parcel parcel) {
        super(parcel);
    }

    GetTokenLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
    }

    @Override
    void cancel() {
        if (this.getTokenClient != null) {
            this.getTokenClient.cancel();
            this.getTokenClient = null;
        }
    }

    void complete(final LoginClient.Request request, final Bundle bundle) {
        String string2 = bundle.getString("com.facebook.platform.extra.USER_ID");
        if (string2 == null || string2.isEmpty()) {
            this.loginClient.notifyBackgroundProcessingStart();
            Utility.getGraphMeRequestWithCacheAsync(bundle.getString("com.facebook.platform.extra.ACCESS_TOKEN"), new Utility.GraphMeRequestWithCacheCallback(){

                @Override
                public void onFailure(FacebookException facebookException) {
                    GetTokenLoginMethodHandler.this.loginClient.complete(LoginClient.Result.createErrorResult(GetTokenLoginMethodHandler.this.loginClient.getPendingRequest(), "Caught exception", facebookException.getMessage()));
                }

                @Override
                public void onSuccess(JSONObject object) {
                    try {
                        object = object.getString("id");
                        bundle.putString("com.facebook.platform.extra.USER_ID", (String)object);
                        GetTokenLoginMethodHandler.this.onComplete(request, bundle);
                        return;
                    }
                    catch (JSONException var1_2) {
                        GetTokenLoginMethodHandler.this.loginClient.complete(LoginClient.Result.createErrorResult(GetTokenLoginMethodHandler.this.loginClient.getPendingRequest(), "Caught exception", var1_2.getMessage()));
                        return;
                    }
                }
            });
            return;
        }
        this.onComplete(request, bundle);
    }

    public int describeContents() {
        return 0;
    }

    @Override
    String getNameForLogging() {
        return "get_token";
    }

    void getTokenCompleted(LoginClient.Request request, Bundle object) {
        this.getTokenClient = null;
        this.loginClient.notifyBackgroundProcessingStop();
        if (object != null) {
            ArrayList arrayList = object.getStringArrayList("com.facebook.platform.extra.PERMISSIONS");
            Object object2 = request.getPermissions();
            if (arrayList != null && (object2 == null || arrayList.containsAll(object2))) {
                this.complete(request, (Bundle)object);
                return;
            }
            object = new HashSet();
            object2 = object2.iterator();
            while (object2.hasNext()) {
                String string2 = (String)object2.next();
                if (arrayList.contains(string2)) continue;
                object.add(string2);
            }
            if (!object.isEmpty()) {
                this.addLoggingExtra("new_permissions", TextUtils.join((CharSequence)",", (Iterable)object));
            }
            request.setPermissions((Set<String>)object);
        }
        this.loginClient.tryNextHandler();
    }

    void onComplete(LoginClient.Request object, Bundle bundle) {
        object = GetTokenLoginMethodHandler.createAccessTokenFromNativeLogin(bundle, AccessTokenSource.FACEBOOK_APPLICATION_SERVICE, object.getApplicationId());
        object = LoginClient.Result.createTokenResult(this.loginClient.getPendingRequest(), (AccessToken)object);
        this.loginClient.completeAndValidate((LoginClient.Result)object);
    }

    @Override
    boolean tryAuthorize(LoginClient.Request object) {
        this.getTokenClient = new GetTokenClient((Context)this.loginClient.getActivity(), object.getApplicationId());
        if (!this.getTokenClient.start()) {
            return false;
        }
        this.loginClient.notifyBackgroundProcessingStart();
        object = new PlatformServiceClient.CompletedListener((LoginClient.Request)object){
            final /* synthetic */ LoginClient.Request val$request;

            @Override
            public void completed(Bundle bundle) {
                GetTokenLoginMethodHandler.this.getTokenCompleted(this.val$request, bundle);
            }
        };
        this.getTokenClient.setCompletedListener((PlatformServiceClient.CompletedListener)object);
        return true;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n2) {
        super.writeToParcel(parcel, n2);
    }

}

