/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.streaming;

import java.util.Map;
import java.util.Set;

public class StreamSenseUtils {
    public static void filterMap(Map<String, String> map, Set<String> set) {
        for (String string2 : map.keySet()) {
            if (set.contains(string2)) continue;
            map.remove(string2);
        }
    }
}

