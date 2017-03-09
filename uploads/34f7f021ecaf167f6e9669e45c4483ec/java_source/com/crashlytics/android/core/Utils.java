/*
 * Decompiled with CFR 0_115.
 */
package com.crashlytics.android.core;

import java.io.File;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.Comparator;

final class Utils {
    private Utils() {
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static void capFileCount(File arrfile, FilenameFilter object, int n2, Comparator<File> comparator) {
        if ((arrfile = arrfile.listFiles((FilenameFilter)object)) == null || arrfile.length <= n2) return;
        Arrays.sort(arrfile, comparator);
        int n3 = arrfile.length;
        int n4 = arrfile.length;
        int n5 = 0;
        while (n5 < n4) {
            object = arrfile[n5];
            if (n3 <= n2) {
                return;
            }
            object.delete();
            --n3;
            ++n5;
        }
    }
}

