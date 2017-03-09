.class public abstract Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;
.super Ljava/lang/Object;
.source "BaseNavigationModelFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mSupportedFeeds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/android/data/Feed;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-class v0, Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;->mSupportedFeeds:Ljava/util/List;

    return-void
.end method

.method private appendFeedLogInfo(Ljava/util/List;Ljava/lang/StringBuilder;)V
    .registers 7
    .param p2, "buffer"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/android/data/Feed;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "feeds":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/android/data/Feed;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/data/Feed;

    .line 102
    .local v0, "feed":Lcom/buzzfeed/android/data/Feed;
    const-string v2, "\t"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "tag="

    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name="

    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uri="

    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    .line 106
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 108
    .end local v0    # "feed":Lcom/buzzfeed/android/data/Feed;
    :cond_47
    return-void
.end method

.method private getLogString(Lcom/buzzfeed/android/navigation/NavigationModel;)Ljava/lang/String;
    .registers 4
    .param p1, "model"    # Lcom/buzzfeed/android/navigation/NavigationModel;

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, "Supported Feeds:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p1}, Lcom/buzzfeed/android/navigation/NavigationModel;->getSupportedFeeds()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;->appendFeedLogInfo(Ljava/util/List;Ljava/lang/StringBuilder;)V

    .line 94
    const-string v1, "\nExplore Feeds:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p1}, Lcom/buzzfeed/android/navigation/NavigationModel;->getExploreFeeds()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;->appendFeedLogInfo(Ljava/util/List;Ljava/lang/StringBuilder;)V

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected appendLocalDebugFeeds(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/android/data/Feed;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "feedList":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/android/data/Feed;>;"
    new-instance v0, Lcom/buzzfeed/android/data/Feed$Builder;

    const-string v1, "local_weaver"

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "Local Weaver"

    .line 81
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withDisplayName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed$Builder;->build()Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    .line 80
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v0, Lcom/buzzfeed/android/data/Feed$Builder;

    const-string v1, "local_spicerack"

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "Local Spicerack"

    .line 84
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withDisplayName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed$Builder;->build()Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    .line 83
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method protected abstract buildExploreFeedTags()[Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method protected abstract buildNavigationItemList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/android/navigation/NavigationItem;",
            ">;"
        }
    .end annotation
.end method

.method public createNavigationModel()Lcom/buzzfeed/android/navigation/NavigationModel;
    .registers 5

    .prologue
    .line 51
    new-instance v1, Lcom/buzzfeed/android/navigation/NavigationModel;

    invoke-direct {v1}, Lcom/buzzfeed/android/navigation/NavigationModel;-><init>()V

    .line 53
    .local v1, "model":Lcom/buzzfeed/android/navigation/NavigationModel;
    iget-object v2, p0, Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;->mSupportedFeeds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 54
    iget-object v2, p0, Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;->mSupportedFeeds:Ljava/util/List;

    invoke-virtual {p0}, Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;->initializeFeedList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 56
    invoke-static {}, Lcom/buzzfeed/android/data/EnvironmentConfig;->isProductionBuild()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 57
    iget-object v2, p0, Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;->mSupportedFeeds:Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;->appendLocalDebugFeeds(Ljava/util/List;)V

    .line 60
    :cond_1e
    iget-object v2, p0, Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;->mSupportedFeeds:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/navigation/NavigationModel;->setSupportedFeeds(Ljava/util/List;)V

    .line 61
    invoke-virtual {p0}, Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;->buildNavigationItemList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/navigation/NavigationModel;->setNavigationItems(Ljava/util/List;)V

    .line 63
    invoke-virtual {p0}, Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;->buildExploreFeedTags()[Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "exploreFeedTags":[Ljava/lang/String;
    if-eqz v0, :cond_37

    .line 66
    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;->generateFeedListFromTags([Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/navigation/NavigationModel;->setExploreFeeds(Ljava/util/List;)V

    .line 69
    :cond_37
    invoke-static {}, Lcom/buzzfeed/android/data/EnvironmentConfig;->isProductionBuild()Z

    move-result v2

    if-nez v2, :cond_46

    .line 70
    sget-object v2, Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;->TAG:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;->getLogString(Lcom/buzzfeed/android/navigation/NavigationModel;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_46
    return-object v1
.end method

.method protected varargs generateFeedListFromTags([Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .param p1, "tags"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/android/data/Feed;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v1, "feedList":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/android/data/Feed;>;"
    array-length v4, p1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v4, :cond_2d

    aget-object v2, p1, v3

    .line 36
    .local v2, "tag":Ljava/lang/String;
    iget-object v5, p0, Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;->mSupportedFeeds:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/data/Feed;

    .line 37
    .local v0, "feed":Lcom/buzzfeed/android/data/Feed;
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 38
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .end local v0    # "feed":Lcom/buzzfeed/android/data/Feed;
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 44
    .end local v2    # "tag":Ljava/lang/String;
    :cond_2d
    return-object v1
.end method

.method protected abstract initializeFeedList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/android/data/Feed;",
            ">;"
        }
    .end annotation
.end method
