/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.ComponentName
 *  android.content.Intent
 *  android.os.Bundle
 *  android.os.Parcelable
 *  android.util.Log
 *  android.view.LayoutInflater
 *  android.view.View
 *  android.view.ViewGroup
 *  com.facebook.login.LoginClient
 *  com.facebook.login.LoginClient$BackgroundProcessingListener
 *  com.facebook.login.LoginClient$OnCompletedListener
 *  com.facebook.login.LoginClient$Request
 *  com.facebook.login.LoginClient$Result
 *  com.facebook.login.LoginClient$Result$Code
 *  com.facebook.login.LoginFragment$1
 *  com.facebook.login.LoginFragment$2
 */
package com.facebook.login;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.R;
import com.facebook.login.LoginClient;
import com.facebook.login.LoginFragment;

public class LoginFragment
extends Fragment {
    private static final String EXTRA_REQUEST = "request";
    private static final String NULL_CALLING_PKG_ERROR_MSG = "Cannot call LoginActivity with a null calling package. This can occur if the launchMode of the caller is singleInstance.";
    static final String RESULT_KEY = "com.facebook.LoginFragment:Result";
    private static final String SAVED_LOGIN_CLIENT = "loginClient";
    private static final String TAG = "LoginActivityFragment";
    private String callingPackage;
    private LoginClient loginClient;
    private LoginClient.Request request;

    static /* synthetic */ void access$000(LoginFragment loginFragment, LoginClient.Result result) {
        loginFragment.onLoginClientCompleted(result);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void onLoginClientCompleted(LoginClient.Result result) {
        this.request = null;
        int n2 = result.code == LoginClient.Result.Code.CANCEL ? 0 : -1;
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.facebook.LoginFragment:Result", (Parcelable)result);
        result = new Intent();
        result.putExtras(bundle);
        this.getActivity().setResult(n2, (Intent)result);
        this.getActivity().finish();
    }

    static Bundle populateIntentExtras(LoginClient.Request request) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("request", (Parcelable)request);
        return bundle;
    }

    @Override
    public void onActivityResult(int n2, int n3, Intent intent) {
        super.onActivityResult(n2, n3, intent);
        this.loginClient.onActivityResult(n2, n3, intent);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.loginClient = (LoginClient)bundle.getParcelable("loginClient");
            this.loginClient.setFragment((Fragment)this);
        } else {
            this.loginClient = new LoginClient((Fragment)this);
        }
        this.callingPackage = this.getActivity().getCallingActivity().getPackageName();
        this.request = (LoginClient.Request)this.getActivity().getIntent().getParcelableExtra("request");
        this.loginClient.setOnCompletedListener((LoginClient.OnCompletedListener)new /* Unavailable Anonymous Inner Class!! */);
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        layoutInflater = layoutInflater.inflate(R.layout.com_facebook_login_fragment, viewGroup, false);
        this.loginClient.setBackgroundProcessingListener((LoginClient.BackgroundProcessingListener)new /* Unavailable Anonymous Inner Class!! */);
        return layoutInflater;
    }

    @Override
    public void onDestroy() {
        this.loginClient.cancelCurrentHandler();
        super.onDestroy();
    }

    @Override
    public void onPause() {
        super.onPause();
        this.getActivity().findViewById(R.id.com_facebook_login_activity_progress_bar).setVisibility(8);
    }

    @Override
    public void onResume() {
        super.onResume();
        if (this.callingPackage == null) {
            Log.e((String)"LoginActivityFragment", (String)"Cannot call LoginActivity with a null calling package. This can occur if the launchMode of the caller is singleInstance.");
            this.getActivity().finish();
            return;
        }
        this.loginClient.startOrContinueAuth(this.request);
    }

    @Override
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("loginClient", (Parcelable)this.loginClient);
    }
}

