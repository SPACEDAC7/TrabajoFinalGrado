/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.net.Uri
 *  android.os.Bundle
 *  android.os.Handler
 *  android.os.Looper
 *  android.webkit.WebView
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.facebook.internal;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.webkit.WebView;
import com.facebook.internal.BundleJSONConverter;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.Utility;
import com.facebook.internal.WebDialog;
import org.json.JSONException;
import org.json.JSONObject;

public class FacebookWebFallbackDialog
extends WebDialog {
    private static final int OS_BACK_BUTTON_RESPONSE_TIMEOUT_MILLISECONDS = 1500;
    private static final String TAG = FacebookWebFallbackDialog.class.getName();
    private boolean waitingForDialogToClose;

    public FacebookWebFallbackDialog(Context context, String string2, String string3) {
        super(context, string2);
        this.setExpectedRedirectUrl(string3);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void cancel() {
        WebView webView = this.getWebView();
        if (!this.isPageFinished() || this.isListenerCalled() || webView == null || !webView.isShown()) {
            super.cancel();
            return;
        } else {
            if (this.waitingForDialogToClose) return;
            {
                this.waitingForDialogToClose = true;
                webView.loadUrl("javascript:" + "(function() {  var event = document.createEvent('Event');  event.initEvent('fbPlatformDialogMustClose',true,true);  document.dispatchEvent(event);})();");
                new Handler(Looper.getMainLooper()).postDelayed(new Runnable(){

                    @Override
                    public void run() {
                        FacebookWebFallbackDialog.this.cancel();
                    }
                }, 1500);
                return;
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    protected Bundle parseResponseUri(String string2) {
        Bundle bundle = Utility.parseUrlQueryString(Uri.parse((String)string2).getQuery());
        string2 = bundle.getString("bridge_args");
        bundle.remove("bridge_args");
        if (!Utility.isNullOrEmpty(string2)) {
            try {
                bundle.putBundle("com.facebook.platform.protocol.BRIDGE_ARGS", BundleJSONConverter.convertToBundle(new JSONObject(string2)));
            }
            catch (JSONException var1_2) {
                Utility.logd(TAG, "Unable to parse bridge_args JSON", (Throwable)var1_2);
            }
        }
        String string3 = bundle.getString("method_results");
        bundle.remove("method_results");
        if (!Utility.isNullOrEmpty(string3)) {
            string2 = string3;
            if (Utility.isNullOrEmpty(string3)) {
                string2 = "{}";
            }
            try {
                bundle.putBundle("com.facebook.platform.protocol.RESULT_ARGS", BundleJSONConverter.convertToBundle(new JSONObject(string2)));
            }
            catch (JSONException var1_3) {
                Utility.logd(TAG, "Unable to parse bridge_args JSON", (Throwable)var1_3);
            }
        }
        bundle.remove("version");
        bundle.putInt("com.facebook.platform.protocol.PROTOCOL_VERSION", NativeProtocol.getLatestKnownVersion());
        return bundle;
    }

}

