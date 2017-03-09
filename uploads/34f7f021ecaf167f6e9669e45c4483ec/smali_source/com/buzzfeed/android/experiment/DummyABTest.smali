.class public Lcom/buzzfeed/android/experiment/DummyABTest;
.super Ljava/lang/Object;
.source "DummyABTest.java"


# static fields
.field private static final ANALYTICS_ACTION:Ljava/lang/String;

.field private static final ANALYTICS_CATEGORY:Ljava/lang/String;

.field private static final ANALYTICS_LABEL_CONTROL:Ljava/lang/String;

.field private static final ANALYTICS_LABEL_TURN_ON:Ljava/lang/String;

.field private static final EXPERIMENT:Ljava/lang/String; = "android_experiment_test_4_55"

.field private static final TAG:Ljava/lang/String;

.field private static final VARIANT_CONTROL:Ljava/lang/String; = "control"

.field private static final VARIANT_TURN_ON:Ljava/lang/String; = "turn_on"

.field private static sFirstRun:Z

.field private static sStatus:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 14
    const-class v0, Lcom/buzzfeed/android/experiment/DummyABTest;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/experiment/DummyABTest;->TAG:Ljava/lang/String;

    .line 18
    invoke-static {}, Lcom/buzzfeed/android/experiment/ExperimentUtils;->getAnalyticsCategory()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/experiment/DummyABTest;->ANALYTICS_CATEGORY:Ljava/lang/String;

    .line 19
    const-string v0, "android_experiment_test_4_55"

    invoke-static {v0}, Lcom/buzzfeed/android/experiment/ExperimentUtils;->getAnalyticsAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/experiment/DummyABTest;->ANALYTICS_ACTION:Ljava/lang/String;

    .line 20
    const-string v0, "android_experiment_test_4_55"

    const-string v1, "control"

    invoke-static {v0, v1}, Lcom/buzzfeed/android/experiment/ExperimentUtils;->getAnalyticsLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/experiment/DummyABTest;->ANALYTICS_LABEL_CONTROL:Ljava/lang/String;

    .line 21
    const-string v0, "android_experiment_test_4_55"

    const-string/jumbo v1, "turn_on"

    invoke-static {v0, v1}, Lcom/buzzfeed/android/experiment/ExperimentUtils;->getAnalyticsLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/experiment/DummyABTest;->ANALYTICS_LABEL_TURN_ON:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/buzzfeed/android/experiment/DummyABTest;->sStatus:Z

    .line 24
    const/4 v0, 0x1

    sput-boolean v0, Lcom/buzzfeed/android/experiment/DummyABTest;->sFirstRun:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Z)V
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 12
    invoke-static {p0}, Lcom/buzzfeed/android/experiment/DummyABTest;->setStatus(Z)V

    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 12
    sget-boolean v0, Lcom/buzzfeed/android/experiment/DummyABTest;->sFirstRun:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 12
    sput-boolean p0, Lcom/buzzfeed/android/experiment/DummyABTest;->sFirstRun:Z

    return p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 12
    sget-object v0, Lcom/buzzfeed/android/experiment/DummyABTest;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 12
    sget-object v0, Lcom/buzzfeed/android/experiment/DummyABTest;->ANALYTICS_CATEGORY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    .prologue
    .line 12
    sget-object v0, Lcom/buzzfeed/android/experiment/DummyABTest;->ANALYTICS_ACTION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    .prologue
    .line 12
    sget-object v0, Lcom/buzzfeed/android/experiment/DummyABTest;->ANALYTICS_LABEL_CONTROL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .registers 1

    .prologue
    .line 12
    sget-object v0, Lcom/buzzfeed/android/experiment/DummyABTest;->ANALYTICS_LABEL_TURN_ON:Ljava/lang/String;

    return-object v0
.end method

.method private static getStatus()Z
    .registers 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/buzzfeed/android/experiment/DummyABTest;->sStatus:Z

    return v0
.end method

.method private static setStatus(Z)V
    .registers 1
    .param p0, "enabled"    # Z

    .prologue
    .line 27
    sput-boolean p0, Lcom/buzzfeed/android/experiment/DummyABTest;->sStatus:Z

    .line 28
    return-void
.end method

.method public static declared-synchronized shouldDoSomething()Z
    .registers 5

    .prologue
    .line 36
    const-class v3, Lcom/buzzfeed/android/experiment/DummyABTest;

    monitor-enter v3

    :try_start_3
    new-instance v0, Lcom/buzzfeed/android/experiment/DummyABTest$1;

    invoke-direct {v0}, Lcom/buzzfeed/android/experiment/DummyABTest$1;-><init>()V

    .line 54
    .local v0, "abVariantBlockFallback":Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;
    new-instance v1, Lcom/buzzfeed/android/experiment/DummyABTest$2;

    invoke-direct {v1, v0}, Lcom/buzzfeed/android/experiment/DummyABTest$2;-><init>(Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;)V

    .line 77
    .local v1, "abVariantBlockMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;>;"
    invoke-static {}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->getInstance()Lcom/buzzfeed/androidabframework/controller/ExperimentManager;

    move-result-object v2

    const-string v4, "android_experiment_test_4_55"

    invoke-virtual {v2, v4, v1, v0}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->conductExperiment(Ljava/lang/String;Ljava/util/Map;Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;)V

    .line 79
    invoke-static {}, Lcom/buzzfeed/android/experiment/DummyABTest;->getStatus()Z
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1c

    move-result v2

    monitor-exit v3

    return v2

    .line 36
    .end local v1    # "abVariantBlockMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;>;"
    :catchall_1c
    move-exception v2

    monitor-exit v3

    throw v2
.end method
