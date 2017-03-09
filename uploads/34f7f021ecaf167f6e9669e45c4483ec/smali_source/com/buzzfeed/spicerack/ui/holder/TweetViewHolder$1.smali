.class Lcom/buzzfeed/spicerack/ui/holder/TweetViewHolder$1;
.super Lcom/twitter/sdk/android/core/Callback;
.source "TweetViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/spicerack/ui/holder/TweetViewHolder;->loadTweet(Ljava/lang/String;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/Callback",
        "<",
        "Lcom/twitter/sdk/android/core/models/Tweet;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/spicerack/ui/holder/TweetViewHolder;

.field final synthetic val$viewGroup:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/buzzfeed/spicerack/ui/holder/TweetViewHolder;Landroid/view/ViewGroup;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/spicerack/ui/holder/TweetViewHolder;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/holder/TweetViewHolder$1;->this$0:Lcom/buzzfeed/spicerack/ui/holder/TweetViewHolder;

    iput-object p2, p0, Lcom/buzzfeed/spicerack/ui/holder/TweetViewHolder$1;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/twitter/sdk/android/core/TwitterException;)V
    .registers 4
    .param p1, "exception"    # Lcom/twitter/sdk/android/core/TwitterException;

    .prologue
    .line 64
    sget-object v0, Lcom/buzzfeed/spicerack/ui/holder/TweetViewHolder;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public success(Lcom/twitter/sdk/android/core/Result;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/Result",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "result":Lcom/twitter/sdk/android/core/Result;, "Lcom/twitter/sdk/android/core/Result<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    new-instance v0, Lcom/twitter/sdk/android/tweetui/TweetView;

    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/holder/TweetViewHolder$1;->this$0:Lcom/buzzfeed/spicerack/ui/holder/TweetViewHolder;

    iget-object v1, v1, Lcom/buzzfeed/spicerack/ui/holder/TweetViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p1, Lcom/twitter/sdk/android/core/Result;->data:Ljava/lang/Object;

    check-cast v1, Lcom/twitter/sdk/android/core/models/Tweet;

    invoke-direct {v0, v2, v1}, Lcom/twitter/sdk/android/tweetui/TweetView;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/models/Tweet;)V

    .line 58
    .local v0, "tweetView":Lcom/twitter/sdk/android/tweetui/TweetView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetui/TweetView;->setTweetActionsEnabled(Z)V

    .line 59
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/holder/TweetViewHolder$1;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 60
    return-void
.end method
