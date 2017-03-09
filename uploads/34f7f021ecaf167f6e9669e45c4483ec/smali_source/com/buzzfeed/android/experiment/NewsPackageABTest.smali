.class public Lcom/buzzfeed/android/experiment/NewsPackageABTest;
.super Ljava/lang/Object;
.source "NewsPackageABTest.java"


# static fields
.field private static final EXPERIMENT:Ljava/lang/String; = "News_Package_ANDROID_4_58"

.field private static final TAG:Ljava/lang/String;

.field private static sFirstRun:Z

.field private static sShowNewsPackages:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-class v0, Lcom/buzzfeed/android/experiment/NewsPackageABTest;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/experiment/NewsPackageABTest;->TAG:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/buzzfeed/android/experiment/NewsPackageABTest;->sShowNewsPackages:Z

    .line 20
    const/4 v0, 0x1

    sput-boolean v0, Lcom/buzzfeed/android/experiment/NewsPackageABTest;->sFirstRun:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Z)V
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 15
    invoke-static {p0}, Lcom/buzzfeed/android/experiment/NewsPackageABTest;->setShouldShowNewsPackages(Z)V

    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 15
    sget-boolean v0, Lcom/buzzfeed/android/experiment/NewsPackageABTest;->sFirstRun:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 15
    sput-boolean p0, Lcom/buzzfeed/android/experiment/NewsPackageABTest;->sFirstRun:Z

    return p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 15
    sget-object v0, Lcom/buzzfeed/android/experiment/NewsPackageABTest;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static getShouldShowNewsPackages()Z
    .registers 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/buzzfeed/android/experiment/NewsPackageABTest;->sShowNewsPackages:Z

    return v0
.end method

.method private static setShouldShowNewsPackages(Z)V
    .registers 1
    .param p0, "shouldShowNewsPackages"    # Z

    .prologue
    .line 23
    sput-boolean p0, Lcom/buzzfeed/android/experiment/NewsPackageABTest;->sShowNewsPackages:Z

    .line 24
    return-void
.end method

.method public static declared-synchronized shouldShowNewsPackages(Landroid/content/Context;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const-class v3, Lcom/buzzfeed/android/experiment/NewsPackageABTest;

    monitor-enter v3

    :try_start_3
    new-instance v0, Lcom/buzzfeed/android/experiment/NewsPackageABTest$1;

    invoke-direct {v0, p0}, Lcom/buzzfeed/android/experiment/NewsPackageABTest$1;-><init>(Landroid/content/Context;)V

    .line 52
    .local v0, "abVariantBlockFallback":Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;
    new-instance v1, Lcom/buzzfeed/android/experiment/NewsPackageABTest$2;

    invoke-direct {v1, v0, p0}, Lcom/buzzfeed/android/experiment/NewsPackageABTest$2;-><init>(Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;Landroid/content/Context;)V

    .line 77
    .local v1, "abVariantBlockMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;>;"
    invoke-static {}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->getInstance()Lcom/buzzfeed/androidabframework/controller/ExperimentManager;

    move-result-object v2

    const-string v4, "News_Package_ANDROID_4_58"

    invoke-virtual {v2, v4, v1, v0}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->conductExperiment(Ljava/lang/String;Ljava/util/Map;Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;)V

    .line 79
    invoke-static {}, Lcom/buzzfeed/android/experiment/NewsPackageABTest;->getShouldShowNewsPackages()Z
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1c

    move-result v2

    monitor-exit v3

    return v2

    .line 32
    .end local v0    # "abVariantBlockFallback":Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;
    .end local v1    # "abVariantBlockMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;>;"
    :catchall_1c
    move-exception v2

    monitor-exit v3

    throw v2
.end method
