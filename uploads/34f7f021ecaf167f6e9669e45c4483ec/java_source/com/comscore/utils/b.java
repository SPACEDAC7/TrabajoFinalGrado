/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.utils;

import java.io.File;
import java.io.FilenameFilter;

final class b
implements FilenameFilter {
    b() {
    }

    @Override
    public boolean accept(File file, String string2) {
        if (string2.startsWith("cs_cache_")) {
            return true;
        }
        return false;
    }
}

