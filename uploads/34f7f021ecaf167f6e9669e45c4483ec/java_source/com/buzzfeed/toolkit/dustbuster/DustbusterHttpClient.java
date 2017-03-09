/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.json.JSONArray
 */
package com.buzzfeed.toolkit.dustbuster;

import com.buzzfeed.toolkit.dustbuster.DustbusterResponse;
import org.json.JSONArray;

interface DustbusterHttpClient {
    public DustbusterResponse post(String var1, JSONArray var2) throws Exception;
}

