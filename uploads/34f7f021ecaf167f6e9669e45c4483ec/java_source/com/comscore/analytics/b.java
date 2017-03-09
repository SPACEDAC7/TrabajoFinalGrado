/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.analytics;

import com.comscore.analytics.Core;
import com.comscore.utils.OfflineMeasurementsCache;

class b
implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ Core b;

    b(Core core, String string2) {
        this.b = core;
        this.a = string2;
    }

    @Override
    public void run() {
        this.b.a.setUrl(this.a);
    }
}

