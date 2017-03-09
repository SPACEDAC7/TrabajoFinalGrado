.class public Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;
.super Landroid/widget/RelativeLayout;
.source "BuffetErrorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;
    }
.end annotation


# instance fields
.field private mBookmarkEmptyView:Landroid/view/View;

.field private mBookmarkSigninView:Landroid/view/View;

.field private mBookmarkbackground:Landroid/view/View;

.field private mEmptySearchText:Landroid/view/View;

.field private mErrorListener:Lcom/buzzfeed/android/ui/buffet/listener/BuffetErrorListener;

.field private mErrorType:Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;

.field private mSadCattyImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030032

    invoke-static {v0, v1, p0}, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 38
    sget-object v0, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;->DEFAULT:Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->setErrorType(Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;)V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;)Lcom/buzzfeed/android/ui/buffet/listener/BuffetErrorListener;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->mErrorListener:Lcom/buzzfeed/android/ui/buffet/listener/BuffetErrorListener;

    return-object v0
.end method

.method private displayBookmarksBackground()V
    .registers 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->mBookmarkbackground:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    return-void
.end method

.method private findViews()V
    .registers 3

    .prologue
    .line 49
    const v0, 0x7f1100c3

    invoke-static {p0, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->mBookmarkbackground:Landroid/view/View;

    .line 50
    const v0, 0x7f1100c2

    invoke-static {p0, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->mSadCattyImageView:Landroid/widget/ImageView;

    .line 51
    const v0, 0x7f1100c4

    invoke-static {p0, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->mEmptySearchText:Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->mBookmarkbackground:Landroid/view/View;

    const v1, 0x7f1100ba

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->mBookmarkEmptyView:Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->mBookmarkbackground:Landroid/view/View;

    const v1, 0x7f1100bc

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->mBookmarkSigninView:Landroid/view/View;

    .line 54
    return-void
.end method


# virtual methods
.method public displayBookmarkSignInView()V
    .registers 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->mBookmarkEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->mBookmarkSigninView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    return-void
.end method

.method public displayDefaultErrorView()V
    .registers 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->mSadCattyImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    return-void
.end method

.method public displayEmptyBookmarksView()V
    .registers 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->mBookmarkEmptyView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->mBookmarkSigninView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    return-void
.end method

.method public displayEmptySearchView()V
    .registers 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->mEmptySearchText:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 44
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 45
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->findViews()V

    .line 46
    return-void
.end method

.method public refreshErrorView(Z)V
    .registers 4
    .param p1, "userLoggedIn"    # Z

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->resetErrorViews()V

    .line 63
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->mErrorType:Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;

    sget-object v1, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;->BOOKMARK_EMPTY:Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;

    if-ne v0, v1, :cond_19

    .line 64
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->displayBookmarksBackground()V

    .line 65
    if-eqz p1, :cond_12

    .line 67
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->displayEmptyBookmarksView()V

    .line 79
    :goto_11
    return-void

    .line 71
    :cond_12
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->displayBookmarkSignInView()V

    .line 72
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->setSignInClickListener()V

    goto :goto_11

    .line 74
    :cond_19
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->mErrorType:Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;

    sget-object v1, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;->SEARCH:Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;

    if-ne v0, v1, :cond_23

    .line 75
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->displayEmptySearchView()V

    goto :goto_11

    .line 77
    :cond_23
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->displayDefaultErrorView()V

    goto :goto_11
.end method

.method public resetErrorViews()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 111
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->mBookmarkbackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->mSadCattyImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->mEmptySearchText:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 114
    return-void
.end method

.method public setErrorListener(Lcom/buzzfeed/android/ui/buffet/listener/BuffetErrorListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/buzzfeed/android/ui/buffet/listener/BuffetErrorListener;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->mErrorListener:Lcom/buzzfeed/android/ui/buffet/listener/BuffetErrorListener;

    .line 138
    return-void
.end method

.method public setErrorType(Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;)V
    .registers 2
    .param p1, "errorType"    # Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->mErrorType:Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;

    .line 129
    return-void
.end method

.method public setSignInClickListener()V
    .registers 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->mErrorListener:Lcom/buzzfeed/android/ui/buffet/listener/BuffetErrorListener;

    if-eqz v0, :cond_15

    .line 87
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;->mBookmarkbackground:Landroid/view/View;

    const v1, 0x7f1100be

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$1;

    invoke-direct {v1, p0}, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$1;-><init>(Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    :cond_15
    return-void
.end method
