.class final Lcom/facebook/appevents/AppEventsLogger$4;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/AppEventsLogger;->initializeTimersIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 708
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 709
    .local v2, "applicationIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    # getter for: Lcom/facebook/appevents/AppEventsLogger;->staticLock:Ljava/lang/Object;
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->access$400()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 710
    :try_start_a
    # getter for: Lcom/facebook/appevents/AppEventsLogger;->stateMap:Ljava/util/Map;
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->access$500()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;

    .line 711
    .local v0, "accessTokenAppId":Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;
    invoke-virtual {v0}, Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;->getApplicationId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 713
    .end local v0    # "accessTokenAppId":Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_2a
    move-exception v4

    monitor-exit v5
    :try_end_2c
    .catchall {:try_start_a .. :try_end_2c} :catchall_2a

    throw v4

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_2d
    :try_start_2d
    monitor-exit v5
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2a

    .line 714
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 715
    .local v1, "applicationId":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-static {v1, v4}, Lcom/facebook/internal/Utility;->queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/Utility$FetchedAppSettings;

    goto :goto_32

    .line 717
    .end local v1    # "applicationId":Ljava/lang/String;
    :cond_43
    return-void
.end method
