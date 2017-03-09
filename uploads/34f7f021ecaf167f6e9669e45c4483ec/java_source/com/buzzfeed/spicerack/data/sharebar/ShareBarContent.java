/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.json.JSONObject
 */
package com.buzzfeed.spicerack.data.sharebar;

import com.buzzfeed.spicerack.data.sharebar.SpicyShareBarLocation;
import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.content.ContentFactory;
import com.buzzfeed.toolkit.util.ShareItemType;
import java.util.Arrays;
import org.json.JSONObject;

public class ShareBarContent
implements Content {
    private SpicyShareBarLocation mLocation;
    private ShareItemType[] mShareItemTypes;

    public ShareBarContent(SpicyShareBarLocation spicyShareBarLocation, ShareItemType[] arrshareItemType) {
        this.mLocation = spicyShareBarLocation;
        this.mShareItemTypes = arrshareItemType;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public boolean equals(Object object) {
        boolean bl = false;
        if (this == object) {
            return true;
        }
        boolean bl2 = bl;
        if (object == null) return bl2;
        bl2 = bl;
        if (this.getClass() != object.getClass()) return bl2;
        object = (ShareBarContent)object;
        bl2 = bl;
        if (this.mLocation != object.mLocation) return bl2;
        return Arrays.equals((Object[])this.mShareItemTypes, (Object[])object.mShareItemTypes);
    }

    @Override
    public String getFlowId() {
        return String.valueOf(this.hashCode());
    }

    @Override
    public String getId() {
        return null;
    }

    public SpicyShareBarLocation getLocation() {
        return this.mLocation;
    }

    public ShareItemType[] getShareItemTypes() {
        return this.mShareItemTypes;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public int hashCode() {
        int n2;
        if (this.mLocation != null) {
            n2 = this.mLocation.hashCode();
            do {
                return n2 * 31 + Arrays.hashCode((Object[])this.mShareItemTypes);
                break;
            } while (true);
        }
        n2 = 0;
        return n2 * 31 + Arrays.hashCode((Object[])this.mShareItemTypes);
    }

    @Override
    public boolean isValid() {
        return true;
    }

    @Override
    public void parse(JSONObject jSONObject, ContentFactory contentFactory) {
    }
}

