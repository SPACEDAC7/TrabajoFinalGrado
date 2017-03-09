.class public Lcom/buzzfeed/android/ui/comments/CommentLayout;
.super Landroid/widget/FrameLayout;
.source "CommentLayout.java"

# interfaces
.implements Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$CommentLoaderListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/ui/comments/CommentLayout$CommentViewOnClickListener;,
        Lcom/buzzfeed/android/ui/comments/CommentLayout$SaveState;,
        Lcom/buzzfeed/android/ui/comments/CommentLayout$ScrollListener;,
        Lcom/buzzfeed/android/ui/comments/CommentLayout$ButtonID;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCommentContainer:Landroid/view/ViewGroup;

.field private mCommentContainerWrapper:Landroid/view/ViewGroup;

.field private mCommentHeader:Landroid/view/ViewGroup;

.field private mCommentItemViewClickListener:Lcom/buzzfeed/android/ui/comments/CommentLayout$CommentViewOnClickListener;

.field private mCommentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/buzzfeed/android/data/comment/Comment;",
            ">;"
        }
    .end annotation
.end field

.field private mCommentLoader:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

.field private mCommentScrollView:Landroid/widget/ScrollView;

.field private mCommentTypeSpinner:Landroid/widget/Spinner;

.field private mCommentViewPresenter:Lcom/buzzfeed/android/ui/comments/CommentViewPresenter;

.field private mContent:Lcom/buzzfeed/toolkit/content/PostContent;

.field private mFacebookCommentsView:Lcom/buzzfeed/android/data/comment/FacebookCommentsView;

.field private mIsAttachedToWindow:Z

.field private mIsLoading:Z

.field private mIsShowingComments:Z

.field private mLoadMore:Landroid/widget/TextView;

.field private mNoCommentMessage:Landroid/widget/TextView;

.field private mResponseButton:Lcom/buzzfeed/android/ui/widget/TextCardView;

.field private mScrollListener:Lcom/buzzfeed/android/ui/comments/CommentLayout$ScrollListener;

.field private mSpinner:Landroid/widget/ProgressBar;

.field private mViewMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const-class v0, Lcom/buzzfeed/android/ui/comments/CommentLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/buzzfeed/android/ui/comments/CommentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/buzzfeed/android/ui/comments/CommentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mViewMap:Ljava/util/HashMap;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentList:Ljava/util/ArrayList;

    .line 74
    iput-boolean v1, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mIsShowingComments:Z

    .line 75
    iput-boolean v1, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mIsAttachedToWindow:Z

    .line 76
    iput-boolean v1, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mIsLoading:Z

    .line 91
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->initialize()V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mViewMap:Ljava/util/HashMap;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentList:Ljava/util/ArrayList;

    .line 74
    iput-boolean v1, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mIsShowingComments:Z

    .line 75
    iput-boolean v1, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mIsAttachedToWindow:Z

    .line 76
    iput-boolean v1, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mIsLoading:Z

    .line 97
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->initialize()V

    .line 98
    return-void
.end method

.method static synthetic access$002(Lcom/buzzfeed/android/ui/comments/CommentLayout;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/comments/CommentLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mIsShowingComments:Z

    return p1
.end method

.method static synthetic access$100(Lcom/buzzfeed/android/ui/comments/CommentLayout;I)V
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/comments/CommentLayout;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->onSwitchCommentType(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/buzzfeed/android/ui/comments/CommentLayout;)Lcom/buzzfeed/android/ui/comments/CommentLayout$CommentViewOnClickListener;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/comments/CommentLayout;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentItemViewClickListener:Lcom/buzzfeed/android/ui/comments/CommentLayout$CommentViewOnClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/buzzfeed/android/ui/comments/CommentLayout;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/comments/CommentLayout;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mLoadMore:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/buzzfeed/android/ui/comments/CommentLayout;)Landroid/widget/Spinner;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/comments/CommentLayout;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentTypeSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/buzzfeed/android/ui/comments/CommentLayout;Lcom/buzzfeed/android/data/comment/Comment;)Landroid/view/View;
    .registers 3
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/comments/CommentLayout;
    .param p1, "x1"    # Lcom/buzzfeed/android/data/comment/Comment;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->getChildViewForComment(Lcom/buzzfeed/android/data/comment/Comment;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/buzzfeed/android/ui/comments/CommentLayout;)Lcom/buzzfeed/android/ui/comments/CommentViewPresenter;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/comments/CommentLayout;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentViewPresenter:Lcom/buzzfeed/android/ui/comments/CommentViewPresenter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/buzzfeed/android/ui/comments/CommentLayout;)Landroid/widget/ScrollView;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/comments/CommentLayout;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method private addViewToCommentContainer(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 263
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 264
    .local v0, "pos":I
    iget-object v1, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 265
    return-void
.end method

.method private getChildViewForComment(Lcom/buzzfeed/android/data/comment/Comment;)Landroid/view/View;
    .registers 4
    .param p1, "comment"    # Lcom/buzzfeed/android/data/comment/Comment;

    .prologue
    .line 368
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/buzzfeed/android/data/comment/Comment;->getCommentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private getCommentsCache()Lcom/buzzfeed/android/data/comment/CommentListCache;
    .registers 2

    .prologue
    .line 364
    invoke-static {}, Lcom/buzzfeed/android/data/comment/CommentListMapCache;->getInstance()Lcom/buzzfeed/android/data/comment/CommentListMapCache;

    move-result-object v0

    return-object v0
.end method

.method private initialize()V
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 101
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f030052

    invoke-static {v2, v3, p0}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 102
    const v2, 0x7f110138

    invoke-virtual {p0, v2}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mSpinner:Landroid/widget/ProgressBar;

    .line 103
    const v2, 0x7f110131

    invoke-virtual {p0, v2}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentHeader:Landroid/view/ViewGroup;

    .line 104
    const v2, 0x7f110137

    invoke-virtual {p0, v2}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentContainer:Landroid/view/ViewGroup;

    .line 105
    const v2, 0x7f110132

    invoke-virtual {p0, v2}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentTypeSpinner:Landroid/widget/Spinner;

    .line 106
    const v2, 0x7f110133

    invoke-virtual {p0, v2}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/buzzfeed/android/ui/widget/TextCardView;

    iput-object v2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mResponseButton:Lcom/buzzfeed/android/ui/widget/TextCardView;

    .line 107
    const v2, 0x7f110136

    invoke-virtual {p0, v2}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentScrollView:Landroid/widget/ScrollView;

    .line 108
    const v2, 0x7f11013b

    invoke-static {p0, v2}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/buzzfeed/android/data/comment/FacebookCommentsView;

    iput-object v2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mFacebookCommentsView:Lcom/buzzfeed/android/data/comment/FacebookCommentsView;

    .line 109
    iget-object v2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mResponseButton:Lcom/buzzfeed/android/ui/widget/TextCardView;

    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090103

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/ui/widget/TextCardView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    const v2, 0x7f110135

    invoke-static {p0, v2}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentContainerWrapper:Landroid/view/ViewGroup;

    .line 112
    iget-object v2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mResponseButton:Lcom/buzzfeed/android/ui/widget/TextCardView;

    invoke-virtual {v2, v6}, Lcom/buzzfeed/android/ui/widget/TextCardView;->setVisibility(I)V

    .line 113
    iget-object v2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mFacebookCommentsView:Lcom/buzzfeed/android/data/comment/FacebookCommentsView;

    invoke-virtual {v2, v6}, Lcom/buzzfeed/android/data/comment/FacebookCommentsView;->setVisibility(I)V

    .line 116
    const v2, 0x7f11013a

    invoke-virtual {p0, v2}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mNoCommentMessage:Landroid/widget/TextView;

    .line 119
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "items":[Ljava/lang/String;
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0300ab

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 121
    .local v1, "itemsAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v2, 0x7f0300aa

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 122
    iget-object v2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 123
    iget-object v2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v5, v5}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 125
    iget-object v2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentTypeSpinner:Landroid/widget/Spinner;

    new-instance v3, Lcom/buzzfeed/android/ui/comments/CommentLayout$1;

    invoke-direct {v3, p0}, Lcom/buzzfeed/android/ui/comments/CommentLayout$1;-><init>(Lcom/buzzfeed/android/ui/comments/CommentLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 139
    iget-object v2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mResponseButton:Lcom/buzzfeed/android/ui/widget/TextCardView;

    new-instance v3, Lcom/buzzfeed/android/ui/comments/CommentLayout$2;

    invoke-direct {v3, p0}, Lcom/buzzfeed/android/ui/comments/CommentLayout$2;-><init>(Lcom/buzzfeed/android/ui/comments/CommentLayout;)V

    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/ui/widget/TextCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    const v2, 0x7f110139

    invoke-virtual {p0, v2}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mLoadMore:Landroid/widget/TextView;

    .line 149
    iget-object v2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mLoadMore:Landroid/widget/TextView;

    new-instance v3, Lcom/buzzfeed/android/ui/comments/CommentLayout$3;

    invoke-direct {v3, p0}, Lcom/buzzfeed/android/ui/comments/CommentLayout$3;-><init>(Lcom/buzzfeed/android/ui/comments/CommentLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    new-instance v2, Lcom/buzzfeed/android/ui/comments/CommentViewPresenter;

    invoke-direct {v2}, Lcom/buzzfeed/android/ui/comments/CommentViewPresenter;-><init>()V

    iput-object v2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentViewPresenter:Lcom/buzzfeed/android/ui/comments/CommentViewPresenter;

    .line 158
    new-instance v2, Lcom/buzzfeed/android/ui/comments/CommentLayout$ScrollListener;

    invoke-direct {v2, p0}, Lcom/buzzfeed/android/ui/comments/CommentLayout$ScrollListener;-><init>(Lcom/buzzfeed/android/ui/comments/CommentLayout;)V

    iput-object v2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mScrollListener:Lcom/buzzfeed/android/ui/comments/CommentLayout$ScrollListener;

    .line 159
    return-void
.end method

.method private onRepliesLoadComplete(I)V
    .registers 7
    .param p1, "indexOfParentComment"    # I

    .prologue
    .line 322
    if-ltz p1, :cond_a

    iget-object v4, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt p1, v4, :cond_b

    .line 331
    :cond_a
    return-void

    .line 323
    :cond_b
    iget-object v4, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/data/comment/Comment;

    .line 324
    .local v0, "c":Lcom/buzzfeed/android/data/comment/Comment;
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/comment/Comment;->getReplies()Ljava/util/ArrayList;

    move-result-object v3

    .line 325
    .local v3, "replies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/buzzfeed/android/data/comment/Comment;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    .line 326
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_a

    .line 327
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    .line 328
    .local v2, "r":Lcom/buzzfeed/android/data/comment/BuzzFeedComment;
    invoke-virtual {p0, v2}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->addCommentReplyView(Lcom/buzzfeed/android/data/comment/BuzzFeedComment;)V

    .line 326
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e
.end method

.method private onSwitchCommentType(I)V
    .registers 6
    .param p1, "pos"    # I

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 388
    iget-object v1, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mLoadMore:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 389
    if-nez p1, :cond_1d

    .line 390
    iget-object v1, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mFacebookCommentsView:Lcom/buzzfeed/android/data/comment/FacebookCommentsView;

    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/data/comment/FacebookCommentsView;->setVisibility(I)V

    .line 391
    iget-object v1, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentContainerWrapper:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 392
    iget-object v1, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mResponseButton:Lcom/buzzfeed/android/ui/widget/TextCardView;

    invoke-virtual {v1, v3}, Lcom/buzzfeed/android/ui/widget/TextCardView;->setVisibility(I)V

    .line 393
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->reloadBuzzFeedComments()V

    .line 403
    :cond_1c
    :goto_1c
    return-void

    .line 395
    :cond_1d
    iget-object v1, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mFacebookCommentsView:Lcom/buzzfeed/android/data/comment/FacebookCommentsView;

    invoke-virtual {v1, v3}, Lcom/buzzfeed/android/data/comment/FacebookCommentsView;->setVisibility(I)V

    .line 396
    iget-object v1, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentContainerWrapper:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 397
    iget-object v1, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mResponseButton:Lcom/buzzfeed/android/ui/widget/TextCardView;

    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/ui/widget/TextCardView;->setVisibility(I)V

    .line 398
    iget-object v1, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mFacebookCommentsView:Lcom/buzzfeed/android/data/comment/FacebookCommentsView;

    invoke-virtual {v1}, Lcom/buzzfeed/android/data/comment/FacebookCommentsView;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1c

    .line 399
    iget-object v1, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mContent:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-interface {v1}, Lcom/buzzfeed/toolkit/content/PostContent;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getUrlWithSSLBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "uri":Ljava/lang/String;
    iget-object v1, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mFacebookCommentsView:Lcom/buzzfeed/android/data/comment/FacebookCommentsView;

    invoke-virtual {v1, v0}, Lcom/buzzfeed/android/data/comment/FacebookCommentsView;->loadCommentsForUrl(Ljava/lang/String;)V

    goto :goto_1c
.end method

.method private removeCommentViews()V
    .registers 4

    .prologue
    .line 378
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 379
    iget-object v2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 380
    .local v1, "v":Landroid/view/View;
    instance-of v2, v1, Lcom/buzzfeed/android/ui/comments/CommentItemView;

    if-eqz v2, :cond_1a

    .line 381
    iget-object v2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 382
    add-int/lit8 v0, v0, -0x1

    .line 378
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 385
    .end local v1    # "v":Landroid/view/View;
    :cond_1d
    return-void
.end method


# virtual methods
.method public addCommentReplyView(Lcom/buzzfeed/android/data/comment/BuzzFeedComment;)V
    .registers 5
    .param p1, "reply"    # Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    .prologue
    .line 257
    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->createCommentReplyItemView(Lcom/buzzfeed/android/data/comment/BuzzFeedComment;)Lcom/buzzfeed/android/ui/comments/CommentReplyView;

    move-result-object v0

    .line 258
    .local v0, "view":Lcom/buzzfeed/android/ui/comments/CommentReplyView;
    invoke-direct {p0, v0}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->addViewToCommentContainer(Landroid/view/View;)V

    .line 259
    iget-object v1, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->getCommentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    return-void
.end method

.method public addCommentView(Lcom/buzzfeed/android/data/comment/Comment;)V
    .registers 7
    .param p1, "c"    # Lcom/buzzfeed/android/data/comment/Comment;

    .prologue
    .line 245
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/buzzfeed/android/ui/comments/CommentLayout;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".addComment"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "TAG":Ljava/lang/String;
    instance-of v3, p1, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    if-eqz v3, :cond_2d

    move-object v1, p1

    .line 247
    check-cast v1, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    .line 248
    .local v1, "bfComment":Lcom/buzzfeed/android/data/comment/BuzzFeedComment;
    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->createCommentItemView(Lcom/buzzfeed/android/data/comment/BuzzFeedComment;)Lcom/buzzfeed/android/ui/comments/CommentItemView;

    move-result-object v2

    .line 249
    .local v2, "cView":Lcom/buzzfeed/android/ui/comments/CommentItemView;
    invoke-direct {p0, v2}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->addViewToCommentContainer(Landroid/view/View;)V

    .line 250
    iget-object v3, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/buzzfeed/android/data/comment/Comment;->getCommentId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .end local v1    # "bfComment":Lcom/buzzfeed/android/data/comment/BuzzFeedComment;
    .end local v2    # "cView":Lcom/buzzfeed/android/ui/comments/CommentItemView;
    :goto_2c
    return-void

    .line 252
    :cond_2d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error adding comment for comment class type "

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

    invoke-static {v0, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c
.end method

.method public beginLoad(IZ)V
    .registers 5
    .param p1, "pos"    # I
    .param p2, "next"    # Z

    .prologue
    .line 230
    packed-switch p1, :pswitch_data_10

    .line 239
    :goto_3
    return-void

    .line 232
    :pswitch_4
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentLoader:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    iget-object v1, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mContent:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-virtual {v0, v1, p2}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->getBuzzFeedComments(Lcom/buzzfeed/toolkit/content/PostContent;Z)V

    .line 233
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->showProgress(Z)V

    goto :goto_3

    .line 230
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->removeCommentViews()V

    .line 373
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentLoader:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->getCommentList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 374
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 375
    return-void
.end method

.method public createCommentItemView(Lcom/buzzfeed/android/data/comment/BuzzFeedComment;)Lcom/buzzfeed/android/ui/comments/CommentItemView;
    .registers 5
    .param p1, "comment"    # Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    .prologue
    .line 268
    new-instance v0, Lcom/buzzfeed/android/ui/comments/CommentItemView;

    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/ui/comments/CommentItemView;-><init>(Landroid/content/Context;)V

    .line 269
    .local v0, "commentItemView":Lcom/buzzfeed/android/ui/comments/CommentItemView;
    iget-object v1, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentViewPresenter:Lcom/buzzfeed/android/ui/comments/CommentViewPresenter;

    iget-object v2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mContent:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-virtual {v1, v0, p1, v2}, Lcom/buzzfeed/android/ui/comments/CommentViewPresenter;->onBindView(Landroid/view/View;Lcom/buzzfeed/android/data/comment/Comment;Lcom/buzzfeed/toolkit/content/PostContent;)V

    .line 270
    iget-object v1, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentItemViewClickListener:Lcom/buzzfeed/android/ui/comments/CommentLayout$CommentViewOnClickListener;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/ui/comments/CommentItemView;->setCommentItemViewListener(Lcom/buzzfeed/android/ui/comments/CommentLayout$CommentViewOnClickListener;)V

    .line 271
    return-object v0
.end method

.method public createCommentReplyItemView(Lcom/buzzfeed/android/data/comment/BuzzFeedComment;)Lcom/buzzfeed/android/ui/comments/CommentReplyView;
    .registers 5
    .param p1, "comment"    # Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    .prologue
    .line 275
    new-instance v0, Lcom/buzzfeed/android/ui/comments/CommentReplyView;

    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/ui/comments/CommentReplyView;-><init>(Landroid/content/Context;)V

    .line 276
    .local v0, "replyView":Lcom/buzzfeed/android/ui/comments/CommentReplyView;
    iget-object v1, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentViewPresenter:Lcom/buzzfeed/android/ui/comments/CommentViewPresenter;

    iget-object v2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mContent:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-virtual {v1, v0, p1, v2}, Lcom/buzzfeed/android/ui/comments/CommentViewPresenter;->onBindView(Landroid/view/View;Lcom/buzzfeed/android/data/comment/Comment;Lcom/buzzfeed/toolkit/content/PostContent;)V

    .line 277
    iget-object v1, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentItemViewClickListener:Lcom/buzzfeed/android/ui/comments/CommentLayout$CommentViewOnClickListener;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/ui/comments/CommentReplyView;->setCommentItemViewListener(Lcom/buzzfeed/android/ui/comments/CommentLayout$CommentViewOnClickListener;)V

    .line 278
    return-object v0
.end method

.method public destroyCommentClickListener()V
    .registers 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentItemViewClickListener:Lcom/buzzfeed/android/ui/comments/CommentLayout$CommentViewOnClickListener;

    if-eqz v0, :cond_9

    .line 503
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentItemViewClickListener:Lcom/buzzfeed/android/ui/comments/CommentLayout$CommentViewOnClickListener;

    invoke-interface {v0}, Lcom/buzzfeed/android/ui/comments/CommentLayout$CommentViewOnClickListener;->destroy()V

    .line 505
    :cond_9
    return-void
.end method

.method public getCommentLoader()Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentLoader:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    return-object v0
.end method

.method public getHeader()Landroid/view/ViewGroup;
    .registers 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentHeader:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getPostContent()Lcom/buzzfeed/toolkit/content/PostContent;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mContent:Lcom/buzzfeed/toolkit/content/PostContent;

    return-object v0
.end method

.method public loadComments()V
    .registers 2

    .prologue
    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mIsShowingComments:Z

    .line 195
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->reloadBuzzFeedComments()V

    .line 196
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 178
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mIsAttachedToWindow:Z

    .line 180
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentLoader:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    invoke-virtual {v0, p0}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->setListener(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$CommentLoaderListener;)V

    .line 181
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mScrollListener:Lcom/buzzfeed/android/ui/comments/CommentLayout$ScrollListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 182
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentHeader:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->bringToFront()V

    .line 183
    return-void
.end method

.method public onCommentLoadComplete(ZII)V
    .registers 11
    .param p1, "success"    # Z
    .param p2, "type"    # I
    .param p3, "newStart"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 291
    invoke-virtual {p0, v3}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->showProgress(Z)V

    .line 292
    if-eqz p1, :cond_8a

    .line 293
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mIsShowingComments:Z

    .line 295
    iget-object v5, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mLoadMore:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentLoader:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    invoke-virtual {v2}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->hasMore()Z

    move-result v2

    if-eqz v2, :cond_6d

    move v2, v3

    :goto_16
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    if-nez p2, :cond_6f

    .line 297
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->getCommentsCache()Lcom/buzzfeed/android/data/comment/CommentListCache;

    move-result-object v2

    iget-object v5, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mContent:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-interface {v5}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/buzzfeed/android/data/comment/CommentListCache;->getCommentList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentList:Ljava/util/ArrayList;

    .line 302
    :goto_2d
    iget-object v2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentList:Ljava/util/ArrayList;

    if-eqz v2, :cond_78

    .line 303
    sget-object v2, Lcom/buzzfeed/android/ui/comments/CommentLayout;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    move v1, p3

    .local v1, "i":I
    :goto_50
    iget-object v2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_78

    .line 305
    iget-object v2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/data/comment/Comment;

    .line 306
    .local v0, "c":Lcom/buzzfeed/android/data/comment/Comment;
    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->addCommentView(Lcom/buzzfeed/android/data/comment/Comment;)V

    .line 307
    instance-of v2, v0, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    if-eqz v2, :cond_6a

    .line 308
    invoke-direct {p0, v1}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->onRepliesLoadComplete(I)V

    .line 304
    :cond_6a
    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    .end local v0    # "c":Lcom/buzzfeed/android/data/comment/Comment;
    .end local v1    # "i":I
    :cond_6d
    move v2, v4

    .line 295
    goto :goto_16

    .line 299
    :cond_6f
    iget-object v2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentLoader:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    invoke-virtual {v2}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->getCommentList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentList:Ljava/util/ArrayList;

    goto :goto_2d

    .line 313
    :cond_78
    iget-object v2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mNoCommentMessage:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentList:Ljava/util/ArrayList;

    if-eqz v5, :cond_87

    iget-object v5, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_87

    move v4, v3

    :cond_87
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 317
    :cond_8a
    iput-boolean v3, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mIsLoading:Z

    .line 318
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 187
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mIsAttachedToWindow:Z

    .line 189
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentLoader:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->setListener(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$CommentLoaderListener;)V

    .line 190
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mScrollListener:Lcom/buzzfeed/android/ui/comments/CommentLayout$ScrollListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 191
    return-void
.end method

.method public onFailure(Ljava/lang/String;Lcom/buzzfeed/android/data/comment/Comment;)V
    .registers 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "comment"    # Lcom/buzzfeed/android/data/comment/Comment;

    .prologue
    .line 335
    sget-object v0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Comment Action failed. Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "There was an error processing your request. "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 337
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 453
    instance-of v2, p1, Landroid/os/Bundle;

    if-eqz v2, :cond_2c

    move-object v0, p1

    .line 454
    check-cast v0, Landroid/os/Bundle;

    .line 455
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "SaveState.STATE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    instance-of v2, v2, Lcom/buzzfeed/android/ui/comments/CommentLayout$SaveState;

    if-eqz v2, :cond_2c

    .line 456
    const-string v2, "SaveState.STATE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/android/ui/comments/CommentLayout$SaveState;

    .line 457
    .local v1, "customViewState":Lcom/buzzfeed/android/ui/comments/CommentLayout$SaveState;
    iget-boolean v2, v1, Lcom/buzzfeed/android/ui/comments/CommentLayout$SaveState;->isShowingComments:Z

    iput-boolean v2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mIsShowingComments:Z

    .line 458
    iget-object v2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentTypeSpinner:Landroid/widget/Spinner;

    iget v3, v1, Lcom/buzzfeed/android/ui/comments/CommentLayout$SaveState;->selectedCommentTypePosition:I

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 459
    invoke-virtual {v1}, Lcom/buzzfeed/android/ui/comments/CommentLayout$SaveState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 466
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "customViewState":Lcom/buzzfeed/android/ui/comments/CommentLayout$SaveState;
    :goto_2b
    return-void

    .line 465
    :cond_2c
    sget-object v2, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_2b
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 443
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 444
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Lcom/buzzfeed/android/ui/comments/CommentLayout$SaveState;

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/buzzfeed/android/ui/comments/CommentLayout$SaveState;-><init>(Landroid/os/Parcelable;)V

    .line 445
    .local v1, "state":Lcom/buzzfeed/android/ui/comments/CommentLayout$SaveState;
    iget-object v2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    iput v2, v1, Lcom/buzzfeed/android/ui/comments/CommentLayout$SaveState;->selectedCommentTypePosition:I

    .line 446
    iget-boolean v2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mIsShowingComments:Z

    iput-boolean v2, v1, Lcom/buzzfeed/android/ui/comments/CommentLayout$SaveState;->isShowingComments:Z

    .line 447
    const-string v2, "SaveState.STATE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 448
    return-object v0
.end method

.method public onSuccess(Ljava/lang/String;Lcom/buzzfeed/android/data/comment/Comment;)V
    .registers 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "comment"    # Lcom/buzzfeed/android/data/comment/Comment;

    .prologue
    .line 341
    new-instance v0, Lcom/buzzfeed/android/ui/comments/CommentLayout$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/buzzfeed/android/ui/comments/CommentLayout$4;-><init>(Lcom/buzzfeed/android/ui/comments/CommentLayout;Ljava/lang/String;Lcom/buzzfeed/android/data/comment/Comment;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->post(Ljava/lang/Runnable;)Z

    .line 361
    return-void
.end method

.method public refreshHeader()V
    .registers 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mContent:Lcom/buzzfeed/toolkit/content/PostContent;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mContent:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/PostContent;->isCommentsEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 171
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mResponseButton:Lcom/buzzfeed/android/ui/widget/TextCardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/ui/widget/TextCardView;->setVisibility(I)V

    .line 173
    :cond_12
    return-void
.end method

.method public reloadBuzzFeedComments()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 199
    iget-boolean v2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mIsShowingComments:Z

    if-eqz v2, :cond_a

    .line 200
    iget-boolean v2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mIsLoading:Z

    if-eqz v2, :cond_b

    .line 215
    :cond_a
    :goto_a
    return-void

    .line 202
    :cond_b
    iput-boolean v5, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mIsLoading:Z

    .line 204
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->getCommentsCache()Lcom/buzzfeed/android/data/comment/CommentListCache;

    move-result-object v2

    iget-object v3, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mContent:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-interface {v3}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/buzzfeed/android/data/comment/CommentListCache;->getCommentList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 205
    .local v1, "comments":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/android/data/comment/Comment;>;"
    if-eqz v1, :cond_24

    .line 206
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->removeCommentViews()V

    .line 207
    invoke-virtual {p0, v5, v4, v4}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->onCommentLoadComplete(ZII)V

    goto :goto_a

    .line 208
    :cond_24
    iget-object v2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentLoader:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    invoke-virtual {v2}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->isLoading()Z

    move-result v2

    if-nez v2, :cond_a

    .line 209
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->getCommentsCache()Lcom/buzzfeed/android/data/comment/CommentListCache;

    move-result-object v2

    iget-object v3, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mContent:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-interface {v3}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/buzzfeed/android/data/comment/CommentListCache;->getCommentList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 210
    .local v0, "cachedList":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/android/data/comment/Comment;>;"
    iget-object v2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentList:Ljava/util/ArrayList;

    if-eqz v2, :cond_54

    iget-object v2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_54

    if-eqz v0, :cond_54

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_a

    .line 211
    :cond_54
    invoke-virtual {p0, v4, v4}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->beginLoad(IZ)V

    goto :goto_a
.end method

.method public setCommentLoader(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;)V
    .registers 3
    .param p1, "commentLoader"    # Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentLoader:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    .line 219
    iget-boolean v0, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mIsAttachedToWindow:Z

    if-eqz v0, :cond_b

    .line 220
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentLoader:Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;

    invoke-virtual {v0, p0}, Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;->setListener(Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$CommentLoaderListener;)V

    .line 222
    :cond_b
    return-void
.end method

.method public setCommentViewOnClickListener(Lcom/buzzfeed/android/ui/comments/CommentLayout$CommentViewOnClickListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/buzzfeed/android/ui/comments/CommentLayout$CommentViewOnClickListener;

    .prologue
    .line 489
    iget-object v3, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentItemViewClickListener:Lcom/buzzfeed/android/ui/comments/CommentLayout$CommentViewOnClickListener;

    if-eq v3, p1, :cond_24

    .line 490
    iput-object p1, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentItemViewClickListener:Lcom/buzzfeed/android/ui/comments/CommentLayout$CommentViewOnClickListener;

    .line 491
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v3, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_24

    .line 492
    iget-object v3, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 493
    .local v2, "v":Landroid/view/View;
    instance-of v3, v2, Lcom/buzzfeed/android/ui/comments/CommentItemView;

    if-eqz v3, :cond_21

    move-object v1, v2

    .line 494
    check-cast v1, Lcom/buzzfeed/android/ui/comments/CommentItemView;

    .line 495
    .local v1, "itemView":Lcom/buzzfeed/android/ui/comments/CommentItemView;
    iget-object v3, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentItemViewClickListener:Lcom/buzzfeed/android/ui/comments/CommentLayout$CommentViewOnClickListener;

    invoke-virtual {v1, v3}, Lcom/buzzfeed/android/ui/comments/CommentItemView;->setCommentItemViewListener(Lcom/buzzfeed/android/ui/comments/CommentLayout$CommentViewOnClickListener;)V

    .line 491
    .end local v1    # "itemView":Lcom/buzzfeed/android/ui/comments/CommentItemView;
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 499
    .end local v0    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_24
    return-void
.end method

.method public setPostContent(Lcom/buzzfeed/toolkit/content/PostContent;)V
    .registers 2
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/PostContent;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mContent:Lcom/buzzfeed/toolkit/content/PostContent;

    .line 167
    return-void
.end method

.method public showProgress(Z)V
    .registers 4
    .param p1, "show"    # Z

    .prologue
    .line 282
    if-eqz p1, :cond_9

    .line 283
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mSpinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 287
    :goto_8
    return-void

    .line 285
    :cond_9
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout;->mSpinner:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_8
.end method
