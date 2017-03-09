/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Context
 *  com.google.android.gms.plus.Plus$PlusOptions
 */
package com.buzzfeed.android.data;

import android.app.Activity;
import android.content.Context;
import com.buzzfeed.toolkit.util.DeviceUtil;
import com.buzzfeed.toolkit.util.LogUtil;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.plus.Plus;

public class GoogleAuthApiProvider {
    private static final String TAG = GoogleAuthApiProvider.class.getSimpleName();
    private static GoogleAuthApiProvider sInstance;
    private GoogleApiClient mGoogleApiClient;

    private void checkPlayServices(Activity activity) {
        String string2 = TAG + ".checkPlayServices";
        int n2 = GooglePlayServicesUtil.isGooglePlayServicesAvailable((Context)activity);
        LogUtil.d(string2, "Got play services result of: " + n2);
        if (!DeviceUtil.isAmazonDevice()) {
            GooglePlayServicesUtil.showErrorDialogFragment(n2, activity, 0);
        }
    }

    public static GoogleAuthApiProvider getInstance() {
        synchronized (GoogleAuthApiProvider.class) {
            if (sInstance == null) {
                sInstance = new GoogleAuthApiProvider();
            }
            GoogleAuthApiProvider googleAuthApiProvider = sInstance;
            return googleAuthApiProvider;
        }
    }

    public GoogleApiClient getGoogleApiClient(Activity activity) {
        this.checkPlayServices(activity);
        if (this.mGoogleApiClient == null) {
            this.mGoogleApiClient = new GoogleApiClient.Builder((Context)activity).addApi(com.google.android.gms.plus.Plus.API).addScope(com.google.android.gms.plus.Plus.SCOPE_PLUS_LOGIN).build();
        }
        return this.mGoogleApiClient;
    }
}

