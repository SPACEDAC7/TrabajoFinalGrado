/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.os.Trace
 */
package com.google.android.exoplayer.util;

import android.annotation.TargetApi;
import android.os.Trace;
import com.google.android.exoplayer.util.Util;

public final class TraceUtil {
    private TraceUtil() {
    }

    public static void beginSection(String string2) {
        if (Util.SDK_INT >= 18) {
            TraceUtil.beginSectionV18(string2);
        }
    }

    @TargetApi(value=18)
    private static void beginSectionV18(String string2) {
        Trace.beginSection((String)string2);
    }

    public static void endSection() {
        if (Util.SDK_INT >= 18) {
            TraceUtil.endSectionV18();
        }
    }

    @TargetApi(value=18)
    private static void endSectionV18() {
        Trace.endSection();
    }
}

