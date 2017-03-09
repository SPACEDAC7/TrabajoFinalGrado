/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.analytics;

import com.comscore.analytics.Core;
import java.util.concurrent.atomic.AtomicInteger;

class ad
implements Runnable {
    final /* synthetic */ Core a;

    ad(Core core) {
        this.a = core;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void run() {
        if (this.a.z() || this.a.z.get() <= 0) {
            return;
        }
        this.a.z.getAndDecrement();
        this.a.n();
    }
}

