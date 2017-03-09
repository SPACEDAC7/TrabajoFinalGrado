/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.net.Uri
 *  android.net.Uri$Builder
 */
package com.buzzfeed.spicerack.data.constant;

import android.net.Uri;
import com.buzzfeed.spicerack.data.constant.SpicerackConfig;
import com.buzzfeed.toolkit.util.LogUtil;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class Environment {
    public static final String BUZZFEED_DOMAIN_BASE = "buzzfeed.com";
    public static final String BUZZFEED_MOBILE_PARAM = "s=mobile_app";
    public static String BUZZ_URL;
    public static final String MOBILE_APP_PARAM_KEY = "s";
    public static final String MOBILE_APP_PARAM_VALUE = "mobile_app";
    private static final String SPICE_API_PREFIX = "api/v2/mobileapp/buzz";
    private static final String TAG;
    private static String bfUserAgent;

    static {
        TAG = LogUtil.makeLogTag(Environment.class);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static String appendMobileAppParam(String string2) {
        if (string2 == null) return "";
        if (string2.equals("")) {
            return "";
        }
        Iterator iterator = string2;
        if (!Environment.isBuzzFeedUrl(string2)) return iterator;
        Uri uri = Uri.parse((String)string2);
        String string3 = uri.getQueryParameter("s");
        if (string3 != null) {
            iterator = string2;
            if (string3.equals("s=mobile_app")) return iterator;
        }
        string2 = new Uri.Builder();
        string2.scheme(uri.getScheme()).authority(uri.getAuthority());
        iterator = uri.getPathSegments().iterator();
        while (iterator.hasNext()) {
            string2.appendPath((String)iterator.next());
        }
        if (uri.getQueryParameterNames().isEmpty()) {
            string2.appendQueryParameter("s", "mobile_app");
            return string2.build().toString();
        }
        iterator = uri.getQueryParameterNames().iterator();
        while (iterator.hasNext()) {
            string3 = (String)iterator.next();
            if (string3.equals("s")) {
                string2.appendQueryParameter("s", "mobile_app");
                continue;
            }
            string2.appendQueryParameter(string3, uri.getQueryParameter(string3));
        }
        return string2.build().toString();
    }

    public static String buildWebUrl(String string2) {
        Uri.Builder builder = Uri.parse((String)BUZZ_URL).buildUpon();
        builder.appendEncodedPath(Environment.stripLeadingSlash(string2));
        return Environment.appendMobileAppParam(builder.build().toString());
    }

    public static String getBFUserAgent() {
        return bfUserAgent;
    }

    public static String getSpiceUrl(String string2) {
        Uri.Builder builder = Uri.parse((String)SpicerackConfig.SPICERACK_URL).buildUpon();
        builder.appendEncodedPath("api/v2/mobileapp/buzz");
        builder.appendPath(string2);
        return builder.toString();
    }

    public static String getSpiceUrlFromUrl(String string2) {
        Uri.Builder builder = Uri.parse((String)SpicerackConfig.SPICERACK_URL).buildUpon();
        builder.appendEncodedPath("api/v2/mobileapp/buzz");
        builder.appendEncodedPath(Environment.stripLeadingSlash(string2));
        return builder.toString();
    }

    public static void initBaseUrl(String string2) {
        BUZZ_URL = string2;
        LogUtil.i(TAG, "Setting spicy environment base url to: " + BUZZ_URL);
    }

    public static boolean isBuzzFeedUrl(String arrstring) {
        if ((arrstring = arrstring.split("/")).length >= 3 && arrstring[2].endsWith("buzzfeed.com")) {
            return true;
        }
        return false;
    }

    public static void setUserAgent(String string2) {
        bfUserAgent = string2 + " (progressiveloading)";
    }

    private static String stripLeadingSlash(String string2) {
        String string3 = string2;
        if (string2 != null) {
            string3 = string2;
            if (string2.startsWith("/")) {
                string3 = string2.substring(1);
            }
        }
        return string3;
    }
}

