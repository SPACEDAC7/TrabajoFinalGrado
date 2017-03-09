.class public Lcom/buzzfeed/android/ui/comments/CommentViewPresenter;
.super Ljava/lang/Object;
.source "CommentViewPresenter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcom/buzzfeed/android/ui/comments/CommentViewPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/ui/comments/CommentViewPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;Lcom/buzzfeed/android/data/comment/Comment;Lcom/buzzfeed/toolkit/content/PostContent;)V
    .registers 14
    .param p1, "v"    # Landroid/view/View;
    .param p2, "c"    # Lcom/buzzfeed/android/data/comment/Comment;
    .param p3, "postContent"    # Lcom/buzzfeed/toolkit/content/PostContent;

    .prologue
    const/4 v9, 0x0

    .line 20
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/buzzfeed/android/ui/comments/CommentViewPresenter;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".onBindView"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "TAG":Ljava/lang/String;
    instance-of v6, p1, Lcom/buzzfeed/android/ui/comments/CommentItemView;

    if-eqz v6, :cond_179

    .line 25
    instance-of v6, p2, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    if-nez v6, :cond_43

    .line 26
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cant bind object of class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with CommentItemView"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_42
    :goto_42
    return-void

    :cond_43
    move-object v1, p2

    .line 30
    check-cast v1, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    .local v1, "bc":Lcom/buzzfeed/android/data/comment/BuzzFeedComment;
    move-object v3, p1

    .line 32
    check-cast v3, Lcom/buzzfeed/android/ui/comments/CommentItemView;

    .line 33
    .local v3, "commentItemView":Lcom/buzzfeed/android/ui/comments/CommentItemView;
    invoke-virtual {v3}, Lcom/buzzfeed/android/ui/comments/CommentItemView;->getTimestampView()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v1}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->getFormattedTimestamp()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    invoke-virtual {p2}, Lcom/buzzfeed/android/data/comment/Comment;->getCommentImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_89

    invoke-virtual {v1}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->getCommentImageUrl()Ljava/lang/String;

    move-result-object v6

    const-string v7, "null"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_89

    .line 35
    invoke-virtual {v1}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->getCommentImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getUrlWithStaticBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 36
    .local v4, "imageUrl":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/buzzfeed/android/ui/comments/CommentItemView;->getCommentImageView()Landroid/widget/ImageView;

    move-result-object v2

    .line 37
    .local v2, "commentImageView":Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v6

    .line 38
    invoke-virtual {v6, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v6

    .line 39
    invoke-virtual {v6, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 42
    .end local v2    # "commentImageView":Landroid/widget/ImageView;
    .end local v4    # "imageUrl":Ljava/lang/String;
    :cond_89
    invoke-virtual {v1}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->getBlurb()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9e

    .line 43
    invoke-virtual {v3}, Lcom/buzzfeed/android/ui/comments/CommentItemView;->getCommentTextView()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v1}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->getBlurb()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    :cond_9e
    invoke-virtual {v1}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->getUserInfo()Lcom/buzzfeed/android/data/comment/Comment$UserInfo;

    move-result-object v5

    .line 47
    .local v5, "userInfo":Lcom/buzzfeed/android/data/comment/Comment$UserInfo;
    if-eqz v5, :cond_e6

    .line 48
    invoke-virtual {v3}, Lcom/buzzfeed/android/ui/comments/CommentItemView;->getUserNameView()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v5}, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->getUsername()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {v5}, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->getLargeUserImg()Ljava/lang/String;

    move-result-object v4

    .line 53
    .restart local v4    # "imageUrl":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_16d

    const-string v6, "null"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16d

    const-string/jumbo v6, "static/images/public/defaults/user_large.jpg"

    .line 54
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_16d

    const-string/jumbo v6, "static/images/public/defaults/user.jpg"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_16d

    .line 55
    invoke-virtual {v3}, Lcom/buzzfeed/android/ui/comments/CommentItemView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v6

    .line 56
    invoke-virtual {v6, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v6

    .line 57
    invoke-virtual {v3}, Lcom/buzzfeed/android/ui/comments/CommentItemView;->getAvatarImageView()Lcom/buzzfeed/toolkit/ui/view/CircularImageView;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 63
    .end local v4    # "imageUrl":Ljava/lang/String;
    :cond_e6
    :goto_e6
    invoke-virtual {v3}, Lcom/buzzfeed/android/ui/comments/CommentItemView;->getLoveCountView()Landroid/widget/TextView;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->getLoveCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {v3}, Lcom/buzzfeed/android/ui/comments/CommentItemView;->getHateCountView()Landroid/widget/TextView;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->getHateCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {v3}, Lcom/buzzfeed/android/ui/comments/CommentItemView;->getHeartButton()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v1}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->userHearted()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setSelected(Z)V

    .line 66
    invoke-virtual {v3}, Lcom/buzzfeed/android/ui/comments/CommentItemView;->getHateButton()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v1}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->userHated()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setSelected(Z)V

    .line 67
    invoke-virtual {v3, v1}, Lcom/buzzfeed/android/ui/comments/CommentItemView;->setComment(Lcom/buzzfeed/android/data/comment/Comment;)V

    .line 68
    invoke-interface {p3}, Lcom/buzzfeed/toolkit/content/PostContent;->isCommentsEnabled()Z

    move-result v6

    if-eqz v6, :cond_148

    .line 69
    invoke-virtual {v3}, Lcom/buzzfeed/android/ui/comments/CommentItemView;->getReplyButton()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 71
    :cond_148
    invoke-interface {p3}, Lcom/buzzfeed/toolkit/content/PostContent;->isReactionsEnabled()Z

    move-result v6

    if-eqz v6, :cond_42

    .line 72
    invoke-virtual {v3}, Lcom/buzzfeed/android/ui/comments/CommentItemView;->getLoveCountView()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    invoke-virtual {v3}, Lcom/buzzfeed/android/ui/comments/CommentItemView;->getHeartButton()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 74
    invoke-virtual {v3}, Lcom/buzzfeed/android/ui/comments/CommentItemView;->getHateButton()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 75
    invoke-virtual {v3}, Lcom/buzzfeed/android/ui/comments/CommentItemView;->getHateCountView()Landroid/widget/TextView;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_42

    .line 59
    .restart local v4    # "imageUrl":Ljava/lang/String;
    :cond_16d
    invoke-virtual {v3}, Lcom/buzzfeed/android/ui/comments/CommentItemView;->getAvatarImageView()Lcom/buzzfeed/toolkit/ui/view/CircularImageView;

    move-result-object v6

    const v7, 0x7f0200da

    invoke-virtual {v6, v7}, Lcom/buzzfeed/toolkit/ui/view/CircularImageView;->setBackgroundResource(I)V

    goto/16 :goto_e6

    .line 79
    .end local v1    # "bc":Lcom/buzzfeed/android/data/comment/BuzzFeedComment;
    .end local v3    # "commentItemView":Lcom/buzzfeed/android/ui/comments/CommentItemView;
    .end local v4    # "imageUrl":Ljava/lang/String;
    .end local v5    # "userInfo":Lcom/buzzfeed/android/data/comment/Comment$UserInfo;
    :cond_179
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cant bind data object of class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_42
.end method

.method public updateView(Landroid/view/View;Lcom/buzzfeed/android/data/comment/Comment;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "c"    # Lcom/buzzfeed/android/data/comment/Comment;

    .prologue
    .line 85
    instance-of v2, p1, Lcom/buzzfeed/android/ui/comments/CommentItemView;

    if-eqz v2, :cond_4c

    move-object v1, p1

    .line 86
    check-cast v1, Lcom/buzzfeed/android/ui/comments/CommentItemView;

    .line 88
    .local v1, "commentItemView":Lcom/buzzfeed/android/ui/comments/CommentItemView;
    instance-of v2, p2, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    if-nez v2, :cond_32

    .line 89
    sget-object v2, Lcom/buzzfeed/android/ui/comments/CommentViewPresenter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cant update object of class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with CommentItemView"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .end local v1    # "commentItemView":Lcom/buzzfeed/android/ui/comments/CommentItemView;
    :goto_31
    return-void

    .restart local v1    # "commentItemView":Lcom/buzzfeed/android/ui/comments/CommentItemView;
    :cond_32
    move-object v0, p2

    .line 93
    check-cast v0, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    .line 94
    .local v0, "bc":Lcom/buzzfeed/android/data/comment/BuzzFeedComment;
    invoke-virtual {v1}, Lcom/buzzfeed/android/ui/comments/CommentItemView;->getLoveCountView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->displayLoveCount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {v1}, Lcom/buzzfeed/android/ui/comments/CommentItemView;->getHateCountView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->displayHateCount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_31

    .line 98
    .end local v0    # "bc":Lcom/buzzfeed/android/data/comment/BuzzFeedComment;
    .end local v1    # "commentItemView":Lcom/buzzfeed/android/ui/comments/CommentItemView;
    :cond_4c
    sget-object v2, Lcom/buzzfeed/android/ui/comments/CommentViewPresenter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cant update object of class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31
.end method
