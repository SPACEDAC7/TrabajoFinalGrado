.class public final Lcom/twitter/sdk/android/tweetui/TweetUtils;
.super Ljava/lang/Object;
.source "TweetUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetui/TweetUtils$CallbackAdapter;
    }
.end annotation


# static fields
.field static final LOAD_TWEET_DEBUG:Ljava/lang/String; = "loadTweet failure for Tweet Id %d."

.field private static final PERMALINK_FORMAT:Ljava/lang/String; = "https://twitter.com/%s/status/%d"

.field private static final TAG:Ljava/lang/String; = "TweetUi"

.field private static final UNKNOWN_SCREEN_NAME:Ljava/lang/String; = "twitter_unknown"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDisplayTweet(Lcom/twitter/sdk/android/core/models/Tweet;)Lcom/twitter/sdk/android/core/models/Tweet;
    .registers 2
    .param p0, "tweet"    # Lcom/twitter/sdk/android/core/models/Tweet;

    .prologue
    .line 137
    if-eqz p0, :cond_6

    iget-object v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->retweetedStatus:Lcom/twitter/sdk/android/core/models/Tweet;

    if-nez v0, :cond_7

    .line 140
    .end local p0    # "tweet":Lcom/twitter/sdk/android/core/models/Tweet;
    :cond_6
    :goto_6
    return-object p0

    .restart local p0    # "tweet":Lcom/twitter/sdk/android/core/models/Tweet;
    :cond_7
    iget-object p0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->retweetedStatus:Lcom/twitter/sdk/android/core/models/Tweet;

    goto :goto_6
.end method

.method static getPermalink(Ljava/lang/String;J)Landroid/net/Uri;
    .registers 10
    .param p0, "screenName"    # Ljava/lang/String;
    .param p1, "tweetId"    # J

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 156
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_b

    .line 157
    const/4 v1, 0x0

    .line 166
    :goto_a
    return-object v1

    .line 161
    :cond_b
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 162
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "https://twitter.com/%s/status/%d"

    new-array v3, v4, [Ljava/lang/Object;

    const-string/jumbo v4, "twitter_unknown"

    aput-object v4, v3, v5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "permalink":Ljava/lang/String;
    :goto_26
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_a

    .line 164
    .end local v0    # "permalink":Ljava/lang/String;
    :cond_2b
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "https://twitter.com/%s/status/%d"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p0, v3, v5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "permalink":Ljava/lang/String;
    goto :goto_26
.end method

.method static isTweetResolvable(Lcom/twitter/sdk/android/core/models/Tweet;)Z
    .registers 5
    .param p0, "tweet"    # Lcom/twitter/sdk/android/core/models/Tweet;

    .prologue
    .line 126
    if-eqz p0, :cond_1a

    iget-wide v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1a

    iget-object v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->user:Lcom/twitter/sdk/android/core/models/User;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->user:Lcom/twitter/sdk/android/core/models/User;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/User;->screenName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static loadTweet(JLcom/twitter/sdk/android/core/Callback;)V
    .registers 7
    .param p0, "tweetId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/twitter/sdk/android/core/Callback",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p2, "cb":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    invoke-static {}, Lcom/twitter/sdk/android/tweetui/TweetUi;->getInstance()Lcom/twitter/sdk/android/tweetui/TweetUi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/TweetUi;->getTweetRepository()Lcom/twitter/sdk/android/tweetui/TweetRepository;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/tweetui/TweetUtils$1;

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v2

    invoke-direct {v1, p2, v2, p2}, Lcom/twitter/sdk/android/tweetui/TweetUtils$1;-><init>(Lcom/twitter/sdk/android/core/Callback;Lio/fabric/sdk/android/Logger;Lcom/twitter/sdk/android/core/Callback;)V

    invoke-virtual {v0, p0, p1, v1}, Lcom/twitter/sdk/android/tweetui/TweetRepository;->loadTweet(JLcom/twitter/sdk/android/core/Callback;)V

    .line 60
    return-void
.end method

.method public static loadTweet(JLcom/twitter/sdk/android/tweetui/LoadCallback;)V
    .registers 7
    .param p0, "tweetId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/twitter/sdk/android/tweetui/LoadCallback",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 88
    .local p2, "loadCallback":Lcom/twitter/sdk/android/tweetui/LoadCallback;, "Lcom/twitter/sdk/android/tweetui/LoadCallback<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    new-instance v0, Lcom/twitter/sdk/android/tweetui/TweetUtils$CallbackAdapter;

    invoke-direct {v0, p2}, Lcom/twitter/sdk/android/tweetui/TweetUtils$CallbackAdapter;-><init>(Lcom/twitter/sdk/android/tweetui/LoadCallback;)V

    .line 89
    .local v0, "cb":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    new-instance v1, Lcom/twitter/sdk/android/tweetui/TweetUtils$3;

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v2

    invoke-direct {v1, v0, v2, v0}, Lcom/twitter/sdk/android/tweetui/TweetUtils$3;-><init>(Lcom/twitter/sdk/android/core/Callback;Lio/fabric/sdk/android/Logger;Lcom/twitter/sdk/android/core/Callback;)V

    invoke-static {p0, p1, v1}, Lcom/twitter/sdk/android/tweetui/TweetUtils;->loadTweet(JLcom/twitter/sdk/android/core/Callback;)V

    .line 97
    return-void
.end method

.method public static loadTweets(Ljava/util/List;Lcom/twitter/sdk/android/core/Callback;)V
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
    .line 68
    .local p0, "tweetIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p1, "cb":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Ljava/util/List<Lcom/twitter/sdk/android/core/models/Tweet;>;>;"
    invoke-static {}, Lcom/twitter/sdk/android/tweetui/TweetUi;->getInstance()Lcom/twitter/sdk/android/tweetui/TweetUi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/TweetUi;->getTweetRepository()Lcom/twitter/sdk/android/tweetui/TweetRepository;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/tweetui/TweetUtils$2;

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v2

    invoke-direct {v1, p1, v2, p1}, Lcom/twitter/sdk/android/tweetui/TweetUtils$2;-><init>(Lcom/twitter/sdk/android/core/Callback;Lio/fabric/sdk/android/Logger;Lcom/twitter/sdk/android/core/Callback;)V

    invoke-virtual {v0, p0, v1}, Lcom/twitter/sdk/android/tweetui/TweetRepository;->loadTweets(Ljava/util/List;Lcom/twitter/sdk/android/core/Callback;)V

    .line 78
    return-void
.end method

.method public static loadTweets(Ljava/util/List;Lcom/twitter/sdk/android/tweetui/LoadCallback;)V
    .registers 5
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
    .line 108
    .local p0, "tweetIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p1, "loadCallback":Lcom/twitter/sdk/android/tweetui/LoadCallback;, "Lcom/twitter/sdk/android/tweetui/LoadCallback<Ljava/util/List<Lcom/twitter/sdk/android/core/models/Tweet;>;>;"
    new-instance v0, Lcom/twitter/sdk/android/tweetui/TweetUtils$CallbackAdapter;

    invoke-direct {v0, p1}, Lcom/twitter/sdk/android/tweetui/TweetUtils$CallbackAdapter;-><init>(Lcom/twitter/sdk/android/tweetui/LoadCallback;)V

    .line 109
    .local v0, "cb":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Ljava/util/List<Lcom/twitter/sdk/android/core/models/Tweet;>;>;"
    new-instance v1, Lcom/twitter/sdk/android/tweetui/TweetUtils$4;

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v2

    invoke-direct {v1, v0, v2, v0}, Lcom/twitter/sdk/android/tweetui/TweetUtils$4;-><init>(Lcom/twitter/sdk/android/core/Callback;Lio/fabric/sdk/android/Logger;Lcom/twitter/sdk/android/core/Callback;)V

    invoke-static {p0, v1}, Lcom/twitter/sdk/android/tweetui/TweetUtils;->loadTweets(Ljava/util/List;Lcom/twitter/sdk/android/core/Callback;)V

    .line 117
    return-void
.end method
