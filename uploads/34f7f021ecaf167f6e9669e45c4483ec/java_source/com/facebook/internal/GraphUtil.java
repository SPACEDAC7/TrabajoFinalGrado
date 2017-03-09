/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.json.JSONArray
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.facebook.internal;

import com.facebook.FacebookException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class GraphUtil {
    private static final String[] dateFormats = new String[]{"yyyy-MM-dd'T'HH:mm:ssZ", "yyyy-MM-dd'T'HH:mm:ss", "yyyy-MM-dd"};

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static JSONObject createOpenGraphActionForPost(String string2) {
        JSONObject jSONObject = new JSONObject();
        if (string2 == null) return jSONObject;
        try {
            jSONObject.put("type", (Object)string2);
        }
        catch (JSONException jSONException) {
            throw new FacebookException("An error occurred while setting up the open graph action", (Throwable)jSONException);
        }
        return jSONObject;
    }

    public static JSONObject createOpenGraphObjectForPost(String string2) {
        return GraphUtil.createOpenGraphObjectForPost(string2, null, null, null, null, null, null);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    public static JSONObject createOpenGraphObjectForPost(String var0, String var1_2, String var2_3, String var3_4, String var4_5, JSONObject var5_6, String var6_7) {
        var7_8 = new JSONObject();
        if (var0 == null) ** GOTO lbl5
        try {
            var7_8.put("type", (Object)var0);
lbl5: // 2 sources:
            var7_8.put("title", (Object)var1_2);
            if (var2_3 != null) {
                var0 = new JSONObject();
                var0.put("url", (Object)var2_3);
                var1_2 = new JSONArray();
                var1_2.put((Object)var0);
                var7_8.put("image", (Object)var1_2);
            }
            var7_8.put("url", (Object)var3_4);
            var7_8.put("description", (Object)var4_5);
            var7_8.put("fbsdk:create_object", true);
            if (var5_6 != null) {
                var7_8.put("data", (Object)var5_6);
            }
            if (var6_7 == null) return var7_8;
            var7_8.put("id", (Object)var6_7);
            return var7_8;
        }
        catch (JSONException var0_1) {
            throw new FacebookException("An error occurred while setting up the graph object", (Throwable)var0_1);
        }
    }

    public static boolean isOpenGraphObjectForPost(JSONObject jSONObject) {
        if (jSONObject != null) {
            return jSONObject.optBoolean("fbsdk:create_object");
        }
        return false;
    }
}

