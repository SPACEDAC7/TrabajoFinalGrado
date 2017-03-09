.class public Lcom/buzzfeed/android/ui/comments/CommentItemView;
.super Landroid/widget/RelativeLayout;
.source "CommentItemView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private avatarImageView:Lcom/buzzfeed/toolkit/ui/view/CircularImageView;

.field private commentImageView:Landroid/widget/ImageView;

.field private commentTextView:Landroid/widget/TextView;

.field private hateButton:Landroid/view/View;

.field private hateCountView:Landroid/widget/TextView;

.field private heartButton:Landroid/view/View;

.field private loveCountView:Landroid/widget/TextView;

.field private mComment:Lcom/buzzfeed/android/data/comment/Comment;

.field private mListener:Lcom/buzzfeed/android/ui/comments/CommentLayout$CommentViewOnClickListener;

.field private replyButton:Landroid/view/View;

.field private shareButton:Landroid/view/View;

.field private timestampView:Landroid/widget/TextView;

.field private userNameView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-class v0, Lcom/buzzfeed/android/ui/comments/CommentItemView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/ui/comments/CommentItemView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/comments/CommentItemView;->initViews()V

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/android/ui/comments/CommentItemView;)Lcom/buzzfeed/android/ui/comments/CommentLayout$CommentViewOnClickListener;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/comments/CommentItemView;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/comments/CommentItemView;->getCommentItemViewClickListener()Lcom/buzzfeed/android/ui/comments/CommentLayout$CommentViewOnClickListener;

    move-result-object v0

    return-object v0
.end method

.method private getCommentItemViewClickListener()Lcom/buzzfeed/android/ui/comments/CommentLayout$CommentViewOnClickListener;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentItemView;->mListener:Lcom/buzzfeed/android/ui/comments/CommentLayout$CommentViewOnClickListener;

    return-object v0
.end method

.method private initViews()V
    .registers 5

    .prologue
    const/4 v3, 0x4

    .line 34
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/comments/CommentItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/comments/CommentItemView;->getLayoutResourceId()I

    move-result v2

    invoke-static {v1, v2, p0}, Lcom/buzzfeed/android/ui/comments/CommentItemView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 35
    const v1, 0x7f11012c

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/ui/comments/CommentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/buzzfeed/android/ui/comments/CommentItemView;->commentImageView:Landroid/widget/ImageView;

    .line 36
    const v1, 0x7f110122

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/ui/comments/CommentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/buzzfeed/android/ui/comments/CommentItemView;->commentTextView:Landroid/widget/TextView;

    .line 37
    const v1, 0x7f110129

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/ui/comments/CommentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/toolkit/ui/view/CircularImageView;

    iput-object v1, p0, Lcom/buzzfeed/android/ui/comments/CommentItemView;->avatarImageView:Lcom/buzzfeed/toolkit/ui/view/CircularImageView;

    .line 38
    const v1, 0x7f11012b

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/ui/comments/CommentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/buzzfeed/android/ui/comments/CommentItemView;->userNameView:Landroid/widget/TextView;

    .line 39
    const v1, 0x7f110127

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/ui/comments/CommentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/buzzfeed/android/ui/comments/CommentItemView;->timestampView:Landroid/widget/TextView;

    .line 40
    const v1, 0x7f110121

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/ui/comments/CommentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/android/ui/comments/CommentItemView;->replyButton:Landroid/view/View;

    .line 41
    const v1, 0x7f1100a6

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/ui/comments/CommentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/android/ui/comments/CommentItemView;->shareButton:Landroid/view/View;

    .line 42
    const v1, 0x7f110123

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/ui/comments/CommentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/android/ui/comments/CommentItemView;->heartButton:Landroid/view/View;

    .line 43
    const v1, 0x7f110124

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/ui/comments/CommentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/buzzfeed/android/ui/comments/CommentItemView;->loveCountView:Landroid/widget/TextView;

    .line 44
    iget-object v1, p0, Lcom/buzzfeed/android/ui/comments/CommentItemView;->loveCountView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    const v1, 0x7f110125

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/ui/comments/CommentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/android/ui/comments/CommentItemView;->hateButton:Landroid/view/View;

    .line 46
    const v1, 0x7f110126

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/ui/comments/CommentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/buzzfeed/android/ui/comments/CommentItemView;->hateCountView:Landroid/widget/TextView;

    .line 47
    iget-object v1, p0, Lcom/buzzfeed/android/ui/comments/CommentItemView;->hateCountView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    new-instance v0, Lcom/buzzfeed/android/ui/comments/CommentItemView$1;

    invoke-direct {v0, p0}, Lcom/buzzfeed/android/ui/comments/CommentItemView$1;-><init>(Lcom/buzzfeed/android/ui/comments/CommentItemView;)V

    .line 58
    .local v0, "buttonClickListener":Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/buzzfeed/android/ui/comments/CommentItemView;->replyButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v1, p0, Lcom/buzzfeed/android/ui/comments/CommentItemView;->replyButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 60
    iget-object v1, p0, Lcom/buzzfeed/android/ui/comments/CommentItemView;->shareButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v1, p0, Lcom/buzzfeed/android/ui/comments/CommentItemView;->heartButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v1, p0, Lcom/buzzfeed/android/ui/comments/CommentItemView;->heartButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 63
    iget-object v1, p0, Lcom/buzzfeed/android/ui/comments/CommentItemView;->hateButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v1, p0, Lcom/buzzfeed/android/ui/comments/CommentItemView;->hateButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 65
    return-void
.end method


# virtual methods
.method public getAvatarImageView()Lcom/buzzfeed/toolkit/ui/view/CircularImageView;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentItemView;->avatarImageView:Lcom/buzzfeed/toolkit/ui/view/CircularImageView;

    return-object v0
.end method

.method public getComment()Lcom/buzzfeed/android/data/comment/Comment;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentItemView;->mComment:Lcom/buzzfeed/android/data/comment/Comment;

    return-object v0
.end method

.method public getCommentImageView()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentItemView;->commentImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getCommentTextView()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentItemView;->commentTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getHateButton()Landroid/view/View;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentItemView;->hateButton:Landroid/view/View;

    return-object v0
.end method

.method public getHateCountView()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentItemView;->hateCountView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getHeartButton()Landroid/view/View;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentItemView;->heartButton:Landroid/view/View;

    return-object v0
.end method

.method protected getLayoutResourceId()I
    .registers 2

    .prologue
    .line 68
    const v0, 0x7f030051

    return v0
.end method

.method public getLoveCountView()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentItemView;->loveCountView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getReplyButton()Landroid/view/View;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentItemView;->replyButton:Landroid/view/View;

    return-object v0
.end method

.method public getShareButton()Landroid/view/View;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentItemView;->shareButton:Landroid/view/View;

    return-object v0
.end method

.method public getTimestampView()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentItemView;->timestampView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getUserNameView()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentItemView;->userNameView:Landroid/widget/TextView;

    return-object v0
.end method

.method public setComment(Lcom/buzzfeed/android/data/comment/Comment;)V
    .registers 2
    .param p1, "comment"    # Lcom/buzzfeed/android/data/comment/Comment;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/buzzfeed/android/ui/comments/CommentItemView;->mComment:Lcom/buzzfeed/android/data/comment/Comment;

    .line 73
    return-void
.end method

.method public setCommentItemViewListener(Lcom/buzzfeed/android/ui/comments/CommentLayout$CommentViewOnClickListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/buzzfeed/android/ui/comments/CommentLayout$CommentViewOnClickListener;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/buzzfeed/android/ui/comments/CommentItemView;->mListener:Lcom/buzzfeed/android/ui/comments/CommentLayout$CommentViewOnClickListener;

    .line 127
    return-void
.end method
