.class public Lcom/buzzfeed/android/navigation/NavigationModel;
.super Ljava/lang/Object;
.source "NavigationModel.java"


# instance fields
.field private mExploreFeeds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/android/data/Feed;",
            ">;"
        }
    .end annotation
.end field

.field private mNavigationItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/android/navigation/NavigationItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedFeeds:Ljava/util/List;
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
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/navigation/NavigationModel;->mNavigationItems:Ljava/util/List;

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/navigation/NavigationModel;->mExploreFeeds:Ljava/util/List;

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/navigation/NavigationModel;->mSupportedFeeds:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getExploreFeeds()Ljava/util/List;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
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
    .line 30
    iget-object v0, p0, Lcom/buzzfeed/android/navigation/NavigationModel;->mExploreFeeds:Ljava/util/List;

    return-object v0
.end method

.method public getNavigationItems()Ljava/util/List;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
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
    .line 21
    iget-object v0, p0, Lcom/buzzfeed/android/navigation/NavigationModel;->mNavigationItems:Ljava/util/List;

    return-object v0
.end method

.method public getSupportedFeeds()Ljava/util/List;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
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
    .line 39
    iget-object v0, p0, Lcom/buzzfeed/android/navigation/NavigationModel;->mSupportedFeeds:Ljava/util/List;

    return-object v0
.end method

.method public setExploreFeeds(Ljava/util/List;)V
    .registers 2
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
    .line 34
    .local p1, "exploreFeeds":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/android/data/Feed;>;"
    iput-object p1, p0, Lcom/buzzfeed/android/navigation/NavigationModel;->mExploreFeeds:Ljava/util/List;

    .line 35
    return-void
.end method

.method public setNavigationItems(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/android/navigation/NavigationItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "navigationItems":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/android/navigation/NavigationItem;>;"
    iput-object p1, p0, Lcom/buzzfeed/android/navigation/NavigationModel;->mNavigationItems:Ljava/util/List;

    .line 26
    return-void
.end method

.method public setSupportedFeeds(Ljava/util/List;)V
    .registers 2
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
    .line 43
    .local p1, "supportedFeeds":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/android/data/Feed;>;"
    iput-object p1, p0, Lcom/buzzfeed/android/navigation/NavigationModel;->mSupportedFeeds:Ljava/util/List;

    .line 44
    return-void
.end method
