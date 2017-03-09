/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.analytics;

import com.comscore.analytics.Core;

class h
implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ Core b;

    h(Core core, String string2) {
        this.b = core;
        this.a = string2;
    }

    @Override
    public void run() {
        Core.c(this.b, this.a);
    }
}

