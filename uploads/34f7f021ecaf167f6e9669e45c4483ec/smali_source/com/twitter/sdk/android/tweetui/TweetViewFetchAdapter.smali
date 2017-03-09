.class public Lcom/twitter/sdk/android/tweetui/TweetViewFetchAdapter;
.super Lcom/twitter/sdk/android/tweetui/TweetViewAdapter;
.source "TweetViewFetchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/twitter/sdk/android/tweetui/BaseTweetView;",
        ">",
        "Lcom/twitter/sdk/android/tweetui/TweetViewAdapter",
        "<TT;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TweetViewFetchAdapter;, "Lcom/twitter/sdk/android/tweetui/TweetViewFetchAdapter<TT;>;"
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetui/TweetViewAdapter;-><init>(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TweetViewFetchAdapter;, "Lcom/twitter/sdk/android/tweetui/TweetViewFetchAdapter<TT;>;"
    .local p2, "tweetIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/sdk/android/tweetui/TweetViewFetchAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/twitter/sdk/android/tweetui/LoadCallback;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/twitter/sdk/android/tweetui/LoadCallback;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/twitter/sdk/android/tweetui/LoadCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TweetViewFetchAdapter;, "Lcom/twitter/sdk/android/tweetui/TweetViewFetchAdapter<TT;>;"
    .local p2, "tweetIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p3, "cb":Lcom/twitter/sdk/android/tweetui/LoadCallback;, "Lcom/twitter/sdk/android/tweetui/LoadCallback<Ljava/util/List<Lcom/twitter/sdk/android/core/models/Tweet;>;>;"
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetui/TweetViewAdapter;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-virtual {p0, p2, p3}, Lcom/twitter/sdk/android/tweetui/TweetViewFetchAdapter;->setTweetIds(Ljava/util/List;Lcom/twitter/sdk/android/tweetui/LoadCallback;)V

    .line 65
    return-void
.end method


# virtual methods
.method public setTweetIds(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TweetViewFetchAdapter;, "Lcom/twitter/sdk/android/tweetui/TweetViewFetchAdapter<TT;>;"
    .local p1, "tweetIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/twitter/sdk/android/core/Callback;

    invoke-virtual {p0, p1, v0}, Lcom/twitter/sdk/android/tweetui/TweetViewFetchAdapter;->setTweetIds(Ljava/util/List;Lcom/twitter/sdk/android/core/Callback;)V

    .line 73
    return-void
.end method

.method public setTweetIds(Ljava/util/List;Lcom/twitter/sdk/android/core/Callback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/twitter/sdk/android/core/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TweetViewFetchAdapter;, "Lcom/twitter/sdk/android/tweetui/TweetViewFetchAdapter<TT;>;"
    .local p1, "tweetIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p2, "cb":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Ljava/util/List<Lcom/twitter/sdk/android/core/models/Tweet;>;>;"
    new-instance v0, Lcom/twitter/sdk/android/tweetui/TweetViewFetchAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/twitter/sdk/android/tweetui/TweetViewFetchAdapter$1;-><init>(Lcom/twitter/sdk/android/tweetui/TweetViewFetchAdapter;Lcom/twitter/sdk/android/core/Callback;)V

    .line 99
    .local v0, "repoCallback":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Ljava/util/List<Lcom/twitter/sdk/android/core/models/Tweet;>;>;"
    invoke-static {}, Lcom/twitter/sdk/android/tweetui/TweetUi;->getInstance()Lcom/twitter/sdk/android/tweetui/TweetUi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/sdk/android/tweetui/TweetUi;->getTweetRepository()Lcom/twitter/sdk/android/tweetui/TweetRepository;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/twitter/sdk/android/tweetui/TweetRepository;->loadTweets(Ljava/util/List;Lcom/twitter/sdk/android/core/Callback;)V

    .line 100
    return-void
.end method

.method public setTweetIds(Ljava/util/List;Lcom/twitter/sdk/android/tweetui/LoadCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/twitter/sdk/android/tweetui/LoadCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TweetViewFetchAdapter;, "Lcom/twitter/sdk/android/tweetui/TweetViewFetchAdapter<TT;>;"
    .local p1, "tweetIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p2, "loadCallback":Lcom/twitter/sdk/android/tweetui/LoadCallback;, "Lcom/twitter/sdk/android/tweetui/LoadCallback<Ljava/util/List<Lcom/twitter/sdk/android/core/models/Tweet;>;>;"
    new-instance v0, Lcom/twitter/sdk/android/tweetui/TweetUtils$CallbackAdapter;

    invoke-direct {v0, p2}, Lcom/twitter/sdk/android/tweetui/TweetUtils$CallbackAdapter;-><init>(Lcom/twitter/sdk/android/tweetui/LoadCallback;)V

    .line 113
    .local v0, "cb":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Ljava/util/List<Lcom/twitter/sdk/android/core/models/Tweet;>;>;"
    invoke-virtual {p0, p1, v0}, Lcom/twitter/sdk/android/tweetui/TweetViewFetchAdapter;->setTweetIds(Ljava/util/List;Lcom/twitter/sdk/android/core/Callback;)V

    .line 114
    return-void
.end method
