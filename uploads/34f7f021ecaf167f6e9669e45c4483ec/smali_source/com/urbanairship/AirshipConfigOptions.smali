.class public Lcom/urbanairship/AirshipConfigOptions;
.super Ljava/lang/Object;
.source "AirshipConfigOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/AirshipConfigOptions$Builder;
    }
.end annotation


# static fields
.field public static final ADM_TRANSPORT:Ljava/lang/String; = "ADM"

.field private static final DEFAULT_DEVELOPMENT_LOG_LEVEL:I = 0x3

.field private static final DEFAULT_PRODUCTION_LOG_LEVEL:I = 0x6

.field private static final DEFAULT_PROPERTIES_FILENAME:Ljava/lang/String; = "airshipconfig.properties"

.field public static final GCM_TRANSPORT:Ljava/lang/String; = "GCM"

.field private static final MAX_BG_REPORTING_INTERVAL_MS:I = 0x5265c00

.field private static final MIN_BG_REPORTING_INTERVAL_MS:I = 0xea60


# instance fields
.field public final allowedTransports:[Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final analyticsEnabled:Z

.field public final analyticsServer:Ljava/lang/String;

.field public final autoLaunchApplication:Z

.field public final backgroundReportingIntervalMS:J

.field public final channelCaptureEnabled:Z

.field public final channelCreationDelayEnabled:Z

.field public final clearNamedUser:Z

.field public final developmentAppKey:Ljava/lang/String;

.field public final developmentAppSecret:Ljava/lang/String;

.field public final developmentLogLevel:I

.field public final gcmSender:Ljava/lang/String;

.field public final hostURL:Ljava/lang/String;

.field public final inProduction:Z

.field public final landingPageContentURL:Ljava/lang/String;

.field public final notificationAccentColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public final notificationIcon:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field public final productionAppKey:Ljava/lang/String;

.field public final productionAppSecret:Ljava/lang/String;

.field public final productionLogLevel:I

.field public final walletUrl:Ljava/lang/String;

.field public final whitelist:[Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/urbanairship/AirshipConfigOptions$Builder;)V
    .registers 4
    .param p1, "builder"    # Lcom/urbanairship/AirshipConfigOptions$Builder;

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    # getter for: Lcom/urbanairship/AirshipConfigOptions$Builder;->productionAppKey:Ljava/lang/String;
    invoke-static {p1}, Lcom/urbanairship/AirshipConfigOptions$Builder;->access$000(Lcom/urbanairship/AirshipConfigOptions$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/AirshipConfigOptions;->productionAppKey:Ljava/lang/String;

    .line 214
    # getter for: Lcom/urbanairship/AirshipConfigOptions$Builder;->productionAppSecret:Ljava/lang/String;
    invoke-static {p1}, Lcom/urbanairship/AirshipConfigOptions$Builder;->access$100(Lcom/urbanairship/AirshipConfigOptions$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/AirshipConfigOptions;->productionAppSecret:Ljava/lang/String;

    .line 215
    # getter for: Lcom/urbanairship/AirshipConfigOptions$Builder;->developmentAppKey:Ljava/lang/String;
    invoke-static {p1}, Lcom/urbanairship/AirshipConfigOptions$Builder;->access$200(Lcom/urbanairship/AirshipConfigOptions$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/AirshipConfigOptions;->developmentAppKey:Ljava/lang/String;

    .line 216
    # getter for: Lcom/urbanairship/AirshipConfigOptions$Builder;->developmentAppSecret:Ljava/lang/String;
    invoke-static {p1}, Lcom/urbanairship/AirshipConfigOptions$Builder;->access$300(Lcom/urbanairship/AirshipConfigOptions$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/AirshipConfigOptions;->developmentAppSecret:Ljava/lang/String;

    .line 217
    # getter for: Lcom/urbanairship/AirshipConfigOptions$Builder;->hostURL:Ljava/lang/String;
    invoke-static {p1}, Lcom/urbanairship/AirshipConfigOptions$Builder;->access$400(Lcom/urbanairship/AirshipConfigOptions$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/AirshipConfigOptions;->hostURL:Ljava/lang/String;

    .line 218
    # getter for: Lcom/urbanairship/AirshipConfigOptions$Builder;->analyticsServer:Ljava/lang/String;
    invoke-static {p1}, Lcom/urbanairship/AirshipConfigOptions$Builder;->access$500(Lcom/urbanairship/AirshipConfigOptions$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/AirshipConfigOptions;->analyticsServer:Ljava/lang/String;

    .line 219
    # getter for: Lcom/urbanairship/AirshipConfigOptions$Builder;->landingPageContentURL:Ljava/lang/String;
    invoke-static {p1}, Lcom/urbanairship/AirshipConfigOptions$Builder;->access$600(Lcom/urbanairship/AirshipConfigOptions$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/AirshipConfigOptions;->landingPageContentURL:Ljava/lang/String;

    .line 220
    # getter for: Lcom/urbanairship/AirshipConfigOptions$Builder;->gcmSender:Ljava/lang/String;
    invoke-static {p1}, Lcom/urbanairship/AirshipConfigOptions$Builder;->access$700(Lcom/urbanairship/AirshipConfigOptions$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/AirshipConfigOptions;->gcmSender:Ljava/lang/String;

    .line 221
    # getter for: Lcom/urbanairship/AirshipConfigOptions$Builder;->allowedTransports:[Ljava/lang/String;
    invoke-static {p1}, Lcom/urbanairship/AirshipConfigOptions$Builder;->access$800(Lcom/urbanairship/AirshipConfigOptions$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/AirshipConfigOptions;->allowedTransports:[Ljava/lang/String;

    .line 222
    # getter for: Lcom/urbanairship/AirshipConfigOptions$Builder;->whitelist:[Ljava/lang/String;
    invoke-static {p1}, Lcom/urbanairship/AirshipConfigOptions$Builder;->access$900(Lcom/urbanairship/AirshipConfigOptions$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/AirshipConfigOptions;->whitelist:[Ljava/lang/String;

    .line 223
    # getter for: Lcom/urbanairship/AirshipConfigOptions$Builder;->inProduction:Z
    invoke-static {p1}, Lcom/urbanairship/AirshipConfigOptions$Builder;->access$1000(Lcom/urbanairship/AirshipConfigOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/urbanairship/AirshipConfigOptions;->inProduction:Z

    .line 224
    # getter for: Lcom/urbanairship/AirshipConfigOptions$Builder;->analyticsEnabled:Z
    invoke-static {p1}, Lcom/urbanairship/AirshipConfigOptions$Builder;->access$1100(Lcom/urbanairship/AirshipConfigOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/urbanairship/AirshipConfigOptions;->analyticsEnabled:Z

    .line 225
    # getter for: Lcom/urbanairship/AirshipConfigOptions$Builder;->backgroundReportingIntervalMS:J
    invoke-static {p1}, Lcom/urbanairship/AirshipConfigOptions$Builder;->access$1200(Lcom/urbanairship/AirshipConfigOptions$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/urbanairship/AirshipConfigOptions;->backgroundReportingIntervalMS:J

    .line 226
    # getter for: Lcom/urbanairship/AirshipConfigOptions$Builder;->clearNamedUser:Z
    invoke-static {p1}, Lcom/urbanairship/AirshipConfigOptions$Builder;->access$1300(Lcom/urbanairship/AirshipConfigOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/urbanairship/AirshipConfigOptions;->clearNamedUser:Z

    .line 227
    # getter for: Lcom/urbanairship/AirshipConfigOptions$Builder;->developmentLogLevel:I
    invoke-static {p1}, Lcom/urbanairship/AirshipConfigOptions$Builder;->access$1400(Lcom/urbanairship/AirshipConfigOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/urbanairship/AirshipConfigOptions;->developmentLogLevel:I

    .line 228
    # getter for: Lcom/urbanairship/AirshipConfigOptions$Builder;->productionLogLevel:I
    invoke-static {p1}, Lcom/urbanairship/AirshipConfigOptions$Builder;->access$1500(Lcom/urbanairship/AirshipConfigOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/urbanairship/AirshipConfigOptions;->productionLogLevel:I

    .line 229
    # getter for: Lcom/urbanairship/AirshipConfigOptions$Builder;->autoLaunchApplication:Z
    invoke-static {p1}, Lcom/urbanairship/AirshipConfigOptions$Builder;->access$1600(Lcom/urbanairship/AirshipConfigOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/urbanairship/AirshipConfigOptions;->autoLaunchApplication:Z

    .line 230
    # getter for: Lcom/urbanairship/AirshipConfigOptions$Builder;->channelCreationDelayEnabled:Z
    invoke-static {p1}, Lcom/urbanairship/AirshipConfigOptions$Builder;->access$1700(Lcom/urbanairship/AirshipConfigOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/urbanairship/AirshipConfigOptions;->channelCreationDelayEnabled:Z

    .line 231
    # getter for: Lcom/urbanairship/AirshipConfigOptions$Builder;->channelCaptureEnabled:Z
    invoke-static {p1}, Lcom/urbanairship/AirshipConfigOptions$Builder;->access$1800(Lcom/urbanairship/AirshipConfigOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/urbanairship/AirshipConfigOptions;->channelCaptureEnabled:Z

    .line 232
    # getter for: Lcom/urbanairship/AirshipConfigOptions$Builder;->notificationIcon:I
    invoke-static {p1}, Lcom/urbanairship/AirshipConfigOptions$Builder;->access$1900(Lcom/urbanairship/AirshipConfigOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/urbanairship/AirshipConfigOptions;->notificationIcon:I

    .line 233
    # getter for: Lcom/urbanairship/AirshipConfigOptions$Builder;->notificationAccentColor:I
    invoke-static {p1}, Lcom/urbanairship/AirshipConfigOptions$Builder;->access$2000(Lcom/urbanairship/AirshipConfigOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/urbanairship/AirshipConfigOptions;->notificationAccentColor:I

    .line 234
    # getter for: Lcom/urbanairship/AirshipConfigOptions$Builder;->walletUrl:Ljava/lang/String;
    invoke-static {p1}, Lcom/urbanairship/AirshipConfigOptions$Builder;->access$2100(Lcom/urbanairship/AirshipConfigOptions$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/AirshipConfigOptions;->walletUrl:Ljava/lang/String;

    .line 235
    return-void
.end method

.method synthetic constructor <init>(Lcom/urbanairship/AirshipConfigOptions$Builder;Lcom/urbanairship/AirshipConfigOptions$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/urbanairship/AirshipConfigOptions$Builder;
    .param p2, "x1"    # Lcom/urbanairship/AirshipConfigOptions$1;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/urbanairship/AirshipConfigOptions;-><init>(Lcom/urbanairship/AirshipConfigOptions$Builder;)V

    return-void
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/urbanairship/AirshipConfigOptions;->inProduction:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/urbanairship/AirshipConfigOptions;->productionAppKey:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/urbanairship/AirshipConfigOptions;->developmentAppKey:Ljava/lang/String;

    goto :goto_6
.end method

.method public getAppSecret()Ljava/lang/String;
    .registers 2

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/urbanairship/AirshipConfigOptions;->inProduction:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/urbanairship/AirshipConfigOptions;->productionAppSecret:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/urbanairship/AirshipConfigOptions;->developmentAppSecret:Ljava/lang/String;

    goto :goto_6
.end method

.method public getLoggerLevel()I
    .registers 2

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/urbanairship/AirshipConfigOptions;->inProduction:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/urbanairship/AirshipConfigOptions;->productionLogLevel:I

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Lcom/urbanairship/AirshipConfigOptions;->developmentLogLevel:I

    goto :goto_6
.end method

.method public isTransportAllowed(Ljava/lang/String;)Z
    .registers 8
    .param p1, "transport"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 272
    iget-object v2, p0, Lcom/urbanairship/AirshipConfigOptions;->allowedTransports:[Ljava/lang/String;

    if-eqz v2, :cond_7

    if-nez p1, :cond_8

    .line 282
    :cond_7
    :goto_7
    return v1

    .line 276
    :cond_8
    iget-object v3, p0, Lcom/urbanairship/AirshipConfigOptions;->allowedTransports:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_c
    if-ge v2, v4, :cond_7

    aget-object v0, v3, v2

    .line 277
    .local v0, "allowedTransport":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 278
    const/4 v1, 0x1

    goto :goto_7

    .line 276
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_c
.end method
