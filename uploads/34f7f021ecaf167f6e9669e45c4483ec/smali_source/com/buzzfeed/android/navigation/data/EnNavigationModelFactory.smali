.class abstract Lcom/buzzfeed/android/navigation/data/EnNavigationModelFactory;
.super Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;
.source "EnNavigationModelFactory.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/buzzfeed/android/navigation/data/BaseNavigationModelFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildNavigationItemList()Ljava/util/List;
    .registers 12
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
    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 25
    const/4 v0, 0x5

    new-array v6, v0, [Lcom/buzzfeed/android/navigation/NavigationItem;

    new-instance v0, Lcom/buzzfeed/android/navigation/NavigationItem;

    const-string v1, "home"

    const v2, 0x7f0900ff

    const v3, 0x7f02006b

    sget-object v4, Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;->BUFFET_TAB:Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;

    new-array v5, v10, [Ljava/lang/String;

    const-string v7, "home"

    aput-object v7, v5, v9

    const-string/jumbo v7, "trending"

    aput-object v7, v5, v8

    .line 31
    invoke-virtual {p0, v5}, Lcom/buzzfeed/android/navigation/data/EnNavigationModelFactory;->generateFeedListFromTags([Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/buzzfeed/android/navigation/NavigationItem;-><init>(Ljava/lang/String;IILcom/buzzfeed/android/navigation/NavigationItem$ContainerType;Ljava/util/List;)V

    aput-object v0, v6, v9

    new-instance v0, Lcom/buzzfeed/android/navigation/NavigationItem;

    const-string v1, "news"

    const v2, 0x7f090100

    const v3, 0x7f02006c

    sget-object v4, Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;->BUFFET:Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;

    new-array v5, v8, [Ljava/lang/String;

    const-string v7, "news"

    aput-object v7, v5, v9

    .line 37
    invoke-virtual {p0, v5}, Lcom/buzzfeed/android/navigation/data/EnNavigationModelFactory;->generateFeedListFromTags([Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/buzzfeed/android/navigation/NavigationItem;-><init>(Ljava/lang/String;IILcom/buzzfeed/android/navigation/NavigationItem$ContainerType;Ljava/util/List;)V

    aput-object v0, v6, v8

    new-instance v0, Lcom/buzzfeed/android/navigation/NavigationItem;

    const-string/jumbo v1, "videos"

    const v2, 0x7f090101

    const v3, 0x7f02006e

    sget-object v4, Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;->BUFFET_TAB:Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;

    new-array v5, v10, [Ljava/lang/String;

    const-string v7, "shows"

    aput-object v7, v5, v9

    const-string/jumbo v7, "videos"

    aput-object v7, v5, v8

    .line 43
    invoke-virtual {p0, v5}, Lcom/buzzfeed/android/navigation/data/EnNavigationModelFactory;->generateFeedListFromTags([Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/buzzfeed/android/navigation/NavigationItem;-><init>(Ljava/lang/String;IILcom/buzzfeed/android/navigation/NavigationItem$ContainerType;Ljava/util/List;)V

    aput-object v0, v6, v10

    const/4 v7, 0x3

    new-instance v0, Lcom/buzzfeed/android/navigation/NavigationItem;

    const-string v1, "quizzes"

    const v2, 0x7f090266

    const v3, 0x7f02006d

    sget-object v4, Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;->BUFFET:Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;

    new-array v5, v8, [Ljava/lang/String;

    const-string v8, "quizzes"

    aput-object v8, v5, v9

    .line 49
    invoke-virtual {p0, v5}, Lcom/buzzfeed/android/navigation/data/EnNavigationModelFactory;->generateFeedListFromTags([Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/buzzfeed/android/navigation/NavigationItem;-><init>(Ljava/lang/String;IILcom/buzzfeed/android/navigation/NavigationItem$ContainerType;Ljava/util/List;)V

    aput-object v0, v6, v7

    const/4 v0, 0x4

    new-instance v1, Lcom/buzzfeed/android/navigation/NavigationItem;

    const-string v2, "explore"

    const v3, 0x7f0900c4

    const v4, 0x7f02006a

    sget-object v5, Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;->EXPLORE:Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/buzzfeed/android/navigation/NavigationItem;-><init>(Ljava/lang/String;IILcom/buzzfeed/android/navigation/NavigationItem$ContainerType;)V

    aput-object v1, v6, v0

    .line 25
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected abstract initializeAdditionalFeeds(Ljava/util/List;)V
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/android/data/Feed;",
            ">;)V"
        }
    .end annotation
.end method

.method initializeBaseFeeds(Ljava/util/List;)V
    .registers 4
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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
    .line 79
    .local p1, "feedList":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/android/data/Feed;>;"
    new-instance v0, Lcom/buzzfeed/android/data/Feed$Builder;

    const-string v1, "home"

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "home"

    .line 80
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const-string v1, "Latest"

    .line 81
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withDisplayName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const v1, 0x7f0900c7

    .line 82
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withLocalizedNameResourceId(I)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed$Builder;->build()Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    .line 79
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v0, Lcom/buzzfeed/android/data/Feed$Builder;

    const-string v1, "news"

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "news"

    .line 85
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const-string v1, "News"

    .line 86
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withDisplayName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const v1, 0x7f090274

    .line 87
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withLocalizedNameResourceId(I)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed$Builder;->build()Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    .line 84
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v0, Lcom/buzzfeed/android/data/Feed$Builder;

    const-string v1, "shows"

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "shows"

    .line 90
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const-string v1, "Shows"

    .line 91
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withDisplayName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const v1, 0x7f09013f

    .line 92
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withLocalizedNameResourceId(I)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed$Builder;->build()Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    .line 89
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v0, Lcom/buzzfeed/android/data/Feed$Builder;

    const-string/jumbo v1, "videos"

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "videos"

    .line 95
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const-string v1, "Latest"

    .line 96
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withDisplayName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const v1, 0x7f0900c9

    .line 97
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withLocalizedNameResourceId(I)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed$Builder;->build()Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    .line 94
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v0, Lcom/buzzfeed/android/data/Feed$Builder;

    const-string v1, "quizzes"

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "quiz"

    .line 100
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const-string v1, "Quizzes"

    .line 101
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withDisplayName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const v1, 0x7f090277

    .line 102
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withLocalizedNameResourceId(I)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed$Builder;->build()Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    .line 99
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v0, Lcom/buzzfeed/android/data/Feed$Builder;

    const-string v1, "bookmarks"

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "Bookmarks"

    .line 105
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withDisplayName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const v1, 0x7f0900c5

    .line 106
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withLocalizedNameResourceId(I)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed$Builder;->build()Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    .line 104
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v0, Lcom/buzzfeed/android/data/Feed$Builder;

    const-string v1, "buzz"

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "buzz"

    .line 109
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const-string v1, "Buzz"

    .line 110
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withDisplayName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const v1, 0x7f09026a

    .line 111
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withLocalizedNameResourceId(I)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed$Builder;->build()Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    .line 108
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance v0, Lcom/buzzfeed/android/data/Feed$Builder;

    const-string v1, "life"

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "life"

    .line 114
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const-string v1, "Life"

    .line 115
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withDisplayName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const v1, 0x7f090272

    .line 116
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withLocalizedNameResourceId(I)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed$Builder;->build()Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    .line 113
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v0, Lcom/buzzfeed/android/data/Feed$Builder;

    const-string v1, "entertainment"

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "entertainment"

    .line 119
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const-string v1, "Entertainment"

    .line 120
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withDisplayName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const v1, 0x7f09026e

    .line 121
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withLocalizedNameResourceId(I)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed$Builder;->build()Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    .line 118
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v0, Lcom/buzzfeed/android/data/Feed$Builder;

    const-string v1, "animals"

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "animals"

    .line 124
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const-string v1, "Animals"

    .line 125
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withDisplayName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const v1, 0x7f090267

    .line 126
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withLocalizedNameResourceId(I)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const-string v1, "https://s3-ak.buzzfeed.com/static/badge_images/widget_animals.png"

    .line 127
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withWidgetImageUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed$Builder;->build()Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    .line 123
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v0, Lcom/buzzfeed/android/data/Feed$Builder;

    const-string v1, "bigstories"

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "bigstories"

    .line 130
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const-string v1, "Big Stories"

    .line 131
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withDisplayName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const v1, 0x7f090268

    .line 132
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withLocalizedNameResourceId(I)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed$Builder;->build()Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    .line 129
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance v0, Lcom/buzzfeed/android/data/Feed$Builder;

    const-string v1, "books"

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "books"

    .line 135
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const-string v1, "Books"

    .line 136
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withDisplayName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const v1, 0x7f090269

    .line 137
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withLocalizedNameResourceId(I)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed$Builder;->build()Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    .line 134
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v0, Lcom/buzzfeed/android/data/Feed$Builder;

    const-string v1, "celebrity"

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "celebrity"

    .line 140
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const-string v1, "Celebrity"

    .line 141
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withDisplayName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const v1, 0x7f09026b

    .line 142
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withLocalizedNameResourceId(I)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed$Builder;->build()Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    .line 139
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v0, Lcom/buzzfeed/android/data/Feed$Builder;

    const-string v1, "community"

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "community"

    .line 145
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const-string v1, "Community"

    .line 146
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withDisplayName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const v1, 0x7f09026c

    .line 147
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withLocalizedNameResourceId(I)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed$Builder;->build()Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    .line 144
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v0, Lcom/buzzfeed/android/data/Feed$Builder;

    const-string v1, "diy"

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "diy"

    .line 150
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const-string v1, "DIY"

    .line 151
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withDisplayName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const v1, 0x7f09026d

    .line 152
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withLocalizedNameResourceId(I)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const-string v1, "https://s3-ak.buzzfeed.com/static/badge_images/widget_diy.png"

    .line 153
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withWidgetImageUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed$Builder;->build()Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    .line 149
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v0, Lcom/buzzfeed/android/data/Feed$Builder;

    const-string v1, "food"

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "food"

    .line 156
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const-string v1, "Food"

    .line 157
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withDisplayName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const v1, 0x7f09026f

    .line 158
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withLocalizedNameResourceId(I)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const-string v1, "https://s3-ak.buzzfeed.com/static/badge_images/widget_food.png"

    .line 159
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withWidgetImageUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed$Builder;->build()Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    .line 155
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v0, Lcom/buzzfeed/android/data/Feed$Builder;

    const-string v1, "health"

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "health"

    .line 162
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const-string v1, "Health"

    .line 163
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withDisplayName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const v1, 0x7f090270

    .line 164
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withLocalizedNameResourceId(I)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed$Builder;->build()Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    .line 161
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v0, Lcom/buzzfeed/android/data/Feed$Builder;

    const-string v1, "lgbt"

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "lgbt"

    .line 167
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const-string v1, "LGBT"

    .line 168
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withDisplayName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const v1, 0x7f090271

    .line 169
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withLocalizedNameResourceId(I)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const-string v1, "https://s3-ak.buzzfeed.com/static/badge_images/widget_lgbt.png"

    .line 170
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withWidgetImageUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed$Builder;->build()Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    .line 166
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v0, Lcom/buzzfeed/android/data/Feed$Builder;

    const-string v1, "music"

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "music"

    .line 173
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const-string v1, "Music"

    .line 174
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withDisplayName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const v1, 0x7f090273

    .line 175
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withLocalizedNameResourceId(I)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const-string v1, "https://s3-ak.buzzfeed.com/static/badge_images/widget_music.png"

    .line 176
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withWidgetImageUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed$Builder;->build()Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    .line 172
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v0, Lcom/buzzfeed/android/data/Feed$Builder;

    const-string v1, "parents"

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "parents"

    .line 179
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const-string v1, "Parents"

    .line 180
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withDisplayName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const v1, 0x7f090275

    .line 181
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withLocalizedNameResourceId(I)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed$Builder;->build()Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    .line 178
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v0, Lcom/buzzfeed/android/data/Feed$Builder;

    const-string v1, "rewind"

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "rewind"

    .line 184
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const-string v1, "Rewind"

    .line 185
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withDisplayName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const v1, 0x7f090278

    .line 186
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withLocalizedNameResourceId(I)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed$Builder;->build()Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    .line 183
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v0, Lcom/buzzfeed/android/data/Feed$Builder;

    const-string/jumbo v1, "style"

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "style"

    .line 189
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const-string v1, "Style"

    .line 190
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withDisplayName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const v1, 0x7f09027b

    .line 191
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withLocalizedNameResourceId(I)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const-string v1, "https://s3-ak.buzzfeed.com/static/images/mobile/trans.png"

    .line 192
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withWidgetImageUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed$Builder;->build()Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    .line 188
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance v0, Lcom/buzzfeed/android/data/Feed$Builder;

    const-string/jumbo v1, "tech"

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "tech"

    .line 195
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const-string v1, "Tech"

    .line 196
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withDisplayName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const v1, 0x7f09027c

    .line 197
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withLocalizedNameResourceId(I)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const-string v1, "https://s3-ak.buzzfeed.com/static/badge_images/widget_tech.png"

    .line 198
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withWidgetImageUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed$Builder;->build()Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    .line 194
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v0, Lcom/buzzfeed/android/data/Feed$Builder;

    const-string/jumbo v1, "trending"

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "trending"

    .line 201
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const-string v1, "Trending"

    .line 202
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withDisplayName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const v1, 0x7f0900c8

    .line 203
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withLocalizedNameResourceId(I)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed$Builder;->build()Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    .line 200
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v0, Lcom/buzzfeed/android/data/Feed$Builder;

    const-string/jumbo v1, "travel"

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "travel"

    .line 206
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const-string v1, "Travel"

    .line 207
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withDisplayName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const v1, 0x7f09027d

    .line 208
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withLocalizedNameResourceId(I)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed$Builder;->build()Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    .line 205
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    return-void
.end method

.method protected initializeFeedList()Ljava/util/List;
    .registers 2
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
    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v0, "feedList":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/android/data/Feed;>;"
    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/navigation/data/EnNavigationModelFactory;->initializeBaseFeeds(Ljava/util/List;)V

    .line 68
    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/navigation/data/EnNavigationModelFactory;->initializeAdditionalFeeds(Ljava/util/List;)V

    .line 70
    return-object v0
.end method
