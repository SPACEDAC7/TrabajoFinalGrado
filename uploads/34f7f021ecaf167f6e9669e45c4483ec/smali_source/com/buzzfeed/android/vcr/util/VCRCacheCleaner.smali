.class public Lcom/buzzfeed/android/vcr/util/VCRCacheCleaner;
.super Lcom/buzzfeed/toolkit/util/ApplicationStateCallbacks;
.source "VCRCacheCleaner.java"


# static fields
.field private static final DEFAULT_POSITION_CACHE_TIMEOUT:J = 0x493e0L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLastSessionTimestamp:J

.field private final mTimeoutIntervalMillis:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const-class v0, Lcom/buzzfeed/android/vcr/util/VCRCacheCleaner;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/vcr/util/VCRCacheCleaner;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 25
    const-wide/32 v0, 0x493e0

    invoke-direct {p0, v0, v1}, Lcom/buzzfeed/android/vcr/util/VCRCacheCleaner;-><init>(J)V

    .line 26
    return-void
.end method

.method public constructor <init>(J)V
    .registers 6
    .param p1, "timeoutIntervalMs"    # J

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/util/ApplicationStateCallbacks;-><init>()V

    .line 18
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/buzzfeed/android/vcr/util/VCRCacheCleaner;->mLastSessionTimestamp:J

    .line 34
    iput-wide p1, p0, Lcom/buzzfeed/android/vcr/util/VCRCacheCleaner;->mTimeoutIntervalMillis:J

    .line 35
    return-void
.end method


# virtual methods
.method public onApplicationEnterBackground()V
    .registers 3

    .prologue
    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/buzzfeed/android/vcr/util/VCRCacheCleaner;->mLastSessionTimestamp:J

    .line 49
    return-void
.end method

.method public onApplicationEnterForeground()V
    .registers 7

    .prologue
    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/buzzfeed/android/vcr/util/VCRCacheCleaner;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".onApplicationEnterForeground"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "TAG":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/buzzfeed/android/vcr/util/VCRCacheCleaner;->mLastSessionTimestamp:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/buzzfeed/android/vcr/util/VCRCacheCleaner;->mTimeoutIntervalMillis:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_32

    .line 41
    const-string v1, "Clearing VCR global position cache."

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/buzzfeed/android/vcr/VCRConfig;->getInstance()Lcom/buzzfeed/android/vcr/VCRConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/buzzfeed/android/vcr/VCRConfig;->getGlobalPositionCache()Lcom/buzzfeed/android/vcr/toolbox/PositionCache;

    move-result-object v1

    invoke-interface {v1}, Lcom/buzzfeed/android/vcr/toolbox/PositionCache;->clearCache()V

    .line 44
    :cond_32
    return-void
.end method
