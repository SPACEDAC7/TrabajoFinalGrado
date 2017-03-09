/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.analytics;

import com.comscore.analytics.Core;
import java.util.concurrent.atomic.AtomicInteger;

class ac
implements Runnable {
    final /* synthetic */ Core a;

    ac(Core core) {
        this.a = core;
    }

    @Override
    public void run() {
        if (this.a.z()) {
            return;
        }
        this.a.z.getAndIncrement();
        this.a.n();
    }
}

