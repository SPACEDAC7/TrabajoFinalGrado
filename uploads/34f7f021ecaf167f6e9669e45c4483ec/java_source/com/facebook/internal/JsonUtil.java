/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.SuppressLint
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.facebook.internal;

import android.annotation.SuppressLint;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

class JsonUtil {
    JsonUtil() {
    }

    static void jsonObjectClear(JSONObject object) {
        object = object.keys();
        while (object.hasNext()) {
            object.next();
            object.remove();
        }
    }

    static boolean jsonObjectContainsValue(JSONObject jSONObject, Object object) {
        Iterator iterator = jSONObject.keys();
        while (iterator.hasNext()) {
            Object object2 = jSONObject.opt((String)iterator.next());
            if (object2 == null || !object2.equals(object)) continue;
            return true;
        }
        return false;
    }

    static Set<Map.Entry<String, Object>> jsonObjectEntrySet(JSONObject jSONObject) {
        HashSet<Map.Entry<String, Object>> hashSet = new HashSet<Map.Entry<String, Object>>();
        Iterator iterator = jSONObject.keys();
        while (iterator.hasNext()) {
            String string2 = (String)iterator.next();
            hashSet.add(new JSONObjectEntry(string2, jSONObject.opt(string2)));
        }
        return hashSet;
    }

    static Set<String> jsonObjectKeySet(JSONObject object) {
        HashSet<String> hashSet = new HashSet<String>();
        object = object.keys();
        while (object.hasNext()) {
            hashSet.add((String)object.next());
        }
        return hashSet;
    }

    static void jsonObjectPutAll(JSONObject jSONObject, Map<String, Object> object) {
        for (Map.Entry entry : object.entrySet()) {
            try {
                jSONObject.putOpt((String)entry.getKey(), entry.getValue());
                continue;
            }
            catch (JSONException var0_1) {
                throw new IllegalArgumentException((Throwable)var0_1);
            }
        }
    }

    static Collection<Object> jsonObjectValues(JSONObject jSONObject) {
        ArrayList<Object> arrayList = new ArrayList<Object>();
        Iterator iterator = jSONObject.keys();
        while (iterator.hasNext()) {
            arrayList.add(jSONObject.opt((String)iterator.next()));
        }
        return arrayList;
    }

    private static final class JSONObjectEntry
    implements Map.Entry<String, Object> {
        private final String key;
        private final Object value;

        JSONObjectEntry(String string2, Object object) {
            this.key = string2;
            this.value = object;
        }

        @SuppressLint(value={"FieldGetter"})
        @Override
        public String getKey() {
            return this.key;
        }

        @Override
        public Object getValue() {
            return this.value;
        }

        @Override
        public Object setValue(Object object) {
            throw new UnsupportedOperationException("JSONObjectEntry is immutable");
        }
    }

}

