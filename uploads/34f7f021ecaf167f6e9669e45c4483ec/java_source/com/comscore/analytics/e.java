/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.analytics;

import com.comscore.analytics.Core;

class e
implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ Core b;

    e(Core core, String string2) {
        this.b = core;
        this.a = string2;
    }

    @Override
    public void run() {
        Core.b(this.b, this.a);
    }
}

