.class public Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;
.super Landroid/widget/RelativeLayout;
.source "VideoHeaderView.java"


# instance fields
.field private mAvatarImageView:Landroid/widget/ImageView;

.field private mPromotedByTextView:Landroid/widget/TextView;

.field private mSponsorImageView:Landroid/widget/ImageView;

.field private mSponsorNameTextView:Landroid/widget/TextView;

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;->initialize()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;->initialize()V

    .line 45
    return-void
.end method


# virtual methods
.method public getTitleTextView()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;->mTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected initialize()V
    .registers 3

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/buzzfeed/mediaviewer/R$layout;->video_viewer_header:I

    invoke-static {v0, v1, p0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 49
    sget v0, Lcom/buzzfeed/mediaviewer/R$id;->titleTextView:I

    invoke-virtual {p0, v0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;->mTitleTextView:Landroid/widget/TextView;

    .line 50
    sget v0, Lcom/buzzfeed/mediaviewer/R$id;->promotedByTextView:I

    invoke-virtual {p0, v0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;->mPromotedByTextView:Landroid/widget/TextView;

    .line 51
    sget v0, Lcom/buzzfeed/mediaviewer/R$id;->sponsorNameTextView:I

    invoke-virtual {p0, v0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;->mSponsorNameTextView:Landroid/widget/TextView;

    .line 52
    sget v0, Lcom/buzzfeed/mediaviewer/R$id;->avatarImageView:I

    invoke-virtual {p0, v0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;->mAvatarImageView:Landroid/widget/ImageView;

    .line 53
    sget v0, Lcom/buzzfeed/mediaviewer/R$id;->sponsorImageView:I

    invoke-virtual {p0, v0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;->mSponsorImageView:Landroid/widget/ImageView;

    .line 54
    return-void
.end method

.method public setAvatarImageUrl(Ljava/lang/String;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 66
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;->mAvatarImageView:Landroid/widget/ImageView;

    const/high16 v2, 0x40000000

    invoke-static {v0, v1, p1, v2}, Lcom/buzzfeed/toolkit/util/GlideUtils;->loadImageRounded(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;F)V

    .line 67
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;->mAvatarImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    :goto_17
    return-void

    .line 69
    :cond_18
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;->mAvatarImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_17
.end method

.method public setShowAvatarClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 94
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;->mAvatarImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    return-void
.end method

.method public setSponsorImageUrl(Ljava/lang/String;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 75
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;->mSponsorImageView:Landroid/widget/ImageView;

    const/high16 v2, 0x40000000

    invoke-static {v0, v1, p1, v2}, Lcom/buzzfeed/toolkit/util/GlideUtils;->loadImageRounded(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;F)V

    .line 76
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;->mSponsorImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    :goto_17
    return-void

    .line 78
    :cond_18
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;->mSponsorImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_17
.end method

.method public setSponsorName(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 84
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;->mSponsorNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;->mSponsorNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;->mPromotedByTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    :goto_18
    return-void

    .line 88
    :cond_19
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;->mSponsorNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;->mPromotedByTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_18
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method
