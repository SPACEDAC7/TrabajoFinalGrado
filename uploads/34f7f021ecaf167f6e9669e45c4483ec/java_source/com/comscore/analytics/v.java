/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.analytics;

import com.comscore.analytics.Core;
import com.comscore.utils.OfflineMeasurementsCache;

class v
implements Runnable {
    final /* synthetic */ Core a;

    v(Core core) {
        this.a = core;
    }

    @Override
    public void run() {
        this.a.a.flush();
    }
}

