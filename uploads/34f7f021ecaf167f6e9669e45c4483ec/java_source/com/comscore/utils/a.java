/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.utils;

import com.comscore.utils.ConnectivityChangeReceiver;

class a
implements Runnable {
    final /* synthetic */ ConnectivityChangeReceiver a;

    a(ConnectivityChangeReceiver connectivityChangeReceiver) {
        this.a = connectivityChangeReceiver;
    }

    @Override
    public void run() {
        this.a.b(false);
    }
}

