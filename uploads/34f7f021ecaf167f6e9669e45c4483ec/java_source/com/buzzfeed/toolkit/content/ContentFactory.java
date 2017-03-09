/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.json.JSONObject
 */
package com.buzzfeed.toolkit.content;

import com.buzzfeed.toolkit.content.Content;
import org.json.JSONObject;

public interface ContentFactory {
    public Content parseContent(JSONObject var1, String var2);

    public String parseType(JSONObject var1);
}

