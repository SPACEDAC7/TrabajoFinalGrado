/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.toolkit.util;

import java.util.Formatter;
import java.util.Locale;

public class DurationFormatUtils {
    private static final Formatter FORMATTER;
    private static final StringBuilder FORMAT_BUILDER;
    private static final String FORMAT_TIME_DURATION_LONG = "%d:%02d:%02d";
    private static final String FORMAT_TIME_DURATION_MEDIUM = "%02d:%02d";
    private static final String FORMAT_TIME_DURATION_SHORT = "%d:%02d";

    static {
        FORMAT_BUILDER = new StringBuilder();
        FORMATTER = new Formatter(FORMAT_BUILDER, Locale.getDefault());
    }

    private DurationFormatUtils() {
    }

    public static String formatMs(long l2) {
        if (l2 < 0) {
            return "00:00";
        }
        long l3 = l2 % 60000 / 1000;
        long l4 = l2 % 3600000 / 60000;
        l2 = l2 % 86400000 / 3600000;
        FORMAT_BUILDER.setLength(0);
        if (l2 > 0) {
            return FORMATTER.format("%d:%02d:%02d", l2, l4, l3).toString();
        }
        if (l4 >= 10) {
            return FORMATTER.format("%02d:%02d", l4, l3).toString();
        }
        return FORMATTER.format("%d:%02d", l4, l3).toString();
    }
}

