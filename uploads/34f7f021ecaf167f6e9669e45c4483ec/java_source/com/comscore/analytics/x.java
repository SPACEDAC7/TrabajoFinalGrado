/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.analytics;

import com.comscore.analytics.Core;

class x
implements Runnable {
    final /* synthetic */ int a;
    final /* synthetic */ boolean b;
    final /* synthetic */ Core c;

    x(Core core, int n2, boolean bl) {
        this.c = core;
        this.a = n2;
        this.b = bl;
    }

    @Override
    public void run() {
        this.c.a(this.a, this.b);
    }
}

