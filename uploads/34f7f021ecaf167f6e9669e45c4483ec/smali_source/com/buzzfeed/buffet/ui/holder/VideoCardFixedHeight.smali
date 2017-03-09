.class public Lcom/buzzfeed/buffet/ui/holder/VideoCardFixedHeight;
.super Lcom/buzzfeed/buffet/ui/holder/VideoCard;
.source "VideoCardFixedHeight.java"


# instance fields
.field private mIsTablet:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;-><init>(Landroid/view/View;)V

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/DeviceUtil;->isTablet(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCardFixedHeight;->mIsTablet:Z

    .line 23
    invoke-direct {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/VideoCardFixedHeight;->configureFixedHeightVideoLayout(Landroid/view/View;)V

    .line 24
    return-void
.end method

.method private configureFixedHeightVideoLayout(Landroid/view/View;)V
    .registers 14
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 30
    sget v10, Lcom/buzzfeed/buffet/R$id;->card_view:I

    invoke-static {p1, v10}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 32
    .local v4, "rootView":Landroid/view/ViewGroup;
    invoke-static {}, Lcom/buzzfeed/toolkit/util/UIUtil;->getScreenHeight()I

    move-result v5

    .line 33
    .local v5, "screenHeight":I
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/buzzfeed/toolkit/util/UIUtil;->getActionBarHeight(Landroid/content/Context;)I

    move-result v0

    .line 34
    .local v0, "actionBarHeight":I
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/buzzfeed/toolkit/util/UIUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v6

    .line 36
    .local v6, "statusBarHeight":I
    sget v10, Lcom/buzzfeed/buffet/R$id;->video_card_title_layout:I

    invoke-static {v4, v10}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 37
    .local v3, "headerLayoutHeight":I
    sget v10, Lcom/buzzfeed/buffet/R$id;->video_card_footer_layout:I

    invoke-static {v4, v10}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 39
    .local v2, "footerLayoutHeight":I
    add-int v10, v0, v6

    add-int/2addr v10, v3

    add-int/2addr v10, v2

    sub-int v1, v5, v10

    .line 41
    .local v1, "cardHeight":I
    sget v10, Lcom/buzzfeed/buffet/R$id;->card_video_container:I

    invoke-static {v4, v10}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/buzzfeed/toolkit/ui/view/ForceAspectFrameLayout;

    .line 42
    .local v9, "thumbnailView":Lcom/buzzfeed/toolkit/ui/view/ForceAspectFrameLayout;
    iget-boolean v10, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCardFixedHeight;->mIsTablet:Z

    if-eqz v10, :cond_55

    const v7, 0x3ecccccd

    .line 44
    .local v7, "tabletResizeMultiplier":F
    :goto_45
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    int-to-float v11, v1

    mul-float/2addr v11, v7

    .line 46
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-direct {v8, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47
    .local v8, "thumbnailLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v9, v8}, Lcom/buzzfeed/toolkit/ui/view/ForceAspectFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    return-void

    .line 42
    .end local v7    # "tabletResizeMultiplier":F
    .end local v8    # "thumbnailLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_55
    const/high16 v7, 0x3f800000

    goto :goto_45
.end method


# virtual methods
.method protected onConfigureContainerDimensions(F)V
    .registers 3
    .param p1, "aspectRatio"    # F

    .prologue
    .line 59
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCardFixedHeight;->mCoverImageView:Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;->setAspectRatio(F)V

    .line 60
    invoke-virtual {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/VideoCardFixedHeight;->updateVideoAspectRatio(F)V

    .line 61
    return-void
.end method

.method protected updateCoverImage()V
    .registers 4

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCardFixedHeight;->mIsTablet:Z

    if-eqz v0, :cond_8

    .line 66
    invoke-super {p0}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->updateCoverImage()V

    .line 73
    :cond_7
    :goto_7
    return-void

    .line 67
    :cond_8
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCardFixedHeight;->mVideoContent:Lcom/buzzfeed/toolkit/content/VideoContent;

    if-eqz v0, :cond_7

    .line 68
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCardFixedHeight;->itemView:Landroid/view/View;

    .line 69
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCardFixedHeight;->mCoverImageView:Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;

    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCardFixedHeight;->mVideoContent:Lcom/buzzfeed/toolkit/content/VideoContent;

    .line 71
    invoke-interface {v2}, Lcom/buzzfeed/toolkit/content/VideoContent;->getThumbnailStack()Ljava/util/Stack;

    move-result-object v2

    .line 68
    invoke-static {v0, v1, v2}, Lcom/buzzfeed/toolkit/util/GlideUtils;->loadImageStack(Landroid/content/Context;Landroid/widget/ImageView;Ljava/util/Stack;)V

    goto :goto_7
.end method
