/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.metrics;

import com.comscore.utils.TransmissionMode;

class a {
    static final /* synthetic */ int[] a;

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    static {
        a = new int[TransmissionMode.values().length];
        try {
            a.a[TransmissionMode.NEVER.ordinal()] = 1;
        }
        catch (NoSuchFieldError var0_4) {}
        try {
            a.a[TransmissionMode.DISABLED.ordinal()] = 2;
        }
        catch (NoSuchFieldError var0_3) {}
        try {
            a.a[TransmissionMode.DEFAULT.ordinal()] = 3;
        }
        catch (NoSuchFieldError var0_2) {}
        try {
            a.a[TransmissionMode.WIFIONLY.ordinal()] = 4;
        }
        catch (NoSuchFieldError var0_1) {}
        try {
            a.a[TransmissionMode.PIGGYBACK.ordinal()] = 5;
            return;
        }
        catch (NoSuchFieldError var0) {
            return;
        }
    }
}

