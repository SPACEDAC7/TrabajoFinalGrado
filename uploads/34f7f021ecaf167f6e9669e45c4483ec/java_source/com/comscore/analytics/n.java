/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.analytics;

import com.comscore.analytics.Core;

class n
implements Runnable {
    final /* synthetic */ boolean a;
    final /* synthetic */ Core b;

    n(Core core, boolean bl) {
        this.b = core;
        this.a = bl;
    }

    @Override
    public void run() {
        this.b.v = this.a;
    }
}

