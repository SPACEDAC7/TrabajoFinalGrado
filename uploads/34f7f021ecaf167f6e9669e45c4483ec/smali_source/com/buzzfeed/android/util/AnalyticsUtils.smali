.class public Lcom/buzzfeed/android/util/AnalyticsUtils;
.super Ljava/lang/Object;
.source "AnalyticsUtils.java"


# static fields
.field static final QUANTCAST_LABEL_VERTICAL_HP:Ljava/lang/String; = "verticalHP"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildScreenNameFromFeed(Lcom/buzzfeed/android/data/Feed;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "feed"    # Lcom/buzzfeed/android/data/Feed;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "edition"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 36
    if-eqz p0, :cond_8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 37
    :cond_8
    const/4 v0, 0x0

    .line 43
    :goto_9
    return-object v0

    .line 40
    :cond_a
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Feed;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/list/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Feed;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 43
    :cond_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/list/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Feed;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public static buildScreenNameFromNavigationItem(Lcom/buzzfeed/android/navigation/NavigationItem;Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .param p0, "item"    # Lcom/buzzfeed/android/navigation/NavigationItem;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "edition"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "feedIndex"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 59
    if-eqz p0, :cond_8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 60
    :cond_8
    const/4 v1, 0x0

    .line 72
    :goto_9
    return-object v1

    .line 63
    :cond_a
    iget-object v2, p0, Lcom/buzzfeed/android/navigation/NavigationItem;->feeds:Ljava/util/List;

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/buzzfeed/android/navigation/NavigationItem;->feeds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2e

    const/4 v0, 0x1

    .line 66
    .local v0, "hasFeeds":Z
    :goto_17
    iget-object v2, p0, Lcom/buzzfeed/android/navigation/NavigationItem;->type:Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;

    invoke-virtual {v2}, Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;->isFeedContentSupported()Z

    move-result v2

    if-eqz v2, :cond_30

    if-eqz v0, :cond_30

    .line 67
    iget-object v2, p0, Lcom/buzzfeed/android/navigation/NavigationItem;->feeds:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/buzzfeed/android/data/Feed;

    invoke-static {v2, p1}, Lcom/buzzfeed/android/util/AnalyticsUtils;->buildScreenNameFromFeed(Lcom/buzzfeed/android/data/Feed;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "screenName":Ljava/lang/String;
    goto :goto_9

    .line 63
    .end local v0    # "hasFeeds":Z
    .end local v1    # "screenName":Ljava/lang/String;
    :cond_2e
    const/4 v0, 0x0

    goto :goto_17

    .line 69
    .restart local v0    # "hasFeeds":Z
    :cond_30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/list/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/buzzfeed/android/navigation/NavigationItem;->id:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "screenName":Ljava/lang/String;
    goto :goto_9
.end method

.method public static formatFeedDisplayNameForTracking(Lcom/buzzfeed/android/data/Feed;)Ljava/lang/String;
    .registers 4
    .param p0, "feed"    # Lcom/buzzfeed/android/data/Feed;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 84
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Feed;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 85
    :cond_c
    const/4 v0, 0x0

    .line 88
    :goto_d
    return-object v0

    :cond_e
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Feed;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method public static formatFeedNameForQuantcast(Lcom/buzzfeed/android/data/Feed;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "feed"    # Lcom/buzzfeed/android/data/Feed;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "edition"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 96
    if-eqz p0, :cond_8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 97
    :cond_8
    const/4 v0, 0x0

    .line 103
    :goto_9
    return-object v0

    .line 100
    :cond_a
    invoke-static {p0}, Lcom/buzzfeed/android/util/FeedUtils;->isBookmarkFeed(Lcom/buzzfeed/android/data/Feed;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-static {p0}, Lcom/buzzfeed/android/util/FeedUtils;->isSearchFeed(Lcom/buzzfeed/android/data/Feed;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Feed;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 101
    :cond_20
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Feed;->getTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 103
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "verticalHP."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Feed;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method
