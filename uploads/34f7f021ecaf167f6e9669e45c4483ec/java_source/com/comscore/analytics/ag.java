/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.analytics;

import com.comscore.analytics.Core;

class ag
implements Runnable {
    final /* synthetic */ Core a;

    ag(Core core) {
        this.a = core;
    }

    @Override
    public void run() {
        this.a.a();
        this.a.l();
    }
}

