.class public Lcom/buzzfeed/android/data/ads/VideoAdABTest;
.super Ljava/lang/Object;
.source "VideoAdABTest.java"


# static fields
.field private static final EXPERIMENT:Ljava/lang/String; = "video_ads_turn_on_182"

.field private static final TAG:Ljava/lang/String;

.field public static sFirstRun:Z

.field private static sShowVideoAds:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-class v0, Lcom/buzzfeed/android/data/ads/VideoAdABTest;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/data/ads/VideoAdABTest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Z)V
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 17
    invoke-static {p0}, Lcom/buzzfeed/android/data/ads/VideoAdABTest;->setShowVideoAds(Z)V

    return-void
.end method

.method private static getShowVideoAds()Z
    .registers 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/buzzfeed/android/data/ads/VideoAdABTest;->sShowVideoAds:Z

    return v0
.end method

.method private static setShowVideoAds(Z)V
    .registers 1
    .param p0, "use"    # Z

    .prologue
    .line 25
    sput-boolean p0, Lcom/buzzfeed/android/data/ads/VideoAdABTest;->sShowVideoAds:Z

    .line 26
    return-void
.end method

.method public static declared-synchronized shouldShowVideoAds(Landroid/content/Context;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const-class v4, Lcom/buzzfeed/android/data/ads/VideoAdABTest;

    monitor-enter v4

    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/buzzfeed/android/data/ads/VideoAdABTest;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".conductExperiment"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "TAG":Ljava/lang/String;
    new-instance v1, Lcom/buzzfeed/android/data/ads/VideoAdABTest$1;

    invoke-direct {v1, v0, p0}, Lcom/buzzfeed/android/data/ads/VideoAdABTest$1;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 56
    .local v1, "abVariantBlockFallback":Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;
    new-instance v2, Lcom/buzzfeed/android/data/ads/VideoAdABTest$2;

    invoke-direct {v2, v1, v0, p0}, Lcom/buzzfeed/android/data/ads/VideoAdABTest$2;-><init>(Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;Ljava/lang/String;Landroid/content/Context;)V

    .line 81
    .local v2, "abVariantBlockMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;>;"
    invoke-static {}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->getInstance()Lcom/buzzfeed/androidabframework/controller/ExperimentManager;

    move-result-object v3

    const-string/jumbo v5, "video_ads_turn_on_182"

    invoke-virtual {v3, v5, v2, v1}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->conductExperiment(Ljava/lang/String;Ljava/util/Map;Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;)V

    .line 83
    invoke-static {}, Lcom/buzzfeed/android/data/ads/VideoAdABTest;->getShowVideoAds()Z
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_32

    move-result v3

    monitor-exit v4

    return v3

    .line 33
    .end local v0    # "TAG":Ljava/lang/String;
    .end local v1    # "abVariantBlockFallback":Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;
    .end local v2    # "abVariantBlockMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;>;"
    :catchall_32
    move-exception v3

    monitor-exit v4

    throw v3
.end method
