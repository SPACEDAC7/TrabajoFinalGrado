/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.analytics;

import com.comscore.analytics.Core;

class y
implements Runnable {
    final /* synthetic */ Core a;

    y(Core core) {
        this.a = core;
    }

    @Override
    public void run() {
        this.a.update();
    }
}

