.class public Lcom/buzzfeed/android/util/DiscriminatingTracker;
.super Lcom/buzzfeed/analytics/client/BuzzFeedTracker;
.source "DiscriminatingTracker.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sEnabled:Z

.field private static sInstance:Lcom/buzzfeed/android/util/DiscriminatingTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    const-class v0, Lcom/buzzfeed/android/util/DiscriminatingTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/util/DiscriminatingTracker;->TAG:Ljava/lang/String;

    .line 11
    const/4 v0, 0x0

    sput-boolean v0, Lcom/buzzfeed/android/util/DiscriminatingTracker;->sEnabled:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;-><init>()V

    .line 14
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/buzzfeed/android/util/DiscriminatingTracker;
    .registers 2

    .prologue
    .line 17
    const-class v1, Lcom/buzzfeed/android/util/DiscriminatingTracker;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/buzzfeed/android/util/DiscriminatingTracker;->sInstance:Lcom/buzzfeed/android/util/DiscriminatingTracker;

    if-nez v0, :cond_e

    .line 18
    new-instance v0, Lcom/buzzfeed/android/util/DiscriminatingTracker;

    invoke-direct {v0}, Lcom/buzzfeed/android/util/DiscriminatingTracker;-><init>()V

    sput-object v0, Lcom/buzzfeed/android/util/DiscriminatingTracker;->sInstance:Lcom/buzzfeed/android/util/DiscriminatingTracker;

    .line 20
    :cond_e
    sget-object v0, Lcom/buzzfeed/android/util/DiscriminatingTracker;->sInstance:Lcom/buzzfeed/android/util/DiscriminatingTracker;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 17
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public enable()V
    .registers 2

    .prologue
    .line 24
    const/4 v0, 0x1

    sput-boolean v0, Lcom/buzzfeed/android/util/DiscriminatingTracker;->sEnabled:Z

    .line 25
    return-void
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 28
    sget-boolean v0, Lcom/buzzfeed/android/util/DiscriminatingTracker;->sEnabled:Z

    return v0
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "value"    # J

    .prologue
    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/buzzfeed/android/util/DiscriminatingTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".trackEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "TAG":Ljava/lang/String;
    sget-boolean v1, Lcom/buzzfeed/android/util/DiscriminatingTracker;->sEnabled:Z

    if-eqz v1, :cond_1d

    .line 34
    invoke-super/range {p0 .. p5}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 38
    :goto_1c
    return-void

    .line 36
    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application not running yet, event not tracked: category="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", label="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c
.end method
