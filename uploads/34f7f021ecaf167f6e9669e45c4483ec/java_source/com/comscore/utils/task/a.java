/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.utils.task;

import com.comscore.analytics.Core;
import com.comscore.utils.CSLog;
import com.comscore.utils.Storage;
import java.util.concurrent.atomic.AtomicBoolean;

class a
implements Runnable {
    private AtomicBoolean a;
    private AtomicBoolean b;
    private Runnable c;
    private Core d;
    private long e;
    private long f;
    private long g;
    private boolean h;
    private boolean i;

    a(Runnable runnable, Core core) {
        this(runnable, core, 0);
    }

    a(Runnable runnable, Core core, long l2) {
        this(runnable, core, l2, false, 0);
    }

    /*
     * Enabled aggressive block sorting
     */
    a(Runnable runnable, Core core, long l2, boolean bl, long l3) {
        this.c = runnable;
        this.d = core;
        long l4 = System.currentTimeMillis();
        long l5 = l2 > 0 ? l2 : 0;
        this.e = l5 + l4;
        boolean bl2 = l2 > 0;
        this.i = bl2;
        this.f = System.currentTimeMillis();
        this.h = bl;
        this.g = l3;
        this.a = new AtomicBoolean();
        this.b = new AtomicBoolean();
        this.b.set(false);
        this.a.set(false);
    }

    long a() {
        long l2 = this.e - System.currentTimeMillis();
        if (l2 > 0) {
            return l2;
        }
        return 0;
    }

    long b() {
        return this.f;
    }

    boolean c() {
        return this.a.get();
    }

    boolean d() {
        return this.i;
    }

    boolean e() {
        return this.b.get();
    }

    long f() {
        return this.e;
    }

    boolean g() {
        return this.h;
    }

    long h() {
        return this.g;
    }

    Runnable i() {
        return this.c;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void run() {
        this.a.set(true);
        try {
            this.c.run();
        }
        catch (Exception var1_1) {
            CSLog.e(this.getClass(), "Unexpected error running asynchronous task: ");
            CSLog.printStackTrace(var1_1);
            this.d.getStorage().add("exception_ocurrences", 1);
            this.d.setEnabled(false);
        }
        this.a.set(false);
        this.b.set(true);
    }
}

