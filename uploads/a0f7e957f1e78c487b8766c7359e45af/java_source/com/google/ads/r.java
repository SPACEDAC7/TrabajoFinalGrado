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

public class r
implements n {
    @Override
    public void a(d d2, HashMap<String, String> hashMap, WebView webView) {
        if (webView instanceof AdWebView) {
            ((AdWebView)webView).a();
            return;
        }
        b.b("Trying to close WebView that isn't an AdWebView");
    }
}

