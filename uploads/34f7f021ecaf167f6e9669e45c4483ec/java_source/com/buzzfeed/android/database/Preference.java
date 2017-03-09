/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.buzzfeed.android.database;

import com.buzzfeed.toolkit.util.LogUtil;
import org.json.JSONException;
import org.json.JSONObject;

public class Preference
implements Cloneable {
    public static final String INDEX_KEY = "keyIdx";
    public static final String KEY = "key";
    public static final String TABLE_NAME = "preference";
    private static final String TAG = Preference.class.getSimpleName();
    public static final String VALUE = "value";
    private String key;
    private JSONObject value;

    public Preference() {
    }

    public Preference(String string2, String string3) {
        this.key = string2;
        this.value = this.valueStringToJsonObject(string3);
    }

    public Preference(String string2, JSONObject jSONObject) {
        this.key = string2;
        this.value = jSONObject;
    }

    private JSONObject valueStringToJsonObject(String string2) {
        try {
            JSONObject jSONObject = new JSONObject(string2);
            return jSONObject;
        }
        catch (JSONException var2_3) {
            LogUtil.d(TAG, "Error converting preference value into JSONObject: value=" + string2 + ", error=" + var2_3.getMessage());
            return null;
        }
    }

    public Preference clone() {
        Preference preference = new Preference();
        preference.key = this.key;
        preference.value = this.value;
        return preference;
    }

    public String getKey() {
        return this.key;
    }

    public JSONObject getValue() {
        return this.value;
    }

    public String getValueAsString() {
        return this.value.toString();
    }

    public Preference setKey(String string2) {
        this.key = string2;
        return this;
    }

    public Preference setValue(String string2) {
        this.value = this.valueStringToJsonObject(string2);
        return this;
    }

    public Preference setValue(JSONObject jSONObject) {
        this.value = jSONObject;
        return this;
    }

    public String toString() {
        return "Preference [key=" + this.key + ", value=" + (Object)this.value + "]";
    }
}

