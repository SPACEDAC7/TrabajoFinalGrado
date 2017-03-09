/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.analytics;

import com.comscore.analytics.Core;

class d
implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ Core b;

    d(Core core, String string2) {
        this.b = core;
        this.a = string2;
    }

    @Override
    public void run() {
        Core.a(this.b, this.a);
    }
}

