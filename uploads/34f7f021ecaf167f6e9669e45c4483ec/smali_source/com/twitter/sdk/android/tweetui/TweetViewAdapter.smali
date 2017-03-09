.class public Lcom/twitter/sdk/android/tweetui/TweetViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "TweetViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/twitter/sdk/android/tweetui/BaseTweetView;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final context:Landroid/content/Context;

.field protected tweets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TweetViewAdapter;, "Lcom/twitter/sdk/android/tweetui/TweetViewAdapter<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/TweetViewAdapter;->context:Landroid/content/Context;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetViewAdapter;->tweets:Ljava/util/List;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TweetViewAdapter;, "Lcom/twitter/sdk/android/tweetui/TweetViewAdapter<TT;>;"
    .local p2, "tweets":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/TweetViewAdapter;->context:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/TweetViewAdapter;->tweets:Ljava/util/List;

    .line 56
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 68
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TweetViewAdapter;, "Lcom/twitter/sdk/android/tweetui/TweetViewAdapter<TT;>;"
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetViewAdapter;->tweets:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetViewAdapter;->tweets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getItem(I)Lcom/twitter/sdk/android/core/models/Tweet;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 73
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TweetViewAdapter;, "Lcom/twitter/sdk/android/tweetui/TweetViewAdapter<TT;>;"
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetViewAdapter;->tweets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/models/Tweet;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 33
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TweetViewAdapter;, "Lcom/twitter/sdk/android/tweetui/TweetViewAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetui/TweetViewAdapter;->getItem(I)Lcom/twitter/sdk/android/core/models/Tweet;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 78
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TweetViewAdapter;, "Lcom/twitter/sdk/android/tweetui/TweetViewAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getTweetView(Landroid/content/Context;Lcom/twitter/sdk/android/core/models/Tweet;)Lcom/twitter/sdk/android/tweetui/BaseTweetView;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tweet"    # Lcom/twitter/sdk/android/core/models/Tweet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TweetViewAdapter;, "Lcom/twitter/sdk/android/tweetui/TweetViewAdapter<TT;>;"
    new-instance v0, Lcom/twitter/sdk/android/tweetui/CompactTweetView;

    invoke-direct {v0, p1, p2}, Lcom/twitter/sdk/android/tweetui/CompactTweetView;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/models/Tweet;)V

    return-object v0
.end method

.method public getTweets()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TweetViewAdapter;, "Lcom/twitter/sdk/android/tweetui/TweetViewAdapter<TT;>;"
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetViewAdapter;->tweets:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 96
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TweetViewAdapter;, "Lcom/twitter/sdk/android/tweetui/TweetViewAdapter<TT;>;"
    move-object v0, p2

    .line 97
    .local v0, "rowView":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetui/TweetViewAdapter;->getItem(I)Lcom/twitter/sdk/android/core/models/Tweet;

    move-result-object v1

    .line 98
    .local v1, "tweet":Lcom/twitter/sdk/android/core/models/Tweet;
    if-nez v0, :cond_e

    .line 99
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/TweetViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {p0, v2, v1}, Lcom/twitter/sdk/android/tweetui/TweetViewAdapter;->getTweetView(Landroid/content/Context;Lcom/twitter/sdk/android/core/models/Tweet;)Lcom/twitter/sdk/android/tweetui/BaseTweetView;

    move-result-object v0

    .line 103
    :goto_d
    return-object v0

    :cond_e
    move-object v2, v0

    .line 101
    check-cast v2, Lcom/twitter/sdk/android/tweetui/BaseTweetView;

    invoke-virtual {v2, v1}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->setTweet(Lcom/twitter/sdk/android/core/models/Tweet;)V

    goto :goto_d
.end method

.method public setTweetById(Lcom/twitter/sdk/android/core/models/Tweet;)V
    .registers 8
    .param p1, "tweet"    # Lcom/twitter/sdk/android/core/models/Tweet;

    .prologue
    .line 86
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TweetViewAdapter;, "Lcom/twitter/sdk/android/tweetui/TweetViewAdapter<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/TweetViewAdapter;->tweets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 87
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/models/Tweet;->getId()J

    move-result-wide v2

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/TweetViewAdapter;->tweets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/sdk/android/core/models/Tweet;

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/models/Tweet;->getId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_22

    .line 88
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/TweetViewAdapter;->tweets:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 91
    :cond_25
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/TweetViewAdapter;->notifyDataSetChanged()V

    .line 92
    return-void
.end method

.method public setTweets(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TweetViewAdapter;, "Lcom/twitter/sdk/android/tweetui/TweetViewAdapter<TT;>;"
    .local p1, "tweets":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    if-nez p1, :cond_d

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetViewAdapter;->tweets:Ljava/util/List;

    .line 122
    :goto_9
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/TweetViewAdapter;->notifyDataSetChanged()V

    .line 123
    return-void

    .line 120
    :cond_d
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/TweetViewAdapter;->tweets:Ljava/util/List;

    goto :goto_9
.end method
