/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.text.TextUtils
 */
package com.buzzfeed.android.data;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;
import android.text.TextUtils;
import com.buzzfeed.toolkit.util.EZUtil;
import com.buzzfeed.toolkit.util.ObjectUtil;
import java.io.Serializable;
import java.util.Collections;
import java.util.Map;

public class Feed
implements Serializable,
Cloneable {
    private static final String FEED_URL_PATH_HOME = "home";
    private static final long serialVersionUID = 751553659684322889L;
    private final String mAdTag;
    private final boolean mIsBadgeFeed;
    private final int mLocalizedNameResId;
    private final String mName;
    private final Map<String, String> mSearchParams;
    private final String mTag;
    private final String mUri;
    private final String mWidgetImage;

    /*
     * Enabled aggressive block sorting
     */
    private Feed(Builder builder) {
        this.mTag = builder.mTag;
        this.mUri = builder.mUri;
        this.mName = builder.mName;
        this.mLocalizedNameResId = builder.mLocalizedNameResId;
        String string2 = !TextUtils.isEmpty((CharSequence)builder.mAdTag) ? builder.mAdTag : builder.mTag;
        this.mAdTag = string2;
        this.mWidgetImage = builder.mWidgetImage;
        this.mSearchParams = builder.mSearchParams;
        this.mIsBadgeFeed = builder.mIsBadgeFeed;
    }

    public static Feed createDefault() {
        return new Builder("home").withUri("home").build();
    }

    public Feed clone() {
        return new Builder(this.mTag).withUri(this.mUri).withDisplayName(this.mName).withLocalizedNameResourceId(this.mLocalizedNameResId).withBadgeEnabled(this.mIsBadgeFeed).withAdTag(this.mAdTag).withWidgetImageUri(this.mWidgetImage).withSearchParams(this.mSearchParams).build();
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (!(object instanceof Feed)) {
            return false;
        }
        object = (Feed)object;
        if (this.mIsBadgeFeed != object.mIsBadgeFeed) return false;
        if (this.mLocalizedNameResId != object.mLocalizedNameResId) return false;
        if (!ObjectUtil.areObjectsEqual(this.mSearchParams, object.mSearchParams)) return false;
        if (!ObjectUtil.areObjectsEqual(this.mTag, object.mTag)) return false;
        if (!ObjectUtil.areObjectsEqual(this.mName, object.mName)) return false;
        if (!ObjectUtil.areObjectsEqual(this.mUri, object.mUri)) return false;
        if (!ObjectUtil.areObjectsEqual(this.mWidgetImage, object.mWidgetImage)) return false;
        if (ObjectUtil.areObjectsEqual(this.mAdTag, object.mAdTag)) return true;
        return false;
    }

    @Nullable
    public String getAdTag() {
        return this.mAdTag;
    }

    @StringRes
    public int getLocalizedNameResId() {
        return this.mLocalizedNameResId;
    }

    @Nullable
    public String getName() {
        return this.mName;
    }

    @NonNull
    public Map<String, String> getSearchParams() {
        return this.mSearchParams;
    }

    @NonNull
    public String getTag() {
        return this.mTag;
    }

    @Nullable
    public String getUri() {
        return this.mUri;
    }

    @Nullable
    public String getWidgetImage() {
        return this.mWidgetImage;
    }

    public int hashCode() {
        return ObjectUtil.hash(this.mSearchParams, this.mTag, this.mName, this.mUri, this.mWidgetImage, this.mAdTag, this.mIsBadgeFeed, this.mLocalizedNameResId);
    }

    public boolean isBadge() {
        return this.mIsBadgeFeed;
    }

    public String toString() {
        return "Feed {mSearchParams=" + this.mSearchParams + ", mTag='" + this.mTag + '\'' + ", mName='" + this.mName + '\'' + ", mUri='" + this.mUri + '\'' + ", mWidgetImage='" + this.mWidgetImage + '\'' + ", mAdTag='" + this.mAdTag + '\'' + ", isBadge=" + this.mIsBadgeFeed + '}';
    }

    public static class Builder {
        private String mAdTag;
        private boolean mIsBadgeFeed;
        private int mLocalizedNameResId;
        private String mName;
        private Map<String, String> mSearchParams = Collections.emptyMap();
        private String mTag;
        private String mUri;
        private String mWidgetImage;

        public Builder(String string2) {
            this.mTag = EZUtil.checkNotNull(string2, "Feed tag must not be null");
        }

        public Feed build() {
            return new Feed(this);
        }

        public Builder withAdTag(String string2) {
            this.mAdTag = string2;
            return this;
        }

        public Builder withBadgeEnabled(boolean bl) {
            this.mIsBadgeFeed = bl;
            return this;
        }

        public Builder withDisplayName(String string2) {
            this.mName = string2;
            return this;
        }

        public Builder withLocalizedNameResourceId(@StringRes int n2) {
            this.mLocalizedNameResId = n2;
            return this;
        }

        public Builder withSearchParams(Map<String, String> map) {
            this.mSearchParams = map;
            return this;
        }

        public Builder withUri(String string2) {
            this.mUri = string2;
            return this;
        }

        public Builder withWidgetImageUri(String string2) {
            this.mWidgetImage = string2;
            return this;
        }
    }

}

