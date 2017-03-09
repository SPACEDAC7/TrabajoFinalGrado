/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.json.JSONObject
 */
package com.buzzfeed.analytics.model;

import com.buzzfeed.toolkit.util.JSONUtil;
import org.json.JSONObject;

public class GAEvent {
    private String mAction;
    private String mCategory;
    private String mLabel;
    private long mValue;

    public GAEvent(String string2, String string3, String string4) {
        this(string2, string3, string4, 0);
    }

    public GAEvent(String string2, String string3, String string4, long l2) {
        this.mCategory = string2;
        this.mAction = string3;
        this.mLabel = string4;
        this.mValue = l2;
    }

    public GAEvent(JSONObject jSONObject) {
        this.mCategory = JSONUtil.optString(jSONObject, "ga_category");
        this.mAction = JSONUtil.optString(jSONObject, "ga_action");
        this.mLabel = JSONUtil.optString(jSONObject, "ga_label");
        this.mValue = jSONObject.optLong("ga_value", 0);
    }

    public String getAction() {
        return this.mAction;
    }

    public String getCategory() {
        return this.mCategory;
    }

    public String getLabel() {
        return this.mLabel;
    }

    public long getValue() {
        return this.mValue;
    }
}

