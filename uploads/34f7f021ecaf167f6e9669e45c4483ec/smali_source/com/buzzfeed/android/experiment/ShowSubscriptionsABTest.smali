.class public Lcom/buzzfeed/android/experiment/ShowSubscriptionsABTest;
.super Ljava/lang/Object;
.source "ShowSubscriptionsABTest.java"


# static fields
.field private static final EXPERIMENT:Ljava/lang/String; = "Show_Subscriptions_ANDROID"

.field private static final TAG:Ljava/lang/String;

.field private static sEnableShowSubscriptions:Z

.field private static sFirstRun:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-class v0, Lcom/buzzfeed/android/experiment/ShowSubscriptionsABTest;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/experiment/ShowSubscriptionsABTest;->TAG:Ljava/lang/String;

    .line 19
    const/4 v0, 0x1

    sput-boolean v0, Lcom/buzzfeed/android/experiment/ShowSubscriptionsABTest;->sFirstRun:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 15
    sput-boolean p0, Lcom/buzzfeed/android/experiment/ShowSubscriptionsABTest;->sEnableShowSubscriptions:Z

    return p0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-static {p0}, Lcom/buzzfeed/android/experiment/ShowSubscriptionsABTest;->logStatus(Ljava/lang/String;)V

    return-void
.end method

.method private static logStatus(Ljava/lang/String;)V
    .registers 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 69
    sget-boolean v0, Lcom/buzzfeed/android/experiment/ShowSubscriptionsABTest;->sFirstRun:Z

    if-eqz v0, :cond_9

    .line 70
    sget-object v0, Lcom/buzzfeed/android/experiment/ShowSubscriptionsABTest;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/buzzfeed/android/experiment/ShowSubscriptionsABTest;->sFirstRun:Z

    .line 74
    return-void
.end method

.method public static declared-synchronized shouldEnableShowSubscriptions(Landroid/content/Context;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    const-class v3, Lcom/buzzfeed/android/experiment/ShowSubscriptionsABTest;

    monitor-enter v3

    :try_start_3
    new-instance v0, Lcom/buzzfeed/android/experiment/ShowSubscriptionsABTest$1;

    invoke-direct {v0, p0}, Lcom/buzzfeed/android/experiment/ShowSubscriptionsABTest$1;-><init>(Landroid/content/Context;)V

    .line 41
    .local v0, "abVariantBlockFallback":Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;
    new-instance v1, Lcom/buzzfeed/android/experiment/ShowSubscriptionsABTest$2;

    invoke-direct {v1, v0, p0}, Lcom/buzzfeed/android/experiment/ShowSubscriptionsABTest$2;-><init>(Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;Landroid/content/Context;)V

    .line 63
    .local v1, "abVariantBlockMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;>;"
    invoke-static {}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->getInstance()Lcom/buzzfeed/androidabframework/controller/ExperimentManager;

    move-result-object v2

    const-string v4, "Show_Subscriptions_ANDROID"

    invoke-virtual {v2, v4, v1, v0}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->conductExperiment(Ljava/lang/String;Ljava/util/Map;Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;)V

    .line 65
    sget-boolean v2, Lcom/buzzfeed/android/experiment/ShowSubscriptionsABTest;->sEnableShowSubscriptions:Z
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    monitor-exit v3

    return v2

    .line 23
    .end local v0    # "abVariantBlockFallback":Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;
    .end local v1    # "abVariantBlockMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;>;"
    :catchall_1a
    move-exception v2

    monitor-exit v3

    throw v2
.end method
