/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.analytics;

import com.comscore.analytics.Core;
import com.comscore.analytics.SessionState;
import com.comscore.utils.Date;

class ae
implements Runnable {
    final /* synthetic */ Core a;

    ae(Core core) {
        this.a = core;
    }

    @Override
    public void run() {
        if (this.a.z()) {
            return;
        }
        if (this.a.Q < 0) {
            this.a.Q = 0;
        }
        if (this.a.R < 0) {
            this.a.R = 0;
        }
        this.a.W = Date.unixTime();
        Core core = this.a;
        ++core.V;
        if (this.a.L != SessionState.ACTIVE_USER) {
            this.a.n();
            return;
        }
        this.a.o();
    }
}

