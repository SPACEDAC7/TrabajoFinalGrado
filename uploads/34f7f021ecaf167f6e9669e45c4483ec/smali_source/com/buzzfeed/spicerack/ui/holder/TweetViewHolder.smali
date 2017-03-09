.class public Lcom/buzzfeed/spicerack/ui/holder/TweetViewHolder;
.super Lcom/buzzfeed/spicerack/ui/holder/SpiceViewHolder;
.source "TweetViewHolder.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mDescription:Landroid/widget/TextView;

.field private mReplyTweetLayout:Landroid/view/ViewGroup;

.field private mTweetLayout:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-class v0, Lcom/buzzfeed/spicerack/ui/holder/TweetViewHolder;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/spicerack/ui/holder/TweetViewHolder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/buzzfeed/spicerack/ui/holder/SpiceViewHolder;-><init>(Landroid/view/View;)V

    .line 31
    sget v0, Lcom/buzzfeed/nativecontent/R$id;->spice_tweet_layout:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/TweetViewHolder;->mTweetLayout:Landroid/view/ViewGroup;

    .line 32
    sget v0, Lcom/buzzfeed/nativecontent/R$id;->spice_reply_tweet_layout:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/TweetViewHolder;->mReplyTweetLayout:Landroid/view/ViewGroup;

    .line 33
    sget v0, Lcom/buzzfeed/nativecontent/R$id;->spice_description:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/TweetViewHolder;->mDescription:Landroid/widget/TextView;

    .line 34
    return-void
.end method

.method private loadTweet(Ljava/lang/String;Landroid/view/ViewGroup;)V
    .registers 6
    .param p1, "tweetSpiceId"    # Ljava/lang/String;
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 67
    :cond_c
    :goto_c
    return-void

    .line 54
    :cond_d
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    new-instance v2, Lcom/buzzfeed/spicerack/ui/holder/TweetViewHolder$1;

    invoke-direct {v2, p0, p2}, Lcom/buzzfeed/spicerack/ui/holder/TweetViewHolder$1;-><init>(Lcom/buzzfeed/spicerack/ui/holder/TweetViewHolder;Landroid/view/ViewGroup;)V

    invoke-static {v0, v1, v2}, Lcom/twitter/sdk/android/tweetui/TweetUtils;->loadTweet(JLcom/twitter/sdk/android/core/Callback;)V

    goto :goto_c
.end method

.method private tweetIsAReply(Lcom/buzzfeed/spicerack/data/model/subbuzz/TweetSpice;)Z
    .registers 3
    .param p1, "tweetSpice"    # Lcom/buzzfeed/spicerack/data/model/subbuzz/TweetSpice;

    .prologue
    .line 73
    invoke-interface {p1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/TweetSpice;->getMetadata()Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata;->getTweet()Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$Tweet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$Tweet;->getInReplyToStatusIdStr()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-interface {p1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/TweetSpice;->getMetadata()Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata;->getResponseTo()Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$TweetResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$TweetResponse;->isShow()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method


# virtual methods
.method public populateFrom(Lcom/buzzfeed/toolkit/content/Content;)V
    .registers 6
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/Content;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/buzzfeed/spicerack/ui/holder/SpiceViewHolder;->populateFrom(Lcom/buzzfeed/toolkit/content/Content;)V

    move-object v0, p1

    .line 39
    check-cast v0, Lcom/buzzfeed/spicerack/data/model/subbuzz/TweetSpice;

    .line 40
    .local v0, "tweetSpice":Lcom/buzzfeed/spicerack/data/model/subbuzz/TweetSpice;
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/holder/TweetViewHolder;->mDescription:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/buzzfeed/spicerack/data/model/subbuzz/TweetSpice;->getDescription()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/buzzfeed/spicerack/ui/holder/TweetViewHolder;->setText(Landroid/widget/TextView;Ljava/lang/String;Z)V

    .line 41
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/holder/TweetViewHolder;->mReplyTweetLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 42
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/holder/TweetViewHolder;->mTweetLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 43
    invoke-direct {p0, v0}, Lcom/buzzfeed/spicerack/ui/holder/TweetViewHolder;->tweetIsAReply(Lcom/buzzfeed/spicerack/data/model/subbuzz/TweetSpice;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 44
    invoke-interface {v0}, Lcom/buzzfeed/spicerack/data/model/subbuzz/TweetSpice;->getMetadata()Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata;->getTweet()Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$Tweet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata$Tweet;->getInReplyToStatusIdStr()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/holder/TweetViewHolder;->mReplyTweetLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v2}, Lcom/buzzfeed/spicerack/ui/holder/TweetViewHolder;->loadTweet(Ljava/lang/String;Landroid/view/ViewGroup;)V

    .line 46
    :cond_31
    invoke-interface {v0}, Lcom/buzzfeed/spicerack/data/model/subbuzz/TweetSpice;->getSourceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/holder/TweetViewHolder;->mTweetLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v2}, Lcom/buzzfeed/spicerack/ui/holder/TweetViewHolder;->loadTweet(Ljava/lang/String;Landroid/view/ViewGroup;)V

    .line 47
    return-void
.end method
