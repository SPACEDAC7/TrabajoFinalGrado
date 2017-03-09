/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Context
 *  android.content.Intent
 *  android.net.Uri
 *  android.os.Bundle
 */
package com.facebook.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.facebook.FacebookActivity;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.internal.AppCall;
import com.facebook.internal.DialogFeature;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.Utility;
import java.util.UUID;

public class DialogPresenter {
    public static boolean canPresentNativeDialogWithFeature(DialogFeature dialogFeature) {
        if (DialogPresenter.getProtocolVersionForNativeDialog(dialogFeature) != -1) {
            return true;
        }
        return false;
    }

    public static boolean canPresentWebFallbackDialogWithFeature(DialogFeature dialogFeature) {
        if (DialogPresenter.getDialogWebFallbackUri(dialogFeature) != null) {
            return true;
        }
        return false;
    }

    private static Uri getDialogWebFallbackUri(DialogFeature object) {
        Object object2 = object.name();
        object = object.getAction();
        object2 = Utility.getDialogFeatureConfig(FacebookSdk.getApplicationId(), (String)object, (String)object2);
        object = null;
        if (object2 != null) {
            object = object2.getFallbackUrl();
        }
        return object;
    }

    public static int getProtocolVersionForNativeDialog(DialogFeature dialogFeature) {
        String string2 = FacebookSdk.getApplicationId();
        String string3 = dialogFeature.getAction();
        return NativeProtocol.getLatestAvailableProtocolVersionForAction(string3, DialogPresenter.getVersionSpecForFeature(string2, string3, dialogFeature));
    }

    private static int[] getVersionSpecForFeature(String object, String string2, DialogFeature dialogFeature) {
        if ((object = Utility.getDialogFeatureConfig((String)object, string2, dialogFeature.name())) != null) {
            return object.getVersionSpec();
        }
        return new int[]{dialogFeature.getMinVersion()};
    }

    public static void logDialogActivity(Context object, String string2, String string3) {
        object = AppEventsLogger.newLogger((Context)object);
        Bundle bundle = new Bundle();
        bundle.putString("fb_dialog_outcome", string3);
        object.logSdkEvent(string2, null, bundle);
    }

    public static void present(AppCall appCall, Activity activity) {
        activity.startActivityForResult(appCall.getRequestIntent(), appCall.getRequestCode());
        appCall.setPending();
    }

    public static void present(AppCall appCall, Fragment fragment) {
        fragment.startActivityForResult(appCall.getRequestIntent(), appCall.getRequestCode());
        appCall.setPending();
    }

    public static void setupAppCallForCannotShowError(AppCall appCall) {
        DialogPresenter.setupAppCallForValidationError(appCall, new FacebookException("Unable to show the provided content. This typically means that the Facebook app is not installed or up to date. If showing via the Web, this could mean that the content has properties that are not supported via this channel"));
    }

    public static void setupAppCallForErrorResult(AppCall appCall, FacebookException facebookException) {
        if (facebookException == null) {
            return;
        }
        Intent intent = new Intent();
        intent.setClass(FacebookSdk.getApplicationContext(), (Class)FacebookActivity.class);
        intent.setAction(FacebookActivity.PASS_THROUGH_CANCEL_ACTION);
        NativeProtocol.setupProtocolRequestIntent(intent, appCall.getCallId().toString(), null, NativeProtocol.getLatestKnownVersion(), NativeProtocol.createBundleForException(facebookException));
        appCall.setRequestIntent(intent);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void setupAppCallForNativeDialog(AppCall appCall, ParameterProvider parameterProvider, DialogFeature object) {
        Context context = FacebookSdk.getApplicationContext();
        String string2 = object.getAction();
        int n2 = DialogPresenter.getProtocolVersionForNativeDialog((DialogFeature)object);
        if (n2 == -1) {
            throw new FacebookException("Cannot present this dialog. This likely means that the Facebook app is not installed.");
        }
        parameterProvider = NativeProtocol.isVersionCompatibleWithBucketedIntent(n2) ? parameterProvider.getParameters() : parameterProvider.getLegacyParameters();
        object = parameterProvider;
        if (parameterProvider == null) {
            object = new Bundle();
        }
        if ((parameterProvider = NativeProtocol.createPlatformActivityIntent(context, appCall.getCallId().toString(), string2, n2, (Bundle)object)) == null) {
            throw new FacebookException("Unable to create Intent; this likely means theFacebook app is not installed.");
        }
        appCall.setRequestIntent((Intent)parameterProvider);
    }

    public static void setupAppCallForValidationError(AppCall appCall, FacebookException facebookException) {
        DialogPresenter.setupAppCallForErrorResult(appCall, facebookException);
    }

    public static void setupAppCallForWebDialog(AppCall appCall, String string2, Bundle bundle) {
        Bundle bundle2 = new Bundle();
        bundle2.putString("action", string2);
        bundle2.putBundle("params", bundle);
        bundle = new Intent();
        NativeProtocol.setupProtocolRequestIntent((Intent)bundle, appCall.getCallId().toString(), string2, NativeProtocol.getLatestKnownVersion(), bundle2);
        bundle.setClass(FacebookSdk.getApplicationContext(), (Class)FacebookActivity.class);
        bundle.setAction("FacebookDialogFragment");
        appCall.setRequestIntent((Intent)bundle);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void setupAppCallForWebFallbackDialog(AppCall appCall, Bundle bundle, DialogFeature dialogFeature) {
        String string2 = dialogFeature.name();
        Uri uri = DialogPresenter.getDialogWebFallbackUri(dialogFeature);
        if (uri == null) {
            throw new FacebookException("Unable to fetch the Url for the DialogFeature : '" + string2 + "'");
        }
        int n2 = NativeProtocol.getLatestKnownVersion();
        bundle = ServerProtocol.getQueryParamsForPlatformActivityIntentWebFallback(appCall.getCallId().toString(), n2, bundle);
        if (bundle == null) {
            throw new FacebookException("Unable to fetch the app's key-hash");
        }
        bundle = uri.isRelative() ? Utility.buildUri(ServerProtocol.getDialogAuthority(), uri.toString(), bundle) : Utility.buildUri(uri.getAuthority(), uri.getPath(), bundle);
        uri = new Bundle();
        uri.putString("url", bundle.toString());
        uri.putBoolean("is_fallback", true);
        bundle = new Intent();
        NativeProtocol.setupProtocolRequestIntent((Intent)bundle, appCall.getCallId().toString(), dialogFeature.getAction(), NativeProtocol.getLatestKnownVersion(), (Bundle)uri);
        bundle.setClass(FacebookSdk.getApplicationContext(), (Class)FacebookActivity.class);
        bundle.setAction("FacebookDialogFragment");
        appCall.setRequestIntent((Intent)bundle);
    }

    public static interface ParameterProvider {
        public Bundle getLegacyParameters();

        public Bundle getParameters();
    }

}

