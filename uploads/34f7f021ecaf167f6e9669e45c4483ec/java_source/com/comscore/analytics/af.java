/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.analytics;

import com.comscore.analytics.ApplicationState;
import com.comscore.analytics.Core;
import com.comscore.analytics.SessionState;

class af
implements Runnable {
    final /* synthetic */ ApplicationState a;
    final /* synthetic */ ApplicationState b;
    final /* synthetic */ SessionState c;
    final /* synthetic */ SessionState d;
    final /* synthetic */ Core e;

    af(Core core, ApplicationState applicationState, ApplicationState applicationState2, SessionState sessionState, SessionState sessionState2) {
        this.e = core;
        this.a = applicationState;
        this.b = applicationState2;
        this.c = sessionState;
        this.d = sessionState2;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void run() {
        boolean bl;
        boolean bl2 = true;
        if (this.a != this.b) {
            this.e.a(this.e.y);
            this.e.b(this.b);
            this.e.s();
            this.e.y = this.b;
            bl = true;
        } else {
            bl = false;
        }
        if (this.c != this.d) {
            this.e.a(this.e.L);
            this.e.b(this.d);
            this.e.t();
            this.e.L = this.d;
        } else {
            bl2 = false;
        }
        if (!bl) return;
        this.e.a(this.a, this.e.y);
        if (bl2) {
            this.e.a(this.c, this.e.L);
        }
    }
}

