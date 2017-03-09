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
import com.buzzfeed.android.data.BuzzAd;
import java.io.Serializable;
import org.json.JSONException;
import org.json.JSONObject;

@Deprecated
public class FlowItem
implements Serializable {
    private static final String TAG = FlowItem.class.getSimpleName();
    public static final String TYPE_AD = "ad";
    public static final String TYPE_BUZZ = "buzz";
    private static final long serialVersionUID = -6987653782483480172L;
    private Content content;
    private String type;

    public FlowItem(String string2, Content content) {
        this.type = string2;
        this.content = content;
    }

    public static Content createBuzzAdContent(Context object, JSONObject jSONObject) throws JSONException {
        object = new BuzzAd((Context)object);
        object.parse(jSONObject);
        return object;
    }

    public static Content createBuzzContent(Context object, JSONObject jSONObject) throws JSONException {
        object = new Buzz((Context)object);
        object.parse(jSONObject);
        return object;
    }

    public static FlowItem parse(Context context, JSONObject jSONObject) throws JSONException {
        return FlowItem.parse(context, jSONObject, true);
    }

    public static FlowItem parse(Context context, JSONObject jSONObject, String string2) throws JSONException {
        return FlowItem.parse(context, jSONObject, string2, true);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static FlowItem parse(Context object, JSONObject jSONObject, String string2, boolean bl) throws JSONException {
        if (string2 == null || string2.length() <= 0) return null;
        if (bl && (string2.equals("ad") || jSONObject != null && jSONObject.optString("user_ad").equals("1"))) {
            string2 = "ad";
            object = FlowItem.createBuzzAdContent((Context)object, jSONObject);
            do {
                return new FlowItem(string2, (Content)object);
                break;
            } while (true);
        }
        object = FlowItem.createBuzzContent((Context)object, jSONObject);
        return new FlowItem(string2, (Content)object);
    }

    public static FlowItem parse(Context context, JSONObject jSONObject, boolean bl) throws JSONException {
        if (jSONObject.has("type") && jSONObject.has("content")) {
            return FlowItem.parse(context, jSONObject.getJSONObject("content"), jSONObject.getString("type"), bl);
        }
        return null;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (!(object instanceof FlowItem)) {
            return false;
        }
        object = (FlowItem)object;
        if (!this.content.equals(object.content)) {
            return false;
        }
        if (this.type.equals(object.type)) return true;
        return false;
    }

    public Content getContent() {
        return this.content;
    }

    public String getId() {
        if (this.content == null) {
            return null;
        }
        return this.content.getId();
    }

    public String getType() {
        return this.type;
    }

    public int hashCode() {
        return this.type.hashCode() * 31 + this.content.hashCode();
    }

    public boolean isTypeAd() {
        if (this.isTypeBuzz() && this.type == "ad") {
            return true;
        }
        return false;
    }

    public boolean isTypeBuzz() {
        if (this.content != null && this.content instanceof Buzz) {
            return true;
        }
        return false;
    }

    public boolean isValid() {
        if (this.type != null && this.type.length() > 0 && this.content != null && this.content.isValid()) {
            return true;
        }
        return false;
    }

    public String toString() {
        return "FlowItem{type='" + this.type + '\'' + ", content=" + this.content.toString() + '}';
    }

    public static interface Content {
        public boolean equals(Object var1);

        public String getId();

        public int hashCode();

        public boolean isValid();

        public void parse(String var1) throws JSONException;

        public void parse(JSONObject var1) throws JSONException;

        public String toString();
    }

}

