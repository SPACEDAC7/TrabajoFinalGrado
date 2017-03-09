.class public Lcom/buzzfeed/android/data/BuzzFeedApplication;
.super Landroid/support/multidex/MultiDexApplication;
.source "BuzzFeedApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/data/BuzzFeedApplication$ApplicationLifecycleCallbacks;
    }
.end annotation


# static fields
.field private static final APP_NAME:Ljava/lang/String; = "buzz_app"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mApplicationStateCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/buzzfeed/toolkit/util/ApplicationStateCallbacks;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 77
    const-class v0, Lcom/buzzfeed/android/data/BuzzFeedApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/data/BuzzFeedApplication;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/support/multidex/MultiDexApplication;-><init>()V

    .line 81
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/data/BuzzFeedApplication;->mApplicationStateCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 75
    sget-object v0, Lcom/buzzfeed/android/data/BuzzFeedApplication;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/buzzfeed/android/data/BuzzFeedApplication;)V
    .registers 1
    .param p0, "x0"    # Lcom/buzzfeed/android/data/BuzzFeedApplication;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/buzzfeed/android/data/BuzzFeedApplication;->notifyApplicationEnterForeground()V

    return-void
.end method

.method static synthetic access$300(Lcom/buzzfeed/android/data/BuzzFeedApplication;)V
    .registers 1
    .param p0, "x0"    # Lcom/buzzfeed/android/data/BuzzFeedApplication;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/buzzfeed/android/data/BuzzFeedApplication;->notifyApplicationEnterBackground()V

    return-void
.end method

.method private clearWebViewCache()V
    .registers 5

    .prologue
    .line 383
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-lt v2, v3, :cond_16

    .line 384
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 385
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieManager;->flush()V

    .line 395
    :goto_15
    return-void

    .line 387
    :cond_16
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v1

    .line 388
    .local v1, "cookieSyncMngr":Landroid/webkit/CookieSyncManager;
    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 389
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 390
    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 391
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 392
    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 393
    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V

    goto :goto_15
.end method

.method private initFromPreferences()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 209
    invoke-static {}, Lcom/buzzfeed/android/data/EnvironmentConfig;->isProductionBuild()Z

    move-result v5

    if-nez v5, :cond_65

    .line 210
    invoke-static {p0}, Lcom/buzzfeed/android/data/EnvironmentConfig;->initialize(Landroid/content/Context;)V

    .line 211
    new-instance v1, Lcom/buzzfeed/android/data/preferences/DebuggingPreference;

    invoke-direct {v1, p0}, Lcom/buzzfeed/android/data/preferences/DebuggingPreference;-><init>(Landroid/content/Context;)V

    .line 212
    .local v1, "debuggingPreference":Lcom/buzzfeed/android/data/preferences/DebuggingPreference;
    invoke-virtual {v1}, Lcom/buzzfeed/android/data/preferences/DebuggingPreference;->getValue()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->setDebug(Z)V

    .line 213
    new-instance v0, Lcom/buzzfeed/android/data/preferences/DebugTrackerPreference;

    invoke-direct {v0, p0}, Lcom/buzzfeed/android/data/preferences/DebugTrackerPreference;-><init>(Landroid/content/Context;)V

    .line 214
    .local v0, "debugTrackerKey":Lcom/buzzfeed/android/data/preferences/DebugTrackerPreference;
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/preferences/DebugTrackerPreference;->getValue()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v5}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->setDebug(Z)V

    .line 215
    new-instance v3, Lcom/buzzfeed/android/data/preferences/TestAdsPreference;

    invoke-direct {v3, p0}, Lcom/buzzfeed/android/data/preferences/TestAdsPreference;-><init>(Landroid/content/Context;)V

    .line 216
    .local v3, "testAdsPreference":Lcom/buzzfeed/android/data/preferences/TestAdsPreference;
    invoke-virtual {v3}, Lcom/buzzfeed/android/data/preferences/TestAdsPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/buzzfeed/ads/utils/AdConfig;->setTestAdType(I)V

    .line 217
    new-instance v4, Lcom/buzzfeed/android/data/preferences/VCRDebuggingPreference;

    invoke-direct {v4, p0}, Lcom/buzzfeed/android/data/preferences/VCRDebuggingPreference;-><init>(Landroid/content/Context;)V

    .line 218
    .local v4, "vcrDebuggingPreference":Lcom/buzzfeed/android/data/preferences/VCRDebuggingPreference;
    invoke-static {}, Lcom/buzzfeed/android/vcr/VCRConfig;->getInstance()Lcom/buzzfeed/android/vcr/VCRConfig;

    move-result-object v5

    invoke-virtual {v4}, Lcom/buzzfeed/android/data/preferences/VCRDebuggingPreference;->getValue()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/buzzfeed/android/vcr/VCRConfig;->setDebugLoggingEnabled(Z)V

    .line 228
    .end local v0    # "debugTrackerKey":Lcom/buzzfeed/android/data/preferences/DebugTrackerPreference;
    .end local v1    # "debuggingPreference":Lcom/buzzfeed/android/data/preferences/DebuggingPreference;
    .end local v3    # "testAdsPreference":Lcom/buzzfeed/android/data/preferences/TestAdsPreference;
    .end local v4    # "vcrDebuggingPreference":Lcom/buzzfeed/android/data/preferences/VCRDebuggingPreference;
    :goto_4e
    new-instance v2, Lcom/buzzfeed/android/data/preferences/PushNotificationPreference;

    invoke-direct {v2, p0}, Lcom/buzzfeed/android/data/preferences/PushNotificationPreference;-><init>(Landroid/content/Context;)V

    .line 229
    .local v2, "pushPreference":Lcom/buzzfeed/android/data/preferences/PushNotificationPreference;
    invoke-virtual {v2}, Lcom/buzzfeed/android/data/preferences/PushNotificationPreference;->isSet()Z

    move-result v5

    if-nez v5, :cond_61

    .line 230
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/buzzfeed/android/data/preferences/PushNotificationPreference;->setValue(Ljava/lang/Boolean;)V

    .line 233
    :cond_61
    invoke-static {p0}, Lcom/buzzfeed/android/data/EnvironmentConfig;->debugLog(Landroid/content/Context;)V

    .line 234
    return-void

    .line 221
    .end local v2    # "pushPreference":Lcom/buzzfeed/android/data/preferences/PushNotificationPreference;
    :cond_65
    sget-object v5, Lcom/buzzfeed/toolkit/networking/Environment;->PRODUCTION:Lcom/buzzfeed/toolkit/networking/Environment;

    invoke-static {p0, v5}, Lcom/buzzfeed/android/data/EnvironmentConfig;->initialize(Landroid/content/Context;Lcom/buzzfeed/toolkit/networking/Environment;)V

    .line 222
    invoke-static {v6}, Lcom/buzzfeed/toolkit/util/LogUtil;->setDebug(Z)V

    .line 223
    invoke-static {v6}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->setDebug(Z)V

    .line 224
    invoke-static {v6}, Lcom/buzzfeed/ads/utils/AdConfig;->setTestAdType(I)V

    .line 225
    invoke-static {}, Lcom/buzzfeed/android/vcr/VCRConfig;->getInstance()Lcom/buzzfeed/android/vcr/VCRConfig;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/buzzfeed/android/vcr/VCRConfig;->setDebugLoggingEnabled(Z)V

    goto :goto_4e
.end method

.method private initializeAdSettings()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 405
    invoke-static {p0}, Lcom/buzzfeed/android/util/BuzzUtils;->loadAndSetAdvertisingData(Landroid/content/Context;)V

    .line 406
    return-void
.end method

.method private initializeAnalyticsModule()V
    .registers 25

    .prologue
    .line 254
    new-instance v4, Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;

    const-string v19, "buzz_app"

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;-><init>(Ljava/lang/String;)V

    new-instance v19, Lcom/buzzfeed/android/data/tracking/BuzzFeedLoginStatusProvider;

    .line 255
    invoke-static/range {p0 .. p0}, Lcom/buzzfeed/android/data/BuzzUser;->getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/data/BuzzUser;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcom/buzzfeed/android/data/tracking/BuzzFeedLoginStatusProvider;-><init>(Lcom/buzzfeed/android/data/BuzzUser;)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;->withLoginStatusProvider(Lcom/buzzfeed/analytics/provider/LoginStatusProvider;)Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;

    move-result-object v4

    const-string v19, "production"

    .line 256
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;->withBuildEnvironment(Ljava/lang/String;)Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;

    move-result-object v4

    .line 257
    invoke-static/range {p0 .. p0}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getEdition(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;->withEdition(Ljava/lang/String;)Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;

    move-result-object v4

    .line 258
    invoke-static {}, Lcom/buzzfeed/android/data/EnvironmentConfig;->isProductionBuild()Z

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;->withProductionEnabled(Z)Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;

    move-result-object v4

    new-instance v19, Lcom/buzzfeed/android/data/preferences/PushNotificationPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/data/preferences/PushNotificationPreference;-><init>(Landroid/content/Context;)V

    .line 259
    invoke-virtual/range {v19 .. v19}, Lcom/buzzfeed/android/data/preferences/PushNotificationPreference;->getValue()Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;->withPushNotificationsEnabled(Z)Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;

    move-result-object v4

    .line 260
    invoke-virtual {v4}, Lcom/buzzfeed/analytics/Analytics$Configuration$Builder;->build()Lcom/buzzfeed/analytics/Analytics$Configuration;

    move-result-object v13

    .line 261
    .local v13, "configuration":Lcom/buzzfeed/analytics/Analytics$Configuration;
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/buzzfeed/analytics/Analytics;->initializeWith(Landroid/content/Context;Lcom/buzzfeed/analytics/Analytics$Configuration;)V

    .line 262
    invoke-static {}, Lcom/buzzfeed/android/data/EnvironmentConfig;->isProductionBuild()Z

    move-result v4

    if-eqz v4, :cond_dd

    const-string v12, "https://pixiedust.buzzfeed.com/events"

    .line 263
    .local v12, "apiUrl":Ljava/lang/String;
    :goto_5c
    new-instance v14, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherService;

    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/data/BuzzFeedApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v14, v4, v12}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherService;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 264
    .local v14, "dustbusterLauncherService":Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherService;
    new-instance v4, Lcom/buzzfeed/toolkit/doorbell/Doorbell;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/buzzfeed/toolkit/doorbell/Doorbell;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/buzzfeed/analytics/Analytics;->getInstance()Lcom/buzzfeed/analytics/Analytics;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/buzzfeed/analytics/Analytics;->getConfiguration()Lcom/buzzfeed/analytics/Analytics$Configuration;

    move-result-object v19

    new-instance v20, Lcom/buzzfeed/android/data/BuzzFeedApplication$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/data/BuzzFeedApplication$2;-><init>(Lcom/buzzfeed/android/data/BuzzFeedApplication;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v4, v1, v14, v2}, Lcom/buzzfeed/analytics/client/DustbusterClient;->initialize(Landroid/content/Context;Lcom/buzzfeed/toolkit/doorbell/Doorbell;Lcom/buzzfeed/analytics/Analytics$Configuration;Lcom/buzzfeed/toolkit/dustbuster/BaseDustbusterLauncher;Lcom/buzzfeed/analytics/client/SubscriptionProvider;)V

    .line 271
    invoke-static {}, Lcom/buzzfeed/toolkit/util/BFVault;->getInstance()Lcom/buzzfeed/toolkit/util/BFVault;

    move-result-object v18

    .line 272
    .local v18, "vault":Lcom/buzzfeed/toolkit/util/BFVault;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 274
    .local v16, "timestamp":J
    invoke-virtual/range {v18 .. v18}, Lcom/buzzfeed/toolkit/util/BFVault;->getQuantCastTrackingId()Ljava/lang/String;

    move-result-object v6

    .line 275
    .local v6, "quantCastTrackingId":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/buzzfeed/toolkit/util/BFVault;->getComScoreTrackingId()Ljava/lang/String;

    move-result-object v7

    .line 276
    .local v7, "comScoreTrackingId":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/buzzfeed/toolkit/util/BFVault;->getComScoreTrackingSecretId()Ljava/lang/String;

    move-result-object v8

    .line 277
    .local v8, "comScoreTrackingSecretId":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/buzzfeed/toolkit/util/BFVault;->getAdjustTrackingId()Ljava/lang/String;

    move-result-object v11

    .line 278
    .local v11, "adjustTrackingId":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/buzzfeed/toolkit/util/BFVault;->getLotameTrackingId()Ljava/lang/String;

    move-result-object v9

    .line 279
    .local v9, "lotameTrackingId":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/buzzfeed/toolkit/util/BFVault;->getGoogleAnalyticsAccountId()Ljava/lang/String;

    move-result-object v5

    .line 282
    .local v5, "googleAnalyticsAccountId":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_ca

    .line 283
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_ca

    .line 284
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_ca

    .line 285
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_ca

    .line 286
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_ca

    .line 287
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_15c

    .line 289
    :cond_ca
    invoke-static {}, Lcom/buzzfeed/android/data/EnvironmentConfig;->isProductionBuild()Z

    move-result v4

    if-eqz v4, :cond_e1

    .line 290
    const-string v15, "One or more required tracking ID\'s have not be set"

    .line 300
    .local v15, "message":Ljava/lang/String;
    :goto_d2
    sget-object v4, Lcom/buzzfeed/android/data/BuzzFeedApplication;->TAG:Ljava/lang/String;

    invoke-static {v4, v15}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    new-instance v4, Ljava/lang/Error;

    invoke-direct {v4, v15}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 262
    .end local v5    # "googleAnalyticsAccountId":Ljava/lang/String;
    .end local v6    # "quantCastTrackingId":Ljava/lang/String;
    .end local v7    # "comScoreTrackingId":Ljava/lang/String;
    .end local v8    # "comScoreTrackingSecretId":Ljava/lang/String;
    .end local v9    # "lotameTrackingId":Ljava/lang/String;
    .end local v11    # "adjustTrackingId":Ljava/lang/String;
    .end local v12    # "apiUrl":Ljava/lang/String;
    .end local v14    # "dustbusterLauncherService":Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherService;
    .end local v15    # "message":Ljava/lang/String;
    .end local v16    # "timestamp":J
    .end local v18    # "vault":Lcom/buzzfeed/toolkit/util/BFVault;
    :cond_dd
    const-string v12, "https://pixiedust-stage.buzzfeed.com/events"

    goto/16 :goto_5c

    .line 292
    .restart local v5    # "googleAnalyticsAccountId":Ljava/lang/String;
    .restart local v6    # "quantCastTrackingId":Ljava/lang/String;
    .restart local v7    # "comScoreTrackingId":Ljava/lang/String;
    .restart local v8    # "comScoreTrackingSecretId":Ljava/lang/String;
    .restart local v9    # "lotameTrackingId":Ljava/lang/String;
    .restart local v11    # "adjustTrackingId":Ljava/lang/String;
    .restart local v12    # "apiUrl":Ljava/lang/String;
    .restart local v14    # "dustbusterLauncherService":Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherService;
    .restart local v16    # "timestamp":J
    .restart local v18    # "vault":Lcom/buzzfeed/toolkit/util/BFVault;
    :cond_e1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "One or more required tracking ID\'s have not be set:\n  GOOGLE_ANALYTICS_ACCOUNT_ID: "

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v19, "\n"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v19, "  QUANTCAST_TRACKING_ID: "

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v19, "\n"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v19, "  COMSCORE_TRACKING_ID: "

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v19, "\n"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v19, "  COMSCORE_TRACKING_SECRET: "

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v19, "\n"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v19, "  ADJUST_TRACKING_ID: "

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v19, "\n"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v19, "  LOTAME_TRACKING_ID: "

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "message":Ljava/lang/String;
    goto/16 :goto_d2

    .line 304
    .end local v15    # "message":Ljava/lang/String;
    :cond_15c
    new-instance v10, Lcom/buzzfeed/analytics/AdjustConfigurationBuzzFeed;

    const/4 v4, 0x1

    invoke-direct {v10, v11, v4}, Lcom/buzzfeed/analytics/AdjustConfigurationBuzzFeed;-><init>(Ljava/lang/String;Z)V

    .local v10, "adjustConfiguration":Lcom/buzzfeed/analytics/adjust/AdjustConfiguration;
    move-object/from16 v4, p0

    .line 305
    invoke-static/range {v4 .. v10}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->onApplicationCreate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/buzzfeed/analytics/adjust/AdjustConfiguration;)V

    .line 314
    const/16 v4, 0x32

    invoke-static {v4}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->setTrackingLogMaxLines(I)V

    .line 316
    sget-object v4, Lcom/buzzfeed/android/data/BuzzFeedApplication;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Finished Analytics initialization (in "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v16

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x408f400000000000L

    div-double v20, v20, v22

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " secs)"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method private notifyApplicationEnterBackground()V
    .registers 4

    .prologue
    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/buzzfeed/android/data/BuzzFeedApplication;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".notifyApplicationEnterBackground"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Application is entering background."

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v1, p0, Lcom/buzzfeed/android/data/BuzzFeedApplication;->mApplicationStateCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/util/ApplicationStateCallbacks;

    .line 434
    .local v0, "callbacks":Lcom/buzzfeed/toolkit/util/ApplicationStateCallbacks;
    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/util/ApplicationStateCallbacks;->onApplicationEnterBackground()V

    goto :goto_20

    .line 436
    .end local v0    # "callbacks":Lcom/buzzfeed/toolkit/util/ApplicationStateCallbacks;
    :cond_30
    return-void
.end method

.method private notifyApplicationEnterForeground()V
    .registers 4

    .prologue
    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/buzzfeed/android/data/BuzzFeedApplication;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".notifyApplicationEnterForeground"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Application is entering foreground."

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v1, p0, Lcom/buzzfeed/android/data/BuzzFeedApplication;->mApplicationStateCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/util/ApplicationStateCallbacks;

    .line 419
    .local v0, "callbacks":Lcom/buzzfeed/toolkit/util/ApplicationStateCallbacks;
    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/util/ApplicationStateCallbacks;->onApplicationEnterForeground()V

    goto :goto_20

    .line 421
    .end local v0    # "callbacks":Lcom/buzzfeed/toolkit/util/ApplicationStateCallbacks;
    :cond_30
    return-void
.end method

.method private restoreBookmarks()V
    .registers 2

    .prologue
    .line 192
    invoke-static {p0}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    move-result-object v0

    .line 194
    .local v0, "bookmarkManager":Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->restoreBookmarks()V

    .line 195
    return-void
.end method

.method private setUpCalligraphy()V
    .registers 4

    .prologue
    .line 354
    new-instance v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;

    invoke-direct {v0}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;-><init>()V

    .line 355
    .local v0, "calligraphyConfigBuilder":Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;
    const-string v1, "fonts/ProximaNova-Reg.otf"

    invoke-virtual {v0, v1}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->setDefaultFontPath(Ljava/lang/String;)Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;

    move-result-object v1

    const v2, 0x7f010019

    invoke-virtual {v1, v2}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->setFontAttrId(I)Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;

    .line 356
    invoke-virtual {v0}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->build()Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    move-result-object v1

    invoke-static {v1}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->initDefault(Luk/co/chrisjenx/calligraphy/CalligraphyConfig;)V

    .line 357
    return-void
.end method

.method private setupLeakCanary()V
    .registers 5

    .prologue
    .line 198
    new-instance v1, Lcom/buzzfeed/android/data/preferences/LeakCanaryPreference;

    invoke-direct {v1, p0}, Lcom/buzzfeed/android/data/preferences/LeakCanaryPreference;-><init>(Landroid/content/Context;)V

    .line 199
    .local v1, "leakCanaryPreference":Lcom/buzzfeed/android/data/preferences/LeakCanaryPreference;
    invoke-virtual {v1}, Lcom/buzzfeed/android/data/preferences/LeakCanaryPreference;->getValue()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 200
    .local v0, "enabled":Z
    if-eqz v0, :cond_19

    .line 201
    sget-object v2, Lcom/buzzfeed/android/data/BuzzFeedApplication;->TAG:Ljava/lang/String;

    const-string v3, "Starting LeakCanary"

    invoke-static {v2, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static {p0}, Lcom/squareup/leakcanary/LeakCanary;->install(Landroid/app/Application;)Lcom/squareup/leakcanary/RefWatcher;

    .line 204
    :cond_19
    return-void
.end method

.method private setupNetworkService()V
    .registers 5

    .prologue
    .line 239
    invoke-static {}, Lcom/buzzfeed/android/data/EnvironmentConfig;->isProductionBuild()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 240
    invoke-static {}, Lcom/buzzfeed/toolkit/networking/NetworkConfig;->getInstance()Lcom/buzzfeed/toolkit/networking/NetworkConfig;

    move-result-object v2

    sget-object v3, Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;->NONE:Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;

    invoke-virtual {v2, v3}, Lcom/buzzfeed/toolkit/networking/NetworkConfig;->setLogLevel(Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;)V

    .line 246
    :goto_f
    invoke-static {}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getEnvironment()Lcom/buzzfeed/toolkit/networking/Environment;

    move-result-object v1

    .line 247
    .local v1, "environment":Lcom/buzzfeed/toolkit/networking/Environment;
    invoke-static {p0, v1}, Lcom/buzzfeed/toolkit/networking/NetworkService;->initialize(Landroid/content/Context;Lcom/buzzfeed/toolkit/networking/Environment;)V

    .line 248
    return-void

    .line 242
    .end local v1    # "environment":Lcom/buzzfeed/toolkit/networking/Environment;
    :cond_17
    new-instance v2, Lcom/buzzfeed/android/data/preferences/NetworkLoggingPreference;

    invoke-direct {v2, p0}, Lcom/buzzfeed/android/data/preferences/NetworkLoggingPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/buzzfeed/android/data/preferences/NetworkLoggingPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "curValue":Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/toolkit/networking/NetworkConfig;->getInstance()Lcom/buzzfeed/toolkit/networking/NetworkConfig;

    move-result-object v2

    invoke-static {v0}, Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;->getLogLevelWithName(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/buzzfeed/toolkit/networking/NetworkConfig;->setLogLevel(Lcom/buzzfeed/toolkit/networking/NetworkConfig$LogLevel;)V

    goto :goto_f
.end method

.method private setupUrbanAirship()V
    .registers 11

    .prologue
    const/4 v7, 0x1

    .line 320
    new-instance v8, Lcom/buzzfeed/android/data/preferences/PushNotificationPreference;

    invoke-direct {v8, p0}, Lcom/buzzfeed/android/data/preferences/PushNotificationPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8}, Lcom/buzzfeed/android/data/preferences/PushNotificationPreference;->getValue()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 321
    .local v0, "isPushNotificationsEnabled":Z
    invoke-static {}, Lcom/buzzfeed/toolkit/util/BFVault;->getInstance()Lcom/buzzfeed/toolkit/util/BFVault;

    move-result-object v6

    .line 322
    .local v6, "vault":Lcom/buzzfeed/toolkit/util/BFVault;
    new-instance v3, Lcom/buzzfeed/android/data/preferences/UAServerPreference;

    invoke-direct {v3, p0}, Lcom/buzzfeed/android/data/preferences/UAServerPreference;-><init>(Landroid/content/Context;)V

    .line 324
    .local v3, "preference":Lcom/buzzfeed/android/data/preferences/UAServerPreference;
    invoke-static {}, Lcom/buzzfeed/android/data/EnvironmentConfig;->isProductionBuild()Z

    move-result v8

    if-nez v8, :cond_25

    .line 325
    invoke-virtual {v3}, Lcom/buzzfeed/android/data/preferences/UAServerPreference;->getValue()Lcom/buzzfeed/android/data/preferences/UAServerPreference$UAServer;

    move-result-object v8

    sget-object v9, Lcom/buzzfeed/android/data/preferences/UAServerPreference$UAServer;->PRODUCTION:Lcom/buzzfeed/android/data/preferences/UAServerPreference$UAServer;

    if-ne v8, v9, :cond_58

    :cond_25
    move v5, v7

    .line 327
    .local v5, "useUAProdEnvironment":Z
    :goto_26
    if-eqz v5, :cond_5a

    invoke-virtual {v6}, Lcom/buzzfeed/toolkit/util/BFVault;->getUrbanAirshipAppProdKey()Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, "key":Ljava/lang/String;
    :goto_2c
    if-eqz v5, :cond_5f

    invoke-virtual {v6}, Lcom/buzzfeed/toolkit/util/BFVault;->getUrbanAirshipAppProdSecret()Ljava/lang/String;

    move-result-object v4

    .line 329
    .local v4, "secret":Ljava/lang/String;
    :goto_32
    new-instance v8, Lcom/urbanairship/AirshipConfigOptions$Builder;

    invoke-direct {v8}, Lcom/urbanairship/AirshipConfigOptions$Builder;-><init>()V

    .line 330
    invoke-virtual {v8, v1}, Lcom/urbanairship/AirshipConfigOptions$Builder;->setProductionAppKey(Ljava/lang/String;)Lcom/urbanairship/AirshipConfigOptions$Builder;

    move-result-object v8

    .line 331
    invoke-virtual {v8, v4}, Lcom/urbanairship/AirshipConfigOptions$Builder;->setProductionAppSecret(Ljava/lang/String;)Lcom/urbanairship/AirshipConfigOptions$Builder;

    move-result-object v8

    .line 332
    invoke-virtual {v8, v7}, Lcom/urbanairship/AirshipConfigOptions$Builder;->setInProduction(Z)Lcom/urbanairship/AirshipConfigOptions$Builder;

    move-result-object v7

    .line 333
    invoke-virtual {v6}, Lcom/buzzfeed/toolkit/util/BFVault;->getUrbanAirShipGcmSender()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/urbanairship/AirshipConfigOptions$Builder;->setGcmSender(Ljava/lang/String;)Lcom/urbanairship/AirshipConfigOptions$Builder;

    move-result-object v7

    .line 334
    invoke-virtual {v7}, Lcom/urbanairship/AirshipConfigOptions$Builder;->build()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v2

    .line 336
    .local v2, "options":Lcom/urbanairship/AirshipConfigOptions;
    new-instance v7, Lcom/buzzfeed/android/data/BuzzFeedApplication$3;

    invoke-direct {v7, p0, v0}, Lcom/buzzfeed/android/data/BuzzFeedApplication$3;-><init>(Lcom/buzzfeed/android/data/BuzzFeedApplication;Z)V

    invoke-static {p0, v2, v7}, Lcom/urbanairship/UAirship;->takeOff(Landroid/app/Application;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/UAirship$OnReadyCallback;)V

    .line 351
    return-void

    .line 325
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "options":Lcom/urbanairship/AirshipConfigOptions;
    .end local v4    # "secret":Ljava/lang/String;
    .end local v5    # "useUAProdEnvironment":Z
    :cond_58
    const/4 v5, 0x0

    goto :goto_26

    .line 327
    .restart local v5    # "useUAProdEnvironment":Z
    :cond_5a
    invoke-virtual {v6}, Lcom/buzzfeed/toolkit/util/BFVault;->getUrbanAirshipAppAlphaKey()Ljava/lang/String;

    move-result-object v1

    goto :goto_2c

    .line 328
    .restart local v1    # "key":Ljava/lang/String;
    :cond_5f
    invoke-virtual {v6}, Lcom/buzzfeed/toolkit/util/BFVault;->getUrbanAirshipAppAlphaSecret()Ljava/lang/String;

    move-result-object v4

    goto :goto_32
.end method

.method private setupVCR()V
    .registers 4

    .prologue
    .line 363
    new-instance v1, Lcom/buzzfeed/android/data/preferences/LimitMobileDataPreference;

    invoke-direct {v1, p0}, Lcom/buzzfeed/android/data/preferences/LimitMobileDataPreference;-><init>(Landroid/content/Context;)V

    .line 364
    .local v1, "limitMobileDataPreference":Lcom/buzzfeed/android/data/preferences/LimitMobileDataPreference;
    invoke-virtual {v1}, Lcom/buzzfeed/android/data/preferences/LimitMobileDataPreference;->getValue()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 365
    .local v0, "isLimitingEnabled":Z
    invoke-static {}, Lcom/buzzfeed/android/vcr/VCRConfig;->getInstance()Lcom/buzzfeed/android/vcr/VCRConfig;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/buzzfeed/android/vcr/VCRConfig;->setAdaptiveBitrateLimitingEnabled(Landroid/content/Context;Z)V

    .line 366
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 4
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 370
    invoke-super {p0, p1}, Landroid/support/multidex/MultiDexApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 371
    invoke-static {p0}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    .line 374
    new-instance v0, Lcom/buzzfeed/android/data/ActivityLifecycleListener;

    invoke-direct {v0}, Lcom/buzzfeed/android/data/ActivityLifecycleListener;-><init>()V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/data/BuzzFeedApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 375
    new-instance v0, Lcom/buzzfeed/android/data/BuzzFeedApplication$ApplicationLifecycleCallbacks;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/buzzfeed/android/data/BuzzFeedApplication$ApplicationLifecycleCallbacks;-><init>(Lcom/buzzfeed/android/data/BuzzFeedApplication;Lcom/buzzfeed/android/data/BuzzFeedApplication$1;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/data/BuzzFeedApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 376
    new-instance v0, Lcom/buzzfeed/android/vcr/util/VCRCacheCleaner;

    invoke-direct {v0}, Lcom/buzzfeed/android/vcr/util/VCRCacheCleaner;-><init>()V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/data/BuzzFeedApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 377
    new-instance v0, Lcom/buzzfeed/android/vcr/util/VCRApplicationBitrateLimiter;

    invoke-direct {v0, p0}, Lcom/buzzfeed/android/vcr/util/VCRApplicationBitrateLimiter;-><init>(Landroid/app/Application;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/data/BuzzFeedApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 378
    new-instance v0, Lcom/buzzfeed/android/activity/SplashActivity$SplashActivityBackgroundCallback;

    invoke-direct {v0}, Lcom/buzzfeed/android/activity/SplashActivity$SplashActivityBackgroundCallback;-><init>()V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/data/BuzzFeedApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 379
    return-void
.end method

.method public onCreate()V
    .registers 16

    .prologue
    const/4 v14, 0x1

    const-wide v12, 0x408f400000000000L

    .line 85
    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onCreate()V

    .line 86
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/buzzfeed/android/data/BuzzFeedApplication;->TAG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".onCreate"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "TAG":Ljava/lang/String;
    move-object v2, p0

    .line 91
    .local v2, "context":Landroid/content/Context;
    invoke-static {p0}, Lcom/squareup/leakcanary/LeakCanary;->isInAnalyzerProcess(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_26

    .line 188
    :goto_25
    return-void

    .line 102
    :cond_26
    invoke-direct {p0}, Lcom/buzzfeed/android/data/BuzzFeedApplication;->initFromPreferences()V

    .line 103
    invoke-static {}, Lcom/buzzfeed/toolkit/util/DeviceUtil;->logDeviceInfo()V

    .line 104
    invoke-direct {p0}, Lcom/buzzfeed/android/data/BuzzFeedApplication;->setupNetworkService()V

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 108
    .local v6, "ts":J
    invoke-static {}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getEnvironment()Lcom/buzzfeed/toolkit/networking/Environment;

    move-result-object v9

    sget-object v10, Lcom/buzzfeed/android/BuildConfig;->BUILD_FLAVOR:Lcom/buzzfeed/toolkit/constants/BuildFlavor;

    invoke-static {p0, v9, v10}, Lcom/buzzfeed/toolkit/util/BFVault;->initialize(Landroid/content/Context;Lcom/buzzfeed/toolkit/networking/Environment;Lcom/buzzfeed/toolkit/constants/BuildFlavor;)V

    .line 109
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Finished BuzzFeed Property initialization (in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    long-to-double v10, v10

    div-double/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " secs)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/buzzfeed/toolkit/util/BFVault;->getInstance()Lcom/buzzfeed/toolkit/util/BFVault;

    move-result-object v8

    .line 114
    .local v8, "vault":Lcom/buzzfeed/toolkit/util/BFVault;
    new-instance v5, Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    invoke-virtual {v8}, Lcom/buzzfeed/toolkit/util/BFVault;->getTwitterConsumerKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/buzzfeed/toolkit/util/BFVault;->getTwitterConsumerSecret()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v9, v10}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .local v5, "twitterAuthConfig":Lcom/twitter/sdk/android/core/TwitterAuthConfig;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 120
    const/4 v9, 0x3

    :try_start_75
    new-array v9, v9, [Lio/fabric/sdk/android/Kit;

    const/4 v10, 0x0

    new-instance v11, Lcom/twitter/sdk/android/core/TwitterCore;

    invoke-direct {v11, v5}, Lcom/twitter/sdk/android/core/TwitterCore;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/twitter/sdk/android/tweetui/TweetUi;

    invoke-direct {v11}, Lcom/twitter/sdk/android/tweetui/TweetUi;-><init>()V

    aput-object v11, v9, v10

    const/4 v10, 0x2

    new-instance v11, Lcom/crashlytics/android/Crashlytics;

    invoke-direct {v11}, Lcom/crashlytics/android/Crashlytics;-><init>()V

    aput-object v11, v9, v10

    invoke-static {p0, v9}, Lio/fabric/sdk/android/Fabric;->with(Landroid/content/Context;[Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric;

    .line 122
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/buzzfeed/toolkit/networking/Environment;->getEnvironmentWithPosition(I)Lcom/buzzfeed/toolkit/networking/Environment;

    move-result-object v1

    .line 123
    .local v1, "buildEnvironment":Lcom/buzzfeed/toolkit/networking/Environment;
    sget-object v9, Lcom/buzzfeed/android/data/BuzzFeedApplication$4;->$SwitchMap$com$buzzfeed$toolkit$networking$Environment:[I

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/networking/Environment;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_1ba

    .line 133
    const-string v9, "environment"

    const-string v10, "Staging"

    invoke-static {v9, v10}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v9, "Crashlytics environment set to Staging"

    invoke-static {v0, v9}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :goto_ae
    const-string v9, "Crashlytics initialized"

    invoke-static {v0, v9}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_b3} :catch_19e

    .line 141
    .end local v1    # "buildEnvironment":Lcom/buzzfeed/toolkit/networking/Environment;
    :goto_b3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Finished Crashlytics initialization (in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    long-to-double v10, v10

    div-double/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " secs)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/buzzfeed/android/data/EnvironmentConfig;->isProductionBuild()Z

    move-result v9

    if-nez v9, :cond_1b4

    .line 143
    new-instance v3, Lcom/buzzfeed/android/data/preferences/CrashlyticsPreference;

    invoke-direct {v3, v2}, Lcom/buzzfeed/android/data/preferences/CrashlyticsPreference;-><init>(Landroid/content/Context;)V

    .line 144
    .local v3, "crashlyticsPreference":Lcom/buzzfeed/android/data/preferences/CrashlyticsPreference;
    invoke-virtual {v3}, Lcom/buzzfeed/android/data/preferences/CrashlyticsPreference;->getValue()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-static {v9}, Lcom/buzzfeed/toolkit/util/LogUtil;->setCrashlyticsActive(Z)V

    .line 149
    .end local v3    # "crashlyticsPreference":Lcom/buzzfeed/android/data/preferences/CrashlyticsPreference;
    :goto_ec
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "User Agent Suffix is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p0}, Lcom/buzzfeed/android/util/BuzzUtils;->getBuzzFeedUserAgentSuffix(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-direct {p0}, Lcom/buzzfeed/android/data/BuzzFeedApplication;->initializeAnalyticsModule()V

    .line 158
    invoke-direct {p0}, Lcom/buzzfeed/android/data/BuzzFeedApplication;->setupLeakCanary()V

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 161
    invoke-direct {p0}, Lcom/buzzfeed/android/data/BuzzFeedApplication;->initializeAdSettings()V

    .line 162
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Finished Ad Settings initialization (in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    long-to-double v10, v10

    div-double/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " secs)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 166
    invoke-static {v2}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 167
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Finished Facebook initialization (in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    long-to-double v10, v10

    div-double/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " secs)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {p0}, Lcom/buzzfeed/android/util/BFRateMe;->getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/util/BFRateMe;

    move-result-object v9

    invoke-virtual {v9}, Lcom/buzzfeed/android/util/BFRateMe;->onLaunch()V

    .line 173
    const v9, 0x7f110006

    invoke-static {v9}, Lcom/bumptech/glide/request/target/ViewTarget;->setTagId(I)V

    .line 174
    invoke-virtual {v8}, Lcom/buzzfeed/toolkit/util/BFVault;->getPinterestClientID()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->setupPinterest(Ljava/lang/String;)V

    .line 175
    new-instance v9, Lcom/buzzfeed/android/data/BuzzFeedApplication$1;

    invoke-direct {v9, p0}, Lcom/buzzfeed/android/data/BuzzFeedApplication$1;-><init>(Lcom/buzzfeed/android/data/BuzzFeedApplication;)V

    invoke-static {v9}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->setPoundEnabledProvider(Lcom/buzzfeed/toolkit/sharmo/ShareManager$PoundEnabledProvider;)V

    .line 182
    invoke-direct {p0}, Lcom/buzzfeed/android/data/BuzzFeedApplication;->setupUrbanAirship()V

    .line 183
    invoke-direct {p0}, Lcom/buzzfeed/android/data/BuzzFeedApplication;->setupVCR()V

    .line 184
    invoke-direct {p0}, Lcom/buzzfeed/android/data/BuzzFeedApplication;->setUpCalligraphy()V

    .line 185
    invoke-direct {p0}, Lcom/buzzfeed/android/data/BuzzFeedApplication;->clearWebViewCache()V

    .line 186
    invoke-static {p0}, Lcom/buzzfeed/android/data/login/GoogleLoginManager;->initialize(Landroid/content/Context;)V

    .line 187
    invoke-direct {p0}, Lcom/buzzfeed/android/data/BuzzFeedApplication;->restoreBookmarks()V

    goto/16 :goto_25

    .line 125
    .restart local v1    # "buildEnvironment":Lcom/buzzfeed/toolkit/networking/Environment;
    :pswitch_190
    :try_start_190
    const-string v9, "environment"

    const-string v10, "Production"

    invoke-static {v9, v10}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v9, "Crashlytics environment set to Production"

    invoke-static {v0, v9}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19c
    .catch Ljava/lang/Exception; {:try_start_190 .. :try_end_19c} :catch_19e

    goto/16 :goto_ae

    .line 138
    .end local v1    # "buildEnvironment":Lcom/buzzfeed/toolkit/networking/Environment;
    :catch_19e
    move-exception v4

    .line 139
    .local v4, "e":Ljava/lang/Exception;
    const-string v9, "Error initializing Crashlytics"

    invoke-static {v0, v9, v4}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b3

    .line 129
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "buildEnvironment":Lcom/buzzfeed/toolkit/networking/Environment;
    :pswitch_1a6
    :try_start_1a6
    const-string v9, "environment"

    const-string v10, "Development"

    invoke-static {v9, v10}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v9, "Crashlytics environment set to Development"

    invoke-static {v0, v9}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b2
    .catch Ljava/lang/Exception; {:try_start_1a6 .. :try_end_1b2} :catch_19e

    goto/16 :goto_ae

    .line 146
    .end local v1    # "buildEnvironment":Lcom/buzzfeed/toolkit/networking/Environment;
    :cond_1b4
    invoke-static {v14}, Lcom/buzzfeed/toolkit/util/LogUtil;->setCrashlyticsActive(Z)V

    goto/16 :goto_ec

    .line 123
    nop

    :pswitch_data_1ba
    .packed-switch 0x1
        :pswitch_190
        :pswitch_1a6
    .end packed-switch
.end method

.method public onTerminate()V
    .registers 3

    .prologue
    .line 399
    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onTerminate()V

    .line 400
    sget-object v0, Lcom/buzzfeed/android/data/BuzzFeedApplication;->TAG:Ljava/lang/String;

    const-string v1, "onTerminate"

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    return-void
.end method

.method public registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .registers 3
    .param p1, "callback"    # Landroid/app/Application$ActivityLifecycleCallbacks;

    .prologue
    .line 410
    invoke-super {p0, p1}, Landroid/support/multidex/MultiDexApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 411
    instance-of v0, p1, Lcom/buzzfeed/toolkit/util/ApplicationStateCallbacks;

    if-eqz v0, :cond_e

    .line 412
    iget-object v0, p0, Lcom/buzzfeed/android/data/BuzzFeedApplication;->mApplicationStateCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast p1, Lcom/buzzfeed/toolkit/util/ApplicationStateCallbacks;

    .end local p1    # "callback":Landroid/app/Application$ActivityLifecycleCallbacks;
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    :cond_e
    return-void
.end method

.method public unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .registers 3
    .param p1, "callback"    # Landroid/app/Application$ActivityLifecycleCallbacks;

    .prologue
    .line 425
    invoke-super {p0, p1}, Landroid/support/multidex/MultiDexApplication;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 426
    instance-of v0, p1, Lcom/buzzfeed/toolkit/util/ApplicationStateCallbacks;

    if-eqz v0, :cond_c

    .line 427
    iget-object v0, p0, Lcom/buzzfeed/android/data/BuzzFeedApplication;->mApplicationStateCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 429
    :cond_c
    return-void
.end method
