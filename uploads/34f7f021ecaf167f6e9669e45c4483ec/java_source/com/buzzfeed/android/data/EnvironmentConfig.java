/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.net.Uri
 *  android.net.Uri$Builder
 */
package com.buzzfeed.android.data;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import com.buzzfeed.android.data.preferences.EditionPreference;
import com.buzzfeed.android.data.preferences.ServerPreference;
import com.buzzfeed.android.util.BuzzUtils;
import com.buzzfeed.spicerack.data.constant.Environment;
import com.buzzfeed.spicerack.data.constant.SpicerackConfig;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.weaver.constant.WeaverConfig;

public class EnvironmentConfig {
    public static int JSON_CACHE_INTERVAL;
    public static final String TAG;
    private static ServerPreference sServerPreference;

    static {
        TAG = EnvironmentConfig.class.getSimpleName();
        JSON_CACHE_INTERVAL = 1800000;
    }

    public static void debugLog(Context context) {
        com.buzzfeed.toolkit.networking.Environment environment = EnvironmentConfig.getEnvironment();
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Base Url : ").append(environment.BASE_URL);
        stringBuilder.append("Base SSL Url : ").append(environment.BASE_SERVICE_URL);
        stringBuilder.append("Base Static Url : ").append(environment.BASE_STATIC_URL);
        stringBuilder.append("Ad Urls url :").append(EnvironmentConfig.getAdUrlsUrl(context.getApplicationContext()));
        stringBuilder.append("User Agreement Url : ").append(EnvironmentConfig.getUserAgreementUrl(context));
        stringBuilder.append("Privacy Policy Url : ").append(EnvironmentConfig.getPrivacyPolicyUrl());
        stringBuilder.append("Ad Choices Url : ").append(EnvironmentConfig.getAdChoicesUrl());
        LogUtil.d(TAG + ".debugLog", stringBuilder.toString());
    }

    private static void ensureInitialization() {
        if (sServerPreference == null) {
            throw new IllegalStateException("Need to call EnvironmentConfig.initialize() before using EnvironmentConfig");
        }
    }

    public static String getABExperimentUrl() {
        return EnvironmentConfig.getEnvironment().getABExperimentUrl();
    }

    public static String getAdChoicesUrl() {
        return EnvironmentConfig.getEnvironment().getAdChoicesUrl();
    }

    /*
     * Enabled aggressive block sorting
     */
    public static String getAdUrlsUrl(Context context) {
        int n2 = EnvironmentConfig.getEnvironment() == com.buzzfeed.toolkit.networking.Environment.DEVELOPMENT ? 2131296676 : 2131296960;
        String string2 = context.getResources().getString(n2);
        string2 = Uri.parse((String)(EnvironmentConfig.getEnvironment().BASE_STATIC_URL + string2)).buildUpon();
        string2.appendQueryParameter("country", EnvironmentConfig.getEdition(context.getApplicationContext()));
        return string2.build().toString();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static String getEdition(Context arrstring) {
        Object object;
        String string2 = TAG + ".getEdition";
        Object object2 = new EditionPreference((Context)arrstring).getValue();
        String string3 = arrstring.getString(2131296829);
        if (object2 != null) {
            object = object2;
            if (!object2.equals(string3)) return object;
        }
        LogUtil.w(string2, "Failed to retrieve edition, reverting to device language/country");
        object = object2 = BuzzUtils.getLocale((Context)arrstring);
        if (object2.equals("en-gb")) {
            object = "en-uk";
        }
        arrstring = arrstring.getResources().getStringArray(2131492874);
        for (int i2 = 0; i2 < arrstring.length; ++i2) {
            if (!arrstring[i2].equals(object)) continue;
            return object;
        }
        if (!object.startsWith("es")) return "en-us";
        return "es";
    }

    public static com.buzzfeed.toolkit.networking.Environment getEnvironment() {
        return com.buzzfeed.toolkit.networking.Environment.values()[EnvironmentConfig.getEnvironmentOrdinal()];
    }

    public static int getEnvironmentOrdinal() {
        synchronized (EnvironmentConfig.class) {
            EnvironmentConfig.ensureInitialization();
            int n2 = Integer.parseInt((String)sServerPreference.getValue());
            return n2;
        }
    }

    public static String getPrivacyPolicyUrl() {
        return EnvironmentConfig.getEnvironment().getPrivacyPolicy();
    }

    public static String getUrlWithBaseUrl(String string2) {
        com.buzzfeed.toolkit.networking.Environment environment = EnvironmentConfig.getEnvironment();
        return environment.BASE_URL + string2;
    }

    public static String getUrlWithSSLBaseUrl(String string2) {
        Object object = EnvironmentConfig.getEnvironment();
        StringBuilder stringBuilder = new StringBuilder().append(object.BASE_SERVICE_URL);
        object = string2;
        if (string2 == null) {
            object = "";
        }
        return stringBuilder.append((String)object).toString();
    }

    public static String getUrlWithStaticBaseUrl(String string2) {
        com.buzzfeed.toolkit.networking.Environment environment = EnvironmentConfig.getEnvironment();
        return environment.BASE_STATIC_URL + string2;
    }

    public static String getUserAgreementUrl(Context context) {
        return EnvironmentConfig.getEnvironment().getUserAgreementUrl(EnvironmentConfig.getEdition(context.getApplicationContext()));
    }

    public static String getWeaverEdition(Context object) {
        String string2;
        object = string2 = EnvironmentConfig.getEdition(object.getApplicationContext());
        if (string2.contains("-")) {
            object = string2.substring(string2.indexOf("-") + 1);
        }
        return object;
    }

    public static String getWeaverLanguage(Context object) {
        String string2;
        object = string2 = EnvironmentConfig.getEdition(object.getApplicationContext());
        if (string2.contains("-")) {
            object = string2.substring(0, string2.indexOf("-"));
        }
        return object;
    }

    public static void initialize(Context context) {
        synchronized (EnvironmentConfig.class) {
            sServerPreference = new ServerPreference(context.getApplicationContext());
            EnvironmentConfig.setupEnvironments();
            return;
        }
    }

    public static void initialize(Context context, com.buzzfeed.toolkit.networking.Environment environment) {
        synchronized (EnvironmentConfig.class) {
            sServerPreference = new ServerPreference(context.getApplicationContext());
            EnvironmentConfig.setEnvironmentPreference(environment);
            EnvironmentConfig.setupEnvironments();
            return;
        }
    }

    public static boolean isProductionBuild() {
        if (com.buzzfeed.toolkit.networking.Environment.PRODUCTION.ordinal() == 0) {
            return true;
        }
        return false;
    }

    public static boolean isProductionEnvironment() {
        if (EnvironmentConfig.getEnvironment() == com.buzzfeed.toolkit.networking.Environment.PRODUCTION) {
            return true;
        }
        return false;
    }

    public static boolean isStageEnvironment() {
        com.buzzfeed.toolkit.networking.Environment environment = EnvironmentConfig.getEnvironment();
        if (environment != com.buzzfeed.toolkit.networking.Environment.PRODUCTION && environment != com.buzzfeed.toolkit.networking.Environment.DEVELOPMENT) {
            return true;
        }
        return false;
    }

    public static void setEnvironment(com.buzzfeed.toolkit.networking.Environment environment) {
        synchronized (EnvironmentConfig.class) {
            EnvironmentConfig.ensureInitialization();
            EnvironmentConfig.setEnvironmentPreference(environment);
            EnvironmentConfig.setupEnvironments();
            return;
        }
    }

    private static void setEnvironmentPreference(com.buzzfeed.toolkit.networking.Environment environment) {
        String string2 = TAG + ".setEnvironmentPreference";
        sServerPreference.setValue(String.valueOf(environment.ordinal()));
        LogUtil.i(string2, "BuzzFeed Environment set to: " + (Object)((Object)environment));
    }

    /*
     * Enabled aggressive block sorting
     */
    private static void setupEnvironments() {
        if (EnvironmentConfig.isProductionEnvironment()) {
            WeaverConfig.setEnvironment(WeaverConfig.Environment.PROD);
            SpicerackConfig.setEnvironment(SpicerackConfig.Environment.PROD);
        } else {
            WeaverConfig.setEnvironment(WeaverConfig.Environment.STAGE);
            SpicerackConfig.setEnvironment(SpicerackConfig.Environment.STAGE);
        }
        Environment.initBaseUrl(EnvironmentConfig.getEnvironment().BASE_SERVICE_URL);
    }
}

