.class public final Lcom/buzzfeed/android/vcr/VCRConfig;
.super Ljava/lang/Object;
.source "VCRConfig.java"


# static fields
.field public static final ALLOWED_JOINING_TIME_MS:I = 0x1388

.field private static final BITRATE_LIMIT_DEFAULT:J = 0x16e360L

.field private static final BITRATE_UNLIMITED:J = 0x0L

.field private static final MAX_CACHED_POSITIONS:I = 0x32

.field public static final MAX_DROPPED_FRAME_COUNT:I = 0x32

.field public static final MIN_BUFFER_TIME_MS:I = 0x3e8

.field public static final MIN_REBUFFER_TIME_MS:I = 0x1388

.field private static final TAG:Ljava/lang/String;

.field private static sSingleton:Lcom/buzzfeed/android/vcr/VCRConfig;


# instance fields
.field private mIsBitrateLimitingEnabled:Z

.field private mIsDebugLoggingEnabled:Z

.field private mPeakBitrate:J

.field private mPositionCache:Lcom/buzzfeed/android/vcr/toolbox/DefaultPositionCache;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-class v0, Lcom/buzzfeed/android/vcr/VCRConfig;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/vcr/VCRConfig;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/buzzfeed/android/vcr/VCRConfig;->mPeakBitrate:J

    .line 43
    new-instance v0, Lcom/buzzfeed/android/vcr/toolbox/DefaultPositionCache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/vcr/toolbox/DefaultPositionCache;-><init>(I)V

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/VCRConfig;->mPositionCache:Lcom/buzzfeed/android/vcr/toolbox/DefaultPositionCache;

    .line 44
    return-void
.end method

.method public static getInstance()Lcom/buzzfeed/android/vcr/VCRConfig;
    .registers 2

    .prologue
    .line 47
    sget-object v0, Lcom/buzzfeed/android/vcr/VCRConfig;->sSingleton:Lcom/buzzfeed/android/vcr/VCRConfig;

    if-nez v0, :cond_13

    .line 48
    const-class v1, Lcom/buzzfeed/android/vcr/VCRConfig;

    monitor-enter v1

    .line 49
    :try_start_7
    sget-object v0, Lcom/buzzfeed/android/vcr/VCRConfig;->sSingleton:Lcom/buzzfeed/android/vcr/VCRConfig;

    if-nez v0, :cond_12

    .line 50
    new-instance v0, Lcom/buzzfeed/android/vcr/VCRConfig;

    invoke-direct {v0}, Lcom/buzzfeed/android/vcr/VCRConfig;-><init>()V

    sput-object v0, Lcom/buzzfeed/android/vcr/VCRConfig;->sSingleton:Lcom/buzzfeed/android/vcr/VCRConfig;

    .line 52
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 54
    :cond_13
    sget-object v0, Lcom/buzzfeed/android/vcr/VCRConfig;->sSingleton:Lcom/buzzfeed/android/vcr/VCRConfig;

    return-object v0

    .line 52
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public getAdaptiveBitrateLimit()J
    .registers 3

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/buzzfeed/android/vcr/VCRConfig;->mIsBitrateLimitingEnabled:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lcom/buzzfeed/android/vcr/VCRConfig;->mPeakBitrate:J

    :goto_6
    return-wide v0

    :cond_7
    const-wide/16 v0, 0x0

    goto :goto_6
.end method

.method public getGlobalPositionCache()Lcom/buzzfeed/android/vcr/toolbox/PositionCache;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/VCRConfig;->mPositionCache:Lcom/buzzfeed/android/vcr/toolbox/DefaultPositionCache;

    return-object v0
.end method

.method public isDebugLoggingEnabled()Z
    .registers 2

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/buzzfeed/android/vcr/VCRConfig;->mIsDebugLoggingEnabled:Z

    return v0
.end method

.method public setAdaptiveBitrateLimitForConnection(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/buzzfeed/android/vcr/VCRConfig;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".setAdaptiveBitrateLimitForConnection"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "TAG":Ljava/lang/String;
    invoke-static {p1}, Lcom/buzzfeed/toolkit/util/NetworkUtil;->getConnectionType(Landroid/content/Context;)Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;

    move-result-object v1

    .line 81
    .local v1, "type":Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;
    sget-object v2, Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;->Mobile:Lcom/buzzfeed/toolkit/util/NetworkUtil$ConnectionType;

    if-ne v1, v2, :cond_45

    .line 82
    const-wide/32 v2, 0x16e360

    iput-wide v2, p0, Lcom/buzzfeed/android/vcr/VCRConfig;->mPeakBitrate:J

    .line 87
    :goto_22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectionType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", peakBitrate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/buzzfeed/android/vcr/VCRConfig;->mPeakBitrate:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void

    .line 84
    :cond_45
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/buzzfeed/android/vcr/VCRConfig;->mPeakBitrate:J

    goto :goto_22
.end method

.method public setAdaptiveBitrateLimitingEnabled(Landroid/content/Context;Z)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "enabled"    # Z

    .prologue
    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/buzzfeed/android/vcr/VCRConfig;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".setAdaptiveBitrateLimitingEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "TAG":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting playback bitrate limiting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_37

    const-string v1, "ENABLED"

    :goto_24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iput-boolean p2, p0, Lcom/buzzfeed/android/vcr/VCRConfig;->mIsBitrateLimitingEnabled:Z

    .line 69
    if-eqz p2, :cond_36

    .line 70
    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/vcr/VCRConfig;->setAdaptiveBitrateLimitForConnection(Landroid/content/Context;)V

    .line 72
    :cond_36
    return-void

    .line 65
    :cond_37
    const-string v1, "DISABLED"

    goto :goto_24
.end method

.method public setDebugLoggingEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/buzzfeed/android/vcr/VCRConfig;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".setDebugLoggingEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VCR debug logging: enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iput-boolean p1, p0, Lcom/buzzfeed/android/vcr/VCRConfig;->mIsDebugLoggingEnabled:Z

    .line 117
    return-void
.end method
