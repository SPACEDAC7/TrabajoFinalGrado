.class public Lcom/buzzfeed/android/util/FeedUtils;
.super Ljava/lang/Object;
.source "FeedUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/util/FeedUtils$FeedTag;
    }
.end annotation


# static fields
.field private static FeedTagMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/buzzfeed/android/util/FeedUtils$FeedTag;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    new-instance v0, Lcom/buzzfeed/android/util/FeedUtils$1;

    invoke-direct {v0}, Lcom/buzzfeed/android/util/FeedUtils$1;-><init>()V

    sput-object v0, Lcom/buzzfeed/android/util/FeedUtils;->FeedTagMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static excludeFromWidgetSelection(Ljava/lang/String;)Z
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 176
    const-string v0, "bookmarks"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string v0, "shows"

    .line 177
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string v0, "quizzes"

    .line 178
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string/jumbo v0, "videos"

    .line 179
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string v0, "local_weaver"

    .line 180
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string v0, "local_spicerack"

    .line 181
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    :cond_31
    const/4 v0, 0x1

    :goto_32
    return v0

    :cond_33
    const/4 v0, 0x0

    goto :goto_32
.end method

.method public static hasMatchingBottomMenuFeed(Lcom/buzzfeed/android/data/Feed;Ljava/util/List;)Z
    .registers 9
    .param p0, "feed"    # Lcom/buzzfeed/android/data/Feed;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/buzzfeed/android/data/Feed;",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/android/navigation/NavigationItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "navItems":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/android/navigation/NavigationItem;>;"
    const/4 v2, 0x0

    .line 155
    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 167
    :cond_b
    :goto_b
    return v2

    .line 159
    :cond_c
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/android/navigation/NavigationItem;

    .line 160
    .local v1, "item":Lcom/buzzfeed/android/navigation/NavigationItem;
    iget-object v4, v1, Lcom/buzzfeed/android/navigation/NavigationItem;->feeds:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/data/Feed;

    .line 161
    .local v0, "innerFeed":Lcom/buzzfeed/android/data/Feed;
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Feed;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 162
    const/4 v2, 0x1

    goto :goto_b
.end method

.method public static isBookmarkFeed(Lcom/buzzfeed/android/data/Feed;)Z
    .registers 2
    .param p0, "feed"    # Lcom/buzzfeed/android/data/Feed;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 90
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Feed;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/android/util/FeedUtils;->isBookmarkFeed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isBookmarkFeed(Ljava/lang/String;)Z
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 86
    sget-object v0, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;->Bookmark:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    invoke-static {p0, v0}, Lcom/buzzfeed/android/util/FeedUtils;->isFeedTag(Ljava/lang/String;Lcom/buzzfeed/android/util/FeedUtils$FeedTag;)Z

    move-result v0

    return v0
.end method

.method public static isFeedReaction(Ljava/lang/String;)Z
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, " Feed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public static isFeedTag(Lcom/buzzfeed/android/data/Feed;Lcom/buzzfeed/android/util/FeedUtils$FeedTag;)Z
    .registers 3
    .param p0, "feed"    # Lcom/buzzfeed/android/data/Feed;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "feedTag"    # Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    .prologue
    .line 64
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Feed;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/buzzfeed/android/util/FeedUtils;->isFeedTag(Ljava/lang/String;Lcom/buzzfeed/android/util/FeedUtils$FeedTag;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isFeedTag(Ljava/lang/String;Lcom/buzzfeed/android/util/FeedUtils$FeedTag;)Z
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "feedTag"    # Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    .prologue
    .line 60
    if-eqz p0, :cond_12

    sget-object v0, Lcom/buzzfeed/android/util/FeedUtils;->FeedTagMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static isHomeFeed(Lcom/buzzfeed/android/data/Feed;)Z
    .registers 2
    .param p0, "feed"    # Lcom/buzzfeed/android/data/Feed;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 74
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Feed;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/android/util/FeedUtils;->isHomeFeed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isHomeFeed(Ljava/lang/String;)Z
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 69
    if-eqz p0, :cond_a

    sget-object v0, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;->Home:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    invoke-static {p0, v0}, Lcom/buzzfeed/android/util/FeedUtils;->isFeedTag(Ljava/lang/String;Lcom/buzzfeed/android/util/FeedUtils$FeedTag;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isLocalSpiceRack(Lcom/buzzfeed/android/data/Feed;)Z
    .registers 2
    .param p0, "feed"    # Lcom/buzzfeed/android/data/Feed;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 142
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Feed;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/android/util/FeedUtils;->isLocalSpiceRack(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isLocalSpiceRack(Ljava/lang/String;)Z
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 138
    sget-object v0, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;->LocalSpiceRack:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    invoke-static {p0, v0}, Lcom/buzzfeed/android/util/FeedUtils;->isFeedTag(Ljava/lang/String;Lcom/buzzfeed/android/util/FeedUtils$FeedTag;)Z

    move-result v0

    return v0
.end method

.method public static isLocalWeaverFeed(Lcom/buzzfeed/android/data/Feed;)Z
    .registers 2
    .param p0, "feed"    # Lcom/buzzfeed/android/data/Feed;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 150
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Feed;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/android/util/FeedUtils;->isLocalWeaverFeed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isLocalWeaverFeed(Ljava/lang/String;)Z
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 146
    sget-object v0, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;->LocalWeaver:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    invoke-static {p0, v0}, Lcom/buzzfeed/android/util/FeedUtils;->isFeedTag(Ljava/lang/String;Lcom/buzzfeed/android/util/FeedUtils$FeedTag;)Z

    move-result v0

    return v0
.end method

.method public static isNewsFeed(Lcom/buzzfeed/android/data/Feed;)Z
    .registers 2
    .param p0, "feed"    # Lcom/buzzfeed/android/data/Feed;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 114
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Feed;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/android/util/FeedUtils;->isNewsFeed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isNewsFeed(Ljava/lang/String;)Z
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 110
    sget-object v0, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;->News:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    invoke-static {p0, v0}, Lcom/buzzfeed/android/util/FeedUtils;->isFeedTag(Ljava/lang/String;Lcom/buzzfeed/android/util/FeedUtils$FeedTag;)Z

    move-result v0

    return v0
.end method

.method public static isQuizFeed(Lcom/buzzfeed/android/data/Feed;)Z
    .registers 2
    .param p0, "feed"    # Lcom/buzzfeed/android/data/Feed;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 98
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Feed;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/android/util/FeedUtils;->isQuizFeed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isQuizFeed(Ljava/lang/String;)Z
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 94
    sget-object v0, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;->Quizzes:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    invoke-static {p0, v0}, Lcom/buzzfeed/android/util/FeedUtils;->isFeedTag(Ljava/lang/String;Lcom/buzzfeed/android/util/FeedUtils$FeedTag;)Z

    move-result v0

    return v0
.end method

.method public static isSearchFeed(Lcom/buzzfeed/android/data/Feed;)Z
    .registers 2
    .param p0, "feed"    # Lcom/buzzfeed/android/data/Feed;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 82
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Feed;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/android/util/FeedUtils;->isSearchFeed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isSearchFeed(Ljava/lang/String;)Z
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 78
    sget-object v0, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;->Search:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    invoke-static {p0, v0}, Lcom/buzzfeed/android/util/FeedUtils;->isFeedTag(Ljava/lang/String;Lcom/buzzfeed/android/util/FeedUtils$FeedTag;)Z

    move-result v0

    return v0
.end method

.method public static isShowsFeed(Lcom/buzzfeed/android/data/Feed;)Z
    .registers 2
    .param p0, "feed"    # Lcom/buzzfeed/android/data/Feed;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 126
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Feed;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/android/util/FeedUtils;->isShowsFeed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isShowsFeed(Ljava/lang/String;)Z
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 130
    sget-object v0, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;->Shows:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    invoke-static {p0, v0}, Lcom/buzzfeed/android/util/FeedUtils;->isFeedTag(Ljava/lang/String;Lcom/buzzfeed/android/util/FeedUtils$FeedTag;)Z

    move-result v0

    return v0
.end method

.method public static isTrendingFeed(Lcom/buzzfeed/android/data/Feed;)Z
    .registers 2
    .param p0, "feed"    # Lcom/buzzfeed/android/data/Feed;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 106
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Feed;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/android/util/FeedUtils;->isTrendingFeed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isTrendingFeed(Ljava/lang/String;)Z
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 102
    sget-object v0, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;->Trending:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    invoke-static {p0, v0}, Lcom/buzzfeed/android/util/FeedUtils;->isFeedTag(Ljava/lang/String;Lcom/buzzfeed/android/util/FeedUtils$FeedTag;)Z

    move-result v0

    return v0
.end method

.method public static isVideoFeed(Lcom/buzzfeed/android/data/Feed;)Z
    .registers 2
    .param p0, "feed"    # Lcom/buzzfeed/android/data/Feed;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 122
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Feed;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/android/util/FeedUtils;->isVideoFeed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isVideoFeed(Ljava/lang/String;)Z
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 118
    sget-object v0, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;->Videos:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    invoke-static {p0, v0}, Lcom/buzzfeed/android/util/FeedUtils;->isFeedTag(Ljava/lang/String;Lcom/buzzfeed/android/util/FeedUtils$FeedTag;)Z

    move-result v0

    return v0
.end method
