.class public Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;
.super Ljava/lang/Object;
.source "CommentViewOnClickListenerImpl.java"

# interfaces
.implements Lcom/buzzfeed/android/ui/comments/CommentLayout$CommentViewOnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCommentTracker:Lcom/buzzfeed/android/data/tracking/CommentTracker;

.field private mContent:Lcom/buzzfeed/toolkit/content/PostContent;

.field private mLoader:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

.field private mShareActionListener:Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;

.field private mUser:Lcom/buzzfeed/android/data/BuzzUser;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    const-class v0, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/buzzfeed/android/data/BuzzUser;Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;Lcom/buzzfeed/toolkit/content/PostContent;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "user"    # Lcom/buzzfeed/android/data/BuzzUser;
    .param p3, "loader"    # Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;
    .param p4, "content"    # Lcom/buzzfeed/toolkit/content/PostContent;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p3, p0, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->mLoader:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    .line 44
    iput-object p2, p0, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->mUser:Lcom/buzzfeed/android/data/BuzzUser;

    .line 45
    iput-object p4, p0, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->mContent:Lcom/buzzfeed/toolkit/content/PostContent;

    .line 46
    new-instance v0, Lcom/buzzfeed/android/data/tracking/CommentTracker;

    invoke-static {}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->getInstance()Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/buzzfeed/android/data/tracking/CommentTracker;-><init>(Lcom/buzzfeed/analytics/client/BuzzFeedTracker;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->mCommentTracker:Lcom/buzzfeed/android/data/tracking/CommentTracker;

    .line 47
    iput-object p1, p0, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->mActivity:Landroid/app/Activity;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;)Lcom/buzzfeed/android/data/tracking/CommentTracker;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->mCommentTracker:Lcom/buzzfeed/android/data/tracking/CommentTracker;

    return-object v0
.end method

.method private getParentCommentItemView(Landroid/view/View;)Lcom/buzzfeed/android/ui/comments/CommentItemView;
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 173
    move-object v0, p1

    .line 174
    .local v0, "curView":Landroid/view/View;
    :goto_1
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 175
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcom/buzzfeed/android/ui/comments/CommentItemView;

    if-eqz v1, :cond_18

    .line 176
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/android/ui/comments/CommentItemView;

    .line 182
    :goto_17
    return-object v1

    .line 178
    :cond_18
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .end local v0    # "curView":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .restart local v0    # "curView":Landroid/view/View;
    goto :goto_1

    .line 182
    :cond_1f
    const/4 v1, 0x0

    goto :goto_17
.end method

.method private hateComment(Lcom/buzzfeed/android/data/comment/BuzzFeedComment;Landroid/content/Context;)V
    .registers 9
    .param p1, "comment"    # Lcom/buzzfeed/android/data/comment/BuzzFeedComment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->userCanHeartOrHate(Lcom/buzzfeed/android/data/comment/BuzzFeedComment;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 115
    invoke-static {}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->getInstance()Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    move-result-object v0

    const v1, 0x7f0901fd

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0901d4

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 116
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->mLoader:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->updateComment(Lcom/buzzfeed/android/data/comment/BuzzFeedComment;Z)V

    .line 118
    :cond_24
    return-void
.end method

.method private heartComment(Lcom/buzzfeed/android/data/comment/BuzzFeedComment;Landroid/content/Context;)V
    .registers 9
    .param p1, "comment"    # Lcom/buzzfeed/android/data/comment/BuzzFeedComment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->userCanHeartOrHate(Lcom/buzzfeed/android/data/comment/BuzzFeedComment;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 108
    invoke-static {}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->getInstance()Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    move-result-object v0

    const v1, 0x7f0901fd

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0901d5

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 109
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->mLoader:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->updateComment(Lcom/buzzfeed/android/data/comment/BuzzFeedComment;Z)V

    .line 111
    :cond_24
    return-void
.end method

.method private isUserLoggedIn()Z
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->mUser:Lcom/buzzfeed/android/data/BuzzUser;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->mUser:Lcom/buzzfeed/android/data/BuzzUser;

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/BuzzUser;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private startContributeSubmitActivity(Landroid/view/View;Lcom/buzzfeed/android/data/comment/Comment;Z)V
    .registers 15
    .param p1, "v"    # Landroid/view/View;
    .param p2, "comment"    # Lcom/buzzfeed/android/data/comment/Comment;
    .param p3, "isReply"    # Z

    .prologue
    const/16 v10, 0x3e8

    .line 129
    iget-object v4, p0, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->mActivity:Landroid/app/Activity;

    if-nez v4, :cond_e

    .line 130
    sget-object v4, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->TAG:Ljava/lang/String;

    const-string v5, "Unable to start contribute submit activity: View context is not an activity"

    invoke-static {v4, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :goto_d
    return-void

    .line 133
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/buzzfeed/android/data/BuzzUser;->getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/data/BuzzUser;

    move-result-object v4

    invoke-virtual {v4}, Lcom/buzzfeed/android/data/BuzzUser;->isLogin()Z

    move-result v4

    if-nez v4, :cond_28

    .line 134
    iget-object v4, p0, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->mActivity:Landroid/app/Activity;

    const/16 v5, 0x7d0

    invoke-direct {p0, v4, v5}, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->startLoginActivity(Landroid/content/Context;I)V

    goto :goto_d

    .line 136
    :cond_28
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->mActivity:Landroid/app/Activity;

    const-class v5, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "KEY_CONTENT"

    iget-object v5, p0, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->mContent:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p2, :cond_a5

    .line 140
    invoke-virtual {p2}, Lcom/buzzfeed/android/data/comment/Comment;->getCommentId()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "id":Ljava/lang/String;
    if-eqz p3, :cond_4f

    .line 145
    invoke-virtual {p2}, Lcom/buzzfeed/android/data/comment/Comment;->getParent()Lcom/buzzfeed/android/data/comment/Comment;

    move-result-object v4

    if-eqz v4, :cond_4f

    .line 146
    invoke-virtual {p2}, Lcom/buzzfeed/android/data/comment/Comment;->getParent()Lcom/buzzfeed/android/data/comment/Comment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/buzzfeed/android/data/comment/Comment;->getCommentId()Ljava/lang/String;

    move-result-object v1

    .line 149
    :cond_4f
    const-string v4, "comment_id"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->getParentCommentItemView(Landroid/view/View;)Lcom/buzzfeed/android/ui/comments/CommentItemView;

    move-result-object v3

    .line 152
    .local v3, "itemView":Lcom/buzzfeed/android/ui/comments/CommentItemView;
    if-eqz v3, :cond_a5

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_a5

    .line 153
    iget-object v4, p0, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->mActivity:Landroid/app/Activity;

    const/4 v5, 0x4

    new-array v5, v5, [Landroid/util/Pair;

    const/4 v6, 0x0

    new-instance v7, Landroid/util/Pair;

    .line 154
    invoke-virtual {v3}, Lcom/buzzfeed/android/ui/comments/CommentItemView;->getAvatarImageView()Lcom/buzzfeed/toolkit/ui/view/CircularImageView;

    move-result-object v8

    sget-object v9, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$SharedElementTag;->AVATAR:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Landroid/util/Pair;

    .line 155
    invoke-virtual {v3}, Lcom/buzzfeed/android/ui/comments/CommentItemView;->getCommentTextView()Landroid/widget/TextView;

    move-result-object v8

    sget-object v9, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$SharedElementTag;->COMMENT:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Landroid/util/Pair;

    .line 156
    invoke-virtual {v3}, Lcom/buzzfeed/android/ui/comments/CommentItemView;->getUserNameView()Landroid/widget/TextView;

    move-result-object v8

    sget-object v9, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$SharedElementTag;->USER_NAME:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Landroid/util/Pair;

    .line 157
    invoke-virtual {v3}, Lcom/buzzfeed/android/ui/comments/CommentItemView;->getCommentImageView()Landroid/widget/ImageView;

    move-result-object v8

    sget-object v9, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$SharedElementTag;->COMMENT_IMAGE:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v5, v6

    .line 153
    invoke-static {v4, v5}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    move-result-object v4

    .line 158
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 162
    .end local v1    # "id":Ljava/lang/String;
    .end local v3    # "itemView":Lcom/buzzfeed/android/ui/comments/CommentItemView;
    :cond_a5
    if-eqz p2, :cond_b6

    if-eqz v0, :cond_b6

    invoke-static {}, Lcom/buzzfeed/toolkit/util/VersionUtil;->hasLollipop()Z

    move-result v4

    if-eqz v4, :cond_b6

    .line 163
    iget-object v4, p0, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v2, v10, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto/16 :goto_d

    .line 165
    :cond_b6
    iget-object v4, p0, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->mActivity:Landroid/app/Activity;

    const v5, 0x7f04001a

    const v6, 0x7f040019

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 166
    iget-object v4, p0, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v2, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_d
.end method

.method private startIntentForResult(Landroid/content/Intent;ILandroid/content/Context;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 212
    instance-of v0, p3, Landroid/app/Activity;

    if-eqz v0, :cond_a

    .line 213
    check-cast p3, Landroid/app/Activity;

    .end local p3    # "context":Landroid/content/Context;
    invoke-virtual {p3, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 217
    :goto_9
    return-void

    .line 215
    .restart local p3    # "context":Landroid/content/Context;
    :cond_a
    sget-object v0, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->TAG:Ljava/lang/String;

    const-string v1, "Context is not an activity."

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method private startLoginActivity(Landroid/content/Context;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "commentRequestCode"    # I

    .prologue
    .line 186
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    .line 187
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0, v1, p2, p1}, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->startIntentForResult(Landroid/content/Intent;ILandroid/content/Context;)V

    .line 189
    return-void
.end method

.method private startShareIntent(Landroid/content/Context;Lcom/buzzfeed/android/data/comment/Comment;Lcom/buzzfeed/toolkit/content/PostContent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "comment"    # Lcom/buzzfeed/android/data/comment/Comment;
    .param p3, "content"    # Lcom/buzzfeed/toolkit/content/PostContent;

    .prologue
    .line 192
    iget-object v1, p0, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->mCommentTracker:Lcom/buzzfeed/android/data/tracking/CommentTracker;

    invoke-virtual {v1}, Lcom/buzzfeed/android/data/tracking/CommentTracker;->trackCommentOpenShareSheet()V

    .line 194
    invoke-interface {p3}, Lcom/buzzfeed/toolkit/content/PostContent;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getUrlWithSSLBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "formattedUri":Ljava/lang/String;
    new-instance v1, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl$1;

    invoke-direct {v1, p0}, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl$1;-><init>(Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;)V

    iput-object v1, p0, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->mShareActionListener:Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;

    .line 203
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->mContent:Lcom/buzzfeed/toolkit/content/PostContent;

    .line 205
    invoke-interface {v1}, Lcom/buzzfeed/toolkit/content/PostContent;->getSubject()Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-virtual {p2}, Lcom/buzzfeed/android/data/comment/Comment;->getShareBody()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->mShareActionListener:Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;

    .line 203
    invoke-static {p1, v1, v2, v0, v3}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->shareWithListenerWithComment(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;)V

    .line 209
    return-void
.end method

.method private userCanHeartOrHate(Lcom/buzzfeed/android/data/comment/BuzzFeedComment;)Z
    .registers 3
    .param p1, "comment"    # Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->isUserLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->userHated()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p1}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->userHearted()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 220
    iput-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->mActivity:Landroid/app/Activity;

    .line 221
    iput-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->mShareActionListener:Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;

    .line 222
    return-void
.end method

.method public onClick(Landroid/view/View;Lcom/buzzfeed/android/data/comment/Comment;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "comment"    # Lcom/buzzfeed/android/data/comment/Comment;

    .prologue
    const/16 v5, 0xbb8

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".onClick"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "TAG":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 57
    .local v2, "id":I
    sparse-switch v2, :sswitch_data_a6

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error finding onClick case for view id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_3c
    :goto_3c
    return-void

    .line 59
    :sswitch_3d
    instance-of v3, p2, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    if-eqz v3, :cond_3c

    move-object v1, p2

    .line 60
    check-cast v1, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    .line 61
    .local v1, "bfComment":Lcom/buzzfeed/android/data/comment/BuzzFeedComment;
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->isUserLoggedIn()Z

    move-result v3

    if-eqz v3, :cond_62

    .line 62
    invoke-virtual {v1}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->userHearted()Z

    move-result v3

    if-nez v3, :cond_5c

    invoke-virtual {v1}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->userHated()Z

    move-result v3

    if-nez v3, :cond_5c

    .line 63
    iget-object v3, p0, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v1, v3}, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->hateComment(Lcom/buzzfeed/android/data/comment/BuzzFeedComment;Landroid/content/Context;)V

    goto :goto_3c

    .line 65
    :cond_5c
    const-string v3, "Comment already liked or hated"

    invoke-static {v0, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    .line 68
    :cond_62
    iget-object v3, p0, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v3, v5}, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->startLoginActivity(Landroid/content/Context;I)V

    goto :goto_3c

    .line 74
    .end local v1    # "bfComment":Lcom/buzzfeed/android/data/comment/BuzzFeedComment;
    :sswitch_68
    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v3}, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->startContributeSubmitActivity(Landroid/view/View;Lcom/buzzfeed/android/data/comment/Comment;Z)V

    goto :goto_3c

    .line 78
    :sswitch_6d
    instance-of v3, p2, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    if-eqz v3, :cond_3c

    move-object v1, p2

    .line 79
    check-cast v1, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    .line 80
    .restart local v1    # "bfComment":Lcom/buzzfeed/android/data/comment/BuzzFeedComment;
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->isUserLoggedIn()Z

    move-result v3

    if-eqz v3, :cond_92

    .line 81
    invoke-virtual {v1}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->userHearted()Z

    move-result v3

    if-nez v3, :cond_8c

    invoke-virtual {v1}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->userHated()Z

    move-result v3

    if-nez v3, :cond_8c

    .line 82
    iget-object v3, p0, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v1, v3}, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->heartComment(Lcom/buzzfeed/android/data/comment/BuzzFeedComment;Landroid/content/Context;)V

    goto :goto_3c

    .line 84
    :cond_8c
    const-string v3, "Comment already liked or hated"

    invoke-static {v0, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    .line 87
    :cond_92
    iget-object v3, p0, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v3, v5}, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->startLoginActivity(Landroid/content/Context;I)V

    goto :goto_3c

    .line 93
    .end local v1    # "bfComment":Lcom/buzzfeed/android/data/comment/BuzzFeedComment;
    :sswitch_98
    iget-object v3, p0, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->mContent:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-direct {p0, v3, p2, v4}, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->startShareIntent(Landroid/content/Context;Lcom/buzzfeed/android/data/comment/Comment;Lcom/buzzfeed/toolkit/content/PostContent;)V

    goto :goto_3c

    .line 97
    :sswitch_a0
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1, v3, v4}, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->startContributeSubmitActivity(Landroid/view/View;Lcom/buzzfeed/android/data/comment/Comment;Z)V

    goto :goto_3c

    .line 57
    :sswitch_data_a6
    .sparse-switch
        0x7f1100a6 -> :sswitch_98
        0x7f110121 -> :sswitch_68
        0x7f110123 -> :sswitch_6d
        0x7f110125 -> :sswitch_3d
        0x7f110133 -> :sswitch_a0
    .end sparse-switch
.end method
