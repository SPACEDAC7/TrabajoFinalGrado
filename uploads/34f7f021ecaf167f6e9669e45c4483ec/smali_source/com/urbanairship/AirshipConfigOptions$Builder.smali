.class public final Lcom/urbanairship/AirshipConfigOptions$Builder;
.super Ljava/lang/Object;
.source "AirshipConfigOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/AirshipConfigOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final FIELD_ALLOWED_TRANSPORTS:Ljava/lang/String; = "allowedTransports"

.field private static final FIELD_ANALYTICS_ENABLED:Ljava/lang/String; = "analyticsEnabled"

.field private static final FIELD_ANALYTICS_SERVER:Ljava/lang/String; = "analyticsServer"

.field private static final FIELD_AUTO_LAUNCH_APPLICATION:Ljava/lang/String; = "autoLaunchApplication"

.field private static final FIELD_BACKGROUND_REPORTING_INTERVAL_MS:Ljava/lang/String; = "backgroundReportingIntervalMS"

.field private static final FIELD_CHANNEL_CAPTURE_ENABLED:Ljava/lang/String; = "channelCaptureEnabled"

.field private static final FIELD_CHANNEL_CREATION_DELAY_ENABLED:Ljava/lang/String; = "channelCreationDelayEnabled"

.field private static final FIELD_CLEAR_NAMED_USER:Ljava/lang/String; = "clearNamedUser"

.field private static final FIELD_DEVELOPMENT_APP_KEY:Ljava/lang/String; = "developmentAppKey"

.field private static final FIELD_DEVELOPMENT_APP_SECRET:Ljava/lang/String; = "developmentAppSecret"

.field private static final FIELD_DEVELOPMENT_LOG_LEVEL:Ljava/lang/String; = "developmentLogLevel"

.field private static final FIELD_GCM_SENDER:Ljava/lang/String; = "gcmSender"

.field private static final FIELD_HOST_URL:Ljava/lang/String; = "hostURL"

.field private static final FIELD_IN_PRODUCTION:Ljava/lang/String; = "inProduction"

.field private static final FIELD_LANDING_PAGE_CONTENT_URL:Ljava/lang/String; = "landingPageContentURL"

.field private static final FIELD_NOTIFICATION_ACCENT_COLOR:Ljava/lang/String; = "notificationAccentColor"

.field private static final FIELD_NOTIFICATION_ICON:Ljava/lang/String; = "notificationIcon"

.field private static final FIELD_PRODUCTION_APP_KEY:Ljava/lang/String; = "productionAppKey"

.field private static final FIELD_PRODUCTION_APP_SECRET:Ljava/lang/String; = "productionAppSecret"

.field private static final FIELD_PRODUCTION_LOG_LEVEL:Ljava/lang/String; = "productionLogLevel"

.field private static final FIELD_WALLET_URL:Ljava/lang/String; = "walletUrl"

.field private static final FIELD_WHITELIST:Ljava/lang/String; = "whitelist"


# instance fields
.field private allowedTransports:[Ljava/lang/String;

.field private analyticsEnabled:Z

.field private analyticsServer:Ljava/lang/String;

.field private autoLaunchApplication:Z

.field private backgroundReportingIntervalMS:J

.field private channelCaptureEnabled:Z

.field private channelCreationDelayEnabled:Z

.field private clearNamedUser:Z

.field private developmentAppKey:Ljava/lang/String;

.field private developmentAppSecret:Ljava/lang/String;

.field private developmentLogLevel:I

.field private gcmSender:Ljava/lang/String;

.field private hostURL:Ljava/lang/String;

.field private inProduction:Z

.field private landingPageContentURL:Ljava/lang/String;

.field private notificationAccentColor:I

.field private notificationIcon:I

.field private productionAppKey:Ljava/lang/String;

.field private productionAppSecret:Ljava/lang/String;

.field private productionLogLevel:I

.field private walletUrl:Ljava/lang/String;

.field private whitelist:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    const-string v0, "https://device-api.urbanairship.com/"

    iput-object v0, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->hostURL:Ljava/lang/String;

    .line 320
    const-string v0, "https://combine.urbanairship.com/"

    iput-object v0, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->analyticsServer:Ljava/lang/String;

    .line 321
    const-string v0, "https://dl.urbanairship.com/aaa/"

    iput-object v0, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->landingPageContentURL:Ljava/lang/String;

    .line 323
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ADM"

    aput-object v1, v0, v2

    const-string v1, "GCM"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->allowedTransports:[Ljava/lang/String;

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->whitelist:[Ljava/lang/String;

    .line 325
    iput-boolean v2, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->inProduction:Z

    .line 326
    iput-boolean v3, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->analyticsEnabled:Z

    .line 327
    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->backgroundReportingIntervalMS:J

    .line 328
    iput-boolean v2, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->clearNamedUser:Z

    .line 329
    const/4 v0, 0x3

    iput v0, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->developmentLogLevel:I

    .line 330
    const/4 v0, 0x6

    iput v0, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->productionLogLevel:I

    .line 331
    iput-boolean v3, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->autoLaunchApplication:Z

    .line 332
    iput-boolean v2, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->channelCreationDelayEnabled:Z

    .line 333
    iput-boolean v3, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->channelCaptureEnabled:Z

    .line 336
    const-string v0, "https://wallet-api.urbanairship.com"

    iput-object v0, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->walletUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/AirshipConfigOptions$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/AirshipConfigOptions$Builder;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->productionAppKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/urbanairship/AirshipConfigOptions$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/AirshipConfigOptions$Builder;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->productionAppSecret:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/urbanairship/AirshipConfigOptions$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/AirshipConfigOptions$Builder;

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->inProduction:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/urbanairship/AirshipConfigOptions$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/AirshipConfigOptions$Builder;

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->analyticsEnabled:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/urbanairship/AirshipConfigOptions$Builder;)J
    .registers 3
    .param p0, "x0"    # Lcom/urbanairship/AirshipConfigOptions$Builder;

    .prologue
    .line 288
    iget-wide v0, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->backgroundReportingIntervalMS:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/urbanairship/AirshipConfigOptions$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/AirshipConfigOptions$Builder;

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->clearNamedUser:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/urbanairship/AirshipConfigOptions$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/AirshipConfigOptions$Builder;

    .prologue
    .line 288
    iget v0, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->developmentLogLevel:I

    return v0
.end method

.method static synthetic access$1500(Lcom/urbanairship/AirshipConfigOptions$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/AirshipConfigOptions$Builder;

    .prologue
    .line 288
    iget v0, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->productionLogLevel:I

    return v0
.end method

.method static synthetic access$1600(Lcom/urbanairship/AirshipConfigOptions$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/AirshipConfigOptions$Builder;

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->autoLaunchApplication:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/urbanairship/AirshipConfigOptions$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/AirshipConfigOptions$Builder;

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->channelCreationDelayEnabled:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/urbanairship/AirshipConfigOptions$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/AirshipConfigOptions$Builder;

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->channelCaptureEnabled:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/urbanairship/AirshipConfigOptions$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/AirshipConfigOptions$Builder;

    .prologue
    .line 288
    iget v0, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->notificationIcon:I

    return v0
.end method

.method static synthetic access$200(Lcom/urbanairship/AirshipConfigOptions$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/AirshipConfigOptions$Builder;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->developmentAppKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/urbanairship/AirshipConfigOptions$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/AirshipConfigOptions$Builder;

    .prologue
    .line 288
    iget v0, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->notificationAccentColor:I

    return v0
.end method

.method static synthetic access$2100(Lcom/urbanairship/AirshipConfigOptions$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/AirshipConfigOptions$Builder;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->walletUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/urbanairship/AirshipConfigOptions$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/AirshipConfigOptions$Builder;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->developmentAppSecret:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/urbanairship/AirshipConfigOptions$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/AirshipConfigOptions$Builder;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->hostURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/urbanairship/AirshipConfigOptions$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/AirshipConfigOptions$Builder;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->analyticsServer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/urbanairship/AirshipConfigOptions$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/AirshipConfigOptions$Builder;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->landingPageContentURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/urbanairship/AirshipConfigOptions$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/AirshipConfigOptions$Builder;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->gcmSender:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/urbanairship/AirshipConfigOptions$Builder;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/AirshipConfigOptions$Builder;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->allowedTransports:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/urbanairship/AirshipConfigOptions$Builder;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/AirshipConfigOptions$Builder;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->whitelist:[Ljava/lang/String;

    return-object v0
.end method

.method private applyConfig(Lcom/urbanairship/ConfigParser;)V
    .registers 10
    .param p1, "configParser"    # Lcom/urbanairship/ConfigParser;

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x3

    .line 436
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    invoke-interface {p1}, Lcom/urbanairship/ConfigParser;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_205

    .line 438
    :try_start_9
    invoke-interface {p1, v1}, Lcom/urbanairship/ConfigParser;->getName(I)Ljava/lang/String;

    move-result-object v5

    const/4 v2, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_206

    :cond_15
    :goto_15
    packed-switch v2, :pswitch_data_260

    .line 436
    :goto_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 438
    :sswitch_1b
    const-string v6, "productionAppKey"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/4 v2, 0x0

    goto :goto_15

    :sswitch_25
    const-string v6, "productionAppSecret"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/4 v2, 0x1

    goto :goto_15

    :sswitch_2f
    const-string v6, "developmentAppKey"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/4 v2, 0x2

    goto :goto_15

    :sswitch_39
    const-string v6, "developmentAppSecret"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    move v2, v3

    goto :goto_15

    :sswitch_43
    const-string v6, "hostURL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/4 v2, 0x4

    goto :goto_15

    :sswitch_4d
    const-string v6, "analyticsServer"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/4 v2, 0x5

    goto :goto_15

    :sswitch_57
    const-string v6, "landingPageContentURL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    move v2, v4

    goto :goto_15

    :sswitch_61
    const-string v6, "gcmSender"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/4 v2, 0x7

    goto :goto_15

    :sswitch_6b
    const-string v6, "allowedTransports"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/16 v2, 0x8

    goto :goto_15

    :sswitch_76
    const-string/jumbo v6, "whitelist"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/16 v2, 0x9

    goto :goto_15

    :sswitch_82
    const-string v6, "inProduction"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/16 v2, 0xa

    goto :goto_15

    :sswitch_8d
    const-string v6, "analyticsEnabled"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/16 v2, 0xb

    goto/16 :goto_15

    :sswitch_99
    const-string v6, "backgroundReportingIntervalMS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/16 v2, 0xc

    goto/16 :goto_15

    :sswitch_a5
    const-string v6, "clearNamedUser"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/16 v2, 0xd

    goto/16 :goto_15

    :sswitch_b1
    const-string v6, "developmentLogLevel"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/16 v2, 0xe

    goto/16 :goto_15

    :sswitch_bd
    const-string v6, "productionLogLevel"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/16 v2, 0xf

    goto/16 :goto_15

    :sswitch_c9
    const-string v6, "autoLaunchApplication"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/16 v2, 0x10

    goto/16 :goto_15

    :sswitch_d5
    const-string v6, "channelCreationDelayEnabled"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/16 v2, 0x11

    goto/16 :goto_15

    :sswitch_e1
    const-string v6, "channelCaptureEnabled"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/16 v2, 0x12

    goto/16 :goto_15

    :sswitch_ed
    const-string v6, "notificationIcon"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/16 v2, 0x13

    goto/16 :goto_15

    :sswitch_f9
    const-string v6, "notificationAccentColor"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/16 v2, 0x14

    goto/16 :goto_15

    :sswitch_105
    const-string/jumbo v6, "walletUrl"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/16 v2, 0x15

    goto/16 :goto_15

    .line 440
    :pswitch_112
    invoke-interface {p1, v1}, Lcom/urbanairship/ConfigParser;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/urbanairship/AirshipConfigOptions$Builder;->setProductionAppKey(Ljava/lang/String;)Lcom/urbanairship/AirshipConfigOptions$Builder;
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_119} :catch_11b

    goto/16 :goto_18

    .line 526
    :catch_11b
    move-exception v0

    .line 527
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to set config field \'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1, v1}, Lcom/urbanairship/ConfigParser;->getName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\' due to invalid configuration value."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 444
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_13e
    :try_start_13e
    invoke-interface {p1, v1}, Lcom/urbanairship/ConfigParser;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/urbanairship/AirshipConfigOptions$Builder;->setProductionAppSecret(Ljava/lang/String;)Lcom/urbanairship/AirshipConfigOptions$Builder;

    goto/16 :goto_18

    .line 448
    :pswitch_147
    invoke-interface {p1, v1}, Lcom/urbanairship/ConfigParser;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/urbanairship/AirshipConfigOptions$Builder;->setDevelopmentAppKey(Ljava/lang/String;)Lcom/urbanairship/AirshipConfigOptions$Builder;

    goto/16 :goto_18

    .line 452
    :pswitch_150
    invoke-interface {p1, v1}, Lcom/urbanairship/ConfigParser;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/urbanairship/AirshipConfigOptions$Builder;->setDevelopmentAppSecret(Ljava/lang/String;)Lcom/urbanairship/AirshipConfigOptions$Builder;

    goto/16 :goto_18

    .line 456
    :pswitch_159
    invoke-interface {p1, v1}, Lcom/urbanairship/ConfigParser;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/urbanairship/AirshipConfigOptions$Builder;->setHostURL(Ljava/lang/String;)Lcom/urbanairship/AirshipConfigOptions$Builder;

    goto/16 :goto_18

    .line 460
    :pswitch_162
    invoke-interface {p1, v1}, Lcom/urbanairship/ConfigParser;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/urbanairship/AirshipConfigOptions$Builder;->setAnalyticsServer(Ljava/lang/String;)Lcom/urbanairship/AirshipConfigOptions$Builder;

    goto/16 :goto_18

    .line 464
    :pswitch_16b
    invoke-interface {p1, v1}, Lcom/urbanairship/ConfigParser;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/urbanairship/AirshipConfigOptions$Builder;->setLandingPageContentURL(Ljava/lang/String;)Lcom/urbanairship/AirshipConfigOptions$Builder;

    goto/16 :goto_18

    .line 468
    :pswitch_174
    invoke-interface {p1, v1}, Lcom/urbanairship/ConfigParser;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/urbanairship/AirshipConfigOptions$Builder;->setGcmSender(Ljava/lang/String;)Lcom/urbanairship/AirshipConfigOptions$Builder;

    goto/16 :goto_18

    .line 472
    :pswitch_17d
    invoke-interface {p1, v1}, Lcom/urbanairship/ConfigParser;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/urbanairship/AirshipConfigOptions$Builder;->setAllowedTransports([Ljava/lang/String;)Lcom/urbanairship/AirshipConfigOptions$Builder;

    goto/16 :goto_18

    .line 476
    :pswitch_186
    invoke-interface {p1, v1}, Lcom/urbanairship/ConfigParser;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/urbanairship/AirshipConfigOptions$Builder;->setWhitelist([Ljava/lang/String;)Lcom/urbanairship/AirshipConfigOptions$Builder;

    goto/16 :goto_18

    .line 480
    :pswitch_18f
    invoke-interface {p1, v1}, Lcom/urbanairship/ConfigParser;->getBoolean(I)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/urbanairship/AirshipConfigOptions$Builder;->setInProduction(Z)Lcom/urbanairship/AirshipConfigOptions$Builder;

    goto/16 :goto_18

    .line 484
    :pswitch_198
    invoke-interface {p1, v1}, Lcom/urbanairship/ConfigParser;->getBoolean(I)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/urbanairship/AirshipConfigOptions$Builder;->setAnalyticsEnabled(Z)Lcom/urbanairship/AirshipConfigOptions$Builder;

    goto/16 :goto_18

    .line 488
    :pswitch_1a1
    invoke-interface {p1, v1}, Lcom/urbanairship/ConfigParser;->getLong(I)J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/urbanairship/AirshipConfigOptions$Builder;->setBackgroundReportingIntervalMS(J)Lcom/urbanairship/AirshipConfigOptions$Builder;

    goto/16 :goto_18

    .line 492
    :pswitch_1aa
    invoke-interface {p1, v1}, Lcom/urbanairship/ConfigParser;->getBoolean(I)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/urbanairship/AirshipConfigOptions$Builder;->setClearNamedUser(Z)Lcom/urbanairship/AirshipConfigOptions$Builder;

    goto/16 :goto_18

    .line 496
    :pswitch_1b3
    invoke-interface {p1, v1}, Lcom/urbanairship/ConfigParser;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    invoke-static {v2, v5}, Lcom/urbanairship/Logger;->parseLogLevel(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/urbanairship/AirshipConfigOptions$Builder;->setDevelopmentLogLevel(I)Lcom/urbanairship/AirshipConfigOptions$Builder;

    goto/16 :goto_18

    .line 500
    :pswitch_1c1
    invoke-interface {p1, v1}, Lcom/urbanairship/ConfigParser;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    invoke-static {v2, v5}, Lcom/urbanairship/Logger;->parseLogLevel(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/urbanairship/AirshipConfigOptions$Builder;->setProductionLogLevel(I)Lcom/urbanairship/AirshipConfigOptions$Builder;

    goto/16 :goto_18

    .line 504
    :pswitch_1cf
    invoke-interface {p1, v1}, Lcom/urbanairship/ConfigParser;->getBoolean(I)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/urbanairship/AirshipConfigOptions$Builder;->setAutoLaunchApplication(Z)Lcom/urbanairship/AirshipConfigOptions$Builder;

    goto/16 :goto_18

    .line 508
    :pswitch_1d8
    invoke-interface {p1, v1}, Lcom/urbanairship/ConfigParser;->getBoolean(I)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/urbanairship/AirshipConfigOptions$Builder;->setChannelCreationDelayEnabled(Z)Lcom/urbanairship/AirshipConfigOptions$Builder;

    goto/16 :goto_18

    .line 512
    :pswitch_1e1
    invoke-interface {p1, v1}, Lcom/urbanairship/ConfigParser;->getBoolean(I)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/urbanairship/AirshipConfigOptions$Builder;->setChannelCaptureEnabled(Z)Lcom/urbanairship/AirshipConfigOptions$Builder;

    goto/16 :goto_18

    .line 516
    :pswitch_1ea
    invoke-interface {p1, v1}, Lcom/urbanairship/ConfigParser;->getDrawableResourceId(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/urbanairship/AirshipConfigOptions$Builder;->setNotificationIcon(I)Lcom/urbanairship/AirshipConfigOptions$Builder;

    goto/16 :goto_18

    .line 520
    :pswitch_1f3
    invoke-interface {p1, v1}, Lcom/urbanairship/ConfigParser;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/urbanairship/AirshipConfigOptions$Builder;->setNotificationAccentColor(I)Lcom/urbanairship/AirshipConfigOptions$Builder;

    goto/16 :goto_18

    .line 523
    :pswitch_1fc
    invoke-interface {p1, v1}, Lcom/urbanairship/ConfigParser;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/urbanairship/AirshipConfigOptions$Builder;->setWalletUrl(Ljava/lang/String;)Lcom/urbanairship/AirshipConfigOptions$Builder;
    :try_end_203
    .catch Ljava/lang/Exception; {:try_start_13e .. :try_end_203} :catch_11b

    goto/16 :goto_18

    .line 530
    :cond_205
    return-void

    .line 438
    :sswitch_data_206
    .sparse-switch
        -0x7f0b41a0 -> :sswitch_d5
        -0x69de3888 -> :sswitch_25
        -0x66855b25 -> :sswitch_8d
        -0x6293bfb9 -> :sswitch_76
        -0x5d4ce569 -> :sswitch_1b
        -0x4c9c25ce -> :sswitch_6b
        -0x4b772267 -> :sswitch_2f
        -0x4a731e52 -> :sswitch_c9
        -0x4713bfe4 -> :sswitch_57
        -0x17bef705 -> :sswitch_b1
        -0x158d7702 -> :sswitch_e1
        -0x12f6bb5a -> :sswitch_61
        -0xb300187 -> :sswitch_bd
        -0xa4bdd29 -> :sswitch_a5
        -0x6ed1615 -> :sswitch_99
        0x1706fbe -> :sswitch_82
        0x10d20d36 -> :sswitch_39
        0x1c607a69 -> :sswitch_4d
        0x417c92a7 -> :sswitch_43
        0x57534ab6 -> :sswitch_105
        0x59bce6ce -> :sswitch_f9
        0x6008cc04 -> :sswitch_ed
    .end sparse-switch

    :pswitch_data_260
    .packed-switch 0x0
        :pswitch_112
        :pswitch_13e
        :pswitch_147
        :pswitch_150
        :pswitch_159
        :pswitch_162
        :pswitch_16b
        :pswitch_174
        :pswitch_17d
        :pswitch_186
        :pswitch_18f
        :pswitch_198
        :pswitch_1a1
        :pswitch_1aa
        :pswitch_1b3
        :pswitch_1c1
        :pswitch_1cf
        :pswitch_1d8
        :pswitch_1e1
        :pswitch_1ea
        :pswitch_1f3
        :pswitch_1fc
    .end packed-switch
.end method


# virtual methods
.method public applyConfig(Landroid/content/Context;I)Lcom/urbanairship/AirshipConfigOptions$Builder;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "xmlResourceId"    # I
        .annotation build Landroid/support/annotation/XmlRes;
        .end annotation
    .end param

    .prologue
    .line 420
    :try_start_0
    new-instance v0, Lcom/urbanairship/XmlConfigParser;

    invoke-direct {v0, p1, p2}, Lcom/urbanairship/XmlConfigParser;-><init>(Landroid/content/Context;I)V

    .line 421
    .local v0, "configParser":Lcom/urbanairship/XmlConfigParser;
    invoke-direct {p0, v0}, Lcom/urbanairship/AirshipConfigOptions$Builder;->applyConfig(Lcom/urbanairship/ConfigParser;)V

    .line 422
    invoke-virtual {v0}, Lcom/urbanairship/XmlConfigParser;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 427
    .end local v0    # "configParser":Lcom/urbanairship/XmlConfigParser;
    :goto_b
    return-object p0

    .line 423
    :catch_c
    move-exception v1

    .line 424
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "AirshipConfigOptions - Unable to apply config."

    invoke-static {v2, v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method public applyDefaultProperties(Landroid/content/Context;)Lcom/urbanairship/AirshipConfigOptions$Builder;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 347
    const-string v0, "airshipconfig.properties"

    invoke-virtual {p0, p1, v0}, Lcom/urbanairship/AirshipConfigOptions$Builder;->applyProperties(Landroid/content/Context;Ljava/lang/String;)Lcom/urbanairship/AirshipConfigOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public applyProperties(Landroid/content/Context;Ljava/lang/String;)Lcom/urbanairship/AirshipConfigOptions$Builder;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "propertiesFile"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 385
    :try_start_0
    new-instance v0, Lcom/urbanairship/PropertiesConfigParser;

    invoke-direct {v0, p1, p2}, Lcom/urbanairship/PropertiesConfigParser;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 386
    .local v0, "configParser":Lcom/urbanairship/ConfigParser;
    invoke-direct {p0, v0}, Lcom/urbanairship/AirshipConfigOptions$Builder;->applyConfig(Lcom/urbanairship/ConfigParser;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 391
    .end local v0    # "configParser":Lcom/urbanairship/ConfigParser;
    :goto_8
    return-object p0

    .line 387
    :catch_9
    move-exception v1

    .line 388
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "AirshipConfigOptions - Unable to apply config."

    invoke-static {v2, v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8
.end method

.method public build()Lcom/urbanairship/AirshipConfigOptions;
    .registers 9

    .prologue
    const/16 v4, 0x20

    .line 794
    iget-boolean v3, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->inProduction:Z

    if-eqz v3, :cond_45

    const-string v2, "production"

    .line 796
    .local v2, "modeString":Ljava/lang/String;
    :goto_8
    iget-boolean v3, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->inProduction:Z

    if-eqz v3, :cond_48

    iget-object v0, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->productionAppKey:Ljava/lang/String;

    .line 797
    .local v0, "appKey":Ljava/lang/String;
    :goto_e
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1c

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_4b

    .line 798
    :cond_1c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AirshipConfigOptions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not a valid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " app key"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 794
    .end local v0    # "appKey":Ljava/lang/String;
    .end local v2    # "modeString":Ljava/lang/String;
    :cond_45
    const-string v2, "development"

    goto :goto_8

    .line 796
    .restart local v2    # "modeString":Ljava/lang/String;
    :cond_48
    iget-object v0, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->developmentAppKey:Ljava/lang/String;

    goto :goto_e

    .line 801
    .restart local v0    # "appKey":Ljava/lang/String;
    :cond_4b
    iget-boolean v3, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->inProduction:Z

    if-eqz v3, :cond_88

    iget-object v1, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->productionAppSecret:Ljava/lang/String;

    .line 802
    .local v1, "appSecret":Ljava/lang/String;
    :goto_51
    if-eqz v1, :cond_5f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5f

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_8b

    .line 803
    :cond_5f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AirshipConfigOptions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not a valid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " app secret"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 801
    .end local v1    # "appSecret":Ljava/lang/String;
    :cond_88
    iget-object v1, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->developmentAppSecret:Ljava/lang/String;

    goto :goto_51

    .line 806
    .restart local v1    # "appSecret":Ljava/lang/String;
    :cond_8b
    iget-boolean v3, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->analyticsEnabled:Z

    if-eqz v3, :cond_9f

    iget-object v3, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->analyticsServer:Ljava/lang/String;

    invoke-static {v3}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9f

    .line 807
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid config - analyticsServer is empty or null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 810
    :cond_9f
    iget-object v3, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->hostURL:Ljava/lang/String;

    invoke-static {v3}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_af

    .line 811
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid config - hostURL is empty or null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 814
    :cond_af
    iget-wide v4, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->backgroundReportingIntervalMS:J

    const-wide/32 v6, 0xea60

    cmp-long v3, v4, v6

    if-gez v3, :cond_103

    .line 815
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AirshipConfigOptions - The backgroundReportingIntervalMS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->backgroundReportingIntervalMS:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " may decrease battery life."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 820
    :cond_d6
    :goto_d6
    iget-object v3, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->productionAppKey:Ljava/lang/String;

    if-eqz v3, :cond_e9

    iget-object v3, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->productionAppKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->developmentAppKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e9

    .line 821
    const-string v3, "Production App Key matches Development App Key"

    invoke-static {v3}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 824
    :cond_e9
    iget-object v3, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->productionAppSecret:Ljava/lang/String;

    if-eqz v3, :cond_fc

    iget-object v3, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->productionAppSecret:Ljava/lang/String;

    iget-object v4, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->developmentAppSecret:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fc

    .line 825
    const-string v3, "Production App Secret matches Development App Secret"

    invoke-static {v3}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 828
    :cond_fc
    new-instance v3, Lcom/urbanairship/AirshipConfigOptions;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/urbanairship/AirshipConfigOptions;-><init>(Lcom/urbanairship/AirshipConfigOptions$Builder;Lcom/urbanairship/AirshipConfigOptions$1;)V

    return-object v3

    .line 816
    :cond_103
    iget-wide v4, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->backgroundReportingIntervalMS:J

    const-wide/32 v6, 0x5265c00

    cmp-long v3, v4, v6

    if-lez v3, :cond_d6

    .line 817
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AirshipConfigOptions - The backgroundReportingIntervalMS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->backgroundReportingIntervalMS:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " may provide less detailed analytic reports."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    goto :goto_d6
.end method

.method public setAllowedTransports([Ljava/lang/String;)Lcom/urbanairship/AirshipConfigOptions$Builder;
    .registers 2
    .param p1, "allowedTransports"    # [Ljava/lang/String;

    .prologue
    .line 653
    iput-object p1, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->allowedTransports:[Ljava/lang/String;

    .line 654
    return-object p0
.end method

.method public setAnalyticsEnabled(Z)Lcom/urbanairship/AirshipConfigOptions$Builder;
    .registers 2
    .param p1, "analyticsEnabled"    # Z

    .prologue
    .line 688
    iput-boolean p1, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->analyticsEnabled:Z

    .line 689
    return-object p0
.end method

.method public setAnalyticsServer(Ljava/lang/String;)Lcom/urbanairship/AirshipConfigOptions$Builder;
    .registers 2
    .param p1, "analyticsServer"    # Ljava/lang/String;

    .prologue
    .line 620
    iput-object p1, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->analyticsServer:Ljava/lang/String;

    .line 621
    return-object p0
.end method

.method public setAutoLaunchApplication(Z)Lcom/urbanairship/AirshipConfigOptions$Builder;
    .registers 2
    .param p1, "autoLaunchApplication"    # Z

    .prologue
    .line 744
    iput-boolean p1, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->autoLaunchApplication:Z

    .line 745
    return-object p0
.end method

.method public setBackgroundReportingIntervalMS(J)Lcom/urbanairship/AirshipConfigOptions$Builder;
    .registers 4
    .param p1, "backgroundReportingIntervalMS"    # J

    .prologue
    .line 699
    iput-wide p1, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->backgroundReportingIntervalMS:J

    .line 700
    return-object p0
.end method

.method public setChannelCaptureEnabled(Z)Lcom/urbanairship/AirshipConfigOptions$Builder;
    .registers 2
    .param p1, "channelCaptureEnabled"    # Z

    .prologue
    .line 766
    iput-boolean p1, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->channelCaptureEnabled:Z

    .line 767
    return-object p0
.end method

.method public setChannelCreationDelayEnabled(Z)Lcom/urbanairship/AirshipConfigOptions$Builder;
    .registers 2
    .param p1, "channelCreationDelayEnabled"    # Z

    .prologue
    .line 755
    iput-boolean p1, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->channelCreationDelayEnabled:Z

    .line 756
    return-object p0
.end method

.method public setClearNamedUser(Z)Lcom/urbanairship/AirshipConfigOptions$Builder;
    .registers 2
    .param p1, "clearNamedUser"    # Z

    .prologue
    .line 710
    iput-boolean p1, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->clearNamedUser:Z

    .line 711
    return-object p0
.end method

.method public setDevelopmentAppKey(Ljava/lang/String;)Lcom/urbanairship/AirshipConfigOptions$Builder;
    .registers 2
    .param p1, "developmentAppKey"    # Ljava/lang/String;

    .prologue
    .line 587
    iput-object p1, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->developmentAppKey:Ljava/lang/String;

    .line 588
    return-object p0
.end method

.method public setDevelopmentAppSecret(Ljava/lang/String;)Lcom/urbanairship/AirshipConfigOptions$Builder;
    .registers 2
    .param p1, "developmentAppSecret"    # Ljava/lang/String;

    .prologue
    .line 598
    iput-object p1, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->developmentAppSecret:Ljava/lang/String;

    .line 599
    return-object p0
.end method

.method public setDevelopmentLogLevel(I)Lcom/urbanairship/AirshipConfigOptions$Builder;
    .registers 2
    .param p1, "developmentLogLevel"    # I

    .prologue
    .line 721
    iput p1, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->developmentLogLevel:I

    .line 722
    return-object p0
.end method

.method public setGcmSender(Ljava/lang/String;)Lcom/urbanairship/AirshipConfigOptions$Builder;
    .registers 2
    .param p1, "gcmSender"    # Ljava/lang/String;

    .prologue
    .line 642
    iput-object p1, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->gcmSender:Ljava/lang/String;

    .line 643
    return-object p0
.end method

.method public setHostURL(Ljava/lang/String;)Lcom/urbanairship/AirshipConfigOptions$Builder;
    .registers 2
    .param p1, "hostURL"    # Ljava/lang/String;

    .prologue
    .line 609
    iput-object p1, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->hostURL:Ljava/lang/String;

    .line 610
    return-object p0
.end method

.method public setInProduction(Z)Lcom/urbanairship/AirshipConfigOptions$Builder;
    .registers 2
    .param p1, "inProduction"    # Z

    .prologue
    .line 677
    iput-boolean p1, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->inProduction:Z

    .line 678
    return-object p0
.end method

.method public setLandingPageContentURL(Ljava/lang/String;)Lcom/urbanairship/AirshipConfigOptions$Builder;
    .registers 2
    .param p1, "landingPageContentURL"    # Ljava/lang/String;

    .prologue
    .line 631
    iput-object p1, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->landingPageContentURL:Ljava/lang/String;

    .line 632
    return-object p0
.end method

.method public setNotificationAccentColor(I)Lcom/urbanairship/AirshipConfigOptions$Builder;
    .registers 2
    .param p1, "notificationAccentColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 554
    iput p1, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->notificationAccentColor:I

    .line 555
    return-object p0
.end method

.method public setNotificationIcon(I)Lcom/urbanairship/AirshipConfigOptions$Builder;
    .registers 2
    .param p1, "notificationIcon"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 541
    iput p1, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->notificationIcon:I

    .line 542
    return-object p0
.end method

.method public setProductionAppKey(Ljava/lang/String;)Lcom/urbanairship/AirshipConfigOptions$Builder;
    .registers 2
    .param p1, "productionAppKey"    # Ljava/lang/String;

    .prologue
    .line 565
    iput-object p1, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->productionAppKey:Ljava/lang/String;

    .line 566
    return-object p0
.end method

.method public setProductionAppSecret(Ljava/lang/String;)Lcom/urbanairship/AirshipConfigOptions$Builder;
    .registers 2
    .param p1, "productionAppSecret"    # Ljava/lang/String;

    .prologue
    .line 576
    iput-object p1, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->productionAppSecret:Ljava/lang/String;

    .line 577
    return-object p0
.end method

.method public setProductionLogLevel(I)Lcom/urbanairship/AirshipConfigOptions$Builder;
    .registers 2
    .param p1, "productionLogLevel"    # I

    .prologue
    .line 732
    iput p1, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->productionLogLevel:I

    .line 733
    return-object p0
.end method

.method public setWalletUrl(Ljava/lang/String;)Lcom/urbanairship/AirshipConfigOptions$Builder;
    .registers 2
    .param p1, "walletUrl"    # Ljava/lang/String;

    .prologue
    .line 777
    iput-object p1, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->walletUrl:Ljava/lang/String;

    .line 778
    return-object p0
.end method

.method public setWhitelist([Ljava/lang/String;)Lcom/urbanairship/AirshipConfigOptions$Builder;
    .registers 2
    .param p1, "whitelist"    # [Ljava/lang/String;

    .prologue
    .line 666
    iput-object p1, p0, Lcom/urbanairship/AirshipConfigOptions$Builder;->whitelist:[Ljava/lang/String;

    .line 667
    return-object p0
.end method
