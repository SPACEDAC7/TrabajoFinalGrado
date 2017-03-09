/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.spicerack.data.constant;

import com.buzzfeed.toolkit.util.LogUtil;

public class SpicerackConfig {
    private static final String BUZZFEED_DOMAIN_BASE = "buzzfeed.com";
    private static final String HTTPS_SCHEME = "https://";
    private static final String PROD_PREFIX = "spicerack.";
    public static String SPICERACK_URL;
    private static final String STAGE_PREFIX = "spicerack-stage.";
    private static final String TAG;
    private static Environment sEnvironment;

    static {
        TAG = LogUtil.makeLogTag(SpicerackConfig.class);
        sEnvironment = Environment.STAGE;
    }

    public static void setEnvironment(Environment environment) {
        sEnvironment = environment;
        LogUtil.i(TAG, "Spicerack Environment was set to " + (Object)((Object)environment));
        SpicerackConfig.setEnvironmentUrls();
    }

    /*
     * Enabled aggressive block sorting
     */
    private static void setEnvironmentUrls() {
        switch (.$SwitchMap$com$buzzfeed$spicerack$data$constant$SpicerackConfig$Environment[sEnvironment.ordinal()]) {
            case 1: {
                SPICERACK_URL = "https://spicerack.buzzfeed.com";
            }
            default: {
                break;
            }
            case 2: {
                SPICERACK_URL = "https://spicerack-stage.buzzfeed.com";
            }
        }
        LogUtil.i(TAG, "Spicerack URL was set to " + SPICERACK_URL);
    }

    public static enum Environment {
        PROD,
        STAGE;
        

        private Environment() {
        }
    }

}

