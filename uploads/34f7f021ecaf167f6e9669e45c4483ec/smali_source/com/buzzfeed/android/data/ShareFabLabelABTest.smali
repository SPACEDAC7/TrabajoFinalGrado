.class public Lcom/buzzfeed/android/data/ShareFabLabelABTest;
.super Ljava/lang/Object;
.source "ShareFabLabelABTest.java"


# static fields
.field private static final EXPERIMENT:Ljava/lang/String; = "FAB_Share_4_55"

.field private static final TAG:Ljava/lang/String;

.field private static sFirstRun:Z

.field private static sUseShareFabLabel:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcom/buzzfeed/android/data/ShareFabLabelABTest;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/data/ShareFabLabelABTest;->TAG:Ljava/lang/String;

    .line 21
    const/4 v0, 0x1

    sput-boolean v0, Lcom/buzzfeed/android/data/ShareFabLabelABTest;->sFirstRun:Z

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
    invoke-static {p0}, Lcom/buzzfeed/android/data/ShareFabLabelABTest;->setUseShareFabLabel(Z)V

    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 15
    sget-boolean v0, Lcom/buzzfeed/android/data/ShareFabLabelABTest;->sFirstRun:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 15
    sput-boolean p0, Lcom/buzzfeed/android/data/ShareFabLabelABTest;->sFirstRun:Z

    return p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 15
    sget-object v0, Lcom/buzzfeed/android/data/ShareFabLabelABTest;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static getUseShareFabLabel()Z
    .registers 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/buzzfeed/android/data/ShareFabLabelABTest;->sUseShareFabLabel:Z

    return v0
.end method

.method private static setUseShareFabLabel(Z)V
    .registers 1
    .param p0, "use"    # Z

    .prologue
    .line 24
    sput-boolean p0, Lcom/buzzfeed/android/data/ShareFabLabelABTest;->sUseShareFabLabel:Z

    .line 25
    return-void
.end method

.method public static declared-synchronized shouldUseShareFabLabel(Landroid/content/Context;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const-class v3, Lcom/buzzfeed/android/data/ShareFabLabelABTest;

    monitor-enter v3

    :try_start_3
    new-instance v0, Lcom/buzzfeed/android/data/ShareFabLabelABTest$1;

    invoke-direct {v0, p0}, Lcom/buzzfeed/android/data/ShareFabLabelABTest$1;-><init>(Landroid/content/Context;)V

    .line 53
    .local v0, "abVariantBlockFallback":Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;
    new-instance v1, Lcom/buzzfeed/android/data/ShareFabLabelABTest$2;

    invoke-direct {v1, v0, p0}, Lcom/buzzfeed/android/data/ShareFabLabelABTest$2;-><init>(Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;Landroid/content/Context;)V

    .line 78
    .local v1, "abVariantBlockMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;>;"
    invoke-static {}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->getInstance()Lcom/buzzfeed/androidabframework/controller/ExperimentManager;

    move-result-object v2

    const-string v4, "FAB_Share_4_55"

    invoke-virtual {v2, v4, v1, v0}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->conductExperiment(Ljava/lang/String;Ljava/util/Map;Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;)V

    .line 80
    invoke-static {}, Lcom/buzzfeed/android/data/ShareFabLabelABTest;->getUseShareFabLabel()Z
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1c

    move-result v2

    monitor-exit v3

    return v2

    .line 33
    .end local v0    # "abVariantBlockFallback":Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;
    .end local v1    # "abVariantBlockMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;>;"
    :catchall_1c
    move-exception v2

    monitor-exit v3

    throw v2
.end method
