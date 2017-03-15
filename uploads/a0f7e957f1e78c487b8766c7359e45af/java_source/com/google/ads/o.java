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

public class o
implements n {
    @Override
    public void a(d d2, HashMap<String, String> hashMap, WebView object) {
        object = hashMap.get("name");
        if (object == null) {
            b.b("Error: App event with no name parameter.");
            return;
        }
        d2.a((String)object, hashMap.get("info"));
    }
}

