/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.webkit.WebView
 */
package com.google.ads;

import android.webkit.WebView;
import com.google.ads.internal.c;
import com.google.ads.internal.d;
import com.google.ads.n;
import com.google.ads.util.b;
import java.util.HashMap;

public class w
implements n {
    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void a(d object, HashMap<String, String> object2, WebView object3) {
        object3 = (String)object2.get("url");
        String string2 = (String)object2.get("type");
        String string3 = (String)object2.get("afma_notify_dt");
        boolean bl = "1".equals(object2.get("drt_include"));
        String string4 = (String)object2.get("request_scenario");
        boolean bl2 = "1".equals(object2.get("use_webview_loadurl"));
        object2 = c.d.d.e.equals(string4) ? c.d.d : (c.d.c.e.equals(string4) ? c.d.c : (c.d.a.e.equals(string4) ? c.d.a : c.d.b));
        b.c("Received ad url: <url: \"" + (String)object3 + "\" type: \"" + string2 + "\" afmaNotifyDt: \"" + string3 + "\" useWebViewLoadUrl: \"" + bl2 + "\">");
        object = object.j();
        if (object != null) {
            object.c(bl);
            object.a((c.d)((Object)object2));
            object.d(bl2);
            object.d((String)object3);
        }
    }
}

