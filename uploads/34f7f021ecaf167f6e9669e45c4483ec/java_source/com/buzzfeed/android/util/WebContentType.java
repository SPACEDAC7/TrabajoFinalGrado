/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.text.TextUtils
 */
package com.buzzfeed.android.util;

import android.text.TextUtils;

public enum WebContentType {
    FACEBOOK("https://m.facebook.com/plugins/"),
    SOUNDCLOUD(".soundcloud.com");
    
    public final String url;

    private WebContentType(String string3) {
        this.url = string3;
    }

    public static boolean hasSoundCloud(String string2) {
        if (TextUtils.isEmpty((CharSequence)string2)) {
            return false;
        }
        return string2.contains(WebContentType.SOUNDCLOUD.url);
    }

    public static boolean isFacebookPlugin(String string2) {
        if (TextUtils.isEmpty((CharSequence)string2)) {
            return false;
        }
        return string2.contains(WebContentType.FACEBOOK.url);
    }
}

