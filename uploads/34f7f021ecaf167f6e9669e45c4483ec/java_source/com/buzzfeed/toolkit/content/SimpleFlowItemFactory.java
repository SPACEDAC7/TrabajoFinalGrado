/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.text.TextUtils
 *  org.json.JSONObject
 */
package com.buzzfeed.toolkit.content;

import android.text.TextUtils;
import com.buzzfeed.toolkit.content.Buzz;
import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.content.ContentFactory;
import org.json.JSONObject;

public class SimpleFlowItemFactory
implements ContentFactory {
    public static final String TYPE_BUZZ = "buzz";
    protected String mType;

    public SimpleFlowItemFactory() {
    }

    public SimpleFlowItemFactory(String string2) {
        this.mType = string2;
    }

    public static Content createBuzzContent(JSONObject jSONObject) {
        Buzz buzz = new Buzz();
        buzz.parse(jSONObject);
        return buzz;
    }

    @Override
    public Content parseContent(JSONObject jSONObject, String string2) {
        if (jSONObject == null || TextUtils.isEmpty((CharSequence)string2)) {
            return null;
        }
        if (jSONObject.has("content")) {
            return SimpleFlowItemFactory.createBuzzContent(jSONObject.optJSONObject("content"));
        }
        return SimpleFlowItemFactory.createBuzzContent(jSONObject);
    }

    @Override
    public String parseType(JSONObject jSONObject) {
        return this.mType;
    }
}

