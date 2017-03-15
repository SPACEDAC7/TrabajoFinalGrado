/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.SystemClock
 */
package com.google.ads.internal;

import android.os.SystemClock;
import com.google.ads.g;
import com.google.ads.util.b;
import java.util.Iterator;
import java.util.LinkedList;

public class g {
    private static long f = 0;
    private static long g = 0;
    private static long h = 0;
    private static long i = 0;
    private static long j = -1;
    private final LinkedList<Long> a = new LinkedList();
    private long b;
    private long c;
    private long d;
    private final LinkedList<Long> e = new LinkedList();
    private boolean k = false;
    private boolean l = false;
    private String m;
    private long n;
    private final LinkedList<Long> o = new LinkedList();
    private final LinkedList<g.a> p = new LinkedList();

    public g() {
        this.a();
    }

    public static long E() {
        if (j == -1) {
            j = SystemClock.elapsedRealtime();
            return 0;
        }
        return SystemClock.elapsedRealtime() - j;
    }

    protected boolean A() {
        return this.l;
    }

    protected void B() {
        b.d("Interstitial no fill.");
        this.l = true;
    }

    public void C() {
        b.d("Landing page dismissed.");
        this.e.add(SystemClock.elapsedRealtime());
    }

    protected String D() {
        return this.m;
    }

    protected void a() {
        synchronized (this) {
            this.a.clear();
            this.b = 0;
            this.c = 0;
            this.d = 0;
            this.e.clear();
            this.n = -1;
            this.o.clear();
            this.p.clear();
            this.k = false;
            this.l = false;
            return;
        }
    }

    public void a(g.a a2) {
        synchronized (this) {
            this.o.add(SystemClock.elapsedRealtime() - this.n);
            this.p.add(a2);
            return;
        }
    }

    public void a(String string2) {
        b.d("Prior impression ticket = " + string2);
        this.m = string2;
    }

    public void b() {
        synchronized (this) {
            this.o.clear();
            this.p.clear();
            return;
        }
    }

    public void c() {
        synchronized (this) {
            this.n = SystemClock.elapsedRealtime();
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public String d() {
        synchronized (this) {
            StringBuilder stringBuilder = new StringBuilder();
            Iterator<Long> iterator = this.o.iterator();
            while (iterator.hasNext()) {
                long l2 = iterator.next();
                if (stringBuilder.length() > 0) {
                    stringBuilder.append(",");
                }
                stringBuilder.append(l2);
            }
            return stringBuilder.toString();
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public String e() {
        synchronized (this) {
            StringBuilder stringBuilder = new StringBuilder();
            Iterator<g.a> iterator = this.p.iterator();
            while (iterator.hasNext()) {
                g.a a2 = iterator.next();
                if (stringBuilder.length() > 0) {
                    stringBuilder.append(",");
                }
                stringBuilder.append(a2.ordinal());
            }
            return stringBuilder.toString();
        }
    }

    protected void f() {
        b.d("Ad clicked.");
        this.a.add(SystemClock.elapsedRealtime());
    }

    protected void g() {
        b.d("Ad request loaded.");
        this.b = SystemClock.elapsedRealtime();
    }

    protected void h() {
        synchronized (this) {
            b.d("Ad request before rendering.");
            this.c = SystemClock.elapsedRealtime();
            return;
        }
    }

    protected void i() {
        b.d("Ad request started.");
        this.d = SystemClock.elapsedRealtime();
        ++f;
    }

    protected long j() {
        if (this.a.size() != this.e.size()) {
            return -1;
        }
        return this.a.size();
    }

    protected String k() {
        if (this.a.isEmpty() || this.a.size() != this.e.size()) {
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder();
        for (int i2 = 0; i2 < this.a.size(); ++i2) {
            if (i2 != 0) {
                stringBuilder.append(",");
            }
            stringBuilder.append(Long.toString(this.e.get(i2) - this.a.get(i2)));
        }
        return stringBuilder.toString();
    }

    protected String l() {
        if (this.a.isEmpty()) {
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder();
        for (int i2 = 0; i2 < this.a.size(); ++i2) {
            if (i2 != 0) {
                stringBuilder.append(",");
            }
            stringBuilder.append(Long.toString(this.a.get(i2) - this.b));
        }
        return stringBuilder.toString();
    }

    protected long m() {
        return this.b - this.d;
    }

    protected long n() {
        synchronized (this) {
            long l2 = this.c;
            long l3 = this.d;
            return l2 - l3;
        }
    }

    protected long o() {
        return f;
    }

    protected long p() {
        synchronized (this) {
            long l2 = g;
            return l2;
        }
    }

    protected void q() {
        synchronized (this) {
            b.d("Ad request network error");
            ++g;
            return;
        }
    }

    protected void r() {
        synchronized (this) {
            g = 0;
            return;
        }
    }

    protected long s() {
        synchronized (this) {
            long l2 = h;
            return l2;
        }
    }

    protected void t() {
        synchronized (this) {
            ++h;
            return;
        }
    }

    protected void u() {
        synchronized (this) {
            h = 0;
            return;
        }
    }

    protected long v() {
        synchronized (this) {
            long l2 = i;
            return l2;
        }
    }

    protected void w() {
        synchronized (this) {
            ++i;
            return;
        }
    }

    protected void x() {
        synchronized (this) {
            i = 0;
            return;
        }
    }

    protected boolean y() {
        return this.k;
    }

    protected void z() {
        b.d("Interstitial network error.");
        this.k = true;
    }
}

