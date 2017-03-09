/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.analytics;

import com.comscore.analytics.Core;
import com.comscore.applications.KeepAlive;
import com.comscore.utils.ConnectivityChangeReceiver;
import com.comscore.utils.OfflineMeasurementsCache;
import com.comscore.utils.task.TaskExecutor;

class aa
implements Runnable {
    final /* synthetic */ boolean a;
    final /* synthetic */ Core b;

    aa(Core core, boolean bl) {
        this.b = core;
        this.a = bl;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void run() {
        if (this.a && !Core.b(this.b)) {
            Core.a(this.b, true);
            this.b.setErrorHandlingEnabled(Core.c(this.b));
            this.b.reset();
            this.b.getConnectivityReceiver().start();
            this.b.getKeepAlive().start(3000);
            return;
        } else {
            if (this.a || !Core.b(this.b)) return;
            {
                Core.a(this.b, false);
                Core.b(this.b, this.b.ag);
                if (Thread.getDefaultUncaughtExceptionHandler() != this.b.ah) {
                    Thread.setDefaultUncaughtExceptionHandler(this.b.ah);
                }
                this.b.getConnectivityReceiver().stop();
                this.b.getKeepAlive().stop();
                this.b.getOfflineCache().clear();
                this.b.f.removeAllEnqueuedTasks();
                return;
            }
        }
    }
}

