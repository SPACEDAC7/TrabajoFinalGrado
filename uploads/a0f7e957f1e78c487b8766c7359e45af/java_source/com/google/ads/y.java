/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.webkit.WebView
 */
package com.google.ads;

import android.webkit.WebView;
import com.google.ads.internal.d;
import com.google.ads.n;
import com.google.ads.util.b;
import java.util.HashMap;

public class y
implements n {
    @Override
    public void a(d object, HashMap<String, String> object2, WebView webView) {
        object = object2.get("string");
        object2 = object2.get("afma_notify_dt");
        b.c("Received log message: <\"string\": \"" + (String)object + "\", \"afmaNotifyDt\": \"" + (String)object2 + "\">");
    }
}

