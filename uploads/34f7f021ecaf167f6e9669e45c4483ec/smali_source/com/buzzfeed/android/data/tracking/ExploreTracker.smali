.class public Lcom/buzzfeed/android/data/tracking/ExploreTracker;
.super Ljava/lang/Object;
.source "ExploreTracker.java"


# static fields
.field static final EXPLORE_SCREEN_NAME:Ljava/lang/String; = "/list/explore"


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private final mBuzzFeedTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

.field private final mDustbusterClient:Lcom/buzzfeed/analytics/client/DustbusterClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/buzzfeed/analytics/client/BuzzFeedTracker;Lcom/buzzfeed/analytics/client/DustbusterClient;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "buzzFeedTracker"    # Lcom/buzzfeed/analytics/client/BuzzFeedTracker;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "dustbusterClient"    # Lcom/buzzfeed/analytics/client/DustbusterClient;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Context must not be null."

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/buzzfeed/android/data/tracking/ExploreTracker;->mAppContext:Landroid/content/Context;

    .line 34
    const-string v0, "BuzzFeedTracker must not be null."

    invoke-static {p2, v0}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    iput-object v0, p0, Lcom/buzzfeed/android/data/tracking/ExploreTracker;->mBuzzFeedTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    .line 35
    const-string v0, "DustbusterClient must not be null."

    invoke-static {p3, v0}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/analytics/client/DustbusterClient;

    iput-object v0, p0, Lcom/buzzfeed/android/data/tracking/ExploreTracker;->mDustbusterClient:Lcom/buzzfeed/analytics/client/DustbusterClient;

    .line 36
    return-void
.end method


# virtual methods
.method public trackFeedSelection(Ljava/lang/String;)V
    .registers 6
    .param p1, "feedTrackingName"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/ExploreTracker;->mBuzzFeedTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    iget-object v1, p0, Lcom/buzzfeed/android/data/tracking/ExploreTracker;->mAppContext:Landroid/content/Context;

    const v2, 0x7f0901ee

    .line 53
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/android/data/tracking/ExploreTracker;->mAppContext:Landroid/content/Context;

    const v3, 0x7f0901b2

    .line 54
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-virtual {v0, v1, v2, p1}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public trackScreenView()V
    .registers 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/ExploreTracker;->mBuzzFeedTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const-string v1, "/list/explore"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackPageView(Ljava/lang/String;Ljava/util/Map;)V

    .line 43
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/ExploreTracker;->mDustbusterClient:Lcom/buzzfeed/analytics/client/DustbusterClient;

    const-string v1, "/list/explore"

    invoke-virtual {v0, v1}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackFeedPageView(Ljava/lang/String;)V

    .line 44
    return-void
.end method
