/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.buzzfeed.toolkit.content;

import com.buzzfeed.toolkit.content.AuthorContent;
import com.buzzfeed.toolkit.content.Buzz;
import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.content.ContentFactory;
import com.buzzfeed.toolkit.content.FlowItem;
import com.buzzfeed.toolkit.util.JSONUtil;
import com.buzzfeed.toolkit.util.LogUtil;
import java.io.Serializable;
import java.util.List;
import java.util.Stack;
import org.json.JSONException;
import org.json.JSONObject;

public class Contributor
implements Serializable,
Cloneable,
Content,
AuthorContent {
    private static final String TAG = LogUtil.makeLogTag(Buzz.class);
    static final long serialVersionUID = 0;
    private String bio;
    private String bylineDesc;
    private String displayName;
    private String email;
    private String facebook;
    private List<FlowItem> flowItemList;
    private String id;
    private String twitter;
    private Stack<String> userImages;
    private String userPage;

    /*
     * Enabled aggressive block sorting
     */
    public boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (object == null) {
            return false;
        }
        object = (Contributor)object;
        if (this.userPage != null) {
            if (!this.userPage.equals(object.userPage)) {
                return false;
            }
        } else if (object.userPage != null) return false;
        if (this.bylineDesc != null) {
            if (!this.bylineDesc.equals(object.bylineDesc)) {
                return false;
            }
        } else if (object.bylineDesc != null) return false;
        if (this.displayName != null) {
            if (!this.displayName.equals(object.displayName)) {
                return false;
            }
        } else if (object.displayName != null) return false;
        if (this.userImages != null) {
            if (this.userImages.equals(object.userImages)) return true;
            return false;
        }
        if (object.userImages == null) return true;
        return false;
    }

    @Override
    public String getAvatar() {
        Stack<String> stack = this.getUserImages();
        if (stack != null && !stack.isEmpty()) {
            return stack.peek();
        }
        return null;
    }

    public String getBio() {
        return this.bio;
    }

    public String getBylineDesc() {
        return this.bylineDesc;
    }

    @Override
    public String getDisplayName() {
        return this.displayName;
    }

    public String getEmail() {
        return this.email;
    }

    public String getFacebook() {
        return this.facebook;
    }

    @Override
    public String getFlowId() {
        return this.id;
    }

    public List<FlowItem> getFlowItemList() {
        return this.flowItemList;
    }

    @Override
    public String getId() {
        return this.id;
    }

    @Override
    public String getTitle() {
        return this.bylineDesc;
    }

    public String getTwitter() {
        return this.twitter;
    }

    public Stack<String> getUserImages() {
        return this.userImages;
    }

    public String getUserPage() {
        return this.userPage;
    }

    /*
     * Enabled aggressive block sorting
     */
    public int hashCode() {
        int n2 = 0;
        int n3 = this.userPage != null ? this.userPage.hashCode() : 0;
        int n4 = this.bylineDesc != null ? this.bylineDesc.hashCode() : 0;
        int n5 = this.displayName != null ? this.displayName.hashCode() : 0;
        if (this.userImages != null) {
            n2 = this.userImages.hashCode();
        }
        return ((n3 * 31 + n4) * 31 + n5) * 31 + n2;
    }

    @Override
    public boolean isValid() {
        return false;
    }

    public void parse(JSONObject jSONObject) {
        try {
            jSONObject = jSONObject.getJSONObject("user");
            this.setBio(JSONUtil.optString(jSONObject, "bio"));
            this.setFacebook(JSONUtil.optString(jSONObject, "facebook_page_url"));
            this.setTwitter(JSONUtil.optString(jSONObject, "twitter_page_url"));
            this.setEmail(JSONUtil.optString(jSONObject, "email"));
            this.setId(jSONObject.optString("id"));
            this.setDisplayName(JSONUtil.optString(jSONObject, "display_name"));
            return;
        }
        catch (JSONException var1_2) {
            LogUtil.e(TAG, "Error parsing Author flow JSON: " + (Object)var1_2);
            return;
        }
    }

    @Override
    public void parse(JSONObject jSONObject, ContentFactory contentFactory) {
    }

    public void setBio(String string2) {
        this.bio = string2;
    }

    public void setBylineDesc(String string2) {
        this.bylineDesc = string2;
    }

    public void setDisplayName(String string2) {
        this.displayName = string2;
    }

    public void setEmail(String string2) {
        this.email = string2;
    }

    public void setFacebook(String string2) {
        this.facebook = string2;
    }

    public void setFlowList(List<FlowItem> list) {
        this.flowItemList = list;
    }

    public void setId(String string2) {
        this.id = string2;
    }

    public void setTwitter(String string2) {
        this.twitter = string2;
    }

    public void setUserImages(Stack<String> stack) {
        this.userImages = stack;
    }

    public void setUserPage(String string2) {
        this.userPage = string2;
    }

    public String toString() {
        return "Contributor{, userPage=" + this.userPage + ", bylineDesc=" + this.bylineDesc + ", displayName=" + this.displayName + ", facebook=" + this.facebook + ", twitter=" + this.twitter + ", email=" + this.email + ", userImage=" + this.userImages + '}';
    }
}

