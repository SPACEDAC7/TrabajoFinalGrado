/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Context
 *  android.content.SharedPreferences
 *  android.content.SharedPreferences$Editor
 *  android.net.Uri
 *  android.net.Uri$Builder
 *  android.os.Handler
 *  android.text.TextUtils
 *  android.view.View
 *  android.view.ViewGroup
 *  android.webkit.WebViewClient
 */
package com.google.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebViewClient;
import com.google.ads.Ad;
import com.google.ads.AdActivity;
import com.google.ads.AdListener;
import com.google.ads.AdRequest;
import com.google.ads.AdSize;
import com.google.ads.AdView;
import com.google.ads.AppEventListener;
import com.google.ads.InterstitialAd;
import com.google.ads.ac;
import com.google.ads.ae;
import com.google.ads.ag;
import com.google.ads.b;
import com.google.ads.f;
import com.google.ads.internal.AdWebView;
import com.google.ads.internal.a;
import com.google.ads.internal.c;
import com.google.ads.internal.e;
import com.google.ads.internal.g;
import com.google.ads.internal.h;
import com.google.ads.internal.i;
import com.google.ads.l;
import com.google.ads.m;
import com.google.ads.n;
import com.google.ads.util.AdUtil;
import com.google.ads.util.i;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

public class d {
    private static final Object a = new Object();
    private final m b;
    private c c;
    private AdRequest d;
    private g e;
    private AdWebView f;
    private i g;
    private Handler h;
    private long i;
    private boolean j;
    private boolean k;
    private boolean l;
    private boolean m;
    private boolean n;
    private SharedPreferences o;
    private long p;
    private ae q;
    private boolean r;
    private LinkedList<String> s;
    private LinkedList<String> t;
    private int u = -1;
    private Boolean v;
    private com.google.ads.d w;
    private com.google.ads.e x;
    private f y;
    private String z = null;

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public d(Ad ad, Activity object, AdSize object2, String string2, ViewGroup viewGroup, boolean bl) {
        this.r = bl;
        this.e = new g();
        this.c = null;
        this.d = null;
        this.k = false;
        this.h = new Handler();
        this.p = 60000;
        this.l = false;
        this.n = false;
        this.m = true;
        if (object == null) {
            l l2 = l.a();
            object = ad instanceof AdView ? (AdView)ad : null;
            InterstitialAd interstitialAd = ad instanceof InterstitialAd ? (InterstitialAd)ad : null;
            object2 = object2 == null ? h.a : h.a((AdSize)object2);
            this.b = new m(l2, ad, (AdView)object, interstitialAd, string2, null, null, viewGroup, (h)object2);
            return;
        }
        Object object3 = a;
        synchronized (object3) {
            long l3;
            this.o = object.getApplicationContext().getSharedPreferences("GoogleAdMobAdsPrefs", 0);
            this.i = bl ? ((l3 = this.o.getLong("Timeout" + string2, -1)) < 0 ? 5000 : l3) : 60000;
        }
        l l4 = l.a();
        object3 = ad instanceof AdView ? (AdView)ad : null;
        InterstitialAd interstitialAd = ad instanceof InterstitialAd ? (InterstitialAd)ad : null;
        Context context = object.getApplicationContext();
        object2 = object2 == null ? h.a : h.a((AdSize)object2, object.getApplicationContext());
        this.b = new m(l4, ad, (AdView)object3, interstitialAd, string2, (Activity)object, context, viewGroup, (h)object2);
        this.q = new ae(this);
        this.s = new LinkedList();
        this.t = new LinkedList();
        this.a();
        AdUtil.h(this.b.f.a());
        this.w = new com.google.ads.d();
        this.x = new com.google.ads.e(this);
        this.v = null;
        this.y = null;
    }

    private void a(f f2, Boolean bl) {
        Object object;
        Object object2 = object = f2.d();
        if (object == null) {
            object2 = new ArrayList<String>();
            object2.add((String)"http://e.admob.com/imp?ad_loc=@gw_adlocid@&qdata=@gw_qdata@&ad_network_id=@gw_adnetid@&js=@gw_sdkver@&session_id=@gw_sessid@&seq_num=@gw_seqnum@&nr=@gw_adnetrefresh@&adt=@gw_adt@&aec=@gw_aec@");
        }
        object = f2.b();
        this.a((List<String>)object2, f2.a(), (String)object, f2.c(), bl, this.e.d(), this.e.e());
    }

    private void a(List<String> list, String string2) {
        if (list == null) {
            list = new ArrayList<String>();
            list.add("http://e.admob.com/nofill?ad_loc=@gw_adlocid@&qdata=@gw_qdata@&js=@gw_sdkver@&session_id=@gw_sessid@&seq_num=@gw_seqnum@&adt=@gw_adt@&aec=@gw_aec@");
        }
        this.a(list, null, null, string2, null, this.e.d(), this.e.e());
    }

    private void a(List<String> object, String string2, String string3, String string4, Boolean bl, String string5, String string6) {
        String string7 = AdUtil.a(this.b.f.a());
        Object object2 = b.a();
        String string8 = object2.b().toString();
        object2 = object2.c().toString();
        object = object.iterator();
        while (object.hasNext()) {
            new Thread(new ac(com.google.ads.g.a((String)object.next(), this.b.d.a(), bl, string7, string2, string3, string4, string8, (String)object2, string5, string6), this.b.f.a())).start();
        }
        this.e.b();
    }

    private void b(f f2, Boolean bl) {
        Object object;
        Object object2 = object = f2.e();
        if (object == null) {
            object2 = new ArrayList<String>();
            object2.add((String)"http://e.admob.com/clk?ad_loc=@gw_adlocid@&qdata=@gw_qdata@&ad_network_id=@gw_adnetid@&js=@gw_sdkver@&session_id=@gw_sessid@&seq_num=@gw_seqnum@&nr=@gw_adnetrefresh@");
        }
        object = f2.b();
        this.a((List<String>)object2, f2.a(), (String)object, f2.c(), bl, null, null);
    }

    public void A() {
        synchronized (this) {
            if (this.c != null) {
                this.c.a();
                this.c = null;
            }
            if (this.f != null) {
                this.f.stopLoading();
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    protected void B() {
        synchronized (this) {
            Activity activity = this.b.e.a();
            if (activity == null) {
                com.google.ads.util.b.e("activity was null while trying to ping click tracking URLs.");
            } else {
                Iterator<String> iterator = this.t.iterator();
                while (iterator.hasNext()) {
                    new Thread(new ac(iterator.next(), activity.getApplicationContext())).start();
                }
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    protected void C() {
        synchronized (this) {
            this.c = null;
            this.k = true;
            this.f.setVisibility(0);
            if (this.b.a()) {
                this.a((View)this.f);
            }
            this.e.g();
            if (this.b.a()) {
                this.x();
            }
            com.google.ads.util.b.c("onReceiveAd()");
            AdListener adListener = this.b.m.a();
            if (adListener != null) {
                adListener.onReceiveAd(this.b.h.a());
            }
            return;
        }
    }

    public void a() {
        synchronized (this) {
            this.f = new AdWebView(this.b, this.b.k.a().b());
            this.f.setVisibility(8);
            this.g = i.a(this, a.c, true, this.b.b());
            this.f.setWebViewClient((WebViewClient)this.g);
            l.a a2 = this.b.a.a().a.a();
            if (AdUtil.a < a2.a.a() && !this.b.k.a().a()) {
                com.google.ads.util.b.a("Disabling hardware acceleration for a banner.");
                this.f.b();
            }
            return;
        }
    }

    public void a(float f2) {
        synchronized (this) {
            long l2 = this.p;
            this.p = (long)(1000.0f * f2);
            if (this.s() && this.p != l2) {
                this.e();
                this.f();
            }
            return;
        }
    }

    public void a(int n2) {
        synchronized (this) {
            this.u = n2;
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void a(long l2) {
        Object object = a;
        synchronized (object) {
            SharedPreferences.Editor editor = this.o.edit();
            editor.putLong("Timeout" + this.b.d, l2);
            editor.commit();
            if (this.r) {
                this.i = l2;
            }
            return;
        }
    }

    public void a(View view) {
        this.b.g.a().removeAllViews();
        this.b.g.a().addView(view);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void a(View object, com.google.ads.h h2, f f2, boolean bl) {
        synchronized (this) {
            void var2_2;
            void var3_3;
            com.google.ads.util.b.a("AdManager.onReceiveGWhirlAd() called.");
            this.k = true;
            this.y = var3_3;
            if (this.b.a()) {
                void var4_4;
                this.a((View)object);
                this.a((f)var3_3, (Boolean)((boolean)var4_4));
            }
            this.x.d((com.google.ads.h)var2_2);
            object = this.b.m.a();
            if (object != null) {
                object.onReceiveAd(this.b.h.a());
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void a(AdRequest.ErrorCode errorCode) {
        synchronized (this) {
            this.c = null;
            if (errorCode == AdRequest.ErrorCode.NETWORK_ERROR) {
                this.a(60.0f);
                if (!this.s()) {
                    this.g();
                }
            }
            if (this.b.b()) {
                if (errorCode == AdRequest.ErrorCode.NO_FILL) {
                    this.e.B();
                } else if (errorCode == AdRequest.ErrorCode.NETWORK_ERROR) {
                    this.e.z();
                }
            }
            com.google.ads.util.b.c("onFailedToReceiveAd(" + (Object)((Object)errorCode) + ")");
            AdListener adListener = this.b.m.a();
            if (adListener != null) {
                adListener.onFailedToReceiveAd(this.b.h.a(), errorCode);
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void a(AdRequest adRequest) {
        synchronized (this) {
            if (this.p()) {
                com.google.ads.util.b.e("loadAd called while the ad is already loading, so aborting.");
            } else if (AdActivity.isShowing()) {
                com.google.ads.util.b.e("loadAd called while an interstitial or landing page is displayed, so aborting");
            } else if (AdUtil.c(this.b.f.a()) && AdUtil.b(this.b.f.a())) {
                long l2 = this.o.getLong("GoogleAdMobDoritosLife", 60000);
                if (ag.a(this.b.f.a(), l2)) {
                    ag.a(this.b.e.a());
                }
                this.k = false;
                this.s.clear();
                this.d = adRequest;
                if (this.w.a()) {
                    this.x.a(this.w.b(), adRequest);
                } else {
                    this.c = new c(this);
                    this.c.a(adRequest);
                }
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void a(com.google.ads.c c2) {
        synchronized (this) {
            this.c = null;
            if (c2.d()) {
                this.a((float)c2.e());
                if (!this.l) {
                    this.f();
                }
            } else if (this.l) {
                this.e();
            }
            this.x.a(c2, this.d);
            return;
        }
    }

    public void a(f f2, boolean bl) {
        synchronized (this) {
            com.google.ads.util.b.a(String.format(Locale.US, "AdManager.onGWhirlAdClicked(%b) called.", bl));
            this.b(f2, bl);
            return;
        }
    }

    public void a(Runnable runnable) {
        this.h.post(runnable);
    }

    public void a(String charSequence) {
        Object object = new Uri.Builder().encodedQuery(charSequence).build();
        charSequence = new StringBuilder();
        object = AdUtil.b((Uri)object);
        for (String string2 : object.keySet()) {
            charSequence.append(string2).append(" = ").append((String)object.get(string2)).append("\n");
        }
        this.z = charSequence.toString().trim();
        if (TextUtils.isEmpty((CharSequence)this.z)) {
            this.z = null;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void a(String string2, String string3) {
        synchronized (this) {
            AppEventListener appEventListener = this.b.n.a();
            if (appEventListener != null) {
                void var2_2;
                appEventListener.onAppEvent(this.b.h.a(), string2, (String)var2_2);
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    protected void a(LinkedList<String> linkedList) {
        synchronized (this) {
            Iterator<String> iterator = linkedList.iterator();
            do {
                if (!iterator.hasNext()) {
                    this.t = linkedList;
                    return;
                }
                String string2 = iterator.next();
                com.google.ads.util.b.a("Adding a click tracking URL: " + string2);
            } while (true);
        }
    }

    public void a(boolean bl) {
        synchronized (this) {
            this.j = bl;
            return;
        }
    }

    public void b() {
        synchronized (this) {
            if (this.x != null) {
                this.x.b();
            }
            this.b.m.a(null);
            this.b.n.a(null);
            this.A();
            if (this.f != null) {
                this.f.destroy();
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void b(long l2) {
        synchronized (this) {
            if (l2 > 0) {
                this.o.edit().putLong("GoogleAdMobDoritosLife", l2).commit();
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void b(com.google.ads.c object) {
        synchronized (this) {
            com.google.ads.util.b.a("AdManager.onGWhirlNoFill() called.");
            this.a(object.i(), object.c());
            object = this.b.m.a();
            if (object != null) {
                object.onFailedToReceiveAd(this.b.h.a(), AdRequest.ErrorCode.NO_FILL);
            }
            return;
        }
    }

    protected void b(String string2) {
        synchronized (this) {
            com.google.ads.util.b.a("Adding a tracking URL: " + string2);
            this.s.add(string2);
            return;
        }
    }

    public void b(boolean bl) {
        this.v = bl;
    }

    public String c() {
        return this.z;
    }

    public void d() {
        synchronized (this) {
            this.m = false;
            com.google.ads.util.b.a("Refreshing is no longer allowed on this AdView.");
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void e() {
        synchronized (this) {
            if (this.l) {
                com.google.ads.util.b.a("Disabling refreshing.");
                this.h.removeCallbacks((Runnable)this.q);
                this.l = false;
            } else {
                com.google.ads.util.b.a("Refreshing is already disabled.");
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void f() {
        synchronized (this) {
            this.n = false;
            if (this.b.a()) {
                if (this.m) {
                    if (!this.l) {
                        com.google.ads.util.b.a("Enabling refreshing every " + this.p + " milliseconds.");
                        this.h.postDelayed((Runnable)this.q, this.p);
                        this.l = true;
                    } else {
                        com.google.ads.util.b.a("Refreshing is already enabled.");
                    }
                } else {
                    com.google.ads.util.b.a("Refreshing disabled on this AdView");
                }
            } else {
                com.google.ads.util.b.a("Tried to enable refreshing on something other than an AdView.");
            }
            return;
        }
    }

    public void g() {
        this.f();
        this.n = true;
    }

    public m h() {
        return this.b;
    }

    public com.google.ads.d i() {
        synchronized (this) {
            com.google.ads.d d2 = this.w;
            return d2;
        }
    }

    public c j() {
        synchronized (this) {
            c c2 = this.c;
            return c2;
        }
    }

    public AdWebView k() {
        synchronized (this) {
            AdWebView adWebView = this.f;
            return adWebView;
        }
    }

    public i l() {
        synchronized (this) {
            i i2 = this.g;
            return i2;
        }
    }

    public g m() {
        return this.e;
    }

    public int n() {
        synchronized (this) {
            int n2 = this.u;
            return n2;
        }
    }

    public long o() {
        return this.i;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public boolean p() {
        synchronized (this) {
            c c2 = this.c;
            if (c2 == null) return false;
            return true;
        }
    }

    public boolean q() {
        synchronized (this) {
            boolean bl = this.j;
            return bl;
        }
    }

    public boolean r() {
        synchronized (this) {
            boolean bl = this.k;
            return bl;
        }
    }

    public boolean s() {
        synchronized (this) {
            boolean bl = this.l;
            return bl;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void t() {
        synchronized (this) {
            this.e.C();
            com.google.ads.util.b.c("onDismissScreen()");
            AdListener adListener = this.b.m.a();
            if (adListener != null) {
                adListener.onDismissScreen(this.b.h.a());
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void u() {
        synchronized (this) {
            com.google.ads.util.b.c("onPresentScreen()");
            AdListener adListener = this.b.m.a();
            if (adListener != null) {
                adListener.onPresentScreen(this.b.h.a());
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void v() {
        synchronized (this) {
            com.google.ads.util.b.c("onLeaveApplication()");
            AdListener adListener = this.b.m.a();
            if (adListener != null) {
                adListener.onLeaveApplication(this.b.h.a());
            }
            return;
        }
    }

    public void w() {
        this.e.f();
        this.B();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void x() {
        synchronized (this) {
            Activity activity = this.b.e.a();
            if (activity == null) {
                com.google.ads.util.b.e("activity was null while trying to ping tracking URLs.");
            } else {
                Iterator<String> iterator = this.s.iterator();
                while (iterator.hasNext()) {
                    new Thread(new ac(iterator.next(), activity.getApplicationContext())).start();
                }
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void y() {
        synchronized (this) {
            if (this.d != null) {
                if (this.b.a()) {
                    if (this.b.i.a().isShown() && AdUtil.d()) {
                        com.google.ads.util.b.c("Refreshing ad.");
                        this.a(this.d);
                    } else {
                        com.google.ads.util.b.a("Not refreshing because the ad is not visible.");
                    }
                    if (this.n) {
                        this.e();
                    } else {
                        this.h.postDelayed((Runnable)this.q, this.p);
                    }
                } else {
                    com.google.ads.util.b.a("Tried to refresh an ad that wasn't an AdView.");
                }
            } else {
                com.google.ads.util.b.a("Tried to refresh before calling loadAd().");
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void z() {
        synchronized (this) {
            com.google.ads.util.a.a(this.b.b());
            if (this.k) {
                this.k = false;
                if (this.v == null) {
                    com.google.ads.util.b.b("isMediationFlag is null in show() with isReady() true. we should have an ad and know whether this is a mediation request or not. ");
                } else if (this.v.booleanValue()) {
                    if (this.x.c()) {
                        this.a(this.y, (Boolean)false);
                    }
                } else {
                    AdActivity.launchAdActivity(this, new e("interstitial"));
                    this.x();
                }
            } else {
                com.google.ads.util.b.c("Cannot show interstitial because it is not loaded and ready.");
            }
            return;
        }
    }
}

