/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.utils;

import com.comscore.utils.Storage;

class d
implements Runnable {
    final /* synthetic */ Storage a;

    d(Storage storage) {
        this.a = storage;
    }

    @Override
    public void run() {
        this.a.b();
        this.a.c();
    }
}

