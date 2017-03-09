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
import com.buzzfeed.toolkit.content.Contributor;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.StringUtils;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.Stack;
import java.util.UUID;
import org.json.JSONObject;

public class BuzzAd
extends Buzz
implements Serializable {
    private static final String TAG = BuzzAd.class.getSimpleName();
    private static final long serialVersionUID = 0;
    private String adUrl;
    private boolean isInternal;
    private UUID uuid = UUID.randomUUID();

    public BuzzAd() {
        this.setIsAd(true);
    }

    public String getAdUrl() {
        return this.adUrl;
    }

    @Override
    public String getFlowId() {
        return String.valueOf(this.uuid.getMostSignificantBits());
    }

    @Override
    public boolean isInternal() {
        return this.isInternal;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void parse(JSONObject cloneable) {
        Object object;
        if (cloneable.has("buzz")) {
            object = cloneable.optJSONObject("buzz");
            super.parse((JSONObject)object);
            this.setJson(cloneable.toString());
            this.setLastUpdated(null);
            object = object.optString("user_type");
            if (object.length() > 0 && !object.equals("f_partner") && !object.equals("f_ad")) {
                this.mIsBackfill = true;
            }
        } else {
            object = cloneable.optString("category_name");
            if (!StringUtils.isEmpty((CharSequence)object) && !object.equals("Advertiser")) {
                this.mIsBackfill = true;
            }
            super.parse((JSONObject)cloneable);
        }
        if ((object = cloneable.optString("ad_url")).length() > 0) {
            LogUtil.d(TAG, "InlineAd is external");
            this.adUrl = object;
            this.isInternal = false;
        } else {
            LogUtil.d(TAG, "InlineAd is internal");
            this.isInternal = true;
        }
        this.parseSponsorNameAndImageUrl((JSONObject)cloneable);
        if ((TextUtils.isEmpty((CharSequence)this.getSponsorDisplayName()) || TextUtils.isEmpty((CharSequence)this.getSponsorUserImageUrl())) && (cloneable = this.getContributors()).size() > 0) {
            cloneable = (Contributor)cloneable.get(0);
            this.setSponsorDisplayName(cloneable.getDisplayName());
            if (cloneable.getUserImages().size() > 0) {
                this.setSponsorUserImageUrl(cloneable.getUserImages().get(0));
            }
        }
    }
}

