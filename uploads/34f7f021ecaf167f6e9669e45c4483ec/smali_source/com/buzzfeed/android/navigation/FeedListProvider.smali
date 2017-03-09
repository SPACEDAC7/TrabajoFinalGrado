.class public Lcom/buzzfeed/android/navigation/FeedListProvider;
.super Ljava/lang/Object;
.source "FeedListProvider.java"

# interfaces
.implements Lcom/buzzfeed/android/navigation/FeedListDataSource;


# static fields
.field public static final KEY_BADGE:Ljava/lang/String; = "KEY_BADGE"

.field public static final KEY_FEED:Ljava/lang/String; = "KEY_FEED"

.field public static final KEY_VERTICAL:Ljava/lang/String; = "KEY_VERTICAL"

.field public static final KEY_WIDGET_BUZZ_URL:Ljava/lang/String; = "KEY_WIDGET_BUZZ_URL"

.field public static final KEY_WIDGET_FEED_NAME:Ljava/lang/String; = "KEY_WIDGET_FEED_NAME"

.field private static sInstance:Lcom/buzzfeed/android/navigation/FeedListProvider;


# instance fields
.field private final mNavigationModel:Lcom/buzzfeed/android/navigation/NavigationModel;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/navigation/FeedListDataSource;)V
    .registers 3
    .param p1, "dataSource"    # Lcom/buzzfeed/android/navigation/FeedListDataSource;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-interface {p1}, Lcom/buzzfeed/android/navigation/FeedListDataSource;->getNavigationModel()Lcom/buzzfeed/android/navigation/NavigationModel;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/navigation/FeedListProvider;->mNavigationModel:Lcom/buzzfeed/android/navigation/NavigationModel;

    .line 37
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "edition"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 32
    new-instance v0, Lcom/buzzfeed/android/navigation/FeedListLoader;

    invoke-direct {v0, p1}, Lcom/buzzfeed/android/navigation/FeedListLoader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/navigation/FeedListProvider;-><init>(Lcom/buzzfeed/android/navigation/FeedListDataSource;)V

    .line 33
    return-void
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;)Lcom/buzzfeed/android/navigation/FeedListProvider;
    .registers 3
    .param p0, "edition"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v1, Lcom/buzzfeed/android/navigation/FeedListProvider;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/buzzfeed/android/navigation/FeedListProvider;->sInstance:Lcom/buzzfeed/android/navigation/FeedListProvider;

    if-nez v0, :cond_e

    .line 44
    new-instance v0, Lcom/buzzfeed/android/navigation/FeedListProvider;

    invoke-direct {v0, p0}, Lcom/buzzfeed/android/navigation/FeedListProvider;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/buzzfeed/android/navigation/FeedListProvider;->sInstance:Lcom/buzzfeed/android/navigation/FeedListProvider;

    .line 46
    :cond_e
    sget-object v0, Lcom/buzzfeed/android/navigation/FeedListProvider;->sInstance:Lcom/buzzfeed/android/navigation/FeedListProvider;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 43
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getBottomMenuItems()Ljava/util/List;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/android/navigation/NavigationItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/buzzfeed/android/navigation/FeedListProvider;->mNavigationModel:Lcom/buzzfeed/android/navigation/NavigationModel;

    invoke-virtual {v0}, Lcom/buzzfeed/android/navigation/NavigationModel;->getNavigationItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDeepLinkedFeed(Landroid/content/Intent;)Lcom/buzzfeed/android/data/Feed;
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 109
    const/4 v2, 0x0

    .line 110
    .local v2, "toFeed":Lcom/buzzfeed/android/data/Feed;
    const-string v4, "KEY_VERTICAL"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 111
    const-string v4, "KEY_VERTICAL"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "vertical":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/buzzfeed/android/navigation/FeedListProvider;->getFeedForVertical(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed;

    move-result-object v2

    .line 115
    .end local v3    # "vertical":Ljava/lang/String;
    :cond_13
    const-string v4, "KEY_FEED"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 116
    const-string v4, "KEY_FEED"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    .end local v2    # "toFeed":Lcom/buzzfeed/android/data/Feed;
    check-cast v2, Lcom/buzzfeed/android/data/Feed;

    .line 119
    .restart local v2    # "toFeed":Lcom/buzzfeed/android/data/Feed;
    :cond_23
    const-string v4, "KEY_BADGE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 120
    const-string v4, "KEY_BADGE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "badge":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/navigation/FeedListProvider;->getFeedForBadge(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed;

    move-result-object v2

    .line 124
    .end local v0    # "badge":Ljava/lang/String;
    :cond_35
    const-string v4, "KEY_WIDGET_FEED_NAME"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 125
    const-string v4, "KEY_WIDGET_FEED_NAME"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "feedName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/navigation/FeedListProvider;->getFeedForVertical(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed;

    move-result-object v2

    .line 128
    .end local v1    # "feedName":Ljava/lang/String;
    :cond_47
    return-object v2
.end method

.method public getFeedForBadge(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed;
    .registers 5
    .param p1, "verticalName"    # Ljava/lang/String;

    .prologue
    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reaction_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/navigation/FeedListProvider;->getFeedFromTag(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    .line 99
    .local v0, "feed":Lcom/buzzfeed/android/data/Feed;
    if-nez v0, :cond_30

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "section_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/navigation/FeedListProvider;->getFeedFromTag(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    .line 102
    :cond_30
    if-nez v0, :cond_36

    .line 103
    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/navigation/FeedListProvider;->getFeedFromTag(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    .line 105
    :cond_36
    return-object v0
.end method

.method public getFeedForVertical(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed;
    .registers 5
    .param p1, "verticalName"    # Ljava/lang/String;

    .prologue
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "section_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/navigation/FeedListProvider;->getFeedFromTag(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    .line 87
    .local v0, "feed":Lcom/buzzfeed/android/data/Feed;
    if-nez v0, :cond_30

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reaction_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/navigation/FeedListProvider;->getFeedFromTag(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    .line 90
    :cond_30
    if-nez v0, :cond_36

    .line 91
    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/navigation/FeedListProvider;->getFeedFromTag(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    .line 93
    :cond_36
    return-object v0
.end method

.method public getFeedFromTag(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed;
    .registers 7
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/buzzfeed/android/navigation/FeedListProvider;->getFeeds()Ljava/util/List;

    move-result-object v1

    .line 73
    .local v1, "feeds":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/android/data/Feed;>;"
    if-eqz v1, :cond_d

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_f

    :cond_d
    move-object v0, v2

    .line 81
    :goto_e
    return-object v0

    .line 76
    :cond_f
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/data/Feed;

    .line 77
    .local v0, "feed":Lcom/buzzfeed/android/data/Feed;
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    goto :goto_e

    .end local v0    # "feed":Lcom/buzzfeed/android/data/Feed;
    :cond_34
    move-object v0, v2

    .line 81
    goto :goto_e
.end method

.method public getFeeds()Ljava/util/List;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/android/data/Feed;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/buzzfeed/android/navigation/FeedListProvider;->mNavigationModel:Lcom/buzzfeed/android/navigation/NavigationModel;

    invoke-virtual {v0}, Lcom/buzzfeed/android/navigation/NavigationModel;->getSupportedFeeds()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationModel()Lcom/buzzfeed/android/navigation/NavigationModel;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/buzzfeed/android/navigation/FeedListProvider;->mNavigationModel:Lcom/buzzfeed/android/navigation/NavigationModel;

    return-object v0
.end method

.method public isBottomNavFeed(Lcom/buzzfeed/android/data/Feed;)Z
    .registers 9
    .param p1, "targetFeed"    # Lcom/buzzfeed/android/data/Feed;

    .prologue
    const/4 v3, 0x0

    .line 132
    invoke-virtual {p0}, Lcom/buzzfeed/android/navigation/FeedListProvider;->getBottomMenuItems()Ljava/util/List;

    move-result-object v0

    .line 133
    .local v0, "bottomMenuItems":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/android/navigation/NavigationItem;>;"
    if-eqz v0, :cond_38

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_38

    .line 134
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/buzzfeed/android/navigation/NavigationItem;

    .line 135
    .local v2, "navItem":Lcom/buzzfeed/android/navigation/NavigationItem;
    iget-object v5, v2, Lcom/buzzfeed/android/navigation/NavigationItem;->feeds:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_23
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/android/data/Feed;

    .line 136
    .local v1, "feed":Lcom/buzzfeed/android/data/Feed;
    if-eqz v1, :cond_23

    invoke-virtual {v1, p1}, Lcom/buzzfeed/android/data/Feed;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 137
    const/4 v3, 0x1

    .line 143
    .end local v1    # "feed":Lcom/buzzfeed/android/data/Feed;
    .end local v2    # "navItem":Lcom/buzzfeed/android/navigation/NavigationItem;
    :cond_38
    return v3
.end method
