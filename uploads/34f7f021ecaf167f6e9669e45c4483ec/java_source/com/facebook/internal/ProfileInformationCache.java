/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.json.JSONObject
 */
package com.facebook.internal;

import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

class ProfileInformationCache {
    private static final ConcurrentHashMap<String, JSONObject> infoCache = new ConcurrentHashMap();

    ProfileInformationCache() {
    }

    public static JSONObject getProfileInformation(String string2) {
        return infoCache.get(string2);
    }

    public static void putProfileInformation(String string2, JSONObject jSONObject) {
        infoCache.put(string2, jSONObject);
    }
}

