/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Dialog
 *  android.content.Context
 *  android.content.Intent
 *  android.content.res.Configuration
 *  android.os.Bundle
 *  android.os.Message
 *  com.facebook.internal.FacebookDialogFragment$1
 *  com.facebook.internal.FacebookDialogFragment$2
 *  com.facebook.internal.FacebookWebFallbackDialog
 *  com.facebook.internal.WebDialog
 *  com.facebook.internal.WebDialog$Builder
 *  com.facebook.internal.WebDialog$OnCompleteListener
 */
package com.facebook.internal;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.internal.FacebookDialogFragment;
import com.facebook.internal.FacebookWebFallbackDialog;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.Utility;
import com.facebook.internal.WebDialog;

public class FacebookDialogFragment
extends DialogFragment {
    public static final String TAG = "FacebookDialogFragment";
    private Dialog dialog;

    static /* synthetic */ void access$000(FacebookDialogFragment facebookDialogFragment, Bundle bundle, FacebookException facebookException) {
        facebookDialogFragment.onCompleteWebDialog(bundle, facebookException);
    }

    static /* synthetic */ void access$100(FacebookDialogFragment facebookDialogFragment, Bundle bundle) {
        facebookDialogFragment.onCompleteWebFallbackDialog(bundle);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void onCompleteWebDialog(Bundle bundle, FacebookException facebookException) {
        FragmentActivity fragmentActivity = this.getActivity();
        bundle = NativeProtocol.createProtocolResultIntent(fragmentActivity.getIntent(), bundle, facebookException);
        int n2 = facebookException == null ? -1 : 0;
        fragmentActivity.setResult(n2, (Intent)bundle);
        fragmentActivity.finish();
    }

    private void onCompleteWebFallbackDialog(Bundle bundle) {
        FragmentActivity fragmentActivity = this.getActivity();
        Intent intent = new Intent();
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        intent.putExtras(bundle2);
        fragmentActivity.setResult(-1, intent);
        fragmentActivity.finish();
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.dialog instanceof WebDialog) {
            ((WebDialog)this.dialog).resize();
        }
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public void onCreate(Bundle object) {
        super.onCreate((Bundle)object);
        if (this.dialog != null) return;
        object = this.getActivity();
        Bundle bundle = NativeProtocol.getMethodArgumentsFromIntent(object.getIntent());
        if (!bundle.getBoolean("is_fallback", false)) {
            String string2 = bundle.getString("action");
            bundle = bundle.getBundle("params");
            if (Utility.isNullOrEmpty(string2)) {
                Utility.logd("FacebookDialogFragment", "Cannot start a WebDialog with an empty/missing 'actionName'");
                object.finish();
                return;
            }
            object = new WebDialog.Builder((Context)object, string2, bundle).setOnCompleteListener((WebDialog.OnCompleteListener)new /* Unavailable Anonymous Inner Class!! */).build();
        } else {
            String string3 = bundle.getString("url");
            if (Utility.isNullOrEmpty(string3)) {
                Utility.logd("FacebookDialogFragment", "Cannot start a fallback WebDialog with an empty/missing 'url'");
                object.finish();
                return;
            }
            object = new FacebookWebFallbackDialog((Context)object, string3, String.format("fb%s://bridge/", FacebookSdk.getApplicationId()));
            object.setOnCompleteListener((WebDialog.OnCompleteListener)new /* Unavailable Anonymous Inner Class!! */);
        }
        this.dialog = object;
    }

    @NonNull
    @Override
    public Dialog onCreateDialog(Bundle bundle) {
        return this.dialog;
    }

    @Override
    public void onDestroyView() {
        if (this.getDialog() != null && this.getRetainInstance()) {
            this.getDialog().setDismissMessage(null);
        }
        super.onDestroyView();
    }

    public void setDialog(Dialog dialog) {
        this.dialog = dialog;
    }
}

