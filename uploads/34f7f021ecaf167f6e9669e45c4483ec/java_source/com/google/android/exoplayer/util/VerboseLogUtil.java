/*
 * Decompiled with CFR 0_115.
 */
package com.google.android.exoplayer.util;

public final class VerboseLogUtil {
    private static volatile boolean enableAllTags;
    private static volatile String[] enabledTags;

    private VerboseLogUtil() {
    }

    public static boolean areAllTagsEnabled() {
        return enableAllTags;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public static boolean isTagEnabled(String string2) {
        if (enableAllTags) {
            return true;
        }
        String[] arrstring = enabledTags;
        if (arrstring == null) return false;
        if (arrstring.length == 0) {
            return false;
        }
        int n2 = 0;
        while (n2 < arrstring.length) {
            if (arrstring[n2].equals(string2)) return true;
            ++n2;
        }
        return false;
    }

    public static void setEnableAllTags(boolean bl) {
        enableAllTags = bl;
    }

    public static /* varargs */ void setEnabledTags(String ... arrstring) {
        enabledTags = arrstring;
        enableAllTags = false;
    }
}

