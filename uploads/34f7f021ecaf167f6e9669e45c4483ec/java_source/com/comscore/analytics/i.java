/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.analytics;

import com.comscore.analytics.Core;
import com.comscore.utils.TransmissionMode;

class i
implements Runnable {
    final /* synthetic */ TransmissionMode a;
    final /* synthetic */ Core b;

    i(Core core, TransmissionMode transmissionMode) {
        this.b = core;
        this.a = transmissionMode;
    }

    @Override
    public void run() {
        Core.a(this.b, this.a);
    }
}

