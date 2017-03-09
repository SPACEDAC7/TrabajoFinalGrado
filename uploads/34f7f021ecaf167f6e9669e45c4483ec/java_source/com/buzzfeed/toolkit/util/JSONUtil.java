/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.json.JSONArray
 *  org.json.JSONObject
 */
package com.buzzfeed.toolkit.util;

import java.io.UnsupportedEncodingException;
import java.util.Date;
import org.json.JSONArray;
import org.json.JSONObject;

public class JSONUtil {
    public static Date optDate(JSONObject jSONObject, String string2) {
        if (jSONObject.optLong(string2) > 0) {
            return new Date(jSONObject.optLong(string2) * 1000);
        }
        return null;
    }

    public static String optString(JSONObject jSONObject, String string2) {
        if (jSONObject.isNull(string2)) {
            return null;
        }
        return jSONObject.optString(string2, null);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static String optStringConvertIsoToUtf(JSONObject object, String string2) {
        object = string2 = JSONUtil.optString((JSONObject)object, string2);
        if (string2 == null) return object;
        try {
            return new String(string2.getBytes("ISO-8859-1"), "UTF-8");
        }
        catch (UnsupportedEncodingException unsupportedEncodingException) {
            return string2;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static int[] parseIntArray(JSONArray jSONArray) {
        if (jSONArray == null) {
            return null;
        }
        int[] arrn = new int[jSONArray.length()];
        int n2 = 0;
        do {
            int[] arrn2 = arrn;
            if (n2 >= arrn.length) return arrn2;
            arrn[n2] = jSONArray.optInt(n2);
            ++n2;
        } while (true);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static String[] parseStringArray(JSONArray jSONArray) {
        if (jSONArray == null) {
            return null;
        }
        String[] arrstring = new String[jSONArray.length()];
        int n2 = 0;
        do {
            String[] arrstring2 = arrstring;
            if (n2 >= arrstring.length) return arrstring2;
            arrstring[n2] = jSONArray.optString(n2);
            ++n2;
        } while (true);
    }
}

