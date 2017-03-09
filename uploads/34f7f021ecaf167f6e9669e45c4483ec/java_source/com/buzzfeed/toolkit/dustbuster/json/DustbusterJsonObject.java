/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.buzzfeed.toolkit.dustbuster.json;

import com.buzzfeed.toolkit.dustbuster.json.DustbusterJson;
import org.json.JSONException;
import org.json.JSONObject;

public class DustbusterJsonObject
extends JSONObject
implements DustbusterJson {
    @Override
    public void add(Object object) throws JSONException {
        throw new IllegalArgumentException("Must have key for json Object");
    }

    @Override
    public void add(String string2, Object object) throws JSONException {
        this.put(string2, object);
    }

    public JSONObject put(String string2, Object object) throws JSONException {
        if (object == null) {
            return super.put(string2, JSONObject.NULL);
        }
        return super.put(string2, object);
    }
}

