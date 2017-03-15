/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.text.TextUtils
 *  android.webkit.WebSettings
 *  android.webkit.WebView
 */
package com.google.ads;

import android.text.TextUtils;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.google.ads.internal.AdWebView;
import com.google.ads.internal.d;
import com.google.ads.internal.h;
import com.google.ads.l;
import com.google.ads.m;
import com.google.ads.n;
import com.google.ads.util.AdUtil;
import com.google.ads.util.b;
import com.google.ads.util.g;
import com.google.ads.util.i;
import java.util.HashMap;

public class x
implements n {
    private void a(HashMap<String, String> object, String string2, i.c<Integer> c2) {
        try {
            object = object.get(string2);
            if (!TextUtils.isEmpty((CharSequence)object)) {
                c2.a(Integer.valueOf((String)object));
            }
            return;
        }
        catch (NumberFormatException var1_2) {
            b.a("Could not parse \"" + string2 + "\" constant.");
            return;
        }
    }

    private void b(HashMap<String, String> object, String string2, i.c<Long> c2) {
        try {
            object = object.get(string2);
            if (!TextUtils.isEmpty((CharSequence)object)) {
                c2.a(new Long((String)object));
            }
            return;
        }
        catch (NumberFormatException var1_2) {
            b.a("Could not parse \"" + string2 + "\" constant.");
            return;
        }
    }

    private void c(HashMap<String, String> object, String string2, i.c<String> c2) {
        if (!TextUtils.isEmpty((CharSequence)(object = object.get(string2)))) {
            c2.a((String)object);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void a(d object, HashMap<String, String> hashMap, WebView webView) {
        m m2 = object.h();
        l.a a2 = m2.a.a().a.a();
        this.a(hashMap, "min_hwa_banner", a2.a);
        this.a(hashMap, "min_hwa_overlay", a2.b);
        this.c(hashMap, "mraid_banner_path", a2.c);
        this.c(hashMap, "mraid_expanded_banner_path", a2.d);
        this.c(hashMap, "mraid_interstitial_path", a2.e);
        this.b(hashMap, "ac_max_size", a2.f);
        this.b(hashMap, "ac_padding", a2.g);
        this.b(hashMap, "ac_total_quota", a2.h);
        this.b(hashMap, "db_total_quota", a2.i);
        this.b(hashMap, "db_quota_per_origin", a2.j);
        this.b(hashMap, "db_quota_step_size", a2.k);
        object = object.k();
        if (AdUtil.a >= 11) {
            g.a(object.getSettings(), m2);
            g.a(webView.getSettings(), m2);
        }
        if (!m2.k.a().a()) {
            boolean bl = object.f();
            boolean bl2 = AdUtil.a < a2.a.a();
            if (!bl2) {
                if (bl) {
                    b.a("Re-enabling hardware acceleration for a banner after reading constants.");
                    object.c();
                }
            } else if (bl2 && !bl) {
                b.a("Disabling hardware acceleration for a banner after reading constants.");
                object.b();
            }
        }
        a2.l.a(true);
    }
}

