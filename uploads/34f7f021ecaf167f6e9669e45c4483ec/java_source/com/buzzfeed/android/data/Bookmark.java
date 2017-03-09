/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.android.data;

import java.io.Serializable;

public class Bookmark
implements Serializable {
    private static final long serialVersionUID = 0;
    private String mId;
    private String mJson;
    private long mTimestamp;
    private String mType;

    public Bookmark(String string2, String string3, String string4, long l2) {
        this.mId = string2;
        this.mType = string3;
        this.mJson = string4;
        this.mTimestamp = l2;
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean equals(Object object) {
        boolean bl = true;
        boolean bl2 = false;
        if (this == object) {
            return true;
        }
        boolean bl3 = bl2;
        if (object == null) return bl3;
        bl3 = bl2;
        if (this.getClass() != object.getClass()) return bl3;
        object = (Bookmark)object;
        bl3 = bl2;
        if (this.mTimestamp != object.mTimestamp) return bl3;
        if (this.mId != null) {
            bl3 = bl2;
            if (!this.mId.equals(object.mId)) return bl3;
        } else if (object.mId != null) {
            return false;
        }
        if (this.mType != null) {
            bl3 = bl2;
            if (!this.mType.equals(object.mType)) return bl3;
        } else if (object.mType != null) {
            return false;
        }
        if (this.mJson == null) {
            if (object.mJson != null) return false;
            return bl;
        }
        bl3 = bl;
        if (this.mJson.equals(object.mJson)) return bl3;
        return false;
    }

    public String getId() {
        return this.mId;
    }

    public String getJson() {
        return this.mJson;
    }

    public long getTimestamp() {
        return this.mTimestamp;
    }

    public String getType() {
        return this.mType;
    }

    /*
     * Enabled aggressive block sorting
     */
    public int hashCode() {
        int n2 = 0;
        int n3 = this.mId != null ? this.mId.hashCode() : 0;
        int n4 = this.mType != null ? this.mType.hashCode() : 0;
        if (this.mJson != null) {
            n2 = this.mJson.hashCode();
        }
        return ((n3 * 31 + n4) * 31 + n2) * 31 + (int)(this.mTimestamp ^ this.mTimestamp >>> 32);
    }

    public Bookmark setId(String string2) {
        this.mId = string2;
        return this;
    }

    public Bookmark setJson(String string2) {
        this.mJson = string2;
        return this;
    }

    public Bookmark setTimestamp(long l2) {
        this.mTimestamp = l2;
        return this;
    }

    public Bookmark setType(String string2) {
        this.mType = string2;
        return this;
    }

    public String toString() {
        return "Bookmark{mId='" + this.mId + '\'' + ", mType='" + this.mType + '\'' + ", mJson='" + this.mJson + '\'' + ", mTimestamp=" + this.mTimestamp + '}';
    }
}

