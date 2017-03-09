/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.android.widget;

class WidgetUtil {
    static final String FEED_TYPE_REACTION = "reaction";
    static final String FEED_TYPE_SECTION = "section";
    static final String VIEW_BUZZ_ID = "viewBuzzId";
    static final String VIEW_BUZZ_URI = "viewBuzzUri";
    static final String VIEW_FEED_NAME = "viewFeedName";
    static final String VIEW_FEED_URL = "viewFeedUrl";

    WidgetUtil() {
    }

    static String getWidgetFeedType(boolean bl) {
        if (bl) {
            return "reaction";
        }
        return "section";
    }
}

