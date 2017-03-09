.class public Lcom/buzzfeed/toolkit/util/BFVault;
.super Lcom/buzzfeed/toolkit/util/Vault;
.source "BFVault.java"


# static fields
.field private static final BFPROPERTY_ADJUST_TOKEN:Ljava/lang/String; = "adjustIoAppToken"

.field private static final BFPROPERTY_COMSCORE_TRACKING_ID:Ljava/lang/String; = "comscoreCustomerC2"

.field private static final BFPROPERTY_COMSCORE_TRACKING_SECRET:Ljava/lang/String; = "comscorePublisherSecret"

.field private static final BFPROPERTY_GOOGLE_ANALYTICS_ALPHA:Ljava/lang/String; = "googleAnalyticsAccountIdAlpha"

.field private static final BFPROPERTY_GOOGLE_ANALYTICS_BETA:Ljava/lang/String; = "googleAnalyticsAccountIdBeta"

.field private static final BFPROPERTY_GOOGLE_ANALYTICS_DEBUG:Ljava/lang/String; = "googleAnalyticsAccountIdDev"

.field private static final BFPROPERTY_GOOGLE_ANALYTICS_INSTANT_APPS_DEBUG:Ljava/lang/String; = "googleAnalyticsInstantAppAccountIdDev"

.field private static final BFPROPERTY_GOOGLE_ANALYTICS_INSTANT_APPS_RELEASE:Ljava/lang/String; = "googleAnalyticsInstantAppAccountIdProd"

.field private static final BFPROPERTY_GOOGLE_ANALYTICS_QA:Ljava/lang/String; = "googleAnalyticsAccountIdQA"

.field private static final BFPROPERTY_GOOGLE_ANALYTICS_RELEASE:Ljava/lang/String; = "googleAnalyticsAccountIdProd"

.field private static final BFPROPERTY_GOOGLE_OAUTH2_CLIENT_ID_DEV:Ljava/lang/String; = "googleOauth2ClientIdDev"

.field private static final BFPROPERTY_GOOGLE_OAUTH2_CLIENT_ID_PROD:Ljava/lang/String; = "googleOauth2ClientIdProd"

.field private static final BFPROPERTY_GOOGLE_OAUTH2_CLIENT_ID_STAGE:Ljava/lang/String; = "googleOauth2ClientIdStage"

.field private static final BFPROPERTY_GOOGLE_OAUTH2_CLIENT_ID_STAGE02:Ljava/lang/String; = "googleOauth2ClientIdStage02"

.field private static final BFPROPERTY_LOGIN_PASSWORD_DEV:Ljava/lang/String; = "loginPasswordDev"

.field private static final BFPROPERTY_LOGIN_PASSWORD_STAGE:Ljava/lang/String; = "loginPasswordStage"

.field private static final BFPROPERTY_LOGIN_USER_DEV:Ljava/lang/String; = "loginUserDev"

.field private static final BFPROPERTY_LOGIN_USER_STAGE:Ljava/lang/String; = "loginUserStage"

.field private static final BFPROPERTY_LOTAME_TRACKING_ID:Ljava/lang/String; = "lotameClientId"

.field private static final BFPROPERTY_QUANTCAST_PUBLISHER_CODE:Ljava/lang/String; = "quantcastPublisherCode"

.field private static final BFPROPERTY_TWITTER_CONSUMER_KEY:Ljava/lang/String; = "twitterKeyProd"

.field private static final BFPROPERTY_TWITTER_CONSUMER_SECRET:Ljava/lang/String; = "twitterSecretProd"

.field private static final BFPROPERTY_YOUTUBE_DEVELOPER_KEY:Ljava/lang/String; = "youtubeDeveloperKey"

.field private static final PINTEREST_CLIENT_ID:Ljava/lang/String; = "pinterestClientID"

.field private static final PROPERTIES_FILE:Ljava/lang/String; = "buzzfeed.properties"

.field private static final TAG:Ljava/lang/String;

.field private static final URBAN_AIRSHIP_APP_ALPHA_KEY:Ljava/lang/String; = "airshipAlphaAppKey"

.field private static final URBAN_AIRSHIP_APP_ALPHA_SECRET:Ljava/lang/String; = "airshipAlphaAppSecret"

.field private static final URBAN_AIRSHIP_APP_MASTER_SECRET:Ljava/lang/String; = "airshipAlphaMasterSecret"

.field private static final URBAN_AIRSHIP_APP_PROD_KEY:Ljava/lang/String; = "airshipProductionAppKey"

.field private static final URBAN_AIRSHIP_APP_PROD_SECRET:Ljava/lang/String; = "airshipProductionAppSecret"

.field private static final URBAN_AIRSHIP_GCM_SENDER:Ljava/lang/String; = "airshipGcmSender"

.field private static sInstance:Lcom/buzzfeed/toolkit/util/BFVault;


# instance fields
.field private mAdjustTrackingId:Ljava/lang/String;

.field private final mBuildFlavor:Lcom/buzzfeed/toolkit/constants/BuildFlavor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mBuzzFeedLoginPassword:Ljava/lang/String;

.field private mBuzzFeedLoginUser:Ljava/lang/String;

.field private mComScoreTrackingId:Ljava/lang/String;

.field private mComScoreTrackingSecretId:Ljava/lang/String;

.field private final mEnvironment:Lcom/buzzfeed/toolkit/networking/Environment;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mGoogleAnalyticsAccountId:Ljava/lang/String;

.field private mGoogleAnalyticsInstantAppAccountId:Ljava/lang/String;

.field private mGoogleOAuthClientId:Ljava/lang/String;

.field private mLotameTrackingId:Ljava/lang/String;

.field private mPinterestClientID:Ljava/lang/String;

.field private mQuantCastTrackingId:Ljava/lang/String;

.field private mTwitterConsumerKey:Ljava/lang/String;

.field private mTwitterConsumerSecret:Ljava/lang/String;

.field private mUrbanAirShipAppAlphaKey:Ljava/lang/String;

.field private mUrbanAirShipGcmSender:Ljava/lang/String;

.field private mUrbanAirshipAppAlphaSecret:Ljava/lang/String;

.field private mUrbanAirshipAppProdKey:Ljava/lang/String;

.field private mUrbanAirshipAppProdSecret:Ljava/lang/String;

.field private mUrbanAirshipMasterDevSecret:Ljava/lang/String;

.field private mYouTubeDeveloperKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const-class v0, Lcom/buzzfeed/toolkit/util/BFVault;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/toolkit/util/BFVault;->TAG:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/buzzfeed/toolkit/util/BFVault;->sInstance:Lcom/buzzfeed/toolkit/util/BFVault;

    return-void
.end method

.method constructor <init>(Lcom/buzzfeed/toolkit/networking/Environment;Lcom/buzzfeed/toolkit/constants/BuildFlavor;)V
    .registers 3
    .param p1, "environment"    # Lcom/buzzfeed/toolkit/networking/Environment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "buildFlavor"    # Lcom/buzzfeed/toolkit/constants/BuildFlavor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/util/Vault;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mEnvironment:Lcom/buzzfeed/toolkit/networking/Environment;

    .line 127
    iput-object p2, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mBuildFlavor:Lcom/buzzfeed/toolkit/constants/BuildFlavor;

    .line 128
    return-void
.end method

.method private bindKeysForBuildFlavor()V
    .registers 3

    .prologue
    .line 160
    sget-object v0, Lcom/buzzfeed/toolkit/util/BFVault$1;->$SwitchMap$com$buzzfeed$toolkit$constants$BuildFlavor:[I

    iget-object v1, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mBuildFlavor:Lcom/buzzfeed/toolkit/constants/BuildFlavor;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/constants/BuildFlavor;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_64

    .line 182
    :goto_d
    return-void

    .line 162
    :pswitch_e
    const-string v0, "googleAnalyticsAccountIdProd"

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/BFVault;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mGoogleAnalyticsAccountId:Ljava/lang/String;

    .line 163
    const-string v0, "googleAnalyticsInstantAppAccountIdProd"

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/BFVault;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mGoogleAnalyticsInstantAppAccountId:Ljava/lang/String;

    goto :goto_d

    .line 166
    :pswitch_1f
    const-string v0, "googleAnalyticsAccountIdAlpha"

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/BFVault;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mGoogleAnalyticsAccountId:Ljava/lang/String;

    .line 167
    const-string v0, "googleAnalyticsInstantAppAccountIdProd"

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/BFVault;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mGoogleAnalyticsInstantAppAccountId:Ljava/lang/String;

    goto :goto_d

    .line 170
    :pswitch_30
    const-string v0, "googleAnalyticsAccountIdBeta"

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/BFVault;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mGoogleAnalyticsAccountId:Ljava/lang/String;

    .line 171
    const-string v0, "googleAnalyticsInstantAppAccountIdProd"

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/BFVault;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mGoogleAnalyticsInstantAppAccountId:Ljava/lang/String;

    goto :goto_d

    .line 174
    :pswitch_41
    const-string v0, "googleAnalyticsAccountIdQA"

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/BFVault;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mGoogleAnalyticsAccountId:Ljava/lang/String;

    .line 175
    const-string v0, "googleAnalyticsInstantAppAccountIdDev"

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/BFVault;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mGoogleAnalyticsInstantAppAccountId:Ljava/lang/String;

    goto :goto_d

    .line 178
    :pswitch_52
    const-string v0, "googleAnalyticsAccountIdDev"

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/BFVault;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mGoogleAnalyticsAccountId:Ljava/lang/String;

    .line 179
    const-string v0, "googleAnalyticsInstantAppAccountIdDev"

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/BFVault;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mGoogleAnalyticsInstantAppAccountId:Ljava/lang/String;

    goto :goto_d

    .line 160
    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_e
        :pswitch_1f
        :pswitch_30
        :pswitch_41
        :pswitch_52
    .end packed-switch
.end method

.method private bindKeysForEnvironment()V
    .registers 3

    .prologue
    .line 188
    sget-object v0, Lcom/buzzfeed/toolkit/util/BFVault$1;->$SwitchMap$com$buzzfeed$toolkit$networking$Environment:[I

    iget-object v1, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mEnvironment:Lcom/buzzfeed/toolkit/networking/Environment;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/networking/Environment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_52

    .line 201
    const-string v0, "googleOauth2ClientIdStage"

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/BFVault;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mGoogleOAuthClientId:Ljava/lang/String;

    .line 202
    const-string v0, "loginUserStage"

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/BFVault;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mBuzzFeedLoginUser:Ljava/lang/String;

    .line 203
    const-string v0, "loginPasswordStage"

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/BFVault;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mBuzzFeedLoginPassword:Ljava/lang/String;

    .line 206
    :goto_25
    return-void

    .line 190
    :pswitch_26
    const-string v0, "googleOauth2ClientIdDev"

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/BFVault;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mGoogleOAuthClientId:Ljava/lang/String;

    .line 191
    const-string v0, "loginUserDev"

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/BFVault;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mBuzzFeedLoginUser:Ljava/lang/String;

    .line 192
    const-string v0, "loginPasswordDev"

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/BFVault;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mBuzzFeedLoginPassword:Ljava/lang/String;

    goto :goto_25

    .line 195
    :pswitch_3f
    const-string v0, "googleOauth2ClientIdProd"

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/BFVault;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mGoogleOAuthClientId:Ljava/lang/String;

    goto :goto_25

    .line 198
    :pswitch_48
    const-string v0, "googleOauth2ClientIdStage02"

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/BFVault;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mGoogleOAuthClientId:Ljava/lang/String;

    goto :goto_25

    .line 188
    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_26
        :pswitch_3f
        :pswitch_48
    .end packed-switch
.end method

.method public static declared-synchronized getInstance()Lcom/buzzfeed/toolkit/util/BFVault;
    .registers 3

    .prologue
    .line 122
    const-class v1, Lcom/buzzfeed/toolkit/util/BFVault;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/buzzfeed/toolkit/util/BFVault;->sInstance:Lcom/buzzfeed/toolkit/util/BFVault;

    const-string v2, "BFVault must be initialized before calling getInstance()."

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/util/BFVault;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    monitor-exit v1

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;Lcom/buzzfeed/toolkit/networking/Environment;Lcom/buzzfeed/toolkit/constants/BuildFlavor;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "environment"    # Lcom/buzzfeed/toolkit/networking/Environment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "buildFlavor"    # Lcom/buzzfeed/toolkit/constants/BuildFlavor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 108
    const-class v1, Lcom/buzzfeed/toolkit/util/BFVault;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/buzzfeed/toolkit/util/BFVault;->sInstance:Lcom/buzzfeed/toolkit/util/BFVault;

    if-nez v0, :cond_26

    .line 109
    const-string v0, "Context must not be null."

    invoke-static {p0, v0}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    const-string v0, "Environment must not be null."

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    const-string v0, "BuildFlavor must not be null."

    invoke-static {p2, v0}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 113
    new-instance v0, Lcom/buzzfeed/toolkit/util/BFVault;

    invoke-direct {v0, p1, p2}, Lcom/buzzfeed/toolkit/util/BFVault;-><init>(Lcom/buzzfeed/toolkit/networking/Environment;Lcom/buzzfeed/toolkit/constants/BuildFlavor;)V

    sput-object v0, Lcom/buzzfeed/toolkit/util/BFVault;->sInstance:Lcom/buzzfeed/toolkit/util/BFVault;

    .line 114
    sget-object v0, Lcom/buzzfeed/toolkit/util/BFVault;->sInstance:Lcom/buzzfeed/toolkit/util/BFVault;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/buzzfeed/toolkit/util/BFVault;->openVault(Landroid/content/Context;)V
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_28

    .line 116
    :cond_26
    monitor-exit v1

    return-void

    .line 108
    :catchall_28
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getAdjustTrackingId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mAdjustTrackingId:Ljava/lang/String;

    return-object v0
.end method

.method public getBuzzFeedUserLogin()Ljava/lang/String;
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mBuzzFeedLoginUser:Ljava/lang/String;

    return-object v0
.end method

.method public getBuzzFeedUserPassword()Ljava/lang/String;
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mBuzzFeedLoginPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getComScoreTrackingId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mComScoreTrackingId:Ljava/lang/String;

    return-object v0
.end method

.method public getComScoreTrackingSecretId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mComScoreTrackingSecretId:Ljava/lang/String;

    return-object v0
.end method

.method public getGoogleAnalyticsAccountId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mGoogleAnalyticsAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getGoogleAnalyticsInstantAppsAccountId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mGoogleAnalyticsInstantAppAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getGoogleOAuthClientId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mGoogleOAuthClientId:Ljava/lang/String;

    return-object v0
.end method

.method public getLotameTrackingId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mLotameTrackingId:Ljava/lang/String;

    return-object v0
.end method

.method public getPinterestClientID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mPinterestClientID:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantCastTrackingId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mQuantCastTrackingId:Ljava/lang/String;

    return-object v0
.end method

.method public getTwitterConsumerKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mTwitterConsumerKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTwitterConsumerSecret()Ljava/lang/String;
    .registers 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mTwitterConsumerSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getUrbanAirShipGcmSender()Ljava/lang/String;
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mUrbanAirShipGcmSender:Ljava/lang/String;

    return-object v0
.end method

.method public getUrbanAirshipAppAlphaKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mUrbanAirShipAppAlphaKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUrbanAirshipAppAlphaSecret()Ljava/lang/String;
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mUrbanAirshipAppAlphaSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getUrbanAirshipAppProdKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mUrbanAirshipAppProdKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUrbanAirshipAppProdSecret()Ljava/lang/String;
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mUrbanAirshipAppProdSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getUrbanAirshipMasterAlphaSecret()Ljava/lang/String;
    .registers 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mUrbanAirshipMasterDevSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getYouTubeDeveloperKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mYouTubeDeveloperKey:Ljava/lang/String;

    return-object v0
.end method

.method public openVault(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    const-string v0, "buzzfeed.properties"

    invoke-virtual {p0, p1, v0}, Lcom/buzzfeed/toolkit/util/BFVault;->loadProperties(Landroid/content/Context;Ljava/lang/String;)V

    .line 133
    sget-object v0, Lcom/buzzfeed/toolkit/util/BFVault;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BFVault initializing with environment="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mEnvironment:Lcom/buzzfeed/toolkit/networking/Environment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", buildFlavor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mBuildFlavor:Lcom/buzzfeed/toolkit/constants/BuildFlavor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/util/BFVault;->bindKeysForBuildFlavor()V

    .line 136
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/util/BFVault;->bindKeysForEnvironment()V

    .line 139
    const-string v0, "quantcastPublisherCode"

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/BFVault;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mQuantCastTrackingId:Ljava/lang/String;

    .line 140
    const-string v0, "comscoreCustomerC2"

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/BFVault;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mComScoreTrackingId:Ljava/lang/String;

    .line 141
    const-string v0, "comscorePublisherSecret"

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/BFVault;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mComScoreTrackingSecretId:Ljava/lang/String;

    .line 142
    const-string v0, "adjustIoAppToken"

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/BFVault;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mAdjustTrackingId:Ljava/lang/String;

    .line 143
    const-string v0, "lotameClientId"

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/BFVault;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mLotameTrackingId:Ljava/lang/String;

    .line 144
    const-string v0, "airshipGcmSender"

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/BFVault;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mUrbanAirShipGcmSender:Ljava/lang/String;

    .line 145
    const-string v0, "airshipAlphaMasterSecret"

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/BFVault;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mUrbanAirshipMasterDevSecret:Ljava/lang/String;

    .line 146
    const-string v0, "airshipAlphaAppKey"

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/BFVault;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mUrbanAirShipAppAlphaKey:Ljava/lang/String;

    .line 147
    const-string v0, "airshipAlphaAppSecret"

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/BFVault;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mUrbanAirshipAppAlphaSecret:Ljava/lang/String;

    .line 148
    const-string v0, "airshipProductionAppKey"

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/BFVault;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mUrbanAirshipAppProdKey:Ljava/lang/String;

    .line 149
    const-string v0, "airshipProductionAppSecret"

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/BFVault;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mUrbanAirshipAppProdSecret:Ljava/lang/String;

    .line 150
    const-string/jumbo v0, "youtubeDeveloperKey"

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/BFVault;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mYouTubeDeveloperKey:Ljava/lang/String;

    .line 151
    const-string/jumbo v0, "twitterKeyProd"

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/BFVault;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mTwitterConsumerKey:Ljava/lang/String;

    .line 152
    const-string/jumbo v0, "twitterSecretProd"

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/BFVault;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mTwitterConsumerSecret:Ljava/lang/String;

    .line 153
    const-string v0, "pinterestClientID"

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/BFVault;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/util/BFVault;->mPinterestClientID:Ljava/lang/String;

    .line 154
    return-void
.end method
