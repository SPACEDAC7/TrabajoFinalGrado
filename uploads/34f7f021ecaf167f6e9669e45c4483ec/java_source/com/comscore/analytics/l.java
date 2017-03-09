/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.analytics;

import com.comscore.analytics.Core;
import java.util.concurrent.atomic.AtomicInteger;

class l
implements Runnable {
    final /* synthetic */ Core a;

    l(Core core) {
        this.a = core;
    }

    @Override
    public void run() {
        if (this.a.z()) {
            return;
        }
        if (this.a.Q < 0) {
            this.a.Q = 0;
        }
        this.a.A.getAndIncrement();
        this.a.n();
    }
}

