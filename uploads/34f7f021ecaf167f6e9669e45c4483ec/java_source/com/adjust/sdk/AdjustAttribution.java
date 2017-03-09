/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.json.JSONObject
 */
package com.adjust.sdk;

import com.adjust.sdk.Util;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamField;
import java.io.Serializable;
import java.util.Locale;
import org.json.JSONObject;

public class AdjustAttribution
implements Serializable {
    private static final ObjectStreamField[] serialPersistentFields = new ObjectStreamField[]{new ObjectStreamField("trackerToken", String.class), new ObjectStreamField("trackerName", String.class), new ObjectStreamField("network", String.class), new ObjectStreamField("campaign", String.class), new ObjectStreamField("adgroup", String.class), new ObjectStreamField("creative", String.class), new ObjectStreamField("clickLabel", String.class), new ObjectStreamField("adid", String.class)};
    private static final long serialVersionUID = 1;
    public String adgroup;
    public String adid;
    public String campaign;
    public String clickLabel;
    public String creative;
    public String network;
    public String trackerName;
    public String trackerToken;

    public static AdjustAttribution fromJson(JSONObject jSONObject, String string2) {
        if (jSONObject == null) {
            return null;
        }
        AdjustAttribution adjustAttribution = new AdjustAttribution();
        adjustAttribution.trackerToken = jSONObject.optString("tracker_token", null);
        adjustAttribution.trackerName = jSONObject.optString("tracker_name", null);
        adjustAttribution.network = jSONObject.optString("network", null);
        adjustAttribution.campaign = jSONObject.optString("campaign", null);
        adjustAttribution.adgroup = jSONObject.optString("adgroup", null);
        adjustAttribution.creative = jSONObject.optString("creative", null);
        adjustAttribution.clickLabel = jSONObject.optString("click_label", null);
        adjustAttribution.adid = string2;
        return adjustAttribution;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean equals(Object object) {
        if (object == this) {
            return true;
        }
        if (object == null) {
            return false;
        }
        if (this.getClass() != object.getClass()) {
            return false;
        }
        object = (AdjustAttribution)object;
        if (!Util.equalString(this.trackerToken, object.trackerToken)) {
            return false;
        }
        if (!Util.equalString(this.trackerName, object.trackerName)) {
            return false;
        }
        if (!Util.equalString(this.network, object.network)) {
            return false;
        }
        if (!Util.equalString(this.campaign, object.campaign)) {
            return false;
        }
        if (!Util.equalString(this.adgroup, object.adgroup)) {
            return false;
        }
        if (!Util.equalString(this.creative, object.creative)) {
            return false;
        }
        if (!Util.equalString(this.clickLabel, object.clickLabel)) {
            return false;
        }
        if (Util.equalString(this.adid, object.adid)) return true;
        return false;
    }

    public int hashCode() {
        return (((((((Util.hashString(this.trackerToken) + 629) * 37 + Util.hashString(this.trackerName)) * 37 + Util.hashString(this.network)) * 37 + Util.hashString(this.campaign)) * 37 + Util.hashString(this.adgroup)) * 37 + Util.hashString(this.creative)) * 37 + Util.hashString(this.clickLabel)) * 37 + Util.hashString(this.adid);
    }

    public String toString() {
        return String.format(Locale.US, "tt:%s tn:%s net:%s cam:%s adg:%s cre:%s cl:%s adid:%s", this.trackerToken, this.trackerName, this.network, this.campaign, this.adgroup, this.creative, this.clickLabel, this.adid);
    }
}

