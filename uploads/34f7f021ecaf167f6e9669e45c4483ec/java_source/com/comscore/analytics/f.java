/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.analytics;

import com.comscore.analytics.Core;
import com.comscore.utils.Utils;
import java.util.HashMap;
import java.util.Map;

class f
implements Runnable {
    final /* synthetic */ HashMap a;
    final /* synthetic */ Core b;

    f(Core core, HashMap hashMap) {
        this.b = core;
        this.a = hashMap;
    }

    @Override
    public void run() {
        this.b.ac.putAll(Utils.mapOfStrings(this.a));
    }
}

