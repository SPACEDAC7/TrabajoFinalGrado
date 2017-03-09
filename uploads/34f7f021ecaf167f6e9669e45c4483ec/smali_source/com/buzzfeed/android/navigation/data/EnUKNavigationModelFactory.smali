.class public Lcom/buzzfeed/android/navigation/data/EnUKNavigationModelFactory;
.super Lcom/buzzfeed/android/navigation/data/EnNavigationModelFactory;
.source "EnUKNavigationModelFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/buzzfeed/android/navigation/data/EnNavigationModelFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildExploreFeedTags()[Ljava/lang/String;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 23
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "animals"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "bigstories"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "books"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "buzz"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "celebrity"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "community"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "cute"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "diy"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "entertainment"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "food"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "health"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "lgbt"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "life"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "lol"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "music"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "parents"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "politics"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "rewind"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "science"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "style"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "tech"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "travel"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "win"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected initializeAdditionalFeeds(Ljava/util/List;)V
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
    .line 52
    .local p1, "feedList":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/android/data/Feed;>;"
    new-instance v0, Lcom/buzzfeed/android/data/Feed$Builder;

    const-string v1, "cute"

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "cute"

    .line 53
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const-string v1, "Cute"

    .line 54
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withDisplayName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const v1, 0x7f0900c6

    .line 55
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withLocalizedNameResourceId(I)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed$Builder;->build()Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    .line 52
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v0, Lcom/buzzfeed/android/data/Feed$Builder;

    const-string v1, "lol"

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "lol"

    .line 58
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const-string v1, "LOL"

    .line 59
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withDisplayName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const v1, 0x7f090102

    .line 60
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withLocalizedNameResourceId(I)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed$Builder;->build()Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    .line 57
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v0, Lcom/buzzfeed/android/data/Feed$Builder;

    const-string v1, "politics"

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "ukpolitics"

    .line 63
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const-string v1, "Politics"

    .line 64
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withDisplayName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const v1, 0x7f090276

    .line 65
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withLocalizedNameResourceId(I)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const-string v1, "https://s3-ak.buzzfeed.com/static/badge_images/widget_politics.png"

    .line 66
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withWidgetImageUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed$Builder;->build()Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    .line 62
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v0, Lcom/buzzfeed/android/data/Feed$Builder;

    const-string v1, "science"

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "science"

    .line 69
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const-string v1, "Science"

    .line 70
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withDisplayName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const v1, 0x7f090279

    .line 71
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withLocalizedNameResourceId(I)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed$Builder;->build()Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    .line 68
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v0, Lcom/buzzfeed/android/data/Feed$Builder;

    const-string/jumbo v1, "weddings"

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "weddings"

    .line 74
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const-string v1, "Weddings"

    .line 75
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withDisplayName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const v1, 0x7f09027e

    .line 76
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withLocalizedNameResourceId(I)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed$Builder;->build()Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    .line 73
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v0, Lcom/buzzfeed/android/data/Feed$Builder;

    const-string/jumbo v1, "win"

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "win"

    .line 79
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const-string v1, "Win"

    .line 80
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withDisplayName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    const v1, 0x7f0900ca

    .line 81
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withLocalizedNameResourceId(I)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed$Builder;->build()Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    .line 78
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method
