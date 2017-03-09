/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Intent
 *  android.content.res.Configuration
 *  android.os.Bundle
 */
package com.facebook;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import com.facebook.R;
import com.facebook.internal.FacebookDialogFragment;
import com.facebook.internal.NativeProtocol;
import com.facebook.login.LoginFragment;

public class FacebookActivity
extends FragmentActivity {
    private static String FRAGMENT_TAG;
    public static String PASS_THROUGH_CANCEL_ACTION;
    private Fragment singleFragment;

    static {
        PASS_THROUGH_CANCEL_ACTION = "PassThrough";
        FRAGMENT_TAG = "SingleFragment";
    }

    private void handlePassThroughError() {
        Intent intent = this.getIntent();
        this.setResult(0, NativeProtocol.createProtocolResultIntent(intent, null, NativeProtocol.getExceptionFromErrorData(NativeProtocol.getMethodArgumentsFromIntent(intent))));
        this.finish();
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.singleFragment != null) {
            this.singleFragment.onConfigurationChanged(configuration);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onCreate(Bundle object) {
        Fragment fragment;
        super.onCreate((Bundle)object);
        this.setContentView(R.layout.com_facebook_activity_layout);
        Intent intent = this.getIntent();
        if (PASS_THROUGH_CANCEL_ACTION.equals(intent.getAction())) {
            this.handlePassThroughError();
            return;
        }
        FragmentManager fragmentManager = this.getSupportFragmentManager();
        object = fragment = fragmentManager.findFragmentByTag(FRAGMENT_TAG);
        if (fragment == null) {
            if ("FacebookDialogFragment".equals(intent.getAction())) {
                object = new FacebookDialogFragment();
                object.setRetainInstance(true);
                object.show(fragmentManager, FRAGMENT_TAG);
            } else {
                object = new LoginFragment();
                object.setRetainInstance(true);
                fragmentManager.beginTransaction().add(R.id.com_facebook_fragment_container, (Fragment)object, FRAGMENT_TAG).commit();
            }
        }
        this.singleFragment = object;
    }
}

