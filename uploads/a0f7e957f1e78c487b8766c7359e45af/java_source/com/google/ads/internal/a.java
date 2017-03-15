/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.net.Uri
 *  android.webkit.WebView
 *  org.json.JSONObject
 */
package com.google.ads.internal;

import android.net.Uri;
import android.webkit.WebView;
import com.google.ads.aa;
import com.google.ads.ab;
import com.google.ads.ai;
import com.google.ads.internal.d;
import com.google.ads.n;
import com.google.ads.o;
import com.google.ads.p;
import com.google.ads.q;
import com.google.ads.r;
import com.google.ads.s;
import com.google.ads.t;
import com.google.ads.u;
import com.google.ads.util.AdUtil;
import com.google.ads.util.b;
import com.google.ads.util.f;
import com.google.ads.v;
import com.google.ads.w;
import com.google.ads.x;
import com.google.ads.y;
import com.google.ads.z;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public class a {
    public static final f<a> a;
    public static final Map<String, n> b;
    public static final Map<String, n> c;
    private static final a d;

    static {
        d = new a();
        a = new f<a>(){

            public a a() {
                return d;
            }

            @Override
            public /* synthetic */ Object b() {
                return this.a();
            }
        };
        b = Collections.unmodifiableMap(new HashMap<String, n>(){});
        c = Collections.unmodifiableMap(new HashMap<String, n>(){});
    }

    public String a(Uri uri, HashMap<String, String> hashMap) {
        if (this.c(uri)) {
            String string2 = uri.getHost();
            if (string2 == null) {
                b.e("An error occurred while parsing the AMSG parameters.");
                return null;
            }
            if (string2.equals("launch")) {
                hashMap.put("a", "intent");
                hashMap.put("u", hashMap.get("url"));
                hashMap.remove("url");
                return "/open";
            }
            if (string2.equals("closecanvas")) {
                return "/close";
            }
            if (string2.equals("log")) {
                return "/log";
            }
            b.e("An error occurred while parsing the AMSG: " + uri.toString());
            return null;
        }
        if (this.b(uri)) {
            return uri.getPath();
        }
        b.e("Message was neither a GMSG nor an AMSG.");
        return null;
    }

    public void a(WebView webView) {
        this.a(webView, "onshow", "{'version': 'afma-sdk-a-v6.2.1'}");
    }

    public void a(WebView webView, String string2) {
        b.a("Sending JS to a WebView: " + string2);
        webView.loadUrl("javascript:" + string2);
    }

    public void a(WebView webView, String string2, String string3) {
        if (string3 != null) {
            this.a(webView, "AFMA_ReceiveMessage" + "('" + string2 + "', " + string3 + ");");
            return;
        }
        this.a(webView, "AFMA_ReceiveMessage" + "('" + string2 + "');");
    }

    public void a(WebView webView, Map<String, Boolean> map) {
        this.a(webView, "openableURLs", new JSONObject(map).toString());
    }

    public void a(d d2, Map<String, n> object, Uri object2, WebView webView) {
        HashMap<String, String> hashMap = AdUtil.b((Uri)object2);
        if (hashMap == null) {
            b.e("An error occurred while parsing the message parameters.");
            return;
        }
        if ((object2 = this.a((Uri)object2, hashMap)) == null) {
            b.e("An error occurred while parsing the message.");
            return;
        }
        if ((object = object.get(object2)) == null) {
            b.e("No AdResponse found, <message: " + (String)object2 + ">");
            return;
        }
        object.a(d2, hashMap, webView);
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean a(Uri uri) {
        if (uri == null || !uri.isHierarchical() || !this.b(uri) && !this.c(uri)) {
            return false;
        }
        return true;
    }

    public void b(WebView webView) {
        this.a(webView, "onhide", null);
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean b(Uri object) {
        String string2 = object.getScheme();
        if (string2 == null || !string2.equals("gmsg") || (object = object.getAuthority()) == null || !object.equals("mobileads.google.com")) {
            return false;
        }
        return true;
    }

    public boolean c(Uri object) {
        if ((object = object.getScheme()) == null || !object.equals("admob")) {
            return false;
        }
        return true;
    }

}

