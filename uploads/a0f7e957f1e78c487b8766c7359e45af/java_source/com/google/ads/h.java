/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.os.Handler
 *  android.os.Looper
 *  android.text.TextUtils
 *  android.view.View
 */
package com.google.ads;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import com.google.ads.AdRequest;
import com.google.ads.e;
import com.google.ads.f;
import com.google.ads.g;
import com.google.ads.i;
import com.google.ads.mediation.MediationAdapter;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.util.a;
import com.google.ads.util.b;
import java.util.HashMap;

public class h {
    final com.google.ads.internal.h a;
    private final f b;
    private boolean c;
    private boolean d;
    private g.a e;
    private final e f;
    private MediationAdapter<?, ?> g;
    private boolean h;
    private boolean i;
    private View j;
    private final Handler k;
    private final String l;
    private final AdRequest m;
    private final HashMap<String, String> n;

    public h(e e2, com.google.ads.internal.h h2, f f2, String string2, AdRequest adRequest, HashMap<String, String> hashMap) {
        a.b(TextUtils.isEmpty((CharSequence)string2));
        this.f = e2;
        this.a = h2;
        this.b = f2;
        this.l = string2;
        this.m = adRequest;
        this.n = hashMap;
        this.c = false;
        this.d = false;
        this.e = null;
        this.g = null;
        this.h = false;
        this.i = false;
        this.j = null;
        this.k = new Handler(Looper.getMainLooper());
    }

    public f a() {
        return this.b;
    }

    public void a(Activity activity) {
        synchronized (this) {
            a.b(this.h, "startLoadAdTask has already been called.");
            this.h = true;
            this.k.post((Runnable)new i(this, activity, this.l, this.m, this.n));
            return;
        }
    }

    void a(View view) {
        synchronized (this) {
            this.j = view;
            return;
        }
    }

    void a(MediationAdapter<?, ?> mediationAdapter) {
        synchronized (this) {
            this.g = mediationAdapter;
            return;
        }
    }

    void a(boolean bl, g.a a2) {
        synchronized (this) {
            this.d = bl;
            this.c = true;
            this.e = a2;
            this.notify();
            return;
        }
    }

    public void b() {
        synchronized (this) {
            a.a(this.h, "destroy() called but startLoadAdTask has not been called.");
            this.k.post(new Runnable(){

                /*
                 * Enabled force condition propagation
                 * Lifted jumps to return sites
                 */
                @Override
                public void run() {
                    if (!h.this.l()) return;
                    a.b(h.this.g);
                    try {
                        h.this.g.destroy();
                    }
                    catch (Throwable throwable) {
                        b.b("Error while destroying adapter (" + h.this.h() + "):", throwable);
                        return;
                    }
                    b.a("Called destroy() for adapter with class: " + h.this.g.getClass().getName());
                }
            });
            return;
        }
    }

    public boolean c() {
        synchronized (this) {
            boolean bl = this.c;
            return bl;
        }
    }

    public boolean d() {
        synchronized (this) {
            a.a(this.c, "isLoadAdTaskSuccessful() called when isLoadAdTaskDone() is false.");
            boolean bl = this.d;
            return bl;
        }
    }

    public g.a e() {
        synchronized (this) {
            g.a a2;
            if (this.e == null) {
                a2 = g.a.d;
                return a2;
            }
            a2 = this.e;
        }
    }

    public View f() {
        synchronized (this) {
            a.a(this.c, "getAdView() called when isLoadAdTaskDone() is false.");
            View view = this.j;
            return view;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public void g() {
        synchronized (this) {
            a.a(this.a.a());
            try {
                final MediationInterstitialAdapter mediationInterstitialAdapter = (MediationInterstitialAdapter)this.g;
                this.k.post(new Runnable(){

                    @Override
                    public void run() {
                        try {
                            mediationInterstitialAdapter.showInterstitial();
                            return;
                        }
                        catch (Throwable var1_1) {
                            b.b("Error while telling adapter (" + h.this.h() + ") ad to show interstitial: ", var1_1);
                            return;
                        }
                    }
                });
                do {
                    return;
                    break;
                } while (true);
            }
            catch (ClassCastException var1_2) {
                try {
                    b.b("In Ambassador.show(): ambassador.adapter does not implement the MediationInterstitialAdapter interface.", var1_2);
                    return;
                }
                catch (Throwable var1_3) {
                    throw var1_3;
                }
                finally {
                }
            }
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public String h() {
        synchronized (this) {
            if (this.g == null) return "\"adapter was not created.\"";
            return this.g.getClass().getName();
        }
    }

    MediationAdapter<?, ?> i() {
        synchronized (this) {
            MediationAdapter mediationAdapter = this.g;
            return mediationAdapter;
        }
    }

    e j() {
        return this.f;
    }

    void k() {
        synchronized (this) {
            this.i = true;
            return;
        }
    }

    boolean l() {
        synchronized (this) {
            boolean bl = this.i;
            return bl;
        }
    }

}

