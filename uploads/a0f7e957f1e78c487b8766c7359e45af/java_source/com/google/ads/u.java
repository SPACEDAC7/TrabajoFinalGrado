/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.webkit.WebView
 */
package com.google.ads;

import android.content.Context;
import android.webkit.WebView;
import com.google.ads.ac;
import com.google.ads.internal.d;
import com.google.ads.n;
import com.google.ads.util.b;
import java.util.HashMap;

public class u
implements n {
    protected Runnable a(String string2, WebView webView) {
        return new ac(string2, webView.getContext().getApplicationContext());
    }

    @Override
    public void a(d object, HashMap<String, String> hashMap, WebView webView) {
        object = hashMap.get("u");
        if (object == null) {
            b.e("Could not get URL from click gmsg.");
            return;
        }
        new Thread(this.a((String)object, webView)).start();
    }
}

