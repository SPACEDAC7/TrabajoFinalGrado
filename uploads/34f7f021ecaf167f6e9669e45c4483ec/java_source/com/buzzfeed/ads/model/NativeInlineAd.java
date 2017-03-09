/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.json.JSONArray
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.buzzfeed.ads.model;

import com.buzzfeed.toolkit.content.Buzz;
import com.buzzfeed.toolkit.content.BuzzAd;
import com.buzzfeed.toolkit.util.LogUtil;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import java.io.Serializable;
import java.util.Random;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class NativeInlineAd
extends BuzzAd
implements Serializable {
    private static final String TAG = NativeInlineAd.class.getSimpleName();
    private static Random random = new Random();
    private static final long serialVersionUID = -3404606997377313665L;
    private transient NativeCustomTemplateAd mDfpAd;

    public NativeInlineAd() {
        this.setInlineAd(true);
    }

    private int selectRandomIndex(int n2, int n3) {
        return random.nextInt(n3 - n2 + 1) + n2;
    }

    @Override
    public String getCategory() {
        return "Advertiser";
    }

    public NativeCustomTemplateAd getDfpAd() {
        return this.mDfpAd;
    }

    public void loadAdFromJSON(JSONObject jSONObject) throws JSONException {
        LogUtil.d(TAG + ".loadAdFromJSON", "Inline ad JSON: " + jSONObject.toString());
        JSONArray jSONArray = jSONObject.optJSONArray("buzzes");
        if (jSONArray != null) {
            this.parse(jSONArray.getJSONObject(this.selectRandomIndex(0, jSONArray.length() - 1)));
            return;
        }
        this.parse(jSONObject);
    }

    public void setNativeAd(NativeCustomTemplateAd nativeCustomTemplateAd) {
        this.mDfpAd = nativeCustomTemplateAd;
    }
}

