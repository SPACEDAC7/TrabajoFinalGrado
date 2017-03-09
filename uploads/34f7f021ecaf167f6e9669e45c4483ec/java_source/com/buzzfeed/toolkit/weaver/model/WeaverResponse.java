/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.text.TextUtils
 */
package com.buzzfeed.toolkit.weaver.model;

import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.buzzfeed.toolkit.content.WeaverEmbed;
import com.buzzfeed.toolkit.content.WeaverItem;
import com.google.gson.annotations.SerializedName;
import java.util.List;

public class WeaverResponse {
    private long count;
    private long createdAt;
    @SerializedName(value="_embedded")
    @Nullable
    public WeaverEmbed embedded;
    private String next;
    private String previous;
    private List<WeaverItem> results;

    public static WeaverResponse fromJson(String string2) {
        return (WeaverResponse)WeaverItem.getGson().fromJson(string2, (Class)WeaverResponse.class);
    }

    public List<WeaverItem> getResults() {
        return this.results;
    }

    public boolean hasMorePages() {
        if (!TextUtils.isEmpty((CharSequence)this.next)) {
            return true;
        }
        return false;
    }
}

