.class public final Lcom/buzzfeed/analytics/Analytics;
.super Ljava/lang/Object;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/analytics/Analytics$Configuration;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/buzzfeed/analytics/Analytics;


# instance fields
.field private mAppContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mConfiguration:Lcom/buzzfeed/analytics/Analytics$Configuration;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcom/buzzfeed/analytics/Analytics;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/analytics/Analytics;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/buzzfeed/analytics/Analytics$Configuration;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "configuration"    # Lcom/buzzfeed/analytics/Analytics$Configuration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/buzzfeed/analytics/Analytics;->mAppContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/buzzfeed/analytics/Analytics;->mConfiguration:Lcom/buzzfeed/analytics/Analytics$Configuration;

    .line 55
    return-void
.end method

.method public static getInstance()Lcom/buzzfeed/analytics/Analytics;
    .registers 2

    .prologue
    .line 49
    sget-object v0, Lcom/buzzfeed/analytics/Analytics;->sInstance:Lcom/buzzfeed/analytics/Analytics;

    const-string v1, "Analytics must be initialized before calling getInstance()."

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/analytics/Analytics;

    return-object v0
.end method

.method public static declared-synchronized initializeWith(Landroid/content/Context;Lcom/buzzfeed/analytics/Analytics$Configuration;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "configuration"    # Lcom/buzzfeed/analytics/Analytics$Configuration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 33
    const-class v1, Lcom/buzzfeed/analytics/Analytics;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/buzzfeed/analytics/Analytics;->sInstance:Lcom/buzzfeed/analytics/Analytics;

    if-nez v0, :cond_23

    .line 34
    const-string v0, "Context must not be null."

    invoke-static {p0, v0}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    const-string v0, "Configuration must not be null."

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    new-instance v0, Lcom/buzzfeed/analytics/Analytics;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/buzzfeed/analytics/Analytics;-><init>(Landroid/content/Context;Lcom/buzzfeed/analytics/Analytics$Configuration;)V

    sput-object v0, Lcom/buzzfeed/analytics/Analytics;->sInstance:Lcom/buzzfeed/analytics/Analytics;

    .line 38
    sget-object v0, Lcom/buzzfeed/analytics/Analytics;->TAG:Ljava/lang/String;

    const-string v2, "BuzzFeed Analytics module initialized."

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_25

    .line 40
    :cond_23
    monitor-exit v1

    return-void

    .line 33
    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/buzzfeed/analytics/Analytics;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public getConfiguration()Lcom/buzzfeed/analytics/Analytics$Configuration;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/buzzfeed/analytics/Analytics;->mConfiguration:Lcom/buzzfeed/analytics/Analytics$Configuration;

    return-object v0
.end method
