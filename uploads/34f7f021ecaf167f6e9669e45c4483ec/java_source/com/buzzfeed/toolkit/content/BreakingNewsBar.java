/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.text.TextUtils
 *  org.json.JSONObject
 */
package com.buzzfeed.toolkit.content;

import android.text.TextUtils;
import com.buzzfeed.toolkit.content.BreakingNewsContent;
import com.buzzfeed.toolkit.content.ContentFactory;
import java.util.Date;
import org.json.JSONObject;

public class BreakingNewsBar
implements BreakingNewsContent {
    private String content;
    private Date createdAt;
    protected String id;
    private String twitterHandle;
    private String userId;

    public String getContent() {
        return this.content;
    }

    @Override
    public long getCreatedAt() {
        return this.createdAt.getTime();
    }

    @Override
    public String getFlowId() {
        return this.id;
    }

    @Override
    public String getId() {
        return this.id;
    }

    @Override
    public String getNewsAlert() {
        return this.content;
    }

    public String getTwitterHandle() {
        return this.twitterHandle;
    }

    @Override
    public String getUrl() {
        return null;
    }

    public String getUserId() {
        return this.userId;
    }

    @Override
    public boolean isValid() {
        if (!TextUtils.isEmpty((CharSequence)this.id) && !TextUtils.isEmpty((CharSequence)this.content)) {
            return true;
        }
        return false;
    }

    public void parse(JSONObject jSONObject) {
        this.parse(jSONObject, null);
    }

    @Override
    public void parse(JSONObject object, ContentFactory contentFactory) {
        this.id = object.optString("id");
        this.content = object.optString("content");
        this.userId = object.optString("user_id");
        this.twitterHandle = object.optString("twitter_handle");
        if (!TextUtils.isEmpty((CharSequence)(object = object.optString("created_at")))) {
            this.createdAt = new Date(Long.valueOf((String)object));
        }
    }
}

