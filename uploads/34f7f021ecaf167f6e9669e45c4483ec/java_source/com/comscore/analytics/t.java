/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.analytics;

import com.comscore.analytics.Core;
import com.comscore.utils.CacheFlusher;

class t
implements Runnable {
    final /* synthetic */ long a;
    final /* synthetic */ Core b;

    t(Core core, long l2) {
        this.b = core;
        this.a = l2;
    }

    @Override
    public void run() {
        this.b.af = this.a;
        if (this.b.d != null) {
            this.b.d.update();
        }
    }
}

