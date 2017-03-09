/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.buzzfeed.toolkit.util;

import android.content.Context;
import android.support.annotation.NonNull;
import com.buzzfeed.toolkit.constants.BuildFlavor;
import com.buzzfeed.toolkit.networking.Environment;
import com.buzzfeed.toolkit.util.EZUtil;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.Vault;

public class BFVault
extends Vault {
    private static final String BFPROPERTY_ADJUST_TOKEN = "adjustIoAppToken";
    private static final String BFPROPERTY_COMSCORE_TRACKING_ID = "comscoreCustomerC2";
    private static final String BFPROPERTY_COMSCORE_TRACKING_SECRET = "comscorePublisherSecret";
    private static final String BFPROPERTY_GOOGLE_ANALYTICS_ALPHA = "googleAnalyticsAccountIdAlpha";
    private static final String BFPROPERTY_GOOGLE_ANALYTICS_BETA = "googleAnalyticsAccountIdBeta";
    private static final String BFPROPERTY_GOOGLE_ANALYTICS_DEBUG = "googleAnalyticsAccountIdDev";
    private static final String BFPROPERTY_GOOGLE_ANALYTICS_INSTANT_APPS_DEBUG = "googleAnalyticsInstantAppAccountIdDev";
    private static final String BFPROPERTY_GOOGLE_ANALYTICS_INSTANT_APPS_RELEASE = "googleAnalyticsInstantAppAccountIdProd";
    private static final String BFPROPERTY_GOOGLE_ANALYTICS_QA = "googleAnalyticsAccountIdQA";
    private static final String BFPROPERTY_GOOGLE_ANALYTICS_RELEASE = "googleAnalyticsAccountIdProd";
    private static final String BFPROPERTY_GOOGLE_OAUTH2_CLIENT_ID_DEV = "googleOauth2ClientIdDev";
    private static final String BFPROPERTY_GOOGLE_OAUTH2_CLIENT_ID_PROD = "googleOauth2ClientIdProd";
    private static final String BFPROPERTY_GOOGLE_OAUTH2_CLIENT_ID_STAGE = "googleOauth2ClientIdStage";
    private static final String BFPROPERTY_GOOGLE_OAUTH2_CLIENT_ID_STAGE02 = "googleOauth2ClientIdStage02";
    private static final String BFPROPERTY_LOGIN_PASSWORD_DEV = "loginPasswordDev";
    private static final String BFPROPERTY_LOGIN_PASSWORD_STAGE = "loginPasswordStage";
    private static final String BFPROPERTY_LOGIN_USER_DEV = "loginUserDev";
    private static final String BFPROPERTY_LOGIN_USER_STAGE = "loginUserStage";
    private static final String BFPROPERTY_LOTAME_TRACKING_ID = "lotameClientId";
    private static final String BFPROPERTY_QUANTCAST_PUBLISHER_CODE = "quantcastPublisherCode";
    private static final String BFPROPERTY_TWITTER_CONSUMER_KEY = "twitterKeyProd";
    private static final String BFPROPERTY_TWITTER_CONSUMER_SECRET = "twitterSecretProd";
    private static final String BFPROPERTY_YOUTUBE_DEVELOPER_KEY = "youtubeDeveloperKey";
    private static final String PINTEREST_CLIENT_ID = "pinterestClientID";
    private static final String PROPERTIES_FILE = "buzzfeed.properties";
    private static final String TAG = LogUtil.makeLogTag(BFVault.class);
    private static final String URBAN_AIRSHIP_APP_ALPHA_KEY = "airshipAlphaAppKey";
    private static final String URBAN_AIRSHIP_APP_ALPHA_SECRET = "airshipAlphaAppSecret";
    private static final String URBAN_AIRSHIP_APP_MASTER_SECRET = "airshipAlphaMasterSecret";
    private static final String URBAN_AIRSHIP_APP_PROD_KEY = "airshipProductionAppKey";
    private static final String URBAN_AIRSHIP_APP_PROD_SECRET = "airshipProductionAppSecret";
    private static final String URBAN_AIRSHIP_GCM_SENDER = "airshipGcmSender";
    private static BFVault sInstance = null;
    private String mAdjustTrackingId;
    @NonNull
    private final BuildFlavor mBuildFlavor;
    private String mBuzzFeedLoginPassword;
    private String mBuzzFeedLoginUser;
    private String mComScoreTrackingId;
    private String mComScoreTrackingSecretId;
    @NonNull
    private final Environment mEnvironment;
    private String mGoogleAnalyticsAccountId;
    private String mGoogleAnalyticsInstantAppAccountId;
    private String mGoogleOAuthClientId;
    private String mLotameTrackingId;
    private String mPinterestClientID;
    private String mQuantCastTrackingId;
    private String mTwitterConsumerKey;
    private String mTwitterConsumerSecret;
    private String mUrbanAirShipAppAlphaKey;
    private String mUrbanAirShipGcmSender;
    private String mUrbanAirshipAppAlphaSecret;
    private String mUrbanAirshipAppProdKey;
    private String mUrbanAirshipAppProdSecret;
    private String mUrbanAirshipMasterDevSecret;
    private String mYouTubeDeveloperKey;

    BFVault(@NonNull Environment environment, @NonNull BuildFlavor buildFlavor) {
        this.mEnvironment = environment;
        this.mBuildFlavor = buildFlavor;
    }

    private void bindKeysForBuildFlavor() {
        switch (.$SwitchMap$com$buzzfeed$toolkit$constants$BuildFlavor[this.mBuildFlavor.ordinal()]) {
            default: {
                return;
            }
            case 1: {
                this.mGoogleAnalyticsAccountId = this.getProperty("googleAnalyticsAccountIdProd");
                this.mGoogleAnalyticsInstantAppAccountId = this.getProperty("googleAnalyticsInstantAppAccountIdProd");
                return;
            }
            case 2: {
                this.mGoogleAnalyticsAccountId = this.getProperty("googleAnalyticsAccountIdAlpha");
                this.mGoogleAnalyticsInstantAppAccountId = this.getProperty("googleAnalyticsInstantAppAccountIdProd");
                return;
            }
            case 3: {
                this.mGoogleAnalyticsAccountId = this.getProperty("googleAnalyticsAccountIdBeta");
                this.mGoogleAnalyticsInstantAppAccountId = this.getProperty("googleAnalyticsInstantAppAccountIdProd");
                return;
            }
            case 4: {
                this.mGoogleAnalyticsAccountId = this.getProperty("googleAnalyticsAccountIdQA");
                this.mGoogleAnalyticsInstantAppAccountId = this.getProperty("googleAnalyticsInstantAppAccountIdDev");
                return;
            }
            case 5: 
        }
        this.mGoogleAnalyticsAccountId = this.getProperty("googleAnalyticsAccountIdDev");
        this.mGoogleAnalyticsInstantAppAccountId = this.getProperty("googleAnalyticsInstantAppAccountIdDev");
    }

    private void bindKeysForEnvironment() {
        switch (.$SwitchMap$com$buzzfeed$toolkit$networking$Environment[this.mEnvironment.ordinal()]) {
            default: {
                this.mGoogleOAuthClientId = this.getProperty("googleOauth2ClientIdStage");
                this.mBuzzFeedLoginUser = this.getProperty("loginUserStage");
                this.mBuzzFeedLoginPassword = this.getProperty("loginPasswordStage");
                return;
            }
            case 1: {
                this.mGoogleOAuthClientId = this.getProperty("googleOauth2ClientIdDev");
                this.mBuzzFeedLoginUser = this.getProperty("loginUserDev");
                this.mBuzzFeedLoginPassword = this.getProperty("loginPasswordDev");
                return;
            }
            case 2: {
                this.mGoogleOAuthClientId = this.getProperty("googleOauth2ClientIdProd");
                return;
            }
            case 3: 
        }
        this.mGoogleOAuthClientId = this.getProperty("googleOauth2ClientIdStage02");
    }

    public static BFVault getInstance() {
        synchronized (BFVault.class) {
            BFVault bFVault = EZUtil.checkNotNull(sInstance, "BFVault must be initialized before calling getInstance().");
            return bFVault;
        }
    }

    public static void initialize(@NonNull Context context, @NonNull Environment environment, @NonNull BuildFlavor buildFlavor) {
        synchronized (BFVault.class) {
            if (sInstance == null) {
                EZUtil.checkNotNull(context, "Context must not be null.");
                EZUtil.checkNotNull(environment, "Environment must not be null.");
                EZUtil.checkNotNull(buildFlavor, "BuildFlavor must not be null.");
                sInstance = new BFVault(environment, buildFlavor);
                sInstance.openVault(context.getApplicationContext());
            }
            return;
        }
    }

    public String getAdjustTrackingId() {
        return this.mAdjustTrackingId;
    }

    public String getBuzzFeedUserLogin() {
        return this.mBuzzFeedLoginUser;
    }

    public String getBuzzFeedUserPassword() {
        return this.mBuzzFeedLoginPassword;
    }

    public String getComScoreTrackingId() {
        return this.mComScoreTrackingId;
    }

    public String getComScoreTrackingSecretId() {
        return this.mComScoreTrackingSecretId;
    }

    public String getGoogleAnalyticsAccountId() {
        return this.mGoogleAnalyticsAccountId;
    }

    public String getGoogleAnalyticsInstantAppsAccountId() {
        return this.mGoogleAnalyticsInstantAppAccountId;
    }

    public String getGoogleOAuthClientId() {
        return this.mGoogleOAuthClientId;
    }

    public String getLotameTrackingId() {
        return this.mLotameTrackingId;
    }

    public String getPinterestClientID() {
        return this.mPinterestClientID;
    }

    public String getQuantCastTrackingId() {
        return this.mQuantCastTrackingId;
    }

    public String getTwitterConsumerKey() {
        return this.mTwitterConsumerKey;
    }

    public String getTwitterConsumerSecret() {
        return this.mTwitterConsumerSecret;
    }

    public String getUrbanAirShipGcmSender() {
        return this.mUrbanAirShipGcmSender;
    }

    public String getUrbanAirshipAppAlphaKey() {
        return this.mUrbanAirShipAppAlphaKey;
    }

    public String getUrbanAirshipAppAlphaSecret() {
        return this.mUrbanAirshipAppAlphaSecret;
    }

    public String getUrbanAirshipAppProdKey() {
        return this.mUrbanAirshipAppProdKey;
    }

    public String getUrbanAirshipAppProdSecret() {
        return this.mUrbanAirshipAppProdSecret;
    }

    public String getUrbanAirshipMasterAlphaSecret() {
        return this.mUrbanAirshipMasterDevSecret;
    }

    public String getYouTubeDeveloperKey() {
        return this.mYouTubeDeveloperKey;
    }

    @Override
    public void openVault(Context context) {
        this.loadProperties(context, "buzzfeed.properties");
        LogUtil.i(TAG, "BFVault initializing with environment=" + (Object)((Object)this.mEnvironment) + ", buildFlavor=" + (Object)((Object)this.mBuildFlavor));
        this.bindKeysForBuildFlavor();
        this.bindKeysForEnvironment();
        this.mQuantCastTrackingId = this.getProperty("quantcastPublisherCode");
        this.mComScoreTrackingId = this.getProperty("comscoreCustomerC2");
        this.mComScoreTrackingSecretId = this.getProperty("comscorePublisherSecret");
        this.mAdjustTrackingId = this.getProperty("adjustIoAppToken");
        this.mLotameTrackingId = this.getProperty("lotameClientId");
        this.mUrbanAirShipGcmSender = this.getProperty("airshipGcmSender");
        this.mUrbanAirshipMasterDevSecret = this.getProperty("airshipAlphaMasterSecret");
        this.mUrbanAirShipAppAlphaKey = this.getProperty("airshipAlphaAppKey");
        this.mUrbanAirshipAppAlphaSecret = this.getProperty("airshipAlphaAppSecret");
        this.mUrbanAirshipAppProdKey = this.getProperty("airshipProductionAppKey");
        this.mUrbanAirshipAppProdSecret = this.getProperty("airshipProductionAppSecret");
        this.mYouTubeDeveloperKey = this.getProperty("youtubeDeveloperKey");
        this.mTwitterConsumerKey = this.getProperty("twitterKeyProd");
        this.mTwitterConsumerSecret = this.getProperty("twitterSecretProd");
        this.mPinterestClientID = this.getProperty("pinterestClientID");
    }

}

