/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.net.Uri
 *  android.net.Uri$Builder
 */
package com.buzzfeed.ads.video;

import android.net.Uri;
import com.buzzfeed.ads.utils.AdConfig;
import com.buzzfeed.ads.utils.AdUtils;

public final class VideoAdTagBuilder {
    private static final String AUTHORITY = "pubads.g.doubleclick.net";
    private static final String CORRELATOR_KEY = "correlator";
    private static final String CUST_PARAMS_KEY = "cust_params";
    private static final String CUST_PARAMS_VALUE = "app=";
    private static final String ENV_KEY = "env";
    private static final String ENV_VALUE = "vp";
    private static final String GDFP_REQ_KEY = "gdfp_req";
    private static final String GDFP_REQ_VALUE = "1";
    private static final String H1_KEY = "h1";
    private static final String H1_VALUE = "en";
    private static final String IMPL_KEY = "impl";
    private static final String IMPL_VALUE = "s";
    private static final String IU_KEY = "iu";
    private static final String IU_STORY = "/videostory";
    private static final String OUTPUT_KEY = "output";
    private static final String OUTPUT_VALUE = "vast";
    private static final String PATH = "/gampad/ads";
    private static final String SCHEME = "https";
    private static final String SZ_KEY = "sz";
    private static final String SZ_VALUE = "300x250";
    private static final String UNVIEWED_POSITION_START_KEY = "unviewed_position_start";
    private static final String UNVIEWED_POSITION_START_VALUE = "1";

    public static String build(int n2, int n3, String string2, String string3) {
        string2 = AdUtils.buildIuBody(AdConfig.getTestAdType()) + AdUtils.getLanguagePath(string3) + string2 + "/videostory" + n2;
        string3 = new Uri.Builder();
        string3.scheme("https");
        string3.encodedAuthority("pubads.g.doubleclick.net");
        string3.encodedPath("/gampad/ads");
        string3.encodedQuery("iu=" + string2);
        string3.appendQueryParameter("env", "vp");
        string3.appendQueryParameter("gdfp_req", "1");
        string3.appendQueryParameter("impl", "s");
        string3.appendQueryParameter("output", "vast");
        string3.appendQueryParameter("sz", "300x250");
        string3.appendQueryParameter("h1", "en");
        string3.appendQueryParameter("cust_params", "app=" + n3);
        string3.appendQueryParameter("unviewed_position_start", "1");
        string3.appendQueryParameter("correlator", String.valueOf(System.currentTimeMillis()));
        return string3.build().toString();
    }
}

