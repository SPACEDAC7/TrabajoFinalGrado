/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.toolkit.content;

import com.buzzfeed.toolkit.content.FlowItem;

public enum BuffetType {
    UNKNOWN,
    POST,
    QUIZ,
    TRENDING_SMALL,
    TRENDING,
    VIDEO_DEFAULT,
    VIDEO_FIXED_HEIGHT,
    BREAKING_BAR,
    VIDEO_AD,
    EDITORIAL_AD,
    FEATURED,
    FEATURED_QUIZ,
    TRENDING_QUIZ,
    TRENDING_FEED_TRENDING_QUIZ,
    SHOW,
    PACKAGE,
    BREAKING,
    BULLETED_LIST,
    BREAKING_BULLETED_LIST,
    FEATURED_PROXIMA_NOVA_TITLE;
    
    private static final BuffetType[] sValues;

    static {
        sValues = BuffetType.values();
    }

    private BuffetType() {
    }

    public static BuffetType fromFlowItem(FlowItem flowItem) {
        return BuffetType.valueOf(flowItem.getType());
    }

    public static BuffetType fromInt(int n2) {
        return sValues[n2];
    }

    public static int toInt(String string2) {
        return BuffetType.valueOf(string2).ordinal();
    }
}

