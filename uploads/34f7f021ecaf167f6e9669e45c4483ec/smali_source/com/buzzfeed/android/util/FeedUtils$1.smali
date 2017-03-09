.class final Lcom/buzzfeed/android/util/FeedUtils$1;
.super Ljava/util/HashMap;
.source "FeedUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/util/FeedUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Lcom/buzzfeed/android/util/FeedUtils$FeedTag;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 43
    sget-object v0, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;->Home:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    const-string v1, "home"

    invoke-virtual {p0, v0, v1}, Lcom/buzzfeed/android/util/FeedUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;->News:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    const-string v1, "news"

    invoke-virtual {p0, v0, v1}, Lcom/buzzfeed/android/util/FeedUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;->Videos:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    const-string/jumbo v1, "videos"

    invoke-virtual {p0, v0, v1}, Lcom/buzzfeed/android/util/FeedUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;->Search:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    const-string v1, "search"

    invoke-virtual {p0, v0, v1}, Lcom/buzzfeed/android/util/FeedUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;->Bookmark:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    const-string v1, "bookmarks"

    invoke-virtual {p0, v0, v1}, Lcom/buzzfeed/android/util/FeedUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;->Trending:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    const-string/jumbo v1, "trending"

    invoke-virtual {p0, v0, v1}, Lcom/buzzfeed/android/util/FeedUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;->Quizzes:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    const-string v1, "quizzes"

    invoke-virtual {p0, v0, v1}, Lcom/buzzfeed/android/util/FeedUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;->LocalSpiceRack:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    const-string v1, "local_spicerack"

    invoke-virtual {p0, v0, v1}, Lcom/buzzfeed/android/util/FeedUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;->LocalWeaver:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    const-string v1, "local_weaver"

    invoke-virtual {p0, v0, v1}, Lcom/buzzfeed/android/util/FeedUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;->Shows:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    const-string v1, "shows"

    invoke-virtual {p0, v0, v1}, Lcom/buzzfeed/android/util/FeedUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method
