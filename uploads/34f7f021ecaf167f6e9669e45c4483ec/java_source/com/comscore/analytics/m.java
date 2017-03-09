/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.analytics;

import com.comscore.analytics.Core;
import com.comscore.utils.Constants;

class m
implements Runnable {
    final /* synthetic */ boolean a;
    final /* synthetic */ Core b;

    m(Core core, boolean bl) {
        this.b = core;
        this.a = bl;
    }

    @Override
    public void run() {
        Constants.DEBUG = this.a;
    }
}

