/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.Intent
 *  android.content.pm.PackageManager
 *  android.content.pm.ResolveInfo
 *  android.net.Uri
 *  android.webkit.WebView
 */
package com.google.ads;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.webkit.WebView;
import com.google.ads.internal.a;
import com.google.ads.internal.d;
import com.google.ads.n;
import com.google.ads.util.b;
import com.google.ads.util.f;
import java.util.HashMap;
import java.util.Map;

public class p
implements n {
    private static final a a = a.a.b();

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void a(d object, HashMap<String, String> arrstring, WebView webView) {
        object = (String)arrstring.get("urls");
        if (object == null) {
            b.e("Could not get the urls param from canOpenURLs gmsg.");
            return;
        }
        arrstring = object.split(",");
        HashMap<String, Boolean> hashMap = new HashMap<String, Boolean>();
        PackageManager packageManager = webView.getContext().getPackageManager();
        int n2 = arrstring.length;
        int n3 = 0;
        do {
            if (n3 >= n2) {
                a.a(webView, hashMap);
                return;
            }
            String string2 = arrstring[n3];
            object = string2.split(";", 2);
            String string3 = object[0];
            object = object.length >= 2 ? object[1] : "android.intent.action.VIEW";
            boolean bl = packageManager.resolveActivity(new Intent((String)object, Uri.parse((String)string3)), 65536) != null;
            hashMap.put(string2, bl);
            ++n3;
        } while (true);
    }
}

