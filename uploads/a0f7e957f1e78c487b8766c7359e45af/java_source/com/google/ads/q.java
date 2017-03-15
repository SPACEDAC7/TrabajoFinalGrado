/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.net.Uri
 *  android.webkit.WebView
 */
package com.google.ads;

import android.net.Uri;
import android.webkit.WebView;
import com.google.ads.internal.d;
import com.google.ads.internal.g;
import com.google.ads.u;
import com.google.ads.util.b;
import java.util.HashMap;
import java.util.Locale;

public class q
extends u {
    @Override
    public void a(d d2, HashMap<String, String> hashMap, WebView webView) {
        String string2;
        String string3 = hashMap.get("u");
        if (string3 == null) {
            b.e("Could not get URL from click gmsg.");
            return;
        }
        g g2 = d2.m();
        if (g2 != null && (string2 = (string3 = Uri.parse((String)string3)).getHost()) != null && string2.toLowerCase(Locale.US).endsWith(".admob.com")) {
            string2 = null;
            String[] arrstring = string3.getPath();
            string3 = string2;
            if (arrstring != null) {
                arrstring = arrstring.split("/");
                string3 = string2;
                if (arrstring.length >= 4) {
                    string3 = arrstring[2] + "/" + arrstring[3];
                }
            }
            g2.a(string3);
        }
        super.a(d2, hashMap, webView);
    }
}

