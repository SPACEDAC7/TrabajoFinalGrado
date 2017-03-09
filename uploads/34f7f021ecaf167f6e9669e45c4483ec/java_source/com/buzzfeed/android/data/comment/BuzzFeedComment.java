/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  org.json.JSONArray
 *  org.json.JSONObject
 */
package com.buzzfeed.android.data.comment;

import android.content.Context;
import com.buzzfeed.android.data.comment.Comment;
import com.buzzfeed.toolkit.util.LogUtil;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

public class BuzzFeedComment
extends Comment {
    private static final String TAG = BuzzFeedComment.class.getName();
    private String buzzId;
    private String form;
    private String formattedTimestamp = null;
    private int hateCount;
    private int loveCount;
    private String score;
    private boolean userHated = false;
    private boolean userHearted = false;

    public BuzzFeedComment(Context context) {
        super(context);
    }

    public BuzzFeedComment(Context context, JSONObject jSONObject) {
        super(context, jSONObject);
    }

    public String displayHateCount() {
        return "" + this.hateCount;
    }

    public String displayLoveCount() {
        return "" + this.loveCount;
    }

    @Override
    public String formatTimeAdded() {
        this.formattedTimestamp = super.formatTimeAdded();
        return this.formattedTimestamp;
    }

    public String getBuzzId() {
        return this.buzzId;
    }

    public String getForm() {
        return this.form;
    }

    @Override
    public String getFormattedTimestamp() {
        this.formatTimeAdded();
        return this.formattedTimestamp;
    }

    public int getHateCount() {
        return this.hateCount;
    }

    public int getLoveCount() {
        return this.loveCount;
    }

    public String getScore() {
        return this.score;
    }

    public void hate() {
        ++this.hateCount;
        this.userHated = true;
    }

    @Override
    public boolean isImgExpected() {
        if (this.getForm().equals("react_image") || this.getForm().equals("image")) {
            return true;
        }
        return false;
    }

    @Override
    public boolean isTextExpected() {
        if (!this.getForm().equals("react_image")) {
            return true;
        }
        return false;
    }

    @Override
    public boolean isValid() {
        if (super.isValid() && this.getBuzzId() != null && !this.getBuzzId().isEmpty() && this.getScore() != null && !this.getScore().isEmpty()) {
            return true;
        }
        return false;
    }

    public void love() {
        ++this.loveCount;
        this.userHearted = true;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void parse(JSONObject jSONObject) {
        if (jSONObject != null) {
            JSONArray jSONArray;
            this.setBlurb(jSONObject.optString("blurb"));
            this.setBuzzId(jSONObject.optString("buzz_id"));
            this.setForm(jSONObject.optString("form"));
            this.setTimeAdded(jSONObject.optString("added") + "000");
            this.setScore(jSONObject.optString("score"));
            if (this.isImgExpected()) {
                this.setCommentImgUrl(jSONObject.optString("url"));
            }
            if (jSONObject.has("parent_id")) {
                this.setParentCommentId(jSONObject.optString("parent_id"));
            }
            this.setLoveCount(jSONObject.optInt("love_count", 0));
            this.setHateCount(jSONObject.optInt("hate_count", 0));
            if (jSONObject.has("children")) {
                jSONArray = jSONObject.optJSONArray("children");
                for (int i2 = 0; i2 < jSONArray.length(); ++i2) {
                    BuzzFeedComment buzzFeedComment = new BuzzFeedComment(this.mContext, jSONArray.optJSONObject(i2));
                    buzzFeedComment.setParent(this);
                    if (!buzzFeedComment.isValid()) continue;
                    this.getReplies().add(buzzFeedComment);
                }
            }
            if ((jSONArray = jSONObject.optJSONObject("user_info")) != null) {
                this.getUserInfo().setDisplayName(jSONArray.optString("display_name"));
                this.getUserInfo().setUserId(jSONArray.optString("id"));
                this.getUserInfo().setUserImg(jSONArray.optString("image"));
                this.getUserInfo().setUsername(jSONArray.optString("username"));
            } else {
                LogUtil.e(TAG, "user_info object was not present in this comment obj. json: " + jSONObject.toString());
                this.setUserInfo(null);
            }
            this.setCommentId(jSONObject.optString("id"));
        }
    }

    public void setBuzzId(String string2) {
        this.buzzId = string2;
    }

    public void setForm(String string2) {
        this.form = string2;
    }

    public void setHateCount(int n2) {
        this.hateCount = n2;
    }

    public void setLoveCount(int n2) {
        this.loveCount = n2;
    }

    public void setScore(String string2) {
        this.score = string2;
    }

    @Override
    public void setTimeAdded(String string2) {
        super.setTimeAdded(string2);
    }

    @Override
    public String toString() {
        return "BuzzFeedComment{buzzId='" + this.buzzId + '\'' + ", form='" + this.form + '\'' + ", score='" + this.score + '\'' + ", hateCount=" + this.hateCount + ", loveCount=" + this.loveCount + ", formattedTimestamp='" + this.formattedTimestamp + '\'' + "}\n" + super.toString();
    }

    public boolean userHated() {
        return this.userHated;
    }

    public boolean userHearted() {
        return this.userHearted;
    }
}

