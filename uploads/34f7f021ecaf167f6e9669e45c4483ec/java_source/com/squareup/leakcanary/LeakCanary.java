/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Application
 *  android.content.Context
 *  com.squareup.leakcanary.RefWatcher
 */
package com.squareup.leakcanary;

import android.app.Application;
import android.content.Context;
import com.squareup.leakcanary.RefWatcher;

public final class LeakCanary {
    private LeakCanary() {
        throw new AssertionError();
    }

    public static RefWatcher install(Application application) {
        return RefWatcher.DISABLED;
    }

    public static boolean isInAnalyzerProcess(Context context) {
        return false;
    }
}

