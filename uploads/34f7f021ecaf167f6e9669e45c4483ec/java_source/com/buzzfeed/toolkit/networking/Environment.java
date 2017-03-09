/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.net.Uri
 *  android.net.Uri$Builder
 *  android.text.TextUtils
 */
package com.buzzfeed.toolkit.networking;

import android.net.Uri;
import android.support.annotation.Nullable;
import android.text.TextUtils;

public enum Environment {
    PRODUCTION("http://www.buzzfeed.com", "https://www.buzzfeed.com", "https://webappstatic.buzzfeed.com", "android."),
    DEVELOPMENT("http://dev.buzzfeed.com/bf2", "http://dev.buzzfeed.com/bf2", "https://webappstatic-stage.buzzfeed.com", "dev.android."),
    STAGE("http://stage.buzzfeed.com", "https://stage.buzzfeed.com", "https://webappstatic-stage.buzzfeed.com", "stage.android."),
    STAGE02("http://stage02.buzzfeed.com", "https://stage02.buzzfeed.com", "https://webappstatic-stage02.buzzfeed.com", "stage02.android."),
    QA01("http://qa01.buzzfeed.com", "https://qa01.buzzfeed.com", "https://webappstatic-qa01.buzzfeed.com", "qa01.android."),
    QA02("http://qa02.buzzfeed.com", "https://qa02.buzzfeed.com", "https://webappstatic-qa02.buzzfeed.com", "qa02.android."),
    QA03("http://qa03.buzzfeed.com", "https://qa03.buzzfeed.com", "https://webappstatic-qa03.buzzfeed.com", "qa03.android."),
    QA04("http://qa04.buzzfeed.com", "https://qa04.buzzfeed.com", "https://webappstatic-qa04.buzzfeed.com", "qa04.android."),
    QA05("http://qa05.buzzfeed.com", "https://qa05.buzzfeed.com", "https://webappstatic-qa05.buzzfeed.com", "qa05.android."),
    QA06("http://qa06.buzzfeed.com", "https://qa06.buzzfeed.com", "https://webappstatic-qa06.buzzfeed.com", "qa06.android.");
    
    public static final String COUNTRY_PARAM = "country";
    private final String AB_EXPERIMENT_URL;
    private final String AD_CHOICES_URL;
    public final String BASE_SERVICE_URL;
    public final String BASE_STATIC_URL;
    public final String BASE_URL;
    public final String BUZZFEED_ANDROID_DOMAIN;
    private final String FEED_LIST_URL;
    private final String PRIVACY_POLICY_URL;
    private final String USER_AGREEMENT_URL;

    private Environment(String string3, String string4, String string5, String string6) {
        this.BASE_URL = string3;
        this.BUZZFEED_ANDROID_DOMAIN = string6 + "buzzfeed.com";
        this.USER_AGREEMENT_URL = this.BASE_URL + "/about/useragreement";
        this.PRIVACY_POLICY_URL = this.BASE_URL + "/about/privacy";
        this.AD_CHOICES_URL = this.BASE_URL + "/about/privacy#adchoices";
        this.BASE_SERVICE_URL = string4;
        this.BASE_STATIC_URL = string5;
        this.AB_EXPERIMENT_URL = this.BASE_STATIC_URL + "/static/mobile/js/bf-android-ab-experiments.json";
        this.FEED_LIST_URL = this.BASE_STATIC_URL + "/static/mobile/js/feed.js";
    }

    public static Environment getEnvironmentWithPosition(int n2) {
        return Environment.values()[n2];
    }

    public String getABExperimentUrl() {
        return this.AB_EXPERIMENT_URL;
    }

    public String getAdChoicesUrl() {
        return this.AD_CHOICES_URL;
    }

    public String getFeedListUrl(String string2) {
        if (!TextUtils.isEmpty((CharSequence)string2)) {
            return Uri.parse((String)this.FEED_LIST_URL).buildUpon().appendQueryParameter("country", string2).toString();
        }
        return this.FEED_LIST_URL;
    }

    public String getPrivacyPolicy() {
        return this.PRIVACY_POLICY_URL;
    }

    public String getUserAgreementUrl(@Nullable String string2) {
        if (!TextUtils.isEmpty((CharSequence)string2)) {
            return Uri.parse((String)this.USER_AGREEMENT_URL).buildUpon().appendQueryParameter("country", string2).toString();
        }
        return this.USER_AGREEMENT_URL;
    }
}

