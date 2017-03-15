/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.webkit.WebView
 */
package com.google.ads;

import android.webkit.WebView;
import com.google.ads.AdActivity;
import com.google.ads.internal.d;
import com.google.ads.internal.e;
import com.google.ads.n;
import com.google.ads.util.b;
import java.util.HashMap;

public class z
implements n {
    private AdActivity.StaticMethodWrapper a;

    public z() {
        this(new AdActivity.StaticMethodWrapper());
    }

    public z(AdActivity.StaticMethodWrapper staticMethodWrapper) {
        this.a = staticMethodWrapper;
    }

    @Override
    public void a(d d2, HashMap<String, String> hashMap, WebView object) {
        object = hashMap.get("a");
        if (object == null) {
            b.a("Could not get the action parameter for open GMSG.");
            return;
        }
        if (object.equals("webapp")) {
            this.a.launchAdActivity(d2, new e("webapp", hashMap));
            return;
        }
        if (object.equals("expand")) {
            this.a.launchAdActivity(d2, new e("expand", hashMap));
            return;
        }
        this.a.launchAdActivity(d2, new e("intent", hashMap));
    }
}

