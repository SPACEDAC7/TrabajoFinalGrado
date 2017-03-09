/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.analytics;

import com.comscore.analytics.Core;

class a
implements Runnable {
    final /* synthetic */ Core a;

    a(Core core) {
        this.a = core;
    }

    @Override
    public void run() {
        Core.a(this.a).resetVisitorId();
    }
}

