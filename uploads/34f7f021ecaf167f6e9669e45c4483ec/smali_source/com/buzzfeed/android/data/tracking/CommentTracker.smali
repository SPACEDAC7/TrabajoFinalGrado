.class public Lcom/buzzfeed/android/data/tracking/CommentTracker;
.super Ljava/lang/Object;
.source "CommentTracker.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;


# direct methods
.method public constructor <init>(Lcom/buzzfeed/analytics/client/BuzzFeedTracker;Landroid/content/Context;)V
    .registers 4
    .param p1, "tracker"    # Lcom/buzzfeed/analytics/client/BuzzFeedTracker;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/buzzfeed/android/data/tracking/CommentTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    .line 15
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/data/tracking/CommentTracker;->mContext:Landroid/content/Context;

    .line 16
    return-void
.end method

.method private getString(I)Ljava/lang/String;
    .registers 3
    .param p1, "stringResId"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/CommentTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public trackCommentOpenShareSheet()V
    .registers 5

    .prologue
    .line 22
    iget-object v0, p0, Lcom/buzzfeed/android/data/tracking/CommentTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    iget-object v1, p0, Lcom/buzzfeed/android/data/tracking/CommentTracker;->mContext:Landroid/content/Context;

    const v2, 0x7f0901fd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/android/data/tracking/CommentTracker;->mContext:Landroid/content/Context;

    const v3, 0x7f0901ca

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public trackCommentShareActivityClicked(Ljava/lang/String;)V
    .registers 6
    .param p1, "shareActivitySource"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {p1}, Lcom/buzzfeed/analytics/util/IntentStringConverter;->convertIntentToApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "appName":Ljava/lang/String;
    iget-object v1, p0, Lcom/buzzfeed/android/data/tracking/CommentTracker;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const v2, 0x7f090200

    .line 37
    invoke-direct {p0, v2}, Lcom/buzzfeed/android/data/tracking/CommentTracker;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0901d7

    .line 38
    invoke-direct {p0, v3}, Lcom/buzzfeed/android/data/tracking/CommentTracker;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 36
    invoke-virtual {v1, v2, v3, v0}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method
