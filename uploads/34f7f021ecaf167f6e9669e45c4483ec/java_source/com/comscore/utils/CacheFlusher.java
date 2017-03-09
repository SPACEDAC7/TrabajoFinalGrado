/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Handler
 *  android.os.HandlerThread
 *  android.os.Looper
 *  android.os.SystemClock
 */
package com.comscore.utils;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.SystemClock;
import com.comscore.analytics.Core;
import com.comscore.utils.CSLog;
import com.comscore.utils.Storage;

public class CacheFlusher
implements Runnable {
    protected Core a;
    protected Handler b;
    protected boolean c;
    protected long d = -1;

    public CacheFlusher(Core core) {
        this.a = core;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    protected void a() {
        if (!this.a.getStorage().has("plannedFlushTime").booleanValue()) return;
        try {
            this.d = Long.parseLong(this.a.getStorage().get("plannedFlushTime"), 10);
            return;
        }
        catch (Exception var1_1) {
            return;
        }
    }

    protected void a(long l2) {
        this.d = l2;
        this.a.getStorage().set("plannedFlushTime", Long.toString(l2, 10));
    }

    protected void b() {
        if (this.d < 0) {
            this.a(SystemClock.uptimeMillis() + this.a.getCacheFlushingInterval() * 1000);
        }
        this.b.postAtTime((Runnable)this, this.d);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    protected void c() {
        synchronized (this) {
            long l2 = this.a.getCacheFlushingInterval() > 0 ? SystemClock.uptimeMillis() + this.a.getCacheFlushingInterval() * 1000 : -1;
            this.a(l2);
            if (this.b != null) {
                this.b.removeCallbacks((Runnable)this);
                this.b();
            }
            return;
        }
    }

    protected void d() {
        HandlerThread handlerThread = new HandlerThread("CacheFlusher");
        handlerThread.start();
        this.b = new Handler(handlerThread.getLooper());
        this.a();
    }

    protected void e() {
        if (this.b != null) {
            this.b.getLooper().quit();
            this.b = null;
        }
    }

    @Override
    public void run() {
        synchronized (this) {
            CSLog.d(this, "run(): Flushing the cache");
            this.a.flush(false);
            this.a(-1);
            this.b();
            return;
        }
    }

    public void start() {
        synchronized (this) {
            CSLog.d(this, "start()");
            this.c = true;
            if (this.b == null && this.a.getCacheFlushingInterval() > 0 && this.a.getCustomerC2() != null) {
                this.d();
                this.b();
            }
            return;
        }
    }

    public void stop() {
        synchronized (this) {
            CSLog.d(this, "stop()");
            this.c = false;
            this.e();
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void update() {
        synchronized (this) {
            if (this.a.getCacheFlushingInterval() > 0 && this.a.getCustomerC2() != null) {
                if (this.b == null && this.c) {
                    this.a(-1);
                    this.start();
                } else if (this.b != null) {
                    this.c();
                }
            } else {
                this.a(-1);
                this.e();
            }
            return;
        }
    }
}

