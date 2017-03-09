/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.load.engine.bitmap_recycle;

import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

class PrettyPrintTreeMap<K, V>
extends TreeMap<K, V> {
    PrettyPrintTreeMap() {
    }

    @Override
    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("( ");
        for (Map.Entry entry : this.entrySet()) {
            stringBuilder.append('{').append(entry.getKey()).append(':').append(entry.getValue()).append("}, ");
        }
        if (!this.isEmpty()) {
            stringBuilder.replace(stringBuilder.length() - 2, stringBuilder.length(), "");
        }
        return stringBuilder.append(" )").toString();
    }
}

