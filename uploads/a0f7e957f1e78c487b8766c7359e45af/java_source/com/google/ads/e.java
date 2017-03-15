/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.os.SystemClock
 *  android.view.View
 */
package com.google.ads;

import android.app.Activity;
import android.os.SystemClock;
import android.view.View;
import com.google.ads.AdRequest;
import com.google.ads.AdSize;
import com.google.ads.c;
import com.google.ads.f;
import com.google.ads.g;
import com.google.ads.h;
import com.google.ads.internal.d;
import com.google.ads.m;
import com.google.ads.util.a;
import com.google.ads.util.b;
import com.google.ads.util.i;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class e {
    private final d a;
    private h b = null;
    private Object c = new Object();
    private Thread d = null;
    private Object e = new Object();
    private boolean f = false;
    private Object g = new Object();

    protected e() {
        this.a = null;
    }

    public e(d d2) {
        a.b(d2);
        this.a = d2;
    }

    public static boolean a(c object, d object2) {
        if (object.j() == null) {
            return true;
        }
        if (object2.h().b()) {
            if (!object.j().a()) {
                b.e("InterstitialAd received a mediation response corresponding to a non-interstitial ad. Make sure you specify 'interstitial' as the ad-type in the mediation UI.");
                return false;
            }
            return true;
        }
        object2 = object2.h().k.a().b();
        if (object.j().a()) {
            b.e("AdView received a mediation response corresponding to an interstitial ad. Make sure you specify the banner ad size corresponding to the AdSize you used in your AdView  (" + object2 + ") in the ad-type field in the mediation UI.");
            return false;
        }
        if ((object = object.j().b()) != object2) {
            b.e("Mediation server returned ad size: '" + object + "', while the AdView was created with ad size: '" + object2 + "'. Using the ad-size passed to the AdView on creation.");
            return false;
        }
        return true;
    }

    private boolean a(h h2, String string2) {
        if (this.e() != h2) {
            b.c("GWController: ignoring callback to " + string2 + " from non showing ambassador with adapter class: '" + h2.h() + "'.");
            return false;
        }
        return true;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private boolean a(String string2, Activity activity, AdRequest object, f f2, HashMap<String, String> hashMap, long l2) {
        object = new h(this, this.a.h().k.a(), f2, string2, (AdRequest)object, hashMap);
        synchronized (object) {
            object.a(activity);
            try {
                while (!object.c() && l2 > 0) {
                    long l3 = SystemClock.elapsedRealtime();
                    object.wait(l2);
                    long l4 = SystemClock.elapsedRealtime();
                    l2 -= l4 - l3;
                }
            }
            catch (InterruptedException var2_3) {
                b.a("Interrupted while waiting for ad network to load ad using adapter class: " + string2);
            }
            this.a.m().a(object.e());
            if (object.c() && object.d()) {
                string2 = this.a.h().b() ? null : object.f();
                this.a.a(new Runnable((h)object, (View)string2, f2){
                    final /* synthetic */ h a;
                    final /* synthetic */ View b;
                    final /* synthetic */ f c;

                    @Override
                    public void run() {
                        if (e.this.e(this.a)) {
                            b.a("Trying to switch GWAdNetworkAmbassadors, but GWController().destroy() has been called. Destroying the new ambassador and terminating mediation.");
                            return;
                        }
                        e.this.a.a(this.b, this.a, this.c, false);
                    }
                });
                return true;
            }
            object.b();
            return false;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void b(final c c2, AdRequest adRequest) {
        Object object = this.e;
        synchronized (object) {
            a.a(Thread.currentThread(), this.d);
        }
        object = c2.f();
        long l2 = c2.a() ? (long)c2.b() : 10000;
        Iterator<com.google.ads.a> iterator = object.iterator();
        block3 : do {
            if (!iterator.hasNext()) {
                this.a.a(new Runnable(){

                    @Override
                    public void run() {
                        e.this.a.b(c2);
                    }
                });
                return;
            }
            Object object2 = iterator.next();
            b.a("Looking to fetch ads from network: " + object2.b());
            Object object3 = object2.c();
            HashMap<String, String> hashMap = object2.e();
            object = object2.d();
            String string2 = object2.a();
            object2 = object2.b();
            String string3 = c2.c();
            if (object == null) {
                object = c2.g();
            }
            object = new f(string2, (String)object2, string3, (List<String>)object, c2.h(), c2.i());
            object3 = object3.iterator();
            do {
                if (!object3.hasNext()) continue block3;
                string2 = (String)object3.next();
                object2 = this.a.h().e.a();
                if (object2 == null) {
                    b.a("Activity is null while mediating.  Terminating mediation thread.");
                    return;
                }
                this.a.m().c();
                if (this.a(string2, (Activity)object2, adRequest, (f)object, hashMap, l2)) return;
            } while (!this.d());
            break;
        } while (true);
        b.a("GWController.destroy() called. Terminating mediation thread.");
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private boolean d() {
        Object object = this.g;
        synchronized (object) {
            return this.f;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private h e() {
        Object object = this.c;
        synchronized (object) {
            return this.b;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private boolean e(h h2) {
        Object object = this.g;
        synchronized (object) {
            if (this.d()) {
                h2.b();
                return true;
            }
            return false;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void a(final c c2, final AdRequest adRequest) {
        Object object = this.e;
        synchronized (object) {
            if (this.a()) {
                b.c("Mediation thread is not done executing previous mediation  request. Ignoring new mediation request");
                return;
            }
            e.a(c2, this.a);
            this.d = new Thread(new Runnable(){

                /*
                 * Enabled aggressive block sorting
                 * Enabled unnecessary exception pruning
                 * Enabled aggressive exception aggregation
                 */
                @Override
                public void run() {
                    e.this.b(c2, adRequest);
                    Object object = e.this.e;
                    synchronized (object) {
                        e.this.d = null;
                        return;
                    }
                }
            });
            this.d.start();
            return;
        }
    }

    public void a(h h2) {
        if (!this.a(h2, "onPresentScreen")) {
            return;
        }
        this.a.a(new Runnable(){

            @Override
            public void run() {
                e.this.a.u();
            }
        });
    }

    public void a(h object, final View view) {
        if (this.e() != object) {
            b.c("GWController: ignoring onAdRefreshed() callback from non-showing ambassador (adapter class name is '" + object.h() + "').");
            return;
        }
        this.a.m().a(g.a.a);
        object = this.b.a();
        this.a.a(new Runnable((f)object){
            final /* synthetic */ f b;

            @Override
            public void run() {
                e.this.a.a(view, e.this.b, this.b, true);
            }
        });
    }

    public void a(h object, boolean bl) {
        if (!this.a((h)object, "onAdClicked()")) {
            return;
        }
        object = object.a();
        this.a.a(new Runnable((f)object, bl){
            final /* synthetic */ f a;
            final /* synthetic */ boolean b;

            @Override
            public void run() {
                e.this.a.a(this.a, this.b);
            }
        });
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public boolean a() {
        Object object = this.e;
        synchronized (object) {
            if (this.d == null) return false;
            return true;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void b() {
        Object object = this.g;
        synchronized (object) {
            this.f = true;
            this.d(null);
            Object object2 = this.e;
            synchronized (object2) {
                if (this.d != null) {
                    this.d.interrupt();
                }
                return;
            }
        }
    }

    public void b(h h2) {
        if (!this.a(h2, "onDismissScreen")) {
            return;
        }
        this.a.a(new Runnable(){

            @Override
            public void run() {
                e.this.a.t();
            }
        });
    }

    public void c(h h2) {
        if (!this.a(h2, "onLeaveApplication")) {
            return;
        }
        this.a.a(new Runnable(){

            @Override
            public void run() {
                e.this.a.v();
            }
        });
    }

    public boolean c() {
        a.a(this.a.h().b());
        h h2 = this.e();
        if (h2 != null) {
            h2.g();
            return true;
        }
        b.b("There is no ad ready to show.");
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void d(h h2) {
        Object object = this.c;
        synchronized (object) {
            if (this.b != h2) {
                if (this.b != null) {
                    this.b.b();
                }
                this.b = h2;
            }
            return;
        }
    }

}

