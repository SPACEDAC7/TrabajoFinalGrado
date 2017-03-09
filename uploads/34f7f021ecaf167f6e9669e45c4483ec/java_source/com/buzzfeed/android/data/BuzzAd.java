/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.buzzfeed.android.data;

import android.content.Context;
import com.buzzfeed.android.data.Buzz;
import com.buzzfeed.toolkit.util.LogUtil;
import java.io.Serializable;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

@Deprecated
public class BuzzAd
extends Buzz
implements Serializable {
    private static final String TAG = BuzzAd.class.getSimpleName();
    private static final long serialVersionUID = 4504117253781418309L;
    private String adUrl;
    private List<String> clickTracks;
    private List<String> impressionTracks;
    private boolean isInternal;
    private String referer;
    private SponsorType sponsorType = SponsorType.Ad;

    public BuzzAd(Context context) {
        super(context);
        this.setIsAd(true);
    }

    public String getAdUrl() {
        return this.adUrl;
    }

    public List<String> getClickTrackUrls() {
        return this.clickTracks;
    }

    public List<String> getImpressionTrackUrls() {
        return this.impressionTracks;
    }

    public String getReferer() {
        return this.referer;
    }

    public SponsorType getSponsorType() {
        return this.sponsorType;
    }

    @Override
    public boolean isInternal() {
        return this.isInternal;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void parse(JSONObject jSONObject) throws JSONException {
        Object object;
        if (jSONObject.has("buzz")) {
            object = jSONObject.getJSONObject("buzz");
            super.parse((JSONObject)object);
            this.setLastUpdated(null);
            object = object.optString("user_type");
            if (object.length() > 0) {
                if (object.equals("f_edit")) {
                    this.setSponsorType(SponsorType.Staff);
                } else if (object.equals("f_partner")) {
                    this.setSponsorType(SponsorType.Partner);
                }
            }
        } else if (jSONObject.has("campaignid")) {
            super.parse(jSONObject);
        }
        if ((object = jSONObject.optString("ad_url")).length() > 0) {
            LogUtil.d(TAG, "InlineAd is external");
            this.setAdUrl((String)object);
            this.setInternal(false);
        } else {
            LogUtil.d(TAG, "InlineAd is internal");
            this.setInternal(true);
        }
        this.parseSponsorNameAndImageUrl(jSONObject);
    }

    public void setAdUrl(String string2) {
        this.adUrl = string2;
    }

    public void setClickTrackUrls(List<String> list) {
        this.clickTracks = list;
    }

    public void setImpressionTrackUrls(List<String> list) {
        this.impressionTracks = list;
    }

    public void setInternal(boolean bl) {
        this.isInternal = bl;
    }

    public void setReferer(String string2) {
        this.referer = string2;
    }

    public void setSponsorType(SponsorType sponsorType) {
        this.sponsorType = sponsorType;
    }

    public static enum SponsorType {
        Ad,
        Staff,
        Partner;
        

        private SponsorType() {
        }
    }

}

