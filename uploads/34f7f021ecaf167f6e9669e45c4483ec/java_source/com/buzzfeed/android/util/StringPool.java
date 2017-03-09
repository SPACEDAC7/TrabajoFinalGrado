/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.android.util;

public final class StringPool {
    private final String[] pool = new String[512];

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private static boolean contentEquals(String string2, char[] arrc, int n2, int n3) {
        if (string2.length() != n3) {
            return false;
        }
        int n4 = 0;
        while (n4 < n3) {
            if (arrc[n2 + n4] != string2.charAt(n4)) return false;
            ++n4;
        }
        return true;
    }

    public String get(char[] object, int n2, int n3) {
        int n4;
        int n5 = 0;
        for (n4 = n2; n4 < n2 + n3; ++n4) {
            n5 = n5 * 31 + object[n4];
        }
        n4 = n5 ^ (n5 >>> 20 ^ n5 >>> 12);
        String string2 = this.pool[n4 = (n4 ^ (n4 >>> 7 ^ n4 >>> 4)) & this.pool.length - 1];
        if (string2 != null && StringPool.contentEquals(string2, (char[])object, n2, n3)) {
            return string2;
        }
        this.pool[n4] = object = new String((char[])object, n2, n3);
        return object;
    }
}

