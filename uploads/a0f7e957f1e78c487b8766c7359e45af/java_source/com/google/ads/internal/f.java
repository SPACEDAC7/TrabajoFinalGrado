/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.preference.PreferenceManager
 *  android.text.TextUtils
 */
package com.google.ads.internal;

import android.content.Context;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.google.ads.AdRequest;
import com.google.ads.AdSize;
import com.google.ads.internal.c;
import com.google.ads.internal.d;
import com.google.ads.m;
import com.google.ads.util.AdUtil;
import com.google.ads.util.b;
import com.google.ads.util.i;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;

public final class f
implements Runnable {
    private final c a;
    private final d b;
    private final a c;
    private volatile boolean d;
    private boolean e;
    private String f;
    private Thread g = null;

    f(c c2, d d2) {
        this(c2, d2, new a(){

            @Override
            public HttpURLConnection a(URL uRL) throws IOException {
                return (HttpURLConnection)uRL.openConnection();
            }
        });
    }

    f(c c2, d d2, a a2) {
        this.a = c2;
        this.b = d2;
        this.c = a2;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private void a(Context object, HttpURLConnection httpURLConnection) {
        object = PreferenceManager.getDefaultSharedPreferences((Context)object).getString("drt", "");
        if (!this.e || TextUtils.isEmpty((CharSequence)object)) return;
        if (AdUtil.a == 8) {
            httpURLConnection.addRequestProperty("X-Afma-drt-Cookie", (String)object);
            return;
        }
        httpURLConnection.addRequestProperty("Cookie", (String)object);
    }

    private void a(HttpURLConnection httpURLConnection) {
        this.b(httpURLConnection);
        this.f(httpURLConnection);
        this.g(httpURLConnection);
        this.h(httpURLConnection);
        this.e(httpURLConnection);
        this.i(httpURLConnection);
        this.j(httpURLConnection);
        this.k(httpURLConnection);
        this.d(httpURLConnection);
        this.c(httpURLConnection);
        this.l(httpURLConnection);
    }

    private void a(HttpURLConnection object, int n2) throws IOException {
        if (300 <= n2 && n2 < 400) {
            String string2 = object.getHeaderField("Location");
            if (string2 == null) {
                b.c("Could not get redirect location from a " + n2 + " redirect.");
                this.a.a(AdRequest.ErrorCode.INTERNAL_ERROR);
                this.a();
                return;
            }
            this.a((HttpURLConnection)object);
            this.f = string2;
            return;
        }
        if (n2 == 200) {
            this.a((HttpURLConnection)object);
            object = AdUtil.a(new InputStreamReader(object.getInputStream())).trim();
            b.a("Response content is: " + (String)object);
            if (TextUtils.isEmpty((CharSequence)object)) {
                b.a("Response message is null or zero length: " + (String)object);
                this.a.a(AdRequest.ErrorCode.NO_FILL);
                this.a();
                return;
            }
            this.a.a((String)object, this.f);
            this.a();
            return;
        }
        if (n2 == 400) {
            b.c("Bad request");
            this.a.a(AdRequest.ErrorCode.INVALID_REQUEST);
            this.a();
            return;
        }
        b.c("Invalid response code: " + n2);
        this.a.a(AdRequest.ErrorCode.INTERNAL_ERROR);
        this.a();
    }

    private void b() throws MalformedURLException, IOException {
        while (!this.d) {
            Object object = new URL(this.f);
            object = this.c.a((URL)object);
            try {
                this.a(this.b.h().f.a(), (HttpURLConnection)object);
                AdUtil.a((HttpURLConnection)object, this.b.h().f.a());
                object.setInstanceFollowRedirects(false);
                object.connect();
                this.a((HttpURLConnection)object, object.getResponseCode());
                continue;
            }
            finally {
                object.disconnect();
                continue;
            }
        }
    }

    private void b(HttpURLConnection object) {
        if (!TextUtils.isEmpty((CharSequence)(object = object.getHeaderField("X-Afma-Debug-Dialog")))) {
            this.a.e((String)object);
        }
    }

    private void c(HttpURLConnection object) {
        if (!TextUtils.isEmpty((CharSequence)(object = object.getHeaderField("Content-Type")))) {
            this.a.b((String)object);
        }
    }

    private void d(HttpURLConnection object) {
        if (!TextUtils.isEmpty((CharSequence)(object = object.getHeaderField("X-Afma-Mediation")))) {
            this.a.a(Boolean.valueOf((String)object));
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private void e(HttpURLConnection object) {
        if (TextUtils.isEmpty((CharSequence)(object = object.getHeaderField("X-Afma-Interstitial-Timeout")))) return;
        try {
            float f2 = Float.parseFloat((String)object);
            this.b.a((long)(f2 * 1000.0f));
            return;
        }
        catch (NumberFormatException var3_3) {
            b.d("Could not get timeout value: " + (String)object, var3_3);
            return;
        }
    }

    private void f(HttpURLConnection arrstring) {
        if (!TextUtils.isEmpty((CharSequence)(arrstring = arrstring.getHeaderField("X-Afma-Tracking-Urls")))) {
            for (String string2 : arrstring.trim().split("\\s+")) {
                this.b.b(string2);
            }
        }
    }

    private void g(HttpURLConnection arrstring) {
        if (!TextUtils.isEmpty((CharSequence)(arrstring = arrstring.getHeaderField("X-Afma-Click-Tracking-Urls")))) {
            for (String string2 : arrstring.trim().split("\\s+")) {
                this.a.a(string2);
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void h(HttpURLConnection object) {
        block4 : {
            float f2;
            if (TextUtils.isEmpty((CharSequence)(object = object.getHeaderField("X-Afma-Refresh-Rate")))) return;
            try {
                f2 = Float.parseFloat((String)object);
                if (f2 <= 0.0f) break block4;
            }
            catch (NumberFormatException var3_3) {
                b.d("Could not get refresh value: " + (String)object, var3_3);
                return;
            }
            this.b.a(f2);
            if (this.b.s()) return;
            {
                this.b.f();
                return;
            }
        }
        if (!this.b.s()) return;
        {
            this.b.e();
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void i(HttpURLConnection object) {
        if (TextUtils.isEmpty((CharSequence)(object = object.getHeaderField("X-Afma-Orientation")))) return;
        {
            if (object.equals("portrait")) {
                this.a.a(AdUtil.b());
                return;
            } else {
                if (!object.equals("landscape")) return;
                {
                    this.a.a(AdUtil.a());
                    return;
                }
            }
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private void j(HttpURLConnection httpURLConnection) {
        if (TextUtils.isEmpty((CharSequence)httpURLConnection.getHeaderField("X-Afma-Doritos-Cache-Life"))) return;
        try {
            long l2 = Long.parseLong(httpURLConnection.getHeaderField("X-Afma-Doritos-Cache-Life"));
            this.b.b(l2);
            return;
        }
        catch (NumberFormatException var4_3) {
            b.e("Got bad value of Doritos cookie cache life from header: " + httpURLConnection.getHeaderField("X-Afma-Doritos-Cache-Life") + ". Using default value instead.");
            return;
        }
    }

    private void k(HttpURLConnection object) {
        if (!TextUtils.isEmpty((CharSequence)(object = object.getHeaderField("Cache-Control")))) {
            this.a.c((String)object);
        }
    }

    private void l(HttpURLConnection object) {
        if (!TextUtils.isEmpty((CharSequence)(object = object.getHeaderField("X-Afma-Ad-Size")))) {
            int n2;
            int n3;
            try {
                String[] arrstring = object.split("x", 2);
                if (arrstring.length != 2) {
                    b.e("Could not parse size header: " + (String)object);
                    return;
                }
                n3 = Integer.parseInt(arrstring[0]);
                n2 = Integer.parseInt(arrstring[1]);
            }
            catch (NumberFormatException var4_3) {
                b.e("Could not parse size header: " + (String)object);
            }
            this.a.a(new AdSize(n3, n2));
            return;
        }
    }

    void a() {
        this.d = true;
    }

    void a(String string2) {
        synchronized (this) {
            if (this.g == null) {
                this.f = string2;
                this.d = false;
                this.g = new Thread(this);
                this.g.start();
            }
            return;
        }
    }

    public void a(boolean bl) {
        this.e = bl;
    }

    @Override
    public void run() {
        try {
            this.b();
            return;
        }
        catch (MalformedURLException var1_1) {
            b.b("Received malformed ad url from javascript.", var1_1);
            this.a.a(AdRequest.ErrorCode.INTERNAL_ERROR);
            return;
        }
        catch (IOException var1_2) {
            b.d("IOException connecting to ad url.", var1_2);
            this.a.a(AdRequest.ErrorCode.NETWORK_ERROR);
            return;
        }
        catch (Throwable var1_3) {
            b.b("An unknown error occurred in AdResponseLoader.", var1_3);
            this.a.a(AdRequest.ErrorCode.INTERNAL_ERROR);
            return;
        }
    }

    public static interface a {
        public HttpURLConnection a(URL var1) throws IOException;
    }

}

