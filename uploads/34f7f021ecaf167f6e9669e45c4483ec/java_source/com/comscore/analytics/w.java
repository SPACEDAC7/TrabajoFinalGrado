/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.analytics;

import com.comscore.analytics.Core;
import java.util.concurrent.atomic.AtomicInteger;

class w
implements Runnable {
    final /* synthetic */ Core a;

    w(Core core) {
        this.a = core;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void run() {
        if (this.a.z() || this.a.A.get() <= 0) {
            return;
        }
        this.a.A.getAndDecrement();
        this.a.n();
    }
}

