/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.analytics;

import com.comscore.analytics.Core;
import com.comscore.utils.OfflineMeasurementsCache;

class o
implements Runnable {
    final /* synthetic */ int a;
    final /* synthetic */ Core b;

    o(Core core, int n2) {
        this.b = core;
        this.a = n2;
    }

    @Override
    public void run() {
        this.b.a.setCacheMaxMeasurements(this.a);
    }
}
