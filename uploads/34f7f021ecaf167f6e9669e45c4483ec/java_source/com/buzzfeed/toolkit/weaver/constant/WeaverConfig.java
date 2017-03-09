/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.toolkit.weaver.constant;

import com.buzzfeed.toolkit.util.LogUtil;

public class WeaverConfig {
    private static final String BUZZFEED_DOMAIN_BASE = "buzzfeed.com";
    public static final int CACHE_INTERVAL = 300000;
    public static final String HOME_FEED_PATH = "home";
    private static final String HTTPS_SCHEME = "https://";
    public static final String NEWS_FEED_PATH = "news";
    private static final String PROD_PREFIX = "weaver-api.";
    public static final String QUIZ_FEED_PATH = "quiz";
    public static final String SHOW_FEED_PREFIX = "shows-";
    private static final String STAGE_PREFIX = "weaver-api-stage.";
    private static final String TAG = LogUtil.makeLogTag(WeaverConfig.class);
    public static final String TRENDING_FEED_PATH = "trending";
    public static final String VIDEO_FEED_PATH = "videos";
    public static String WEAVER_URL;
    private static Environment sEnvironment;

    static {
        sEnvironment = Environment.STAGE;
    }

    public static void setEnvironment(Environment environment) {
        sEnvironment = environment;
        LogUtil.i(TAG, "Weaver Environment was set to " + (Object)((Object)environment));
        WeaverConfig.setEnvironmentUrls();
    }

    /*
     * Enabled aggressive block sorting
     */
    private static void setEnvironmentUrls() {
        switch (.$SwitchMap$com$buzzfeed$toolkit$weaver$constant$WeaverConfig$Environment[sEnvironment.ordinal()]) {
            case 1: {
                WEAVER_URL = "https://weaver-api.buzzfeed.com";
            }
            default: {
                break;
            }
            case 2: {
                WEAVER_URL = "https://weaver-api-stage.buzzfeed.com";
            }
        }
        LogUtil.i(TAG, "Weaver URL was set to " + WEAVER_URL);
    }

    public static enum Environment {
        PROD,
        STAGE;
        

        private Environment() {
        }
    }

}

