.class public Lcom/buzzfeed/android/experiment/FixedShareBarABTest;
.super Ljava/lang/Object;
.source "FixedShareBarABTest.java"


# static fields
.field private static final EXPERIMENT:Ljava/lang/String; = "Share_Bar_4_56"

.field private static final TAG:Ljava/lang/String;

.field private static sFirstRun:Z

.field private static sFixedShareBarVariant:Lcom/buzzfeed/spicerack/experiment/FixedShareBarVariant;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcom/buzzfeed/android/experiment/FixedShareBarABTest;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/experiment/FixedShareBarABTest;->TAG:Ljava/lang/String;

    .line 20
    const/4 v0, 0x1

    sput-boolean v0, Lcom/buzzfeed/android/experiment/FixedShareBarABTest;->sFirstRun:Z

    .line 22
    sget-object v0, Lcom/buzzfeed/spicerack/experiment/FixedShareBarVariant;->Control:Lcom/buzzfeed/spicerack/experiment/FixedShareBarVariant;

    sput-object v0, Lcom/buzzfeed/android/experiment/FixedShareBarABTest;->sFixedShareBarVariant:Lcom/buzzfeed/spicerack/experiment/FixedShareBarVariant;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/buzzfeed/spicerack/experiment/FixedShareBarVariant;)Lcom/buzzfeed/spicerack/experiment/FixedShareBarVariant;
    .registers 1
    .param p0, "x0"    # Lcom/buzzfeed/spicerack/experiment/FixedShareBarVariant;

    .prologue
    .line 16
    sput-object p0, Lcom/buzzfeed/android/experiment/FixedShareBarABTest;->sFixedShareBarVariant:Lcom/buzzfeed/spicerack/experiment/FixedShareBarVariant;

    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-static {p0}, Lcom/buzzfeed/android/experiment/FixedShareBarABTest;->logStatus(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized getFixedShareBarVariant(Landroid/content/Context;)Lcom/buzzfeed/spicerack/experiment/FixedShareBarVariant;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const-class v3, Lcom/buzzfeed/android/experiment/FixedShareBarABTest;

    monitor-enter v3

    :try_start_3
    new-instance v0, Lcom/buzzfeed/android/experiment/FixedShareBarABTest$1;

    invoke-direct {v0, p0}, Lcom/buzzfeed/android/experiment/FixedShareBarABTest$1;-><init>(Landroid/content/Context;)V

    .line 43
    .local v0, "abVariantBlockFallback":Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;
    new-instance v1, Lcom/buzzfeed/android/experiment/FixedShareBarABTest$2;

    invoke-direct {v1, v0, p0}, Lcom/buzzfeed/android/experiment/FixedShareBarABTest$2;-><init>(Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;Landroid/content/Context;)V

    .line 83
    .local v1, "abVariantBlockMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;>;"
    invoke-static {}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->getInstance()Lcom/buzzfeed/androidabframework/controller/ExperimentManager;

    move-result-object v2

    const-string v4, "Share_Bar_4_56"

    invoke-virtual {v2, v4, v1, v0}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->conductExperiment(Ljava/lang/String;Ljava/util/Map;Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;)V

    .line 85
    sget-object v2, Lcom/buzzfeed/android/experiment/FixedShareBarABTest;->sFixedShareBarVariant:Lcom/buzzfeed/spicerack/experiment/FixedShareBarVariant;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    monitor-exit v3

    return-object v2

    .line 25
    .end local v0    # "abVariantBlockFallback":Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;
    .end local v1    # "abVariantBlockMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;>;"
    :catchall_1a
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static logStatus(Ljava/lang/String;)V
    .registers 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 89
    sget-boolean v0, Lcom/buzzfeed/android/experiment/FixedShareBarABTest;->sFirstRun:Z

    if-eqz v0, :cond_9

    .line 90
    sget-object v0, Lcom/buzzfeed/android/experiment/FixedShareBarABTest;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/buzzfeed/android/experiment/FixedShareBarABTest;->sFirstRun:Z

    .line 94
    return-void
.end method
