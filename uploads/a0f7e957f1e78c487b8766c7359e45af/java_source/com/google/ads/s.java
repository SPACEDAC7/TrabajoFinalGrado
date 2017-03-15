/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.webkit.WebView
 */
package com.google.ads;

import android.webkit.WebView;
import com.google.ads.internal.AdWebView;
import com.google.ads.internal.d;
import com.google.ads.n;
import com.google.ads.util.b;
import java.util.HashMap;

public class s
implements n {
    @Override
    public void a(d d2, HashMap<String, String> hashMap, WebView webView) {
        if (webView instanceof AdWebView) {
            ((AdWebView)webView).setCustomClose("1".equals(hashMap.get("custom_close")));
            return;
        }
        b.b("Trying to set a custom close icon on a WebView that isn't an AdWebView");
    }
}

