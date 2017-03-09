/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.analytics;

import com.comscore.analytics.Core;

class g
implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ String b;
    final /* synthetic */ Core c;

    g(Core core, String string2, String string3) {
        this.c = core;
        this.a = string2;
        this.b = string3;
    }

    @Override
    public void run() {
        Core.a(this.c, this.a, this.b);
    }
}

