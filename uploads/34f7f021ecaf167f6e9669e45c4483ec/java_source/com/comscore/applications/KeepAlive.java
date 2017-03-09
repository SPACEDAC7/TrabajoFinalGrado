/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.util.Log
 */
package com.comscore.applications;

import android.util.Log;
import com.comscore.analytics.Core;
import com.comscore.applications.EventType;
import com.comscore.utils.OfflineMeasurementsCache;
import com.comscore.utils.Storage;
import com.comscore.utils.task.TaskExecutor;
import java.util.HashMap;

public class KeepAlive
implements Runnable {
    protected final long a;
    protected long b = -1;
    protected long c;
    private Core d;
    private boolean e = false;
    private boolean f = false;

    public KeepAlive(Core core, long l2) {
        this.c = this.a = l2;
        this.d = core;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private long a(Storage object) {
        long l2 = 0;
        object = object.get("lastMeasurementProcessedTimestamp");
        long l3 = l2;
        if (object == null) return l3;
        l3 = l2;
        if (object.length() <= 0) return l3;
        try {
            return Long.parseLong((String)object);
        }
        catch (Exception exception) {
            return 0;
        }
    }

    protected void a() {
        if (!this.d.isEnabled()) {
            return;
        }
        this.d.getTaskExecutor().execute(this, this.b - System.currentTimeMillis(), true, this.a);
        this.f = true;
    }

    public void cancel() {
        Log.d((String)"KeepAlive", (String)"cancel()");
        this.d.getTaskExecutor().removeEnqueuedTask(this);
        this.f = false;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void processKeepAlive(boolean bl) {
        if (!this.d.isEnabled()) {
            return;
        }
        if (!this.d.isKeepAliveEnabled()) return;
        OfflineMeasurementsCache offlineMeasurementsCache = this.d.getOfflineCache();
        long l2 = this.a(this.d.getStorage());
        long l3 = System.currentTimeMillis() - l2;
        Log.d((String)"KeepAlive", (String)("processKeepAlive(" + bl + ") timeSinceLastTransmission=" + (System.currentTimeMillis() - l3) + " currentTimeout=" + this.c));
        if (l2 == 0) return;
        if (l3 <= this.c - 1000) return;
        Log.d((String)"KeepAlive", (String)"Sending Keep-alive");
        if (!bl) {
            this.d.notify(EventType.KEEPALIVE, new HashMap<String, String>(), true);
        } else {
            offlineMeasurementsCache.saveApplicationMeasurement(EventType.KEEPALIVE, null, true);
        }
        this.d.getStorage().set("lastMeasurementProcessedTimestamp", String.valueOf(System.currentTimeMillis()));
    }

    public void reset() {
        this.reset(this.a);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void reset(long l2) {
        if (!this.d.isEnabled()) {
            return;
        }
        this.cancel();
        Log.d((String)"KeepAlive", (String)("reset:" + l2));
        this.b = System.currentTimeMillis() + l2;
        this.c = l2;
        if (!this.e) return;
        this.start(0);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void run() {
        if (!this.d.isEnabled() || !this.f) {
            return;
        }
        Log.d((String)"KeepAlive", (String)"run()");
        this.sendKeepAlive();
    }

    public void sendKeepAlive() {
        this.processKeepAlive(false);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void start(int n2) {
        if (!this.d.isEnabled()) {
            return;
        }
        this.cancel();
        this.e = true;
        Log.d((String)"KeepAlive", (String)("start(" + n2 + ")"));
        if (!this.d.isKeepAliveEnabled()) return;
        long l2 = System.currentTimeMillis();
        if (this.b < l2) {
            this.b = l2 + (long)n2;
        }
        this.a();
    }

    public void stop() {
        Log.d((String)"KeepAlive", (String)"stop");
        this.e = false;
        this.cancel();
        this.processKeepAlive(true);
    }
}

