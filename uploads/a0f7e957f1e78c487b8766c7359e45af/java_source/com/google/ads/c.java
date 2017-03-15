/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.json.JSONArray
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.google.ads;

import com.google.ads.AdSize;
import com.google.ads.internal.h;
import com.google.ads.util.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class c {
    private static final Map<String, AdSize> a = Collections.unmodifiableMap(new HashMap<String, AdSize>(){});
    private final String b;
    private final String c;
    private final List<com.google.ads.a> d;
    private final Integer e;
    private final Integer f;
    private final List<String> g;
    private final List<String> h;
    private final List<String> i;

    private c(String string2, String string3, List<com.google.ads.a> list, Integer n2, Integer n3, List<String> list2, List<String> list3, List<String> list4) {
        a.a(string2);
        this.b = string2;
        this.c = string3;
        this.d = list;
        this.e = n2;
        this.f = n3;
        this.g = list2;
        this.h = list3;
        this.i = list4;
    }

    private static com.google.ads.a a(JSONObject object) throws JSONException {
        String string2 = object.getString("id");
        String string3 = object.optString("allocation_id", null);
        Object object2 = object.getJSONArray("adapters");
        ArrayList<String> arrayList = new ArrayList<String>(object2.length());
        for (int i2 = 0; i2 < object2.length(); ++i2) {
            arrayList.add(object2.getString(i2));
        }
        List<String> list = c.a((JSONObject)object, "imp_urls");
        JSONObject jSONObject = object.optJSONObject("data");
        object = new HashMap(0);
        if (jSONObject != null) {
            object2 = new HashMap(jSONObject.length());
            Iterator iterator = jSONObject.keys();
            do {
                object = object2;
                if (!iterator.hasNext()) break;
                object = (String)iterator.next();
                object2.put(object, jSONObject.getString((String)object));
            } while (true);
        }
        return new com.google.ads.a(string3, string2, (List<String>)arrayList, list, (HashMap<String, String>)object);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static c a(String object) throws JSONException {
        List<String> list;
        Integer n2 = null;
        object = new JSONObject((String)object);
        String string2 = object.getString("qdata");
        String string3 = object.has("ad_type") ? object.getString("ad_type") : null;
        Object object2 = object.getJSONArray("ad_networks");
        ArrayList<com.google.ads.a> arrayList = new ArrayList<com.google.ads.a>(object2.length());
        for (int i2 = 0; i2 < object2.length(); ++i2) {
            arrayList.add(c.a(object2.getJSONObject(i2)));
        }
        Object object3 = object.optJSONObject("settings");
        if (object3 == null) {
            object3 = null;
            object2 = null;
            list = null;
            n2 = null;
            object = null;
            return new c(string2, string3, (List<com.google.ads.a>)arrayList, (Integer)object, n2, (List<String>)object2, list, (List<String>)object3);
        }
        object = object3.has("refresh") ? Integer.valueOf(object3.getInt("refresh")) : null;
        if (object3.has("ad_network_timeout_millis")) {
            n2 = object3.getInt("ad_network_timeout_millis");
        }
        object2 = c.a((JSONObject)object3, "imp_urls");
        list = c.a((JSONObject)object3, "click_urls");
        object3 = c.a((JSONObject)object3, "nofill_urls");
        return new c(string2, string3, (List<com.google.ads.a>)arrayList, (Integer)object, n2, (List<String>)object2, list, (List<String>)object3);
    }

    private static List<String> a(JSONObject jSONObject, String object) throws JSONException {
        if ((jSONObject = jSONObject.optJSONArray((String)object)) != null) {
            object = new ArrayList(jSONObject.length());
            for (int i2 = 0; i2 < jSONObject.length(); ++i2) {
                object.add(jSONObject.getString(i2));
            }
            return object;
        }
        return null;
    }

    public boolean a() {
        if (this.f != null) {
            return true;
        }
        return false;
    }

    public int b() {
        return this.f;
    }

    public String c() {
        return this.b;
    }

    public boolean d() {
        if (this.e != null) {
            return true;
        }
        return false;
    }

    public int e() {
        return this.e;
    }

    public List<com.google.ads.a> f() {
        return this.d;
    }

    public List<String> g() {
        return this.g;
    }

    public List<String> h() {
        return this.h;
    }

    public List<String> i() {
        return this.i;
    }

    public h j() {
        if (this.c == null) {
            return null;
        }
        if ("interstitial".equals(this.c)) {
            return h.a;
        }
        AdSize adSize = a.get(this.c);
        if (adSize != null) {
            return h.a(adSize);
        }
        return null;
    }

}

