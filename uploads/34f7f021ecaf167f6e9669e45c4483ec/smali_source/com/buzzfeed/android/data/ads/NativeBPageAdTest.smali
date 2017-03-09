.class public Lcom/buzzfeed/android/data/ads/NativeBPageAdTest;
.super Ljava/lang/Object;
.source "NativeBPageAdTest.java"


# static fields
.field private static final EXPERIMENT:Ljava/lang/String; = "spicy_native_bpage_ads_4716"

.field private static final TAG:Ljava/lang/String;

.field public static sFirstRun:Z

.field private static sUseNativeBPageAds:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-class v0, Lcom/buzzfeed/android/data/ads/NativeBPageAdTest;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/data/ads/NativeBPageAdTest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Z)V
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 19
    invoke-static {p0}, Lcom/buzzfeed/android/data/ads/NativeBPageAdTest;->setUseNativeBPageAds(Z)V

    return-void
.end method

.method private static getUseNativeBPageAds()Z
    .registers 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/buzzfeed/android/data/ads/NativeBPageAdTest;->sUseNativeBPageAds:Z

    return v0
.end method

.method private static setUseNativeBPageAds(Z)V
    .registers 1
    .param p0, "use"    # Z

    .prologue
    .line 27
    sput-boolean p0, Lcom/buzzfeed/android/data/ads/NativeBPageAdTest;->sUseNativeBPageAds:Z

    .line 28
    return-void
.end method

.method public static declared-synchronized useNativeBPageAds(Landroid/content/Context;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const-class v4, Lcom/buzzfeed/android/data/ads/NativeBPageAdTest;

    monitor-enter v4

    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/buzzfeed/android/data/ads/NativeBPageAdTest;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".conductExperiment"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "TAG":Ljava/lang/String;
    new-instance v1, Lcom/buzzfeed/android/data/ads/NativeBPageAdTest$1;

    invoke-direct {v1, v0, p0}, Lcom/buzzfeed/android/data/ads/NativeBPageAdTest$1;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 58
    .local v1, "abVariantBlockFallback":Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;
    new-instance v2, Lcom/buzzfeed/android/data/ads/NativeBPageAdTest$2;

    invoke-direct {v2, v1, v0, p0}, Lcom/buzzfeed/android/data/ads/NativeBPageAdTest$2;-><init>(Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;Ljava/lang/String;Landroid/content/Context;)V

    .line 83
    .local v2, "abVariantBlockMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;>;"
    invoke-static {}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->getInstance()Lcom/buzzfeed/androidabframework/controller/ExperimentManager;

    move-result-object v3

    const-string v5, "spicy_native_bpage_ads_4716"

    invoke-virtual {v3, v5, v2, v1}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->conductExperiment(Ljava/lang/String;Ljava/util/Map;Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;)V

    .line 85
    invoke-static {}, Lcom/buzzfeed/android/data/ads/NativeBPageAdTest;->getUseNativeBPageAds()Z
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_31

    move-result v3

    monitor-exit v4

    return v3

    .line 35
    .end local v0    # "TAG":Ljava/lang/String;
    .end local v1    # "abVariantBlockFallback":Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;
    .end local v2    # "abVariantBlockMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;>;"
    :catchall_31
    move-exception v3

    monitor-exit v4

    throw v3
.end method
