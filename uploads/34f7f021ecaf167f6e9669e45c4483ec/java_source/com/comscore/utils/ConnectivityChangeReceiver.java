/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.BroadcastReceiver
 *  android.content.Context
 *  android.content.Intent
 *  android.os.Bundle
 *  android.os.SystemClock
 */
package com.comscore.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.SystemClock;
import com.comscore.analytics.Core;
import com.comscore.applications.KeepAlive;
import com.comscore.utils.CSLog;
import com.comscore.utils.Connectivity;
import com.comscore.utils.TransmissionMode;
import com.comscore.utils.Utils;
import com.comscore.utils.a;
import com.comscore.utils.task.TaskExecutor;
import java.util.HashSet;

public class ConnectivityChangeReceiver
extends BroadcastReceiver {
    protected boolean a = false;
    protected boolean b = false;
    protected long c = -1;
    protected HashSet<String> d = null;
    private Runnable e = null;
    private final Core f;

    public ConnectivityChangeReceiver(Core core) {
        this.f = core;
        this.d = new HashSet();
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    protected void a() {
        if (!this.f.isEnabled()) {
            return;
        }
        CSLog.d((Object)this, "onConnectedWifi()");
        this.a(this.b(this.f.getAppContext()));
        if (this.f.getOfflineTransmissionMode() == TransmissionMode.NEVER) return;
        if (this.f.getOfflineTransmissionMode() == TransmissionMode.DISABLED) return;
        if (this.a) return;
        this.a = true;
        this.a(false);
    }

    protected void a(long l2) {
        if (!this.f.isEnabled()) {
            return;
        }
        this.e = new a(this);
        this.f.getTaskExecutor().execute(this.e, l2);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    protected void a(Context context) {
        if (!this.f.isEnabled()) {
            return;
        }
        CSLog.d((Object)this, "onConnectedMobile()");
        this.a("|||cs_3g|||");
        if (this.f.getOfflineTransmissionMode() != TransmissionMode.DEFAULT) {
            if (this.f.getOfflineTransmissionMode() != TransmissionMode.PIGGYBACK) return;
            if (!Connectivity.isDataConnected(context)) return;
        }
        if (this.a) return;
        this.a = true;
        this.a(false);
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void a(String string2) {
        if (!this.f.isEnabled() || !Utils.isNotEmpty(string2) || this.d == null || this.d.contains(string2)) {
            return;
        }
        if (this.d.size() != 0) {
            this.d();
        }
        this.d.add(string2);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    protected void a(boolean bl) {
        if (!this.f.isEnabled()) {
            return;
        }
        if (!this.b) {
            if (this.c >= 0) return;
            this.c = SystemClock.uptimeMillis() + 30000;
            return;
        }
        this.c();
        if (this.c < SystemClock.uptimeMillis() || this.c < 0 || !bl) {
            this.c = SystemClock.uptimeMillis() + 30000;
        }
        this.a(this.c - SystemClock.uptimeMillis());
        CSLog.d((Object)this, "scheduleFlushTask(): Flushing in " + (this.c - SystemClock.uptimeMillis()));
    }

    protected String b(Context context) {
        return Connectivity.getCurrentSSID(context);
    }

    protected void b() {
        if (!this.f.isEnabled()) {
            return;
        }
        CSLog.d((Object)this, "onDisconnected()");
        this.c();
        this.a = false;
        this.c = -1;
    }

    protected void b(boolean bl) {
        synchronized (this) {
            CSLog.d((Object)this, "flushing");
            this.f.flush(bl);
            this.c = -1;
            return;
        }
    }

    protected void c() {
        if (this.e != null) {
            CSLog.d((Object)this, "cancelFlushTask()");
            this.f.getTaskExecutor().removeEnqueuedTask(this.e);
            this.e = null;
        }
    }

    protected void d() {
        if (!this.f.isEnabled()) {
            return;
        }
        this.f.getKeepAlive().reset(3000);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void onReceive(Context context, Intent intent) {
        synchronized (this) {
            if (intent.getExtras() != null) {
                if (Connectivity.isConnectedWiFi(context)) {
                    this.a();
                } else if (Connectivity.isConnectedMobile(context)) {
                    this.a(context);
                } else {
                    this.b();
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
    public void start() {
        synchronized (this) {
            boolean bl = this.f.isEnabled();
            if (bl) {
                this.b = true;
                if (this.a && this.c > 0) {
                    this.a(true);
                }
            }
            return;
        }
    }

    public void stop() {
        synchronized (this) {
            this.b = false;
            this.c();
            return;
        }
    }
}

