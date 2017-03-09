/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.text.TextUtils
 *  org.json.JSONObject
 */
package com.buzzfeed.android.data.factory;

import android.text.TextUtils;
import com.buzzfeed.toolkit.content.BreakingNewsBar;
import com.buzzfeed.toolkit.content.BuffetType;
import com.buzzfeed.toolkit.content.Buzz;
import com.buzzfeed.toolkit.content.BuzzAd;
import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.content.ContentFactory;
import org.json.JSONObject;

public class MobileFeedFactory
implements ContentFactory {
    private String mType;

    public MobileFeedFactory() {
    }

    public MobileFeedFactory(String string2) {
        this.mType = string2;
    }

    public Content createBreakingBarContent(JSONObject jSONObject) {
        BreakingNewsBar breakingNewsBar = new BreakingNewsBar();
        breakingNewsBar.parse(jSONObject);
        return breakingNewsBar;
    }

    public Content createBuzzAdContent(JSONObject jSONObject) {
        BuzzAd buzzAd = new BuzzAd();
        buzzAd.parse(jSONObject);
        return buzzAd;
    }

    public Content createBuzzContent(JSONObject jSONObject) {
        Buzz buzz = new Buzz();
        buzz.parse(jSONObject);
        return buzz;
    }

    @Override
    public Content parseContent(JSONObject jSONObject, String string2) {
        if (jSONObject == null || TextUtils.isEmpty((CharSequence)string2)) {
            return null;
        }
        if (BuffetType.EDITORIAL_AD.name().equals(string2)) {
            return this.createBuzzAdContent(jSONObject);
        }
        if (BuffetType.BREAKING_BAR.name().equals(string2)) {
            return this.createBreakingBarContent(jSONObject);
        }
        return this.createBuzzContent(jSONObject);
    }

    @Override
    public String parseType(JSONObject jSONObject) {
        return this.mType;
    }
}

