.class public Lcom/buzzfeed/android/navigation/data/EsMXNavigationModelFactory;
.super Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;
.source "EsMXNavigationModelFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildExploreFeedTags()[Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method protected buildNavigationItemList()Ljava/util/List;
    .registers 9
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
    .line 29
    new-instance v0, Lcom/buzzfeed/android/navigation/NavigationItem;

    const-string v1, "home"

    const v2, 0x7f0900ff

    const v3, 0x7f02006b

    sget-object v4, Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;->BUFFET_TAB:Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "home"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "trending"

    aput-object v7, v5, v6

    .line 35
    invoke-virtual {p0, v5}, Lcom/buzzfeed/android/navigation/data/EsMXNavigationModelFactory;->generateFeedListFromTags([Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/buzzfeed/android/navigation/NavigationItem;-><init>(Ljava/lang/String;IILcom/buzzfeed/android/navigation/NavigationItem$ContainerType;Ljava/util/List;)V

    .line 29
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected initializeFeedList()Ljava/util/List;
    .registers 5
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
    .line 40
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/buzzfeed/android/data/Feed;

    const/4 v1, 0x0

    new-instance v2, Lcom/buzzfeed/android/data/Feed$Builder;

    const-string v3, "home"

    invoke-direct {v2, v3}, Lcom/buzzfeed/android/data/Feed$Builder;-><init>(Ljava/lang/String;)V

    const-string v3, "home"

    .line 42
    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/data/Feed$Builder;->withUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v2

    const-string v3, "Actualidad"

    .line 43
    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/data/Feed$Builder;->withDisplayName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v2

    const v3, 0x7f0900c7

    .line 44
    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/data/Feed$Builder;->withLocalizedNameResourceId(I)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v2

    .line 45
    invoke-virtual {v2}, Lcom/buzzfeed/android/data/Feed$Builder;->build()Lcom/buzzfeed/android/data/Feed;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/buzzfeed/android/data/Feed$Builder;

    const-string v3, "bookmarks"

    invoke-direct {v2, v3}, Lcom/buzzfeed/android/data/Feed$Builder;-><init>(Ljava/lang/String;)V

    const-string v3, "Favoritos"

    .line 47
    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/data/Feed$Builder;->withDisplayName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v2

    const v3, 0x7f0900c5

    .line 48
    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/data/Feed$Builder;->withLocalizedNameResourceId(I)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v2

    .line 49
    invoke-virtual {v2}, Lcom/buzzfeed/android/data/Feed$Builder;->build()Lcom/buzzfeed/android/data/Feed;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/buzzfeed/android/data/Feed$Builder;

    const-string v3, "cute"

    invoke-direct {v2, v3}, Lcom/buzzfeed/android/data/Feed$Builder;-><init>(Ljava/lang/String;)V

    const-string v3, "lindo-mx"

    .line 51
    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/data/Feed$Builder;->withUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v2

    const-string v3, "Lindo"

    .line 52
    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/data/Feed$Builder;->withDisplayName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v2

    const v3, 0x7f0900c6

    .line 53
    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/data/Feed$Builder;->withLocalizedNameResourceId(I)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v2

    .line 54
    invoke-virtual {v2}, Lcom/buzzfeed/android/data/Feed$Builder;->build()Lcom/buzzfeed/android/data/Feed;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/buzzfeed/android/data/Feed$Builder;

    const-string v3, "fail"

    invoke-direct {v2, v3}, Lcom/buzzfeed/android/data/Feed$Builder;-><init>(Ljava/lang/String;)V

    const-string v3, "fail-mx"

    .line 56
    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/data/Feed$Builder;->withUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v2

    const-string v3, "Fail"

    .line 57
    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/data/Feed$Builder;->withDisplayName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v2

    const v3, 0x7f0900f3

    .line 58
    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/data/Feed$Builder;->withLocalizedNameResourceId(I)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v2

    .line 59
    invoke-virtual {v2}, Lcom/buzzfeed/android/data/Feed$Builder;->build()Lcom/buzzfeed/android/data/Feed;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/buzzfeed/android/data/Feed$Builder;

    const-string v3, "lol"

    invoke-direct {v2, v3}, Lcom/buzzfeed/android/data/Feed$Builder;-><init>(Ljava/lang/String;)V

    const-string v3, "jajaja-mx"

    .line 61
    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/data/Feed$Builder;->withUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v2

    const-string v3, "Ja Ja Ja"

    .line 62
    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/data/Feed$Builder;->withDisplayName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v2

    const v3, 0x7f090102

    .line 63
    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/data/Feed$Builder;->withLocalizedNameResourceId(I)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v2

    .line 64
    invoke-virtual {v2}, Lcom/buzzfeed/android/data/Feed$Builder;->build()Lcom/buzzfeed/android/data/Feed;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/buzzfeed/android/data/Feed$Builder;

    const-string v3, "omg"

    invoke-direct {v2, v3}, Lcom/buzzfeed/android/data/Feed$Builder;-><init>(Ljava/lang/String;)V

    const-string v3, "omg-mx"

    .line 66
    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/data/Feed$Builder;->withUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v2

    const-string/jumbo v3, "\u00a1madre de dios!"

    .line 67
    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/data/Feed$Builder;->withDisplayName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v2

    const v3, 0x7f0900f4

    .line 68
    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/data/Feed$Builder;->withLocalizedNameResourceId(I)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v2

    .line 69
    invoke-virtual {v2}, Lcom/buzzfeed/android/data/Feed$Builder;->build()Lcom/buzzfeed/android/data/Feed;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/buzzfeed/android/data/Feed$Builder;

    const-string/jumbo v3, "trending"

    invoke-direct {v2, v3}, Lcom/buzzfeed/android/data/Feed$Builder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "trending"

    .line 71
    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/data/Feed$Builder;->withUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v2

    const-string v3, "Lo M\u00e1s Visto"

    .line 72
    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/data/Feed$Builder;->withDisplayName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v2

    const v3, 0x7f0900c8

    .line 73
    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/data/Feed$Builder;->withLocalizedNameResourceId(I)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v2

    .line 74
    invoke-virtual {v2}, Lcom/buzzfeed/android/data/Feed$Builder;->build()Lcom/buzzfeed/android/data/Feed;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/buzzfeed/android/data/Feed$Builder;

    const-string/jumbo v3, "win"

    invoke-direct {v2, v3}, Lcom/buzzfeed/android/data/Feed$Builder;-><init>(Ljava/lang/String;)V

    const-string v3, "chido"

    .line 76
    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/data/Feed$Builder;->withUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v2

    const-string v3, "Chido"

    .line 77
    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/data/Feed$Builder;->withDisplayName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v2

    const v3, 0x7f0900ca

    .line 78
    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/data/Feed$Builder;->withLocalizedNameResourceId(I)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v2

    .line 79
    invoke-virtual {v2}, Lcom/buzzfeed/android/data/Feed$Builder;->build()Lcom/buzzfeed/android/data/Feed;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/buzzfeed/android/data/Feed$Builder;

    const-string/jumbo v3, "wtf"

    invoke-direct {v2, v3}, Lcom/buzzfeed/android/data/Feed$Builder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "wtf-mx"

    .line 81
    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/data/Feed$Builder;->withUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v2

    const-string v3, "WTF"

    .line 82
    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/data/Feed$Builder;->withDisplayName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v2

    const v3, 0x7f090280

    .line 83
    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/data/Feed$Builder;->withLocalizedNameResourceId(I)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v2

    .line 84
    invoke-virtual {v2}, Lcom/buzzfeed/android/data/Feed$Builder;->build()Lcom/buzzfeed/android/data/Feed;

    move-result-object v2

    aput-object v2, v0, v1

    .line 40
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
