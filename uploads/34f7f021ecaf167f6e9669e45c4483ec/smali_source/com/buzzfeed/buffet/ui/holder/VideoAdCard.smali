.class public Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;
.super Lcom/buzzfeed/buffet/ui/holder/VideoCard;
.source "VideoAdCard.java"


# static fields
.field private static final SPONSORED:Ljava/lang/String; = "sponsored"


# instance fields
.field private final mByLinePrefix:Landroid/widget/TextView;

.field private mPromotedLayout:Landroid/view/ViewGroup;

.field private mSponsorAvatar:Landroid/widget/ImageView;

.field private mSponsorName:Landroid/widget/TextView;

.field private mVideoAdContent:Lcom/buzzfeed/toolkit/content/VideoAdContent;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;-><init>(Landroid/view/View;)V

    .line 27
    const v0, 0x3fe38ef3

    invoke-virtual {p0, v0}, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->onConfigureContainerDimensions(F)V

    .line 28
    sget v0, Lcom/buzzfeed/buffet/R$id;->promoted_layout:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->mPromotedLayout:Landroid/view/ViewGroup;

    .line 29
    sget v0, Lcom/buzzfeed/buffet/R$id;->sponsor_name:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->mSponsorName:Landroid/widget/TextView;

    .line 30
    sget v0, Lcom/buzzfeed/buffet/R$id;->promoted_image:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->mSponsorAvatar:Landroid/widget/ImageView;

    .line 31
    sget v0, Lcom/buzzfeed/buffet/R$id;->byline_prefix:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->mByLinePrefix:Landroid/widget/TextView;

    .line 32
    return-void
.end method


# virtual methods
.method public getAdContent()Lcom/buzzfeed/toolkit/content/VideoAdContent;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->mVideoAdContent:Lcom/buzzfeed/toolkit/content/VideoAdContent;

    return-object v0
.end method

.method public getContainer()Landroid/view/TextureView;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->mVideoSurface:Landroid/view/TextureView;

    return-object v0
.end method

.method public isAd()Z
    .registers 2

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public onViewHolderRecycled()V
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->mSponsorAvatar:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->clear(Landroid/view/View;)V

    .line 106
    return-void
.end method

.method public populateFrom(Lcom/buzzfeed/toolkit/content/FlowItem;)V
    .registers 8
    .param p1, "flowItem"    # Lcom/buzzfeed/toolkit/content/FlowItem;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    const/high16 v3, 0x40000000

    .line 36
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/VideoAdContent;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->mVideoAdContent:Lcom/buzzfeed/toolkit/content/VideoAdContent;

    .line 39
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->mAudioIcon:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->mVideoAdContent:Lcom/buzzfeed/toolkit/content/VideoAdContent;

    if-eqz v0, :cond_9d

    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->mVideoAdContent:Lcom/buzzfeed/toolkit/content/VideoAdContent;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/VideoAdContent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 42
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->mVideoAdContent:Lcom/buzzfeed/toolkit/content/VideoAdContent;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/VideoAdContent;->getAspectRatio()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->onConfigureContainerDimensions(F)V

    .line 43
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->mPromotedLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->mByLinePrefix:Landroid/widget/TextView;

    sget v1, Lcom/buzzfeed/buffet/R$string;->promoted_by:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 45
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->mSponsorName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->mVideoAdContent:Lcom/buzzfeed/toolkit/content/VideoAdContent;

    invoke-interface {v1}, Lcom/buzzfeed/toolkit/content/VideoAdContent;->getSponsorDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->mRecipeButton:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->mHeadline:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->mVideoAdContent:Lcom/buzzfeed/toolkit/content/VideoAdContent;

    invoke-interface {v1}, Lcom/buzzfeed/toolkit/content/VideoAdContent;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->mCoverImageView:Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->mCoverImageView:Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;

    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->mVideoAdContent:Lcom/buzzfeed/toolkit/content/VideoAdContent;

    invoke-interface {v2}, Lcom/buzzfeed/toolkit/content/VideoAdContent;->getCoverImage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/buzzfeed/toolkit/util/GlideUtils;->loadImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->mAudioIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->mVideoAdContent:Lcom/buzzfeed/toolkit/content/VideoAdContent;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/VideoAdContent;->promotionType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sponsored"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 52
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->mSponsorAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->mSponsorAvatar:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->mVideoAdContent:Lcom/buzzfeed/toolkit/content/VideoAdContent;

    invoke-interface {v2}, Lcom/buzzfeed/toolkit/content/VideoAdContent;->getSponsorUserImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/buzzfeed/toolkit/util/GlideUtils;->loadImageRounded(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;F)V

    .line 54
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->mShowImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->mVideoAdContent:Lcom/buzzfeed/toolkit/content/VideoAdContent;

    invoke-interface {v2}, Lcom/buzzfeed/toolkit/content/VideoAdContent;->getShowAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/buzzfeed/toolkit/util/GlideUtils;->loadImageRounded(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;F)V

    .line 60
    :goto_9a
    invoke-virtual {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->setupClickListeners(Lcom/buzzfeed/toolkit/content/FlowItem;)V

    .line 62
    :cond_9d
    return-void

    .line 56
    :cond_9e
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->mSponsorAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->mShowImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->mVideoAdContent:Lcom/buzzfeed/toolkit/content/VideoAdContent;

    invoke-interface {v2}, Lcom/buzzfeed/toolkit/content/VideoAdContent;->getSponsorUserImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/buzzfeed/toolkit/util/GlideUtils;->loadImageRounded(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;F)V

    goto :goto_9a
.end method

.method public bridge synthetic populateFrom(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 17
    check-cast p1, Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->populateFrom(Lcom/buzzfeed/toolkit/content/FlowItem;)V

    return-void
.end method

.method protected setupClickListeners(Lcom/buzzfeed/toolkit/content/FlowItem;)V
    .registers 4
    .param p1, "flowItem"    # Lcom/buzzfeed/toolkit/content/FlowItem;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->itemView:Landroid/view/View;

    new-instance v1, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard$1;

    invoke-direct {v1, p0, p1}, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard$1;-><init>(Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;Lcom/buzzfeed/toolkit/content/FlowItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->mVideoAdContent:Lcom/buzzfeed/toolkit/content/VideoAdContent;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/VideoAdContent;->getShareUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 88
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->mShareButtonWrapper:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->mShareButtonWrapper:Landroid/view/ViewGroup;

    new-instance v1, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard$2;

    invoke-direct {v1, p0, p1}, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard$2;-><init>(Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;Lcom/buzzfeed/toolkit/content/FlowItem;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    :goto_26
    return-void

    .line 98
    :cond_27
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->mShareButtonWrapper:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->mShareButtonWrapper:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_26
.end method
