/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.analytics;

import com.comscore.analytics.ApplicationState;
import com.comscore.analytics.SessionState;

class ab {
    static final /* synthetic */ int[] a;
    static final /* synthetic */ int[] b;

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    static {
        b = new int[SessionState.values().length];
        try {
            ab.b[SessionState.ACTIVE_USER.ordinal()] = 1;
        }
        catch (NoSuchFieldError var0_6) {}
        try {
            ab.b[SessionState.USER.ordinal()] = 2;
        }
        catch (NoSuchFieldError var0_5) {}
        try {
            ab.b[SessionState.APPLICATION.ordinal()] = 3;
        }
        catch (NoSuchFieldError var0_4) {}
        try {
            ab.b[SessionState.INACTIVE.ordinal()] = 4;
        }
        catch (NoSuchFieldError var0_3) {}
        a = new int[ApplicationState.values().length];
        try {
            ab.a[ApplicationState.INACTIVE.ordinal()] = 1;
        }
        catch (NoSuchFieldError var0_2) {}
        try {
            ab.a[ApplicationState.BACKGROUND_UX_ACTIVE.ordinal()] = 2;
        }
        catch (NoSuchFieldError var0_1) {}
        try {
            ab.a[ApplicationState.FOREGROUND.ordinal()] = 3;
            return;
        }
        catch (NoSuchFieldError var0) {
            return;
        }
    }
}

