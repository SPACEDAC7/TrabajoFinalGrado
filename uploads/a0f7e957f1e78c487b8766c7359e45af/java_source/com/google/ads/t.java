/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.webkit.WebView
 */
package com.google.ads;

import android.webkit.WebView;
import com.google.ads.AdActivity;
import com.google.ads.internal.AdWebView;
import com.google.ads.internal.a;
import com.google.ads.internal.d;
import com.google.ads.n;
import com.google.ads.util.b;
import com.google.ads.util.f;
import java.util.HashMap;

public class t
implements n {
    private static final a a = a.a.b();

    @Override
    public void a(d object, HashMap<String, String> object2, WebView webView) {
        object = object2.get("js");
        if (object == null) {
            b.b("Could not get the JS to evaluate.");
            return;
        }
        if (webView instanceof AdWebView) {
            object2 = ((AdWebView)webView).d();
            if (object2 == null) {
                b.b("Could not get the AdActivity from the AdWebView.");
                return;
            }
        } else {
            b.b("Trying to evaluate JS in a WebView that isn't an AdWebView");
            return;
        }
        if ((object2 = object2.getOpeningAdWebView()) == null) {
            b.b("Could not get the opening WebView.");
            return;
        }
        a.a((WebView)object2, (String)object);
    }
}

