/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.toolkit.util;

import java.util.Arrays;

public class ObjectUtil {
    public static <T> boolean areObjectsEqual(T t2, T t3) {
        if (t2 == null) {
            if (t3 == null) {
                return true;
            }
            return false;
        }
        return t2.equals(t3);
    }

    public static /* varargs */ int hash(Object ... arrobject) {
        return Arrays.hashCode(arrobject);
    }
}

