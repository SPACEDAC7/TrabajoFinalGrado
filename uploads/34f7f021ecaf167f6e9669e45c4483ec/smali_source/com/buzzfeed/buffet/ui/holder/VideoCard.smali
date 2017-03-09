.class public Lcom/buzzfeed/buffet/ui/holder/VideoCard;
.super Lcom/buzzfeed/buffet/ui/holder/BaseCard;
.source "VideoCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;
    }
.end annotation


# instance fields
.field private mAspectRatio:F

.field protected mAudioIcon:Landroid/widget/ImageView;

.field protected mCoverImageView:Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;

.field private mCurrentUiState:Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;

.field private mErrorView:Landroid/view/ViewGroup;

.field protected mHeadline:Landroid/widget/TextView;

.field private mPlayButton:Landroid/view/ViewGroup;

.field private mProgressSpinner:Landroid/widget/ProgressBar;

.field protected mRecipeButton:Landroid/widget/TextView;

.field private mReloadVideoButton:Landroid/widget/Button;

.field protected mShareButtonWrapper:Landroid/view/ViewGroup;

.field protected mShowImage:Landroid/widget/ImageView;

.field protected mShowImageWrapper:Landroid/view/ViewGroup;

.field private mTrendingView:Landroid/view/View;

.field private mVideoContainer:Lcom/buzzfeed/toolkit/ui/view/ForceAspectFrameLayout;

.field protected mVideoContent:Lcom/buzzfeed/toolkit/content/VideoContent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mVideoSurface:Landroid/view/TextureView;

.field private mVideoSurfaceWrapper:Lcom/google/android/exoplayer/AspectRatioFrameLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/BaseCard;-><init>(Landroid/view/View;)V

    .line 74
    sget v0, Lcom/buzzfeed/buffet/R$id;->card_video_container:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/ui/view/ForceAspectFrameLayout;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mVideoContainer:Lcom/buzzfeed/toolkit/ui/view/ForceAspectFrameLayout;

    .line 75
    sget v0, Lcom/buzzfeed/buffet/R$id;->card_video_cover_image:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mCoverImageView:Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;

    .line 76
    sget v0, Lcom/buzzfeed/buffet/R$id;->video_card_title:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mHeadline:Landroid/widget/TextView;

    .line 77
    sget v0, Lcom/buzzfeed/buffet/R$id;->video_card_title_image:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mShowImage:Landroid/widget/ImageView;

    .line 78
    sget v0, Lcom/buzzfeed/buffet/R$id;->video_card_recipe:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mRecipeButton:Landroid/widget/TextView;

    .line 79
    sget v0, Lcom/buzzfeed/buffet/R$id;->video_card_title_image_wrapper:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mShowImageWrapper:Landroid/view/ViewGroup;

    .line 80
    sget v0, Lcom/buzzfeed/buffet/R$id;->share_button_wrapper:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mShareButtonWrapper:Landroid/view/ViewGroup;

    .line 81
    sget v0, Lcom/buzzfeed/buffet/R$id;->video_card_progress_spinner:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mProgressSpinner:Landroid/widget/ProgressBar;

    .line 82
    sget v0, Lcom/buzzfeed/buffet/R$id;->video_card_play_button:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mPlayButton:Landroid/view/ViewGroup;

    .line 83
    sget v0, Lcom/buzzfeed/buffet/R$id;->card_video_error_view:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mErrorView:Landroid/view/ViewGroup;

    .line 84
    sget v0, Lcom/buzzfeed/buffet/R$id;->card_video_reload_button:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mReloadVideoButton:Landroid/widget/Button;

    .line 85
    sget v0, Lcom/buzzfeed/buffet/R$id;->card_video_texture_view:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mVideoSurface:Landroid/view/TextureView;

    .line 86
    sget v0, Lcom/buzzfeed/buffet/R$id;->card_video_surface_wrapper:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/AspectRatioFrameLayout;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mVideoSurfaceWrapper:Lcom/google/android/exoplayer/AspectRatioFrameLayout;

    .line 87
    sget v0, Lcom/buzzfeed/buffet/R$id;->card_video_audio_icon:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mAudioIcon:Landroid/widget/ImageView;

    .line 88
    sget v0, Lcom/buzzfeed/buffet/R$id;->video_card_trending_text:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mTrendingView:Landroid/view/View;

    .line 89
    return-void
.end method

.method private setTrendingBadgeVisibility(Z)V
    .registers 4
    .param p1, "shown"    # Z

    .prologue
    .line 262
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mTrendingView:Landroid/view/View;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 263
    return-void

    .line 262
    :cond_9
    const/16 v0, 0x8

    goto :goto_5
.end method

.method private setupHeadlineText()V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mVideoContent:Lcom/buzzfeed/toolkit/content/VideoContent;

    if-nez v0, :cond_5

    .line 233
    :cond_4
    :goto_4
    return-void

    .line 229
    :cond_5
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mHeadline:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mVideoContent:Lcom/buzzfeed/toolkit/content/VideoContent;

    invoke-interface {v1}, Lcom/buzzfeed/toolkit/content/VideoContent;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    invoke-static {}, Lcom/buzzfeed/toolkit/util/VersionUtil;->hasLollipop()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 231
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mCoverImageView:Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;

    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mVideoContent:Lcom/buzzfeed/toolkit/content/VideoContent;

    invoke-interface {v1}, Lcom/buzzfeed/toolkit/content/VideoContent;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;->setTransitionName(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private setupRecipeButton()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 236
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mVideoContent:Lcom/buzzfeed/toolkit/content/VideoContent;

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mVideoContent:Lcom/buzzfeed/toolkit/content/VideoContent;

    .line 237
    invoke-interface {v2}, Lcom/buzzfeed/toolkit/content/VideoContent;->getSourceUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_26

    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mVideoContent:Lcom/buzzfeed/toolkit/content/VideoContent;

    .line 238
    invoke-interface {v2}, Lcom/buzzfeed/toolkit/content/VideoContent;->getShow()Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;

    move-result-object v2

    invoke-static {v2}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->hasTastySpecificShowContent(Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v0, 0x1

    .line 240
    .local v0, "shouldShowRecipe":Z
    :goto_1e
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mRecipeButton:Landroid/widget/TextView;

    if-eqz v0, :cond_28

    :goto_22
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    return-void

    .end local v0    # "shouldShowRecipe":Z
    :cond_26
    move v0, v1

    .line 238
    goto :goto_1e

    .line 240
    .restart local v0    # "shouldShowRecipe":Z
    :cond_28
    const/16 v1, 0x8

    goto :goto_22
.end method


# virtual methods
.method public applyUiState(Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;)V
    .registers 7
    .param p1, "state"    # Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 291
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mCurrentUiState:Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;

    if-ne v0, p1, :cond_9

    .line 325
    :goto_8
    return-void

    .line 295
    :cond_9
    iput-object p1, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mCurrentUiState:Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;

    .line 297
    sget-object v0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$6;->$SwitchMap$com$buzzfeed$buffet$ui$holder$VideoCard$State:[I

    invoke-virtual {p1}, Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_76

    goto :goto_8

    .line 299
    :pswitch_17
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mErrorView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mVideoSurfaceWrapper:Lcom/google/android/exoplayer/AspectRatioFrameLayout;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/AspectRatioFrameLayout;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mCoverImageView:Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;

    invoke-virtual {v0, v2}, Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mPlayButton:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mProgressSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_8

    .line 306
    :pswitch_31
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mErrorView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mVideoSurfaceWrapper:Lcom/google/android/exoplayer/AspectRatioFrameLayout;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/AspectRatioFrameLayout;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mProgressSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_8

    .line 311
    :pswitch_41
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mErrorView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mVideoSurfaceWrapper:Lcom/google/android/exoplayer/AspectRatioFrameLayout;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/AspectRatioFrameLayout;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mCoverImageView:Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;

    invoke-virtual {v0, v3}, Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mPlayButton:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mProgressSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_8

    .line 318
    :pswitch_5b
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mVideoSurfaceWrapper:Lcom/google/android/exoplayer/AspectRatioFrameLayout;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer/AspectRatioFrameLayout;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mCoverImageView:Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;

    invoke-virtual {v0, v3}, Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mPlayButton:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mProgressSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mErrorView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_8

    .line 297
    nop

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_17
        :pswitch_31
        :pswitch_41
        :pswitch_5b
    .end packed-switch
.end method

.method public getCoverImageView()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mCoverImageView:Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;

    return-object v0
.end method

.method public getTextureView()Landroid/view/TextureView;
    .registers 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mVideoSurface:Landroid/view/TextureView;

    return-object v0
.end method

.method public getVideoContent()Lcom/buzzfeed/toolkit/content/VideoContent;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mVideoContent:Lcom/buzzfeed/toolkit/content/VideoContent;

    return-object v0
.end method

.method protected onConfigureContainerDimensions(F)V
    .registers 3
    .param p1, "aspectRatio"    # F

    .prologue
    .line 129
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mVideoContainer:Lcom/buzzfeed/toolkit/ui/view/ForceAspectFrameLayout;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/toolkit/ui/view/ForceAspectFrameLayout;->setAspectRatio(F)V

    .line 130
    invoke-virtual {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->updateVideoAspectRatio(F)V

    .line 132
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mCoverImageView:Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;->setAspectRatio(F)V

    .line 133
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mCoverImageView:Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;->forceLayout()V

    .line 134
    return-void
.end method

.method public onViewHolderRecycled()V
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mCoverImageView:Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->clear(Landroid/view/View;)V

    .line 257
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mShowImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->clear(Landroid/view/View;)V

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mVideoContent:Lcom/buzzfeed/toolkit/content/VideoContent;

    .line 259
    return-void
.end method

.method public populateFrom(Lcom/buzzfeed/toolkit/content/FlowItem;)V
    .registers 6
    .param p1, "flowItem"    # Lcom/buzzfeed/toolkit/content/FlowItem;

    .prologue
    .line 92
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/toolkit/content/VideoContent;

    iput-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mVideoContent:Lcom/buzzfeed/toolkit/content/VideoContent;

    .line 93
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mVideoContent:Lcom/buzzfeed/toolkit/content/VideoContent;

    const-string v2, "VideoContent must not be null."

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 95
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mVideoContent:Lcom/buzzfeed/toolkit/content/VideoContent;

    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->getFirstVideoFromVideoContent(Lcom/buzzfeed/toolkit/content/VideoContent;)Lcom/buzzfeed/toolkit/content/WeaverItem$Video;

    move-result-object v0

    .line 96
    .local v0, "video":Lcom/buzzfeed/toolkit/content/WeaverItem$Video;
    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->getAspectRatioFromVideo(Lcom/buzzfeed/toolkit/content/WeaverItem$Video;)F

    move-result v1

    iput v1, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mAspectRatio:F

    .line 98
    iget v1, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mAspectRatio:F

    invoke-virtual {p0, v1}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->onConfigureContainerDimensions(F)V

    .line 100
    invoke-virtual {p0}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->updateCoverImage()V

    .line 101
    invoke-virtual {p0}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->updateIcons()V

    .line 103
    invoke-virtual {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->setupClickListeners(Lcom/buzzfeed/toolkit/content/FlowItem;)V

    .line 104
    invoke-direct {p0}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->setupHeadlineText()V

    .line 105
    invoke-direct {p0}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->setupRecipeButton()V

    .line 106
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mVideoContent:Lcom/buzzfeed/toolkit/content/VideoContent;

    invoke-interface {v1}, Lcom/buzzfeed/toolkit/content/VideoContent;->isTrendingVideo()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->setTrendingBadgeVisibility(Z)V

    .line 108
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mProgressSpinner:Landroid/widget/ProgressBar;

    sget v3, Lcom/buzzfeed/buffet/R$color;->buzzfeed_blue:I

    invoke-static {v1, v2, v3}, Lcom/buzzfeed/toolkit/util/UIUtil;->tintProgressBar(Landroid/content/Context;Landroid/widget/ProgressBar;I)V

    .line 109
    sget-object v1, Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;->STOPPED:Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;

    invoke-virtual {p0, v1}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->applyUiState(Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;)V

    .line 115
    return-void
.end method

.method public bridge synthetic populateFrom(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 40
    check-cast p1, Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->populateFrom(Lcom/buzzfeed/toolkit/content/FlowItem;)V

    return-void
.end method

.method protected setAudioIconVisibility(Z)V
    .registers 4
    .param p1, "shown"    # Z

    .prologue
    .line 266
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mAudioIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 267
    return-void

    .line 266
    :cond_9
    const/16 v0, 0x8

    goto :goto_5
.end method

.method protected setShowAvatarVisibility(Z)V
    .registers 5
    .param p1, "shown"    # Z

    .prologue
    const/4 v1, 0x0

    .line 270
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mShowImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_11

    move v0, v1

    :goto_6
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mShowImageWrapper:Landroid/view/ViewGroup;

    if-eqz p1, :cond_14

    :goto_d
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 272
    return-void

    .line 270
    :cond_11
    const/16 v0, 0x8

    goto :goto_6

    .line 271
    :cond_14
    const/4 v1, 0x4

    goto :goto_d
.end method

.method protected setupClickListeners(Lcom/buzzfeed/toolkit/content/FlowItem;)V
    .registers 5
    .param p1, "flowItem"    # Lcom/buzzfeed/toolkit/content/FlowItem;

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->getAdapterPosition()I

    move-result v0

    .line 138
    .local v0, "position":I
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->itemView:Landroid/view/View;

    new-instance v2, Lcom/buzzfeed/buffet/ui/holder/VideoCard$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/buzzfeed/buffet/ui/holder/VideoCard$1;-><init>(Lcom/buzzfeed/buffet/ui/holder/VideoCard;Lcom/buzzfeed/toolkit/content/FlowItem;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mRecipeButton:Landroid/widget/TextView;

    new-instance v2, Lcom/buzzfeed/buffet/ui/holder/VideoCard$2;

    invoke-direct {v2, p0}, Lcom/buzzfeed/buffet/ui/holder/VideoCard$2;-><init>(Lcom/buzzfeed/buffet/ui/holder/VideoCard;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mReloadVideoButton:Landroid/widget/Button;

    new-instance v2, Lcom/buzzfeed/buffet/ui/holder/VideoCard$3;

    invoke-direct {v2, p0}, Lcom/buzzfeed/buffet/ui/holder/VideoCard$3;-><init>(Lcom/buzzfeed/buffet/ui/holder/VideoCard;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mShowImageWrapper:Landroid/view/ViewGroup;

    new-instance v2, Lcom/buzzfeed/buffet/ui/holder/VideoCard$4;

    invoke-direct {v2, p0}, Lcom/buzzfeed/buffet/ui/holder/VideoCard$4;-><init>(Lcom/buzzfeed/buffet/ui/holder/VideoCard;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mVideoContent:Lcom/buzzfeed/toolkit/content/VideoContent;

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mVideoContent:Lcom/buzzfeed/toolkit/content/VideoContent;

    invoke-interface {v1}, Lcom/buzzfeed/toolkit/content/VideoContent;->getShareUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4d

    .line 171
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mShareButtonWrapper:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 172
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mShareButtonWrapper:Landroid/view/ViewGroup;

    new-instance v2, Lcom/buzzfeed/buffet/ui/holder/VideoCard$5;

    invoke-direct {v2, p0, p1, v0}, Lcom/buzzfeed/buffet/ui/holder/VideoCard$5;-><init>(Lcom/buzzfeed/buffet/ui/holder/VideoCard;Lcom/buzzfeed/toolkit/content/FlowItem;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    :goto_4c
    return-void

    .line 181
    :cond_4d
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mShareButtonWrapper:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 182
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mShareButtonWrapper:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4c
.end method

.method protected updateCoverImage()V
    .registers 6

    .prologue
    .line 193
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mVideoContent:Lcom/buzzfeed/toolkit/content/VideoContent;

    if-nez v2, :cond_5

    .line 206
    :goto_4
    return-void

    .line 197
    :cond_5
    invoke-static {}, Lcom/buzzfeed/toolkit/util/UIUtil;->getScreenWidth()I

    move-result v1

    .line 198
    .local v1, "width":I
    iget v2, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mAspectRatio:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_27

    int-to-float v2, v1

    iget v3, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mAspectRatio:F

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 200
    .local v0, "desiredHeight":I
    :goto_15
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->itemView:Landroid/view/View;

    .line 201
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mCoverImageView:Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;

    iget-object v4, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mVideoContent:Lcom/buzzfeed/toolkit/content/VideoContent;

    .line 203
    invoke-interface {v4}, Lcom/buzzfeed/toolkit/content/VideoContent;->getThumbnailStack()Ljava/util/Stack;

    move-result-object v4

    .line 200
    invoke-static {v2, v3, v4, v1, v0}, Lcom/buzzfeed/toolkit/util/GlideUtils;->loadImageStack(Landroid/content/Context;Landroid/widget/ImageView;Ljava/util/Stack;II)V

    goto :goto_4

    .line 198
    .end local v0    # "desiredHeight":I
    :cond_27
    const/4 v0, 0x0

    goto :goto_15
.end method

.method protected updateIcons()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 209
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mVideoContent:Lcom/buzzfeed/toolkit/content/VideoContent;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mVideoContent:Lcom/buzzfeed/toolkit/content/VideoContent;

    invoke-interface {v1}, Lcom/buzzfeed/toolkit/content/VideoContent;->getShow()Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 210
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mVideoContent:Lcom/buzzfeed/toolkit/content/VideoContent;

    invoke-interface {v1}, Lcom/buzzfeed/toolkit/content/VideoContent;->getShow()Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;

    move-result-object v1

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "showThumbnailUri":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->setShowAvatarVisibility(Z)V

    .line 212
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->itemView:Landroid/view/View;

    .line 213
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mShowImage:Landroid/widget/ImageView;

    const/high16 v3, 0x40000000

    .line 212
    invoke-static {v1, v2, v0, v3}, Lcom/buzzfeed/toolkit/util/GlideUtils;->loadImageRounded(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;F)V

    .line 220
    .end local v0    # "showThumbnailUri":Ljava/lang/String;
    :goto_27
    invoke-virtual {p0, v4}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->setAudioIconVisibility(Z)V

    .line 221
    return-void

    .line 217
    :cond_2b
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->setShowAvatarVisibility(Z)V

    goto :goto_27
.end method

.method public updateVideoAspectRatio(F)V
    .registers 3
    .param p1, "aspectRatio"    # F

    .prologue
    .line 251
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mVideoSurfaceWrapper:Lcom/google/android/exoplayer/AspectRatioFrameLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 252
    return-void
.end method
