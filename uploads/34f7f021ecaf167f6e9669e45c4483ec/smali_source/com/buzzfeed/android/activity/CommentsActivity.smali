.class public Lcom/buzzfeed/android/activity/CommentsActivity;
.super Lcom/buzzfeed/android/activity/BaseActivity;
.source "CommentsActivity.java"


# static fields
.field public static final COMMENT_REQUEST_CODE_ADD_COMMENT:I = 0x3e8

.field public static final COMMENT_REQUEST_CODE_LOGIN:I = 0x7d0

.field public static final COMMENT_REQUEST_CODE_LOGIN_REACTION:I = 0xbb8

.field private static final KEY_CONTENT:Ljava/lang/String; = "KEY_CONTENT"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mCommentLayout:Lcom/buzzfeed/android/ui/comments/CommentLayout;

.field private mCommentLoader:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

.field private mCommentsListCache:Lcom/buzzfeed/android/data/comment/CommentListCache;

.field private mContent:Lcom/buzzfeed/toolkit/content/PostContent;

.field private mObserver:Lcom/buzzfeed/android/ui/comments/CommentsChangeObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-class v0, Lcom/buzzfeed/android/activity/CommentsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/activity/CommentsActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private initCommentViewClickListener()V
    .registers 6

    .prologue
    .line 122
    iget-object v0, p0, Lcom/buzzfeed/android/activity/CommentsActivity;->mCommentLayout:Lcom/buzzfeed/android/ui/comments/CommentLayout;

    new-instance v1, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;

    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/CommentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/buzzfeed/android/data/BuzzUser;->getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/data/BuzzUser;

    move-result-object v2

    iget-object v3, p0, Lcom/buzzfeed/android/activity/CommentsActivity;->mCommentLoader:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    iget-object v4, p0, Lcom/buzzfeed/android/activity/CommentsActivity;->mContent:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;-><init>(Landroid/app/Activity;Lcom/buzzfeed/android/data/BuzzUser;Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;Lcom/buzzfeed/toolkit/content/PostContent;)V

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->setCommentViewOnClickListener(Lcom/buzzfeed/android/ui/comments/CommentLayout$CommentViewOnClickListener;)V

    .line 123
    return-void
.end method

.method private setupCommentLayout()V
    .registers 4

    .prologue
    .line 90
    iget-object v0, p0, Lcom/buzzfeed/android/activity/CommentsActivity;->mCommentLayout:Lcom/buzzfeed/android/ui/comments/CommentLayout;

    iget-object v1, p0, Lcom/buzzfeed/android/activity/CommentsActivity;->mContent:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->setPostContent(Lcom/buzzfeed/toolkit/content/PostContent;)V

    .line 91
    iget-object v0, p0, Lcom/buzzfeed/android/activity/CommentsActivity;->mCommentLayout:Lcom/buzzfeed/android/ui/comments/CommentLayout;

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->refreshHeader()V

    .line 92
    iget-object v0, p0, Lcom/buzzfeed/android/activity/CommentsActivity;->mCommentLayout:Lcom/buzzfeed/android/ui/comments/CommentLayout;

    iget-object v1, p0, Lcom/buzzfeed/android/activity/CommentsActivity;->mCommentLoader:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->setCommentLoader(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;)V

    .line 93
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/CommentsActivity;->initCommentViewClickListener()V

    .line 94
    new-instance v0, Lcom/buzzfeed/android/ui/comments/CommentsChangeObserver;

    iget-object v1, p0, Lcom/buzzfeed/android/activity/CommentsActivity;->mContent:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-interface {v1}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/android/activity/CommentsActivity;->mCommentLayout:Lcom/buzzfeed/android/ui/comments/CommentLayout;

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/android/ui/comments/CommentsChangeObserver;-><init>(Ljava/lang/String;Lcom/buzzfeed/android/ui/comments/CommentLayout;)V

    iput-object v0, p0, Lcom/buzzfeed/android/activity/CommentsActivity;->mObserver:Lcom/buzzfeed/android/ui/comments/CommentsChangeObserver;

    .line 95
    iget-object v0, p0, Lcom/buzzfeed/android/activity/CommentsActivity;->mCommentsListCache:Lcom/buzzfeed/android/data/comment/CommentListCache;

    iget-object v1, p0, Lcom/buzzfeed/android/activity/CommentsActivity;->mObserver:Lcom/buzzfeed/android/ui/comments/CommentsChangeObserver;

    invoke-interface {v0, v1}, Lcom/buzzfeed/android/data/comment/CommentListCache;->addObserver(Ljava/util/Observer;)V

    .line 96
    iget-object v0, p0, Lcom/buzzfeed/android/activity/CommentsActivity;->mCommentLayout:Lcom/buzzfeed/android/ui/comments/CommentLayout;

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->loadComments()V

    .line 97
    return-void
.end method

.method public static startIntent(Landroid/content/Context;Lcom/buzzfeed/toolkit/content/PostContent;)Landroid/content/Intent;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/PostContent;

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/buzzfeed/android/activity/CommentsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "KEY_CONTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 43
    return-object v0
.end method


# virtual methods
.method protected configureToolbar(Landroid/support/v7/widget/Toolbar;)V
    .registers 6
    .param p1, "toolbar"    # Landroid/support/v7/widget/Toolbar;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/buzzfeed/android/activity/BaseActivity;->configureToolbar(Landroid/support/v7/widget/Toolbar;)V

    .line 70
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/CommentsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 71
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    const v2, 0x7f03001c

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setCustomView(I)V

    .line 72
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f11008b

    invoke-static {v2, v3}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 73
    .local v1, "textView":Landroid/widget/TextView;
    const v2, 0x7f090119

    invoke-virtual {p0, v2}, Lcom/buzzfeed/android/activity/CommentsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 78
    invoke-super {p0, p1, p2, p3}, Lcom/buzzfeed/android/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 81
    const/16 v1, 0x7d0

    if-ne p1, v1, :cond_21

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "KEY_CONTENT"

    iget-object v2, p0, Lcom/buzzfeed/android/activity/CommentsActivity;->mContent:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/activity/CommentsActivity;->startActivity(Landroid/content/Intent;)V

    .line 85
    const v1, 0x7f04001a

    const v2, 0x7f040019

    invoke-virtual {p0, v1, v2}, Lcom/buzzfeed/android/activity/CommentsActivity;->overridePendingTransition(II)V

    .line 87
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_21
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/buzzfeed/android/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/activity/CommentsActivity;->setContentView(I)V

    .line 50
    new-instance v0, Lcom/buzzfeed/android/activity/CommentsActivity$1;

    invoke-direct {v0, p0}, Lcom/buzzfeed/android/activity/CommentsActivity$1;-><init>(Lcom/buzzfeed/android/activity/CommentsActivity;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/activity/CommentsActivity;->setToolBarAsUp(Landroid/view/View$OnClickListener;)V

    .line 58
    const v0, 0x7f110096

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/activity/CommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/ui/comments/CommentLayout;

    iput-object v0, p0, Lcom/buzzfeed/android/activity/CommentsActivity;->mCommentLayout:Lcom/buzzfeed/android/ui/comments/CommentLayout;

    .line 59
    invoke-static {}, Lcom/buzzfeed/android/data/comment/CommentListMapCache;->getInstance()Lcom/buzzfeed/android/data/comment/CommentListMapCache;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/activity/CommentsActivity;->mCommentsListCache:Lcom/buzzfeed/android/data/comment/CommentListCache;

    .line 61
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/CommentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 62
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/CommentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/PostContent;

    iput-object v0, p0, Lcom/buzzfeed/android/activity/CommentsActivity;->mContent:Lcom/buzzfeed/toolkit/content/PostContent;

    .line 64
    :cond_3c
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 127
    invoke-super {p0}, Lcom/buzzfeed/android/activity/BaseActivity;->onDestroy()V

    .line 128
    iget-object v0, p0, Lcom/buzzfeed/android/activity/CommentsActivity;->mCommentsListCache:Lcom/buzzfeed/android/data/comment/CommentListCache;

    iget-object v1, p0, Lcom/buzzfeed/android/activity/CommentsActivity;->mObserver:Lcom/buzzfeed/android/ui/comments/CommentsChangeObserver;

    invoke-interface {v0, v1}, Lcom/buzzfeed/android/data/comment/CommentListCache;->deleteObserver(Ljava/util/Observer;)V

    .line 129
    iget-object v0, p0, Lcom/buzzfeed/android/activity/CommentsActivity;->mCommentLayout:Lcom/buzzfeed/android/ui/comments/CommentLayout;

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->destroyCommentClickListener()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/buzzfeed/android/activity/CommentsActivity;->mObserver:Lcom/buzzfeed/android/ui/comments/CommentsChangeObserver;

    .line 131
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/buzzfeed/android/activity/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 102
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/buzzfeed/android/activity/CommentsActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "TAG":Ljava/lang/String;
    invoke-super {p0}, Lcom/buzzfeed/android/activity/BaseActivity;->onResume()V

    .line 113
    new-instance v1, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    invoke-direct {v1, p0}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/buzzfeed/android/activity/CommentsActivity;->mCommentLoader:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    .line 114
    iget-object v1, p0, Lcom/buzzfeed/android/activity/CommentsActivity;->mCommentLayout:Lcom/buzzfeed/android/ui/comments/CommentLayout;

    iget-object v2, p0, Lcom/buzzfeed/android/activity/CommentsActivity;->mCommentLoader:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->setCommentLoader(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;)V

    .line 115
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/CommentsActivity;->initCommentViewClickListener()V

    .line 116
    iget-object v1, p0, Lcom/buzzfeed/android/activity/CommentsActivity;->mCommentLayout:Lcom/buzzfeed/android/ui/comments/CommentLayout;

    invoke-virtual {v1}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->getPostContent()Lcom/buzzfeed/toolkit/content/PostContent;

    move-result-object v1

    if-nez v1, :cond_34

    .line 117
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/CommentsActivity;->setupCommentLayout()V

    .line 119
    :cond_34
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/buzzfeed/android/activity/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 107
    return-void
.end method
