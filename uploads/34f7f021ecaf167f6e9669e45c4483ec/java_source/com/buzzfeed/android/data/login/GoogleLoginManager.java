/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.app.Application
 *  android.app.Application$ActivityLifecycleCallbacks
 *  android.content.Context
 *  android.content.Intent
 */
package com.buzzfeed.android.data.login;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.support.annotation.NonNull;
import com.buzzfeed.toolkit.util.AbstractActivityLifecycleCallbacks;
import com.buzzfeed.toolkit.util.BFVault;
import com.buzzfeed.toolkit.util.LogUtil;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.auth.api.signin.GoogleSignInApi;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;

public class GoogleLoginManager
implements GoogleApiClient.OnConnectionFailedListener {
    public static final int RC_SIGN_IN = 1337;
    private static final String TAG = LogUtil.makeLogTag(GoogleLoginManager.class);
    private static GoogleLoginManager sInstance;
    private GoogleApiClient mGoogleApiClient;

    protected GoogleLoginManager(Context context) {
        this.setupGoogleApiClient(context);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static GoogleLoginManager getInstance() {
        synchronized (GoogleLoginManager.class) {
            if (sInstance != null) return sInstance;
            throw new RuntimeException("You must call initialize() first!");
        }
    }

    public static void initialize(Context context) {
        synchronized (GoogleLoginManager.class) {
            if (sInstance == null) {
                sInstance = new GoogleLoginManager(context);
            }
            return;
        }
    }

    public void login(Activity activity) {
        activity.startActivityForResult(Auth.GoogleSignInApi.getSignInIntent(this.mGoogleApiClient), 1337);
    }

    public void logout() {
        if (this.mGoogleApiClient.isConnected()) {
            Auth.GoogleSignInApi.signOut(this.mGoogleApiClient);
        }
    }

    @Override
    public void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        LogUtil.d(TAG, "Login to google failed: " + connectionResult.getErrorMessage());
    }

    protected void setupGoogleApiClient(Context context) {
        GoogleSignInOptions googleSignInOptions = new GoogleSignInOptions.Builder(GoogleSignInOptions.DEFAULT_SIGN_IN).requestServerAuthCode(BFVault.getInstance().getGoogleOAuthClientId()).requestEmail().build();
        this.mGoogleApiClient = new GoogleApiClient.Builder(context.getApplicationContext()).addApi(Auth.GOOGLE_SIGN_IN_API, googleSignInOptions).build();
        ((Application)context.getApplicationContext()).registerActivityLifecycleCallbacks((Application.ActivityLifecycleCallbacks)new AbstractActivityLifecycleCallbacks(){

            @Override
            public void onActivityPaused(Activity activity) {
                super.onActivityStopped(activity);
                GoogleLoginManager.this.mGoogleApiClient.disconnect();
            }

            @Override
            public void onActivityResumed(Activity activity) {
                super.onActivityStarted(activity);
                GoogleLoginManager.this.mGoogleApiClient.connect();
            }
        });
    }

}

