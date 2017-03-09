/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.spicerack.data.factory;

import com.buzzfeed.spicerack.data.model.subbuzz.SubBuzz;

public enum SpiceType {
    IMAGE_LIST("image"),
    IMAGE_ARTICLE("image"),
    YOUTUBE("video"),
    VIDEO("video"),
    TEXT("text"),
    QUOTE("quote"),
    IMAGE_GROUP("image_group"),
    TWEET("tweet"),
    BREAKING_UPDATE("breaking_update"),
    CORRECTION("correction"),
    UPDATE("update"),
    LINK("link"),
    EMBED("embed"),
    HEADER("header"),
    LOADING("loading"),
    FALLBACK("fallback"),
    EMPTY("empty"),
    SHARE_BAR("share_bar"),
    CUSTOM_BOTTOM("custom_bottom");
    
    private static final SpiceType[] sValues;
    private String mForm;

    static {
        sValues = SpiceType.values();
    }

    private SpiceType(String string3) {
        this.mForm = string3;
    }

    public static SpiceType fromInt(int n2) {
        return sValues[n2];
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static SpiceType getSpiceType(String string2, SubBuzz subBuzz) {
        SpiceType[] arrspiceType = sValues;
        int n2 = arrspiceType.length;
        int n3 = 0;
        while (n3 < n2) {
            SpiceType spiceType = arrspiceType[n3];
            if ("image".equals(subBuzz.getForm())) {
                if (!string2.contains("list")) return IMAGE_ARTICLE;
                return IMAGE_LIST;
            }
            if ("embed".equals(subBuzz.getForm())) {
                if (subBuzz.isInstagramEmbed()) {
                    return EMBED;
                }
            } else {
                if ("video".equals(subBuzz.getForm())) {
                    if (!subBuzz.isYoutube()) return VIDEO;
                    return YOUTUBE;
                }
                SpiceType spiceType2 = spiceType;
                if (spiceType.getForm().equals(subBuzz.getForm())) return spiceType2;
            }
            ++n3;
        }
        return null;
    }

    public static int toInt(String string2) {
        return SpiceType.valueOf(string2).ordinal();
    }

    public String getForm() {
        return this.mForm;
    }
}

