/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.json.JSONArray
 *  org.json.JSONException
 */
package com.buzzfeed.toolkit.dustbuster.json;

import com.buzzfeed.toolkit.dustbuster.json.DustbusterJson;
import org.json.JSONArray;
import org.json.JSONException;

public class DustbusterJsonArray
extends JSONArray
implements DustbusterJson {
    @Override
    public void add(Object object) throws JSONException {
        this.put(object);
    }

    @Override
    public void add(String string2, Object object) throws JSONException {
        this.put(object);
    }
}

