/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.analytics;

import com.comscore.analytics.Core;

class k
implements Runnable {
    final /* synthetic */ boolean a;
    final /* synthetic */ Core b;

    k(Core core, boolean bl) {
        this.b = core;
        this.a = bl;
    }

    @Override
    public void run() {
        if (this.b.isSecure() != this.a) {
            this.b.ai = this.a;
        }
    }
}

