/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.analytics;

import com.comscore.analytics.Core;

class u
implements Runnable {
    final /* synthetic */ String[] a;
    final /* synthetic */ Core b;

    u(Core core, String[] arrstring) {
        this.b = core;
        this.a = arrstring;
    }

    @Override
    public void run() {
        this.b.al = this.a;
    }
}

