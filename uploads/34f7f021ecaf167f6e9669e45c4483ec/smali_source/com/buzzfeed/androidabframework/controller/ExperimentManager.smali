.class public Lcom/buzzfeed/androidabframework/controller/ExperimentManager;
.super Ljava/lang/Object;
.source "ExperimentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/androidabframework/controller/ExperimentManager$CallbackInterface;
    }
.end annotation


# static fields
.field private static final AB_KEY_EXPERIMENTS:Ljava/lang/String; = "experiments"

.field private static final CACHED_DATA_FILE_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final sExperimentManager:Lcom/buzzfeed/androidabframework/controller/ExperimentManager;


# instance fields
.field private mABeagle:Lcom/buzzfeed/androidabframework/data/ABeagle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCacheTTL:J

.field private mCacheTimestamp:J

.field private mCodeTimer:Lcom/buzzfeed/androidabframework/util/CodeTimer;

.field private mEnvironment:Lcom/buzzfeed/androidabframework/util/Environment;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mExperimentMap:Ljava/util/LinkedHashMap;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/buzzfeed/androidabframework/data/Experiment;",
            ">;"
        }
    .end annotation
.end field

.field private mUserId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 41
    const-class v0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->TAG:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".cachedData2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->CACHED_DATA_FILE_NAME:Ljava/lang/String;

    .line 63
    new-instance v0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;

    invoke-direct {v0}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;-><init>()V

    sput-object v0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->sExperimentManager:Lcom/buzzfeed/androidabframework/controller/ExperimentManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    sget-object v0, Lcom/buzzfeed/androidabframework/util/Environment;->Production:Lcom/buzzfeed/androidabframework/util/Environment;

    iput-object v0, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->mEnvironment:Lcom/buzzfeed/androidabframework/util/Environment;

    .line 75
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->mCacheTTL:J

    .line 97
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->mExperimentMap:Ljava/util/LinkedHashMap;

    .line 103
    new-instance v0, Lcom/buzzfeed/androidabframework/util/CodeTimer;

    invoke-direct {v0}, Lcom/buzzfeed/androidabframework/util/CodeTimer;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->mCodeTimer:Lcom/buzzfeed/androidabframework/util/CodeTimer;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/androidabframework/controller/ExperimentManager;)Lcom/buzzfeed/androidabframework/data/ABeagle;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/androidabframework/controller/ExperimentManager;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->getABeagle()Lcom/buzzfeed/androidabframework/data/ABeagle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/buzzfeed/androidabframework/controller/ExperimentManager;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->sExperimentManager:Lcom/buzzfeed/androidabframework/controller/ExperimentManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/buzzfeed/androidabframework/controller/ExperimentManager;Lcom/buzzfeed/androidabframework/controller/ExperimentManager$CallbackInterface;Lcom/buzzfeed/androidabframework/util/ReturnCode;J)V
    .registers 6
    .param p0, "x0"    # Lcom/buzzfeed/androidabframework/controller/ExperimentManager;
    .param p1, "x1"    # Lcom/buzzfeed/androidabframework/controller/ExperimentManager$CallbackInterface;
    .param p2, "x2"    # Lcom/buzzfeed/androidabframework/util/ReturnCode;
    .param p3, "x3"    # J

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->executeCallback(Lcom/buzzfeed/androidabframework/controller/ExperimentManager$CallbackInterface;Lcom/buzzfeed/androidabframework/util/ReturnCode;J)V

    return-void
.end method

.method private declared-synchronized clear(Landroid/content/Context;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "clearCachedData"    # Z

    .prologue
    .line 454
    monitor-enter p0

    if-nez p1, :cond_e

    .line 455
    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_b

    .line 454
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 457
    :cond_e
    if-eqz p2, :cond_1b

    .line 458
    :try_start_10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->getCachedDataFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 460
    :cond_1b
    invoke-direct {p0}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->clearExperimentList()V

    .line 461
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->mUserId:Ljava/lang/String;

    .line 462
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->mABeagle:Lcom/buzzfeed/androidabframework/data/ABeagle;

    .line 463
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->mCacheTimestamp:J
    :try_end_28
    .catchall {:try_start_10 .. :try_end_28} :catchall_b

    .line 464
    monitor-exit p0

    return-void
.end method

.method private clearExperimentList()V
    .registers 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->mExperimentMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->mABeagle:Lcom/buzzfeed/androidabframework/data/ABeagle;

    .line 174
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->mCacheTimestamp:J

    .line 175
    return-void
.end method

.method private executeCallback(Lcom/buzzfeed/androidabframework/controller/ExperimentManager$CallbackInterface;Lcom/buzzfeed/androidabframework/util/ReturnCode;J)V
    .registers 12
    .param p1, "callback"    # Lcom/buzzfeed/androidabframework/controller/ExperimentManager$CallbackInterface;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "returnCode"    # Lcom/buzzfeed/androidabframework/util/ReturnCode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "responseTime"    # J
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 330
    if-eqz p1, :cond_34

    .line 331
    new-instance v1, Lcom/buzzfeed/androidabframework/util/CodeTimer;

    invoke-direct {v1}, Lcom/buzzfeed/androidabframework/util/CodeTimer;-><init>()V

    invoke-virtual {v1}, Lcom/buzzfeed/androidabframework/util/CodeTimer;->start()Lcom/buzzfeed/androidabframework/util/CodeTimer;

    move-result-object v0

    .line 332
    .local v0, "codeTimer":Lcom/buzzfeed/androidabframework/util/CodeTimer;
    invoke-interface {p1, p2, p3, p4}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager$CallbackInterface;->execute(Lcom/buzzfeed/androidabframework/util/ReturnCode;J)V

    .line 333
    sget-object v1, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Post initialize callback completed in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/buzzfeed/androidabframework/util/CodeTimer;->stop()Lcom/buzzfeed/androidabframework/util/CodeTimer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/buzzfeed/androidabframework/util/CodeTimer;->getElapsedMilliseconds()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    .end local v0    # "codeTimer":Lcom/buzzfeed/androidabframework/util/CodeTimer;
    :cond_34
    iget-object v1, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->mCodeTimer:Lcom/buzzfeed/androidabframework/util/CodeTimer;

    invoke-virtual {v1}, Lcom/buzzfeed/androidabframework/util/CodeTimer;->stop()Lcom/buzzfeed/androidabframework/util/CodeTimer;

    .line 336
    sget-object v1, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ABCeagle initialization completed in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->mCodeTimer:Lcom/buzzfeed/androidabframework/util/CodeTimer;

    invoke-virtual {v3}, Lcom/buzzfeed/androidabframework/util/CodeTimer;->getElapsedMilliseconds()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return-void
.end method

.method private declared-synchronized getABeagle()Lcom/buzzfeed/androidabframework/data/ABeagle;
    .registers 6

    .prologue
    .line 366
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->mABeagle:Lcom/buzzfeed/androidabframework/data/ABeagle;

    if-nez v0, :cond_15

    .line 367
    iget-object v0, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->mEnvironment:Lcom/buzzfeed/androidabframework/util/Environment;

    iget-wide v2, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->mCacheTTL:J

    iget-object v1, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->mUserId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->getExperimentList()Ljava/util/List;

    move-result-object v4

    invoke-static {v0, v2, v3, v1, v4}, Lcom/buzzfeed/androidabframework/data/ABeagle;->newInstance(Lcom/buzzfeed/androidabframework/util/Environment;JLjava/lang/String;Ljava/util/List;)Lcom/buzzfeed/androidabframework/data/ABeagle;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->mABeagle:Lcom/buzzfeed/androidabframework/data/ABeagle;

    .line 369
    :cond_15
    iget-object v0, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->mABeagle:Lcom/buzzfeed/androidabframework/data/ABeagle;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-object v0

    .line 366
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getCachedDataFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 178
    sget-object v0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->CACHED_DATA_FILE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/buzzfeed/androidabframework/controller/ExperimentManager;
    .registers 1

    .prologue
    .line 108
    sget-object v0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->sExperimentManager:Lcom/buzzfeed/androidabframework/controller/ExperimentManager;

    return-object v0
.end method

.method private loadABeagleData(Landroid/content/Context;Lcom/buzzfeed/androidabframework/controller/ExperimentManager$CallbackInterface;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "callback"    # Lcom/buzzfeed/androidabframework/controller/ExperimentManager$CallbackInterface;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".loadABeagleData"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, "TAG":Ljava/lang/String;
    new-instance v1, Lcom/buzzfeed/androidabframework/controller/ExperimentManager$1;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager$1;-><init>(Lcom/buzzfeed/androidabframework/controller/ExperimentManager;Landroid/content/Context;Ljava/lang/String;Lcom/buzzfeed/androidabframework/controller/ExperimentManager$CallbackInterface;)V

    .line 441
    .local v1, "asyncTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lcom/buzzfeed/androidabframework/util/ReturnCode;>;"
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 442
    return-void
.end method

.method private declared-synchronized loadExperimentsFromCache(Landroid/content/Context;)Lcom/buzzfeed/androidabframework/util/ReturnCode;
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 571
    monitor-enter p0

    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->TAG:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".loadExperimentsFromCache"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_118

    move-result-object v2

    .line 573
    .local v2, "TAG":Ljava/lang/String;
    :try_start_16
    new-instance v11, Lcom/buzzfeed/androidabframework/util/CodeTimer;

    invoke-direct {v11}, Lcom/buzzfeed/androidabframework/util/CodeTimer;-><init>()V

    invoke-virtual {v11}, Lcom/buzzfeed/androidabframework/util/CodeTimer;->start()Lcom/buzzfeed/androidabframework/util/CodeTimer;

    move-result-object v3

    .line 574
    .local v3, "codeTimer":Lcom/buzzfeed/androidabframework/util/CodeTimer;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {p0}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->getCachedDataFileName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v7

    .line 575
    .local v7, "fileInputStream":Ljava/io/FileInputStream;
    new-instance v8, Ljava/io/ObjectInputStream;

    invoke-direct {v8, v7}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 576
    .local v8, "objectInputStream":Ljava/io/ObjectInputStream;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_35
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_35} :catch_fb
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_35} :catch_11b
    .catchall {:try_start_16 .. :try_end_35} :catchall_118

    .line 579
    .local v6, "experimentList":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/androidabframework/data/Experiment;>;"
    :try_start_35
    const-string v11, "Reading Experiments from Cache..."

    invoke-static {v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v9

    .local v9, "readObject":Ljava/lang/Object;
    if-eqz v9, :cond_67

    .line 581
    move-object v0, v9

    check-cast v0, Lcom/buzzfeed/androidabframework/util/Environment;

    move-object v5, v0

    .line 582
    .local v5, "environment":Lcom/buzzfeed/androidabframework/util/Environment;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  Environment: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v11, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->mEnvironment:Lcom/buzzfeed/androidabframework/util/Environment;

    invoke-virtual {v11, v5}, Lcom/buzzfeed/androidabframework/util/Environment;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_98

    .line 585
    const-string v11, "Environment has changed from cached data; not loading experiments from cache"

    invoke-static {v2, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Ljava/io/EOFException; {:try_start_35 .. :try_end_67} :catch_c6
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_67} :catch_fb
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_67} :catch_11b
    .catchall {:try_start_35 .. :try_end_67} :catchall_118

    .line 604
    .end local v5    # "environment":Lcom/buzzfeed/androidabframework/util/Environment;
    .end local v9    # "readObject":Ljava/lang/Object;
    :cond_67
    :goto_67
    :try_start_67
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_70

    .line 605
    invoke-direct {p0, v6}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->updateExperimentList(Ljava/util/List;)V

    .line 607
    :cond_70
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Experiment data loaded from cache in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Lcom/buzzfeed/androidabframework/util/CodeTimer;->stop()Lcom/buzzfeed/androidabframework/util/CodeTimer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/buzzfeed/androidabframework/util/CodeTimer;->getElapsedMilliseconds()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catch Ljava/io/FileNotFoundException; {:try_start_67 .. :try_end_94} :catch_fb
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_94} :catch_11b
    .catchall {:try_start_67 .. :try_end_94} :catchall_118

    .line 615
    .end local v3    # "codeTimer":Lcom/buzzfeed/androidabframework/util/CodeTimer;
    .end local v6    # "experimentList":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/androidabframework/data/Experiment;>;"
    .end local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    :goto_94
    :try_start_94
    sget-object v11, Lcom/buzzfeed/androidabframework/util/ReturnCode;->SucceededNormally:Lcom/buzzfeed/androidabframework/util/ReturnCode;
    :try_end_96
    .catchall {:try_start_94 .. :try_end_96} :catchall_118

    :goto_96
    monitor-exit p0

    return-object v11

    .line 586
    .restart local v3    # "codeTimer":Lcom/buzzfeed/androidabframework/util/CodeTimer;
    .restart local v5    # "environment":Lcom/buzzfeed/androidabframework/util/Environment;
    .restart local v6    # "experimentList":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/androidabframework/data/Experiment;>;"
    .restart local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v9    # "readObject":Ljava/lang/Object;
    :cond_98
    :try_start_98
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_67

    .line 587
    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    .line 588
    .local v10, "userId":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  User ID: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object v11, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->mUserId:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c8

    .line 591
    const-string v11, "UserId has changed from cached data; not loading experiments from cache"

    invoke-static {v2, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67

    .line 601
    .end local v5    # "environment":Lcom/buzzfeed/androidabframework/util/Environment;
    .end local v9    # "readObject":Ljava/lang/Object;
    .end local v10    # "userId":Ljava/lang/String;
    :catch_c6
    move-exception v11

    goto :goto_67

    .line 593
    .restart local v5    # "environment":Lcom/buzzfeed/androidabframework/util/Environment;
    .restart local v9    # "readObject":Ljava/lang/Object;
    .restart local v10    # "userId":Ljava/lang/String;
    :cond_c8
    const-string v11, "  Experiments: "

    invoke-static {v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :goto_cd
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_67

    .line 595
    move-object v0, v9

    check-cast v0, Lcom/buzzfeed/androidabframework/data/Experiment;

    move-object v11, v0

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "    "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fa
    .catch Ljava/io/EOFException; {:try_start_98 .. :try_end_fa} :catch_c6
    .catch Ljava/io/FileNotFoundException; {:try_start_98 .. :try_end_fa} :catch_fb
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_fa} :catch_11b
    .catchall {:try_start_98 .. :try_end_fa} :catchall_118

    goto :goto_cd

    .line 608
    .end local v3    # "codeTimer":Lcom/buzzfeed/androidabframework/util/CodeTimer;
    .end local v5    # "environment":Lcom/buzzfeed/androidabframework/util/Environment;
    .end local v6    # "experimentList":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/androidabframework/data/Experiment;>;"
    .end local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    .end local v9    # "readObject":Ljava/lang/Object;
    .end local v10    # "userId":Ljava/lang/String;
    :catch_fb
    move-exception v4

    .line 610
    .local v4, "e":Ljava/io/FileNotFoundException;
    :try_start_fc
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Existing cache file not found: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-direct {p0}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->getCachedDataFileName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_116
    .catchall {:try_start_fc .. :try_end_116} :catchall_118

    goto/16 :goto_94

    .line 571
    .end local v2    # "TAG":Ljava/lang/String;
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :catchall_118
    move-exception v11

    monitor-exit p0

    throw v11

    .line 611
    .restart local v2    # "TAG":Ljava/lang/String;
    :catch_11b
    move-exception v4

    .line 612
    .local v4, "e":Ljava/lang/Exception;
    :try_start_11c
    const-string v11, "Error loading cached experiment data"

    invoke-static {v2, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 613
    sget-object v11, Lcom/buzzfeed/androidabframework/util/ReturnCode;->FailedToLoadCachedData:Lcom/buzzfeed/androidabframework/util/ReturnCode;
    :try_end_123
    .catchall {:try_start_11c .. :try_end_123} :catchall_118

    goto/16 :goto_96
.end method

.method private declared-synchronized loadExperimentsFromJson(Lorg/json/JSONObject;)Lcom/buzzfeed/androidabframework/util/ReturnCode;
    .registers 8
    .param p1, "experimentListJson"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 346
    monitor-enter p0

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".loadExperimentsFromJson"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "TAG":Ljava/lang/String;
    sget-object v3, Lcom/buzzfeed/androidabframework/util/ReturnCode;->SucceededNormally:Lcom/buzzfeed/androidabframework/util/ReturnCode;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_43

    .line 349
    .local v3, "returnCode":Lcom/buzzfeed/androidabframework/util/ReturnCode;
    :try_start_18
    const-string v4, "experiments"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcom/buzzfeed/androidabframework/data/Experiment;->experimentListFromJson(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    .line 350
    .local v2, "experimentList":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/androidabframework/data/Experiment;>;"
    if-eqz v2, :cond_27

    .line 351
    invoke-direct {p0, v2}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->updateExperimentList(Ljava/util/List;)V
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_27} :catch_29
    .catchall {:try_start_18 .. :try_end_27} :catchall_43

    .line 357
    .end local v2    # "experimentList":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/androidabframework/data/Experiment;>;"
    :cond_27
    :goto_27
    monitor-exit p0

    return-object v3

    .line 353
    :catch_29
    move-exception v1

    .line 354
    .local v1, "e":Lorg/json/JSONException;
    :try_start_2a
    sget-object v3, Lcom/buzzfeed/androidabframework/util/ReturnCode;->FailedToLoadExperimentList:Lcom/buzzfeed/androidabframework/util/ReturnCode;

    .line 355
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading experiment list json: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_42
    .catchall {:try_start_2a .. :try_end_42} :catchall_43

    goto :goto_27

    .line 346
    .end local v0    # "TAG":Ljava/lang/String;
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v3    # "returnCode":Lcom/buzzfeed/androidabframework/util/ReturnCode;
    :catchall_43
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private mergeExperimentList(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 8
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/androidabframework/data/Experiment;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/buzzfeed/androidabframework/data/Experiment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 483
    .local p1, "experimentList":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/androidabframework/data/Experiment;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 484
    .local v2, "updatedExperimentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/buzzfeed/androidabframework/data/Experiment;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/androidabframework/data/Experiment;

    .line 485
    .local v1, "experiment":Lcom/buzzfeed/androidabframework/data/Experiment;
    iget-object v4, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->mExperimentMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Lcom/buzzfeed/androidabframework/data/Experiment;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/androidabframework/data/Experiment;

    .line 486
    .local v0, "existingExperiment":Lcom/buzzfeed/androidabframework/data/Experiment;
    if-eqz v0, :cond_2a

    .line 487
    invoke-virtual {v0, v1}, Lcom/buzzfeed/androidabframework/data/Experiment;->updateWithExperiment(Lcom/buzzfeed/androidabframework/data/Experiment;)V

    .line 488
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 490
    :cond_2a
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 493
    .end local v0    # "existingExperiment":Lcom/buzzfeed/androidabframework/data/Experiment;
    .end local v1    # "experiment":Lcom/buzzfeed/androidabframework/data/Experiment;
    :cond_2e
    return-object v2
.end method

.method private setExperimentList(Ljava/util/List;)V
    .registers 6
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/androidabframework/data/Experiment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "experimentList":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/androidabframework/data/Experiment;>;"
    invoke-direct {p0}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->clearExperimentList()V

    .line 166
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/androidabframework/data/Experiment;

    .line 167
    .local v0, "experiment":Lcom/buzzfeed/androidabframework/data/Experiment;
    iget-object v2, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->mExperimentMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/buzzfeed/androidabframework/data/Experiment;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 169
    .end local v0    # "experiment":Lcom/buzzfeed/androidabframework/data/Experiment;
    :cond_1d
    return-void
.end method

.method private declared-synchronized setUserId(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 313
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".setUserId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "TAG":Ljava/lang/String;
    iget-object v1, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->mUserId:Ljava/lang/String;

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->mUserId:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "userId has changed: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->mUserId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' --> \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', resetting experiment data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->clear(Landroid/content/Context;Z)V

    .line 318
    :cond_4f
    iput-object p2, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->mUserId:Ljava/lang/String;
    :try_end_51
    .catchall {:try_start_1 .. :try_end_51} :catchall_53

    .line 319
    monitor-exit p0

    return-void

    .line 313
    .end local v0    # "TAG":Ljava/lang/String;
    :catchall_53
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private updateExperimentList(Ljava/util/List;)V
    .registers 3
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/androidabframework/data/Experiment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 472
    .local p1, "experimentList":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/androidabframework/data/Experiment;>;"
    invoke-direct {p0, p1}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->mergeExperimentList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->setExperimentList(Ljava/util/List;)V

    .line 473
    return-void
.end method


# virtual methods
.method public declared-synchronized conductExperiment(Ljava/lang/String;Ljava/util/Map;Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;)V
    .registers 8
    .param p1, "experimentName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "fallbackBlock"    # Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;",
            ">;",
            "Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;",
            ")V"
        }
    .end annotation

    .prologue
    .line 509
    .local p2, "variantBlockMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;>;"
    monitor-enter p0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".conductExperiment"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, "TAG":Ljava/lang/String;
    if-nez p1, :cond_23

    .line 511
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "experimentName parameter cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_20

    .line 509
    .end local v0    # "TAG":Ljava/lang/String;
    :catchall_20
    move-exception v2

    monitor-exit p0

    throw v2

    .line 513
    .restart local v0    # "TAG":Ljava/lang/String;
    :cond_23
    if-nez p2, :cond_2e

    .line 514
    :try_start_25
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "variantBlockMap parameter cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 516
    :cond_2e
    if-nez p3, :cond_38

    .line 517
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "fallbackBlock parameter cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 519
    :cond_38
    invoke-virtual {p0, p1}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->getExperimentForName(Ljava/lang/String;)Lcom/buzzfeed/androidabframework/data/Experiment;

    move-result-object v1

    .line 520
    .local v1, "experiment":Lcom/buzzfeed/androidabframework/data/Experiment;
    if-eqz v1, :cond_67

    .line 522
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Executing variant block for:  Experiment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Variant: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/buzzfeed/androidabframework/data/Experiment;->getSelectedVariantName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-virtual {v1, p2, p3}, Lcom/buzzfeed/androidabframework/data/Experiment;->executeBlock(Ljava/util/Map;Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;)V
    :try_end_65
    .catchall {:try_start_25 .. :try_end_65} :catchall_20

    .line 529
    :goto_65
    monitor-exit p0

    return-void

    .line 526
    :cond_67
    :try_start_67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Experiment not active.  Executing fallback block for:  Experiment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-interface {p3, v1}, Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;->executeBlock(Lcom/buzzfeed/androidabframework/data/Experiment;)V
    :try_end_80
    .catchall {:try_start_67 .. :try_end_80} :catchall_20

    goto :goto_65
.end method

.method public declared-synchronized getCacheTTL()J
    .registers 3

    .prologue
    .line 132
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->mCacheTTL:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEnvironment()Lcom/buzzfeed/androidabframework/util/Environment;
    .registers 2

    .prologue
    .line 112
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->mEnvironment:Lcom/buzzfeed/androidabframework/util/Environment;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getExperimentForName(Ljava/lang/String;)Lcom/buzzfeed/androidabframework/data/Experiment;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 189
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->mExperimentMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/androidabframework/data/Experiment;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getExperimentList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/androidabframework/data/Experiment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->mExperimentMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/buzzfeed/androidabframework/controller/ExperimentManager$CallbackInterface;)Lcom/buzzfeed/androidabframework/util/ReturnCode;
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "experimentListAsset"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "userId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "callback"    # Lcom/buzzfeed/androidabframework/controller/ExperimentManager$CallbackInterface;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 288
    if-nez p1, :cond_a

    .line 289
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "context parameter cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 291
    :cond_a
    if-nez p2, :cond_14

    .line 292
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "experimentListAsset parameter cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 294
    :cond_14
    if-nez p3, :cond_1f

    .line 295
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "userId parameter cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 299
    :cond_1f
    :try_start_1f
    invoke-static {p1, p2}, Lcom/buzzfeed/androidabframework/util/Util;->getJsonFromAsset(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_28

    move-result-object v1

    .line 303
    .local v1, "experimentListJson":Lorg/json/JSONObject;
    invoke-virtual {p0, p1, v1, p3, p4}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->initialize(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Lcom/buzzfeed/androidabframework/controller/ExperimentManager$CallbackInterface;)Lcom/buzzfeed/androidabframework/util/ReturnCode;

    move-result-object v2

    return-object v2

    .line 300
    .end local v1    # "experimentListJson":Lorg/json/JSONObject;
    :catch_28
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid experiment list asset given: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public initialize(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Lcom/buzzfeed/androidabframework/controller/ExperimentManager$CallbackInterface;)Lcom/buzzfeed/androidabframework/util/ReturnCode;
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "experimentListJson"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "userId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "callback"    # Lcom/buzzfeed/androidabframework/controller/ExperimentManager$CallbackInterface;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const-wide/16 v6, 0x0

    .line 230
    if-nez p1, :cond_c

    .line 231
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "context parameter cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 233
    :cond_c
    if-nez p2, :cond_16

    .line 234
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "experimentListJson parameter cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 236
    :cond_16
    if-nez p3, :cond_21

    .line 237
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "userId parameter cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 239
    :cond_21
    iget-object v2, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->mCodeTimer:Lcom/buzzfeed/androidabframework/util/CodeTimer;

    invoke-virtual {v2}, Lcom/buzzfeed/androidabframework/util/CodeTimer;->start()Lcom/buzzfeed/androidabframework/util/CodeTimer;

    .line 240
    sget-object v1, Lcom/buzzfeed/androidabframework/util/ReturnCode;->SucceededNormally:Lcom/buzzfeed/androidabframework/util/ReturnCode;

    .line 242
    .local v1, "returnCode":Lcom/buzzfeed/androidabframework/util/ReturnCode;
    invoke-direct {p0, p1, p3}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->setUserId(Landroid/content/Context;Ljava/lang/String;)V

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->mCacheTimestamp:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->mCacheTTL:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_65

    .line 245
    sget-object v2, Lcom/buzzfeed/androidabframework/util/ReturnCode;->SucceededNormally:Lcom/buzzfeed/androidabframework/util/ReturnCode;

    if-ne v1, v2, :cond_40

    .line 246
    invoke-direct {p0, p1}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->loadExperimentsFromCache(Landroid/content/Context;)Lcom/buzzfeed/androidabframework/util/ReturnCode;

    move-result-object v1

    .line 249
    :cond_40
    sget-object v2, Lcom/buzzfeed/androidabframework/util/ReturnCode;->SucceededNormally:Lcom/buzzfeed/androidabframework/util/ReturnCode;

    if-ne v1, v2, :cond_48

    .line 250
    invoke-direct {p0, p2}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->loadExperimentsFromJson(Lorg/json/JSONObject;)Lcom/buzzfeed/androidabframework/util/ReturnCode;

    move-result-object v1

    .line 253
    :cond_48
    sget-object v2, Lcom/buzzfeed/androidabframework/util/ReturnCode;->SucceededNormally:Lcom/buzzfeed/androidabframework/util/ReturnCode;

    if-ne v1, v2, :cond_4f

    .line 254
    invoke-virtual {p0, p1}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->saveExperimentsToCache(Landroid/content/Context;)V

    .line 257
    :cond_4f
    sget-object v2, Lcom/buzzfeed/androidabframework/util/ReturnCode;->SucceededNormally:Lcom/buzzfeed/androidabframework/util/ReturnCode;

    if-ne v1, v2, :cond_61

    .line 258
    invoke-direct {p0, p1, p4}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->loadABeagleData(Landroid/content/Context;Lcom/buzzfeed/androidabframework/controller/ExperimentManager$CallbackInterface;)V

    .line 264
    :goto_56
    sget-object v2, Lcom/buzzfeed/androidabframework/util/ReturnCode;->SucceededNormally:Lcom/buzzfeed/androidabframework/util/ReturnCode;

    if-ne v1, v2, :cond_60

    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->mCacheTimestamp:J

    .line 274
    :cond_60
    :goto_60
    return-object v1

    .line 261
    :cond_61
    invoke-direct {p0, p4, v1, v6, v7}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->executeCallback(Lcom/buzzfeed/androidabframework/controller/ExperimentManager$CallbackInterface;Lcom/buzzfeed/androidabframework/util/ReturnCode;J)V

    goto :goto_56

    .line 269
    :cond_65
    iget-wide v2, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->mCacheTTL:J

    iget-wide v4, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->mCacheTimestamp:J

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    div-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v0, v2, 0x1

    .line 270
    .local v0, "mins":I
    sget-object v2, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using ABeagle cached data (cache expires in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " minutes)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-direct {p0, p4, v1, v6, v7}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->executeCallback(Lcom/buzzfeed/androidabframework/controller/ExperimentManager$CallbackInterface;Lcom/buzzfeed/androidabframework/util/ReturnCode;J)V

    goto :goto_60
.end method

.method public declared-synchronized onStop(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 152
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->saveExperimentsToCache(Landroid/content/Context;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 153
    monitor-exit p0

    return-void

    .line 152
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized saveExperimentsToCache(Landroid/content/Context;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 538
    monitor-enter p0

    if-nez p1, :cond_e

    .line 539
    :try_start_3
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "context parameter cannot be null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_b

    .line 538
    :catchall_b
    move-exception v6

    monitor-exit p0

    throw v6

    .line 541
    :cond_e
    :try_start_e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".saveExperimentsToCache"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_b

    move-result-object v0

    .line 543
    .local v0, "TAG":Ljava/lang/String;
    :try_start_23
    const-string v6, "Saving Experiments to Cache..."

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    new-instance v6, Lcom/buzzfeed/androidabframework/util/CodeTimer;

    invoke-direct {v6}, Lcom/buzzfeed/androidabframework/util/CodeTimer;-><init>()V

    invoke-virtual {v6}, Lcom/buzzfeed/androidabframework/util/CodeTimer;->start()Lcom/buzzfeed/androidabframework/util/CodeTimer;

    move-result-object v1

    .line 545
    .local v1, "codeTimer":Lcom/buzzfeed/androidabframework/util/CodeTimer;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->getCachedDataFileName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 546
    .local v4, "fileOutputStream":Ljava/io/FileOutputStream;
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 547
    .local v5, "objectOutputStream":Ljava/io/ObjectOutputStream;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Environment: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->mEnvironment:Lcom/buzzfeed/androidabframework/util/Environment;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v6, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->mEnvironment:Lcom/buzzfeed/androidabframework/util/Environment;

    invoke-virtual {v5, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 549
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  User ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->mUserId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v6, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->mUserId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 551
    const-string v6, "  Experiments: "

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-virtual {p0}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->getExperimentList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/buzzfeed/androidabframework/data/Experiment;

    .line 553
    .local v3, "experiment":Lcom/buzzfeed/androidabframework/data/Experiment;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-virtual {v5, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_af} :catch_b0
    .catchall {:try_start_23 .. :try_end_af} :catchall_b

    goto :goto_8a

    .line 559
    .end local v1    # "codeTimer":Lcom/buzzfeed/androidabframework/util/CodeTimer;
    .end local v3    # "experiment":Lcom/buzzfeed/androidabframework/data/Experiment;
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v5    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    :catch_b0
    move-exception v2

    .line 560
    .local v2, "e":Ljava/lang/Exception;
    :try_start_b1
    const-string v6, "Error saving cached experiment data"

    invoke-static {v0, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b6
    .catchall {:try_start_b1 .. :try_end_b6} :catchall_b

    .line 562
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_b6
    monitor-exit p0

    return-void

    .line 556
    .restart local v1    # "codeTimer":Lcom/buzzfeed/androidabframework/util/CodeTimer;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    :cond_b8
    :try_start_b8
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V

    .line 557
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 558
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Experiment data saved to cache in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/buzzfeed/androidabframework/util/CodeTimer;->stop()Lcom/buzzfeed/androidabframework/util/CodeTimer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/buzzfeed/androidabframework/util/CodeTimer;->getElapsedMilliseconds()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_e2} :catch_b0
    .catchall {:try_start_b8 .. :try_end_e2} :catchall_b

    goto :goto_b6
.end method

.method public declared-synchronized setCacheTTL(J)V
    .registers 4
    .param p1, "cacheTTL"    # J

    .prologue
    .line 143
    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->mCacheTTL:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 144
    monitor-exit p0

    return-void

    .line 143
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEnvironment(Landroid/content/Context;Lcom/buzzfeed/androidabframework/util/Environment;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "environment"    # Lcom/buzzfeed/androidabframework/util/Environment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 125
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->mEnvironment:Lcom/buzzfeed/androidabframework/util/Environment;

    invoke-virtual {v0, p2}, Lcom/buzzfeed/androidabframework/util/Environment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 126
    iput-object p2, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->mEnvironment:Lcom/buzzfeed/androidabframework/util/Environment;

    .line 127
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->clear(Landroid/content/Context;Z)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 129
    :cond_f
    monitor-exit p0

    return-void

    .line 125
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method
