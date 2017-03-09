/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.json.JSONObject
 */
package com.buzzfeed.showx.showpage.data.model;

import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.content.ContentFactory;
import org.json.JSONObject;

public class EmptySubscribeContent
implements Content {
    private static final String CONTENT_ID = "show_subscribe_id";

    @Override
    public String getFlowId() {
        return String.valueOf("show_subscribe_id".hashCode());
    }

    @Override
    public String getId() {
        return null;
    }

    @Override
    public boolean isValid() {
        return true;
    }

    @Override
    public void parse(JSONObject jSONObject, ContentFactory contentFactory) {
    }
}

