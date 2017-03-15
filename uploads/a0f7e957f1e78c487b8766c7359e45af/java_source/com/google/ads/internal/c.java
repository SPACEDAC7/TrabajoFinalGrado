/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Context
 *  android.content.pm.PackageInfo
 *  android.content.pm.PackageManager
 *  android.content.pm.PackageManager$NameNotFoundException
 *  android.content.res.Resources
 *  android.telephony.TelephonyManager
 *  android.text.TextUtils
 *  android.util.DisplayMetrics
 *  android.view.ViewParent
 *  android.webkit.WebView
 *  android.webkit.WebViewClient
 *  org.json.JSONException
 */
package com.google.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.ViewParent;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.ads.AdRequest;
import com.google.ads.AdSize;
import com.google.ads.AdView;
import com.google.ads.internal.AdWebView;
import com.google.ads.internal.f;
import com.google.ads.internal.g;
import com.google.ads.internal.h;
import com.google.ads.internal.i;
import com.google.ads.l;
import com.google.ads.m;
import com.google.ads.n;
import com.google.ads.searchads.SearchAdRequest;
import com.google.ads.util.AdUtil;
import com.google.ads.util.i;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;

public class c
implements Runnable {
    boolean a;
    private String b;
    private String c;
    private String d;
    private String e;
    private boolean f;
    private f g;
    private com.google.ads.internal.d h;
    private AdRequest i;
    private WebView j;
    private String k;
    private LinkedList<String> l;
    private String m;
    private AdSize n;
    private volatile boolean o;
    private boolean p;
    private AdRequest.ErrorCode q;
    private boolean r;
    private int s;
    private Thread t;
    private boolean u;
    private d v = d.b;

    protected c() {
    }

    public c(com.google.ads.internal.d d2) {
        this.h = d2;
        this.k = null;
        this.b = null;
        this.c = null;
        this.d = null;
        this.l = new LinkedList();
        this.q = null;
        this.r = false;
        this.s = -1;
        this.f = false;
        this.p = false;
        this.m = null;
        this.n = null;
        if (d2.h().e.a() != null) {
            this.j = new AdWebView(d2.h(), null);
            this.j.setWebViewClient((WebViewClient)i.a(d2, com.google.ads.internal.a.b, false, false));
            this.j.setVisibility(8);
            this.j.setWillNotDraw(true);
            this.g = new f(this, d2);
            return;
        }
        this.j = null;
        this.g = null;
        com.google.ads.util.b.e("activity was null while trying to create an AdLoader.");
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    static void a(String string2, com.google.ads.c c2, com.google.ads.d d2) {
        if (string2 == null || string2.contains("no-store") || string2.contains("no-cache")) {
            return;
        }
        Matcher matcher = Pattern.compile("max-age\\s*=\\s*(\\d+)").matcher(string2);
        if (!matcher.find()) {
            com.google.ads.util.b.c("Unrecognized cacheControlDirective: '" + string2 + "'. Not caching configuration.");
            return;
        }
        try {
            int n2 = Integer.parseInt(matcher.group(1));
            d2.a(c2, n2);
            com.google.ads.util.b.c(String.format(Locale.US, "Caching gWhirl configuration for: %d seconds", n2));
            return;
        }
        catch (NumberFormatException var0_1) {
            com.google.ads.util.b.b("Caught exception trying to parse cache control directive. Overflow?", var0_1);
            return;
        }
    }

    private void b(String string2, String string3) {
        this.h.a(new c(this.j, string3, string2));
    }

    private String d() {
        if (this.i instanceof SearchAdRequest) {
            return "AFMA_buildAdURL";
        }
        return "AFMA_buildAdURL";
    }

    private String e() {
        if (this.i instanceof SearchAdRequest) {
            return "AFMA_getSdkConstants();";
        }
        return "AFMA_getSdkConstants();";
    }

    private String f() {
        if (this.i instanceof SearchAdRequest) {
            return "http://www.gstatic.com/safa/";
        }
        return "http://media.admob.com/";
    }

    private String g() {
        if (this.i instanceof SearchAdRequest) {
            return "<html><head><script src=\"http://www.gstatic.com/safa/sdk-core-v40.js\"></script><script>";
        }
        return "<html><head><script src=\"http://media.admob.com/sdk-core-v40.js\"></script><script>";
    }

    private String h() {
        if (this.i instanceof SearchAdRequest) {
            return "</script></head><body></body></html>";
        }
        return "</script></head><body></body></html>";
    }

    private void i() {
        AdWebView adWebView = this.h.k();
        this.h.l().c(true);
        this.h.m().h();
        this.h.a(new c(adWebView, this.b, this.c));
    }

    private void j() {
        this.h.a(new e(this.h, this.j, this.l, this.s, this.p, this.m, this.n));
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    public String a(Map<String, Object> var1_1, Activity var2_3) throws b {
        var4_4 = 0;
        var12_5 = var2_3.getApplicationContext();
        var10_6 = this.h.m();
        var8_7 = var10_6.m();
        if (var8_7 > 0) {
            var1_1.put("prl", var8_7);
        }
        if ((var8_7 = var10_6.n()) > 0) {
            var1_1.put("prnl", var8_7);
        }
        if ((var11_8 = var10_6.l()) != null) {
            var1_1.put("ppcl", var11_8);
        }
        if ((var11_8 = var10_6.k()) != null) {
            var1_1.put("pcl", var11_8);
        }
        if ((var8_7 = var10_6.j()) > 0) {
            var1_1.put("pcc", var8_7);
        }
        var1_1.put("preqs", var10_6.o());
        var1_1.put("oar", var10_6.p());
        var1_1.put("bas_on", var10_6.s());
        var1_1.put("bas_off", var10_6.v());
        if (var10_6.y()) {
            var1_1.put("aoi_timeout", "true");
        }
        if (var10_6.A()) {
            var1_1.put("aoi_nofill", "true");
        }
        if ((var11_8 = var10_6.D()) != null) {
            var1_1.put("pit", var11_8);
        }
        var1_1.put("ptime", g.E());
        var10_6.a();
        var10_6.i();
        if (this.h.h().b()) {
            var1_1.put("format", "interstitial_mb");
        } else {
            var10_6 = this.h.h().k.a().b();
            if (var10_6.isFullWidth()) {
                var1_1.put("smart_w", "full");
            }
            if (var10_6.isAutoHeight()) {
                var1_1.put("smart_h", "auto");
            }
            if (!var10_6.isCustomAdSize()) {
                var1_1.put("format", var10_6.toString());
            } else {
                var11_8 = new HashMap<K, V>();
                var11_8.put("w", var10_6.getWidth());
                var11_8.put("h", var10_6.getHeight());
                var1_1.put("ad_frame", var11_8);
            }
        }
        var1_1.put("slotname", this.h.h().d.a());
        var1_1.put("js", "afma-sdk-a-v6.2.1");
        var10_6 = var12_5.getPackageName();
        try {
            var10_6 = var12_5.getPackageManager().getPackageInfo((String)var10_6, 0);
            var3_9 = var10_6.versionCode;
        }
        catch (PackageManager.NameNotFoundException var1_2) {
            throw new b("NameNotFoundException");
        }
        var10_6 = AdUtil.f(var12_5);
        if (!TextUtils.isEmpty((CharSequence)var10_6)) {
            var1_1.put("mv", var10_6);
        }
        var1_1.put("msid", var12_5.getPackageName());
        var1_1.put("app_name", "" + var3_9 + ".android." + var12_5.getPackageName());
        var1_1.put("isu", AdUtil.a(var12_5));
        var10_6 = var11_8 = AdUtil.d(var12_5);
        if (var11_8 == null) {
            var10_6 = "null";
        }
        var1_1.put("net", var10_6);
        var10_6 = AdUtil.e(var12_5);
        if (var10_6 != null && var10_6.length() != 0) {
            var1_1.put("cap", var10_6);
        }
        var1_1.put("u_audio", AdUtil.g(var12_5).ordinal());
        var2_3 = AdUtil.a((Activity)var2_3);
        var1_1.put("u_sd", Float.valueOf(var2_3.density));
        var1_1.put("u_h", AdUtil.a(var12_5, (DisplayMetrics)var2_3));
        var1_1.put("u_w", AdUtil.b(var12_5, (DisplayMetrics)var2_3));
        var1_1.put("hl", Locale.getDefault().getLanguage());
        if (this.h.h().i != null && this.h.h().i.a() != null && (var2_3 = this.h.h().i.a()).getParent() != null) {
            var10_6 = new int[2];
            var2_3.getLocationOnScreen((int[])var10_6);
            var5_10 = var10_6[0];
            var6_11 = var10_6[1];
            var10_6 = this.h.h().f.a().getResources().getDisplayMetrics();
            var3_9 = var10_6.widthPixels;
            var7_12 = var10_6.heightPixels;
            var3_9 = var2_3.isShown() != false && var2_3.getWidth() + var5_10 > 0 && var2_3.getHeight() + var6_11 > 0 && var5_10 <= var3_9 && var6_11 <= var7_12 ? 1 : 0;
            var10_6 = new HashMap<K, V>();
            var10_6.put("x", (int)var5_10);
            var10_6.put("y", (int)var6_11);
            var10_6.put("width", var2_3.getWidth());
            var10_6.put("height", var2_3.getHeight());
            var10_6.put("visible", var3_9);
            var1_1.put("ad_pos", var10_6);
        }
        var2_3 = new StringBuilder();
        var10_6 = this.h.h().l.a();
        if (var10_6 == null) ** GOTO lbl98
        var5_10 = var10_6.length;
        for (var3_9 = var4_4; var3_9 < var5_10; ++var3_9) {
            var11_8 = var10_6[var3_9];
            if (var2_3.length() != 0) {
                var2_3.append("|");
            }
            var2_3.append("" + var11_8.getWidth() + "x" + var11_8.getHeight());
        }
        var1_1.put("sz", var2_3.toString());
lbl98: // 2 sources:
        var2_3 = (TelephonyManager)var12_5.getSystemService("phone");
        var1_1.put("carrier", var2_3.getNetworkOperator());
        var1_1.put("gnt", var2_3.getNetworkType());
        if (AdUtil.c()) {
            var1_1.put("simulator", 1);
        }
        var1_1.put("session_id", com.google.ads.b.a().b().toString());
        var1_1.put("seq_num", com.google.ads.b.a().c().toString());
        var1_1 = AdUtil.a(var1_1);
        var1_1 = this.h.h().a.a().a.a().l.a() != false ? this.g() + this.d() + "(" + (String)var1_1 + ");" + this.h() : this.g() + this.e() + this.d() + "(" + (String)var1_1 + ");" + this.h();
        com.google.ads.util.b.c("adRequestUrlHtml: " + (String)var1_1);
        return var1_1;
    }

    protected void a() {
        com.google.ads.util.b.a("AdLoader cancelled.");
        if (this.j != null) {
            this.j.stopLoading();
            this.j.destroy();
        }
        if (this.t != null) {
            this.t.interrupt();
            this.t = null;
        }
        if (this.g != null) {
            this.g.a();
        }
        this.o = true;
    }

    public void a(int n2) {
        synchronized (this) {
            this.s = n2;
            return;
        }
    }

    public void a(AdRequest.ErrorCode errorCode) {
        synchronized (this) {
            this.q = errorCode;
            this.notify();
            return;
        }
    }

    protected void a(AdRequest.ErrorCode errorCode, boolean bl) {
        this.h.a(new a(this.h, this.j, this.g, errorCode, bl));
    }

    protected void a(AdRequest adRequest) {
        this.i = adRequest;
        this.o = false;
        this.t = new Thread(this);
        this.t.start();
    }

    public void a(AdSize adSize) {
        synchronized (this) {
            this.n = adSize;
            return;
        }
    }

    public void a(d d2) {
        synchronized (this) {
            this.v = d2;
            return;
        }
    }

    protected void a(String string2) {
        synchronized (this) {
            this.l.add(string2);
            return;
        }
    }

    protected void a(String string2, String string3) {
        synchronized (this) {
            this.b = string3;
            this.c = string2;
            this.notify();
            return;
        }
    }

    protected void a(boolean bl) {
        synchronized (this) {
            this.f = bl;
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    protected void b() {
        try {
            if (TextUtils.isEmpty((CharSequence)this.e)) {
                com.google.ads.util.b.b("Got a mediation response with no content type. Aborting mediation.");
                this.a(AdRequest.ErrorCode.INTERNAL_ERROR, false);
                return;
            }
            if (!this.e.startsWith("application/json")) {
                com.google.ads.util.b.b("Got a mediation response with a content type: '" + this.e + "'. Expected something starting with 'application/json'. Aborting mediation.");
                this.a(AdRequest.ErrorCode.INTERNAL_ERROR, false);
                return;
            }
            final com.google.ads.c c2 = com.google.ads.c.a(this.c);
            c.a(this.d, c2, this.h.i());
            this.h.a(new Runnable(){

                @Override
                public void run() {
                    if (c.this.j != null) {
                        c.this.j.stopLoading();
                        c.this.j.destroy();
                    }
                    c.this.h.a(c.this.m);
                    if (c.this.n != null) {
                        c.c((c)c.this).h().k.a().b(c.this.n);
                    }
                    c.this.h.a(c2);
                }
            });
            return;
        }
        catch (JSONException var1_1) {
            com.google.ads.util.b.b("AdLoader can't parse gWhirl server configuration.", (Throwable)var1_1);
            this.a(AdRequest.ErrorCode.INTERNAL_ERROR, false);
            return;
        }
    }

    protected void b(String string2) {
        synchronized (this) {
            this.e = string2;
            return;
        }
    }

    public void b(boolean bl) {
        synchronized (this) {
            this.p = bl;
            return;
        }
    }

    protected void c() {
        synchronized (this) {
            this.r = true;
            this.notify();
            return;
        }
    }

    protected void c(String string2) {
        synchronized (this) {
            this.d = string2;
            return;
        }
    }

    public void c(boolean bl) {
        synchronized (this) {
            this.u = bl;
            return;
        }
    }

    public void d(String string2) {
        synchronized (this) {
            this.k = string2;
            this.notify();
            return;
        }
    }

    public void d(boolean bl) {
        synchronized (this) {
            this.a = bl;
            return;
        }
    }

    public void e(String string2) {
        synchronized (this) {
            this.m = string2;
            return;
        }
    }

    /*
     * Exception decompiling
     */
    @Override
    public void run() {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: First case is not immediately after switch.
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.examineSwitchContiguity(SwitchReplacer.java:366)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.replaceRawSwitches(SwitchReplacer.java:65)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:425)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:220)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:165)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:354)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:751)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:683)
        // org.benf.cfr.reader.Main.doJar(Main.java:129)
        // org.benf.cfr.reader.Main.main(Main.java:181)
        throw new IllegalStateException("Decompilation failed");
    }

    private static class a
    implements Runnable {
        private final com.google.ads.internal.d a;
        private final WebView b;
        private final f c;
        private final AdRequest.ErrorCode d;
        private final boolean e;

        public a(com.google.ads.internal.d d2, WebView webView, f f2, AdRequest.ErrorCode errorCode, boolean bl) {
            this.a = d2;
            this.b = webView;
            this.c = f2;
            this.d = errorCode;
            this.e = bl;
        }

        @Override
        public void run() {
            if (this.b != null) {
                this.b.stopLoading();
                this.b.destroy();
            }
            if (this.c != null) {
                this.c.a();
            }
            if (this.e) {
                AdWebView adWebView = this.a.k();
                adWebView.stopLoading();
                adWebView.setVisibility(8);
            }
            this.a.a(this.d);
        }
    }

    private class b
    extends Exception {
        public b(String string2) {
            super(string2);
        }
    }

    private class c
    implements Runnable {
        private final String b;
        private final String c;
        private final WebView d;

        public c(WebView webView, String string2, String string3) {
            this.d = webView;
            this.b = string2;
            this.c = string3;
        }

        @Override
        public void run() {
            if (this.c != null) {
                this.d.loadDataWithBaseURL(this.b, this.c, "text/html", "utf-8", null);
                return;
            }
            this.d.loadUrl(this.b);
        }
    }

    public static enum d {
        a("online_buffered"),
        b("online_request"),
        c("offline_buffered"),
        d("offline_empty");
        
        public String e;

        private d(String string3) {
            this.e = string3;
        }
    }

    private static class e
    implements Runnable {
        private final com.google.ads.internal.d a;
        private final WebView b;
        private final LinkedList<String> c;
        private final int d;
        private final boolean e;
        private final String f;
        private final AdSize g;

        public e(com.google.ads.internal.d d2, WebView webView, LinkedList<String> linkedList, int n2, boolean bl, String string2, AdSize adSize) {
            this.a = d2;
            this.b = webView;
            this.c = linkedList;
            this.d = n2;
            this.e = bl;
            this.f = string2;
            this.g = adSize;
        }

        @Override
        public void run() {
            if (this.b != null) {
                this.b.stopLoading();
                this.b.destroy();
            }
            this.a.a(this.c);
            this.a.a(this.d);
            this.a.a(this.e);
            this.a.a(this.f);
            if (this.g != null) {
                this.a.h().k.a().b(this.g);
                this.a.k().setAdSize(this.g);
            }
            this.a.C();
        }
    }

}

