/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.json.JSONObject
 */
package com.buzzfeed.toolkit.content;

import com.buzzfeed.toolkit.content.ContentFactory;
import java.io.Serializable;
import org.json.JSONObject;

public interface Content
extends Serializable {
    public String getFlowId();

    public String getId();

    public boolean isValid();

    public void parse(JSONObject var1, ContentFactory var2);
}

