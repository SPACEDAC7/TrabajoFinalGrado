/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.net.Uri
 *  android.webkit.WebView
 *  android.webkit.WebViewClient
 */
package com.google.ads.internal;

import android.net.Uri;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.ads.AdActivity;
import com.google.ads.internal.a;
import com.google.ads.internal.c;
import com.google.ads.internal.d;
import com.google.ads.internal.e;
import com.google.ads.n;
import com.google.ads.util.AdUtil;
import com.google.ads.util.b;
import com.google.ads.util.f;
import com.google.ads.util.g;
import java.util.HashMap;
import java.util.Map;

public class i
extends WebViewClient {
    private static final a c = a.a.b();
    protected d a;
    protected boolean b;
    private final Map<String, n> d;
    private final boolean e;
    private boolean f;
    private boolean g;
    private boolean h;

    public i(d d2, Map<String, n> map, boolean bl, boolean bl2) {
        this.a = d2;
        this.d = map;
        this.e = bl;
        this.f = bl2;
        this.b = false;
        this.g = false;
        this.h = false;
    }

    public static i a(d d2, Map<String, n> map, boolean bl, boolean bl2) {
        if (AdUtil.a >= 11) {
            return new g.b(d2, map, bl, bl2);
        }
        return new i(d2, map, bl, bl2);
    }

    public void a(boolean bl) {
        this.b = bl;
    }

    public void b(boolean bl) {
        this.f = bl;
    }

    public void c(boolean bl) {
        this.g = bl;
    }

    public void d(boolean bl) {
        this.h = bl;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void onPageFinished(WebView webView, String object) {
        if (this.g) {
            object = this.a.j();
            if (object != null) {
                object.c();
            } else {
                b.a("adLoader was null while trying to setFinishedLoadingHtml().");
            }
            this.g = false;
        }
        if (this.h) {
            c.a(webView);
            this.h = false;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public boolean shouldOverrideUrlLoading(WebView hashMap, String string2) {
        try {
            b.a("shouldOverrideUrlLoading(\"" + string2 + "\")");
            Uri uri = Uri.parse((String)string2);
            if (c.a(uri)) {
                c.a(this.a, this.d, uri, (WebView)hashMap);
                return true;
            }
            if (this.f) {
                if (AdUtil.a(uri)) {
                    return super.shouldOverrideUrlLoading((WebView)hashMap, string2);
                }
                hashMap = new HashMap();
                hashMap.put("u", string2);
                AdActivity.launchAdActivity(this.a, new e("intent", hashMap));
                return true;
            }
            if (this.e) {
                hashMap = new HashMap<String, String>();
                hashMap.put("u", uri.toString());
                AdActivity.launchAdActivity(this.a, new e("intent", hashMap));
                return true;
            }
        }
        catch (Throwable var1_2) {
            b.b("An unknown error occurred in shouldOverrideUrlLoading.", var1_2);
            return true;
        }
        b.e("URL is not a GMSG and can't handle URL: " + string2);
        return true;
    }
}

