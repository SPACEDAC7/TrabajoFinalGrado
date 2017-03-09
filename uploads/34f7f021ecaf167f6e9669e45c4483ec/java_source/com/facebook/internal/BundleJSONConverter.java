/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Bundle
 *  org.json.JSONArray
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.facebook.internal;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class BundleJSONConverter {
    private static final Map<Class<?>, Setter> SETTERS = new HashMap();

    static {
        SETTERS.put(Boolean.class, ()new Setter(){

            @Override
            public void setOnBundle(Bundle bundle, String string2, Object object) throws JSONException {
                bundle.putBoolean(string2, ((Boolean)object).booleanValue());
            }

            @Override
            public void setOnJSON(JSONObject jSONObject, String string2, Object object) throws JSONException {
                jSONObject.put(string2, object);
            }
        });
        SETTERS.put(Integer.class, ()new Setter(){

            @Override
            public void setOnBundle(Bundle bundle, String string2, Object object) throws JSONException {
                bundle.putInt(string2, ((Integer)object).intValue());
            }

            @Override
            public void setOnJSON(JSONObject jSONObject, String string2, Object object) throws JSONException {
                jSONObject.put(string2, object);
            }
        });
        SETTERS.put(Long.class, ()new Setter(){

            @Override
            public void setOnBundle(Bundle bundle, String string2, Object object) throws JSONException {
                bundle.putLong(string2, ((Long)object).longValue());
            }

            @Override
            public void setOnJSON(JSONObject jSONObject, String string2, Object object) throws JSONException {
                jSONObject.put(string2, object);
            }
        });
        SETTERS.put(Double.class, ()new Setter(){

            @Override
            public void setOnBundle(Bundle bundle, String string2, Object object) throws JSONException {
                bundle.putDouble(string2, ((Double)object).doubleValue());
            }

            @Override
            public void setOnJSON(JSONObject jSONObject, String string2, Object object) throws JSONException {
                jSONObject.put(string2, object);
            }
        });
        SETTERS.put(String.class, ()new Setter(){

            @Override
            public void setOnBundle(Bundle bundle, String string2, Object object) throws JSONException {
                bundle.putString(string2, (String)object);
            }

            @Override
            public void setOnJSON(JSONObject jSONObject, String string2, Object object) throws JSONException {
                jSONObject.put(string2, object);
            }
        });
        SETTERS.put(String[].class, ()new Setter(){

            @Override
            public void setOnBundle(Bundle bundle, String string2, Object object) throws JSONException {
                throw new IllegalArgumentException("Unexpected type from JSON");
            }

            @Override
            public void setOnJSON(JSONObject jSONObject, String string2, Object arrstring) throws JSONException {
                JSONArray jSONArray = new JSONArray();
                arrstring = arrstring;
                int n2 = arrstring.length;
                for (int i2 = 0; i2 < n2; ++i2) {
                    jSONArray.put((Object)arrstring[i2]);
                }
                jSONObject.put(string2, (Object)jSONArray);
            }
        });
        SETTERS.put(JSONArray.class, ()new Setter(){

            @Override
            public void setOnBundle(Bundle bundle, String string2, Object object) throws JSONException {
                object = (JSONArray)object;
                ArrayList<String> arrayList = new ArrayList<String>();
                if (object.length() == 0) {
                    bundle.putStringArrayList(string2, arrayList);
                    return;
                }
                for (int i2 = 0; i2 < object.length(); ++i2) {
                    Object object2 = object.get(i2);
                    if (object2 instanceof String) {
                        arrayList.add((String)object2);
                        continue;
                    }
                    throw new IllegalArgumentException("Unexpected type in an array: " + object2.getClass());
                }
                bundle.putStringArrayList(string2, arrayList);
            }

            @Override
            public void setOnJSON(JSONObject jSONObject, String string2, Object object) throws JSONException {
                throw new IllegalArgumentException("JSONArray's are not supported in bundles.");
            }
        });
    }

    public static Bundle convertToBundle(JSONObject jSONObject) throws JSONException {
        Bundle bundle = new Bundle();
        Iterator iterator = jSONObject.keys();
        while (iterator.hasNext()) {
            String string2 = (String)iterator.next();
            Object object = jSONObject.get(string2);
            if (object == null || object == JSONObject.NULL) continue;
            if (object instanceof JSONObject) {
                bundle.putBundle(string2, BundleJSONConverter.convertToBundle((JSONObject)object));
                continue;
            }
            Setter setter = SETTERS.get(object.getClass());
            if (setter == null) {
                throw new IllegalArgumentException("Unsupported type: " + object.getClass());
            }
            setter.setOnBundle(bundle, string2, object);
        }
        return bundle;
    }

    public static JSONObject convertToJSON(Bundle bundle) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        for (String string2 : bundle.keySet()) {
            Object object;
            Iterator iterator = bundle.get(string2);
            if (iterator == null) continue;
            if (iterator instanceof List) {
                object = new JSONArray();
                iterator = ((List)((Object)iterator)).iterator();
                while (iterator.hasNext()) {
                    object.put((Object)((String)iterator.next()));
                }
                jSONObject.put(string2, object);
                continue;
            }
            if (iterator instanceof Bundle) {
                jSONObject.put(string2, (Object)BundleJSONConverter.convertToJSON((Bundle)iterator));
                continue;
            }
            object = SETTERS.get(iterator.getClass());
            if (object == null) {
                throw new IllegalArgumentException("Unsupported type: " + iterator.getClass());
            }
            object.setOnJSON(jSONObject, string2, iterator);
        }
        return jSONObject;
    }

    public static interface Setter {
        public void setOnBundle(Bundle var1, String var2, Object var3) throws JSONException;

        public void setOnJSON(JSONObject var1, String var2, Object var3) throws JSONException;
    }

}

