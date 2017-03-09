/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.android.util;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class BulletedDekParser {
    private static final String EMPTY = "";
    private static final String LIST_ITEM_MATCH = "<li>(.+?)</li>";
    private static final Pattern LIST_ITEM_PATTERN = Pattern.compile("<li>(.+?)</li>");
    private static final String REMOVE_TAG_MATCH = "<[^>]*>";

    /*
     * Enabled aggressive block sorting
     */
    public static List<String> getBulletedDek(String object) {
        ArrayList<String> arrayList = new ArrayList<String>();
        if (object != null && object.length() != 0) {
            object = LIST_ITEM_PATTERN.matcher((CharSequence)object);
            while (object.find()) {
                arrayList.add(object.group(1).replaceAll("<[^>]*>", ""));
            }
        }
        return arrayList;
    }
}

