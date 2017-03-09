.class public Lcom/buzzfeed/buffet/ui/holder/AdCard;
.super Lcom/buzzfeed/buffet/ui/holder/PostCard;
.source "AdCard.java"


# instance fields
.field protected mAdContainer:Landroid/view/ViewGroup;

.field protected mSponsorImage:Landroid/widget/ImageView;

.field protected mSponsorName:Landroid/widget/TextView;

.field protected mSponsorPrefix:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isShrinked"    # Z

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/buffet/ui/holder/PostCard;-><init>(Landroid/view/View;Z)V

    .line 29
    sget v0, Lcom/buzzfeed/buffet/R$id;->post_card_ad_container:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/AdCard;->mAdContainer:Landroid/view/ViewGroup;

    .line 30
    sget v0, Lcom/buzzfeed/buffet/R$id;->post_card_sponsor_image:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/AdCard;->mSponsorImage:Landroid/widget/ImageView;

    .line 31
    sget v0, Lcom/buzzfeed/buffet/R$id;->post_card_sponsor_prefix:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/AdCard;->mSponsorPrefix:Landroid/widget/TextView;

    .line 32
    sget v0, Lcom/buzzfeed/buffet/R$id;->post_card_sponsor_name:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/AdCard;->mSponsorName:Landroid/widget/TextView;

    .line 33
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/AdCard;->mAdContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 34
    return-void
.end method


# virtual methods
.method public isAd()Z
    .registers 2

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public onViewHolderRecycled()V
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/AdCard;->mSponsorImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->clear(Landroid/view/View;)V

    .line 88
    return-void
.end method

.method public populateFrom(Lcom/buzzfeed/toolkit/content/FlowItem;)V
    .registers 8
    .param p1, "flowItem"    # Lcom/buzzfeed/toolkit/content/FlowItem;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 38
    invoke-super {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/PostCard;->populateFrom(Lcom/buzzfeed/toolkit/content/FlowItem;)V

    .line 39
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/AdContent;

    .line 42
    .local v0, "adContent":Lcom/buzzfeed/toolkit/content/AdContent;
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/AdCard;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/buzzfeed/toolkit/util/DeviceUtil;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 43
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/AdCard;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 44
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/AdCard;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinLines(I)V

    .line 50
    :goto_22
    iget-boolean v2, p0, Lcom/buzzfeed/buffet/ui/holder/AdCard;->mIsShrinked:Z

    if-eqz v2, :cond_2b

    .line 51
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/AdCard;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMinLines(I)V

    .line 54
    :cond_2b
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/AdCard;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/buzzfeed/buffet/R$dimen;->buffet_card_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 55
    .local v1, "minHeightPx":I
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/AdCard;->mWrapper:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 58
    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/AdContent;->isBackfillAd()Z

    move-result v2

    if-nez v2, :cond_9f

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/AdContent;->getSponsorDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9f

    .line 59
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/AdCard;->mAdContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 60
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/AdCard;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/AdCard;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/buzzfeed/buffet/ui/holder/AdCard;->mSponsorImage:Landroid/widget/ImageView;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/AdContent;->getSponsorUserImageUrl()Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x40000000

    invoke-static {v2, v3, v4, v5}, Lcom/buzzfeed/toolkit/util/GlideUtils;->loadImageRounded(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;F)V

    .line 64
    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/AdContent;->getBylinePrefix()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_97

    .line 65
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/AdCard;->mSponsorPrefix:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/AdContent;->getBylinePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    :goto_7e
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/AdCard;->mSponsorName:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/AdContent;->getSponsorDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :goto_8b
    return-void

    .line 46
    .end local v1    # "minHeightPx":I
    :cond_8c
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/AdCard;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 47
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/AdCard;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setMinLines(I)V

    goto :goto_22

    .line 67
    .restart local v1    # "minHeightPx":I
    :cond_97
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/AdCard;->mSponsorPrefix:Landroid/widget/TextView;

    sget v3, Lcom/buzzfeed/buffet/R$string;->promoted_by:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_7e

    .line 71
    :cond_9f
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/AdCard;->mAdContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 72
    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/AdContent;->getSponsorDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b4

    .line 73
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/AdCard;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8b

    .line 75
    :cond_b4
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/AdCard;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8b
.end method

.method public bridge synthetic populateFrom(Ljava/lang/Object;)V
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 20
    check-cast p1, Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/AdCard;->populateFrom(Lcom/buzzfeed/toolkit/content/FlowItem;)V

    return-void
.end method
