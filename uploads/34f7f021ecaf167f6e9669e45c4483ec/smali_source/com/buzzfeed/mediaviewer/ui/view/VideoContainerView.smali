.class public Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;
.super Landroid/widget/RelativeLayout;
.source "VideoContainerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;
    }
.end annotation


# static fields
.field public static final PORTRAIT_ASPECT_RATIO:F = 0.563f


# instance fields
.field private mAspectLayout:Lcom/google/android/exoplayer/AspectRatioFrameLayout;

.field private mAspectRatio:F

.field private mCloseButton:Landroid/widget/ImageButton;

.field mControllerView:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

.field protected mCoverImageView:Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;

.field private mErrorButton:Landroid/widget/Button;

.field private mErrorContainer:Landroid/view/View;

.field private mErrorTextView:Landroid/widget/TextView;

.field protected mFitSystemContainer:Landroid/widget/RelativeLayout;

.field mHeaderView:Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;

.field protected mNeedsSetupViewsByAspectRatio:Z

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRootOverlayContainer:Landroid/widget/RelativeLayout;

.field private mTextureView:Landroid/view/TextureView;

.field mVideoFooterView:Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;

.field private mVideoOverlayContainer:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mNeedsSetupViewsByAspectRatio:Z

    .line 78
    invoke-virtual {p0, p1}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->initialize(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mNeedsSetupViewsByAspectRatio:Z

    .line 83
    invoke-virtual {p0, p1}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->initialize(Landroid/content/Context;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mNeedsSetupViewsByAspectRatio:Z

    .line 88
    invoke-virtual {p0, p1}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->initialize(Landroid/content/Context;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mNeedsSetupViewsByAspectRatio:Z

    .line 94
    invoke-virtual {p0, p1}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->initialize(Landroid/content/Context;)V

    .line 95
    return-void
.end method

.method private anchorFooterToVideo()V
    .registers 12

    .prologue
    const/16 v10, 0x50

    const/4 v9, -0x2

    const/4 v8, -0x1

    .line 248
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 249
    .local v2, "res":Landroid/content/res/Resources;
    const/4 v5, 0x1

    const/high16 v6, 0x42c00000

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v3, v5

    .line 250
    .local v3, "scrimHeight":I
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v8, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 252
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v10, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 253
    new-instance v4, Landroid/view/View;

    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 254
    .local v4, "scrimView":Landroid/view/View;
    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    sget v5, Lcom/buzzfeed/mediaviewer/R$drawable;->scrim_footer:I

    invoke-direct {p0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-static {v2, v5, v6}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 256
    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mVideoOverlayContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 259
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v0, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 260
    .restart local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v10, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 261
    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mControllerView:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    invoke-virtual {v5, v0}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mVideoOverlayContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mControllerView:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 265
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 267
    .local v1, "relParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v5, 0x3

    sget v6, Lcom/buzzfeed/mediaviewer/R$id;->videoSurfaceContainer:I

    invoke-virtual {v1, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 268
    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mVideoFooterView:Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;

    invoke-virtual {v5, v1}, Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mVideoFooterView:Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;

    invoke-virtual {p0, v5}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->addView(Landroid/view/View;)V

    .line 270
    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mVideoFooterView:Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;->setDividerVisible(Z)V

    .line 271
    return-void
.end method

.method private anchorHeaderAboveVideo()V
    .registers 5

    .prologue
    const/4 v2, -0x2

    .line 233
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 235
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/buzzfeed/mediaviewer/R$dimen;->padding_large:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 236
    .local v1, "sideMargin":I
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 237
    const/4 v2, 0x2

    sget v3, Lcom/buzzfeed/mediaviewer/R$id;->videoSurfaceContainer:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 238
    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mHeaderView:Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;

    invoke-virtual {v2, v0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mHeaderView:Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;

    invoke-virtual {p0, v2}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->addView(Landroid/view/View;)V

    .line 241
    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mHeaderView:Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;

    invoke-virtual {v2}, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 242
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 243
    return-void
.end method

.method private anchorHeaderBelowBackButton()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v2, -0x2

    .line 220
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 222
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, 0x3

    sget v3, Lcom/buzzfeed/mediaviewer/R$id;->closeButton:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 223
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/buzzfeed/mediaviewer/R$dimen;->padding_large:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 224
    .local v1, "sideMargin":I
    invoke-virtual {v0, v1, v4, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 225
    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mHeaderView:Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;

    invoke-virtual {v2, v0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mFitSystemContainer:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mHeaderView:Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 228
    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mHeaderView:Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;

    invoke-virtual {v2}, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 229
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 230
    return-void
.end method

.method private getTheme()Landroid/content/res/Resources$Theme;
    .registers 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mVideoFooterView:Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;

    invoke-virtual {v0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected anchorFooterToBottom()V
    .registers 11

    .prologue
    const/16 v9, 0xc

    const/4 v8, 0x1

    const/4 v7, -0x2

    const/4 v6, -0x1

    .line 277
    new-instance v3, Landroid/view/View;

    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 278
    .local v3, "scrimView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 279
    .local v1, "res":Landroid/content/res/Resources;
    const/high16 v4, 0x43080000

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v8, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v2, v4

    .line 280
    .local v2, "scrimHeight":I
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 281
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 282
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    sget v4, Lcom/buzzfeed/mediaviewer/R$drawable;->scrim_footer:I

    invoke-direct {p0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-static {v1, v4, v5}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 284
    iget-object v4, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mRootOverlayContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 287
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v0, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 288
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 289
    iget-object v4, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mVideoFooterView:Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;

    invoke-virtual {v4, v0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    iget-object v4, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mFitSystemContainer:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mVideoFooterView:Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 291
    iget-object v4, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mVideoFooterView:Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;

    invoke-virtual {v4, v8}, Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;->setDividerVisible(Z)V

    .line 294
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v0, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 295
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v4, 0x2

    sget v5, Lcom/buzzfeed/mediaviewer/R$id;->footer_view:I

    invoke-virtual {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 296
    iget-object v4, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mControllerView:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    invoke-virtual {v4, v0}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    iget-object v4, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mFitSystemContainer:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mControllerView:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 302
    iget-object v4, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mRootOverlayContainer:Landroid/widget/RelativeLayout;

    new-instance v5, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$1;

    invoke-direct {v5, p0, v3, v2}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$1;-><init>(Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;Landroid/view/View;I)V

    invoke-static {v4, v5}, Lcom/buzzfeed/toolkit/util/UIUtil;->runAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 318
    return-void
.end method

.method public getCloseButton()Landroid/widget/ImageButton;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mCloseButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getControllerView()Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mControllerView:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    return-object v0
.end method

.method public getCoverImageView()Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mCoverImageView:Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;

    return-object v0
.end method

.method public getErrorButton()Landroid/widget/Button;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mErrorButton:Landroid/widget/Button;

    return-object v0
.end method

.method getFitSystemContainer()Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mFitSystemContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getHeaderView()Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mHeaderView:Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;

    return-object v0
.end method

.method public getProgressBar()Landroid/widget/ProgressBar;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method getRootOverlayContainer()Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mRootOverlayContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getTextureView()Landroid/view/TextureView;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mTextureView:Landroid/view/TextureView;

    return-object v0
.end method

.method public getVideoFooterView()Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mVideoFooterView:Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;

    return-object v0
.end method

.method getVideoOverlayContainer()Landroid/widget/FrameLayout;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mVideoOverlayContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method protected initialize(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    sget v0, Lcom/buzzfeed/mediaviewer/R$layout;->view_video_container:I

    invoke-static {p1, v0, p0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 100
    sget v0, Lcom/buzzfeed/mediaviewer/R$id;->rootOverlayContainer:I

    invoke-virtual {p0, v0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mRootOverlayContainer:Landroid/widget/RelativeLayout;

    .line 101
    sget v0, Lcom/buzzfeed/mediaviewer/R$id;->videoTextureView:I

    invoke-virtual {p0, v0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mTextureView:Landroid/view/TextureView;

    .line 102
    sget v0, Lcom/buzzfeed/mediaviewer/R$id;->videoSurfaceContainer:I

    invoke-virtual {p0, v0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/AspectRatioFrameLayout;

    iput-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mAspectLayout:Lcom/google/android/exoplayer/AspectRatioFrameLayout;

    .line 103
    sget v0, Lcom/buzzfeed/mediaviewer/R$id;->fitSystemsContainer:I

    invoke-virtual {p0, v0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mFitSystemContainer:Landroid/widget/RelativeLayout;

    .line 104
    sget v0, Lcom/buzzfeed/mediaviewer/R$id;->videoOverlayContainer:I

    invoke-virtual {p0, v0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mVideoOverlayContainer:Landroid/widget/FrameLayout;

    .line 105
    sget v0, Lcom/buzzfeed/mediaviewer/R$id;->coverImageView:I

    invoke-virtual {p0, v0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;

    iput-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mCoverImageView:Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;

    .line 106
    sget v0, Lcom/buzzfeed/mediaviewer/R$id;->progressBar:I

    invoke-virtual {p0, v0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 107
    sget v0, Lcom/buzzfeed/mediaviewer/R$id;->errorContainer:I

    invoke-virtual {p0, v0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mErrorContainer:Landroid/view/View;

    .line 108
    sget v0, Lcom/buzzfeed/mediaviewer/R$id;->errorTextView:I

    invoke-virtual {p0, v0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mErrorTextView:Landroid/widget/TextView;

    .line 109
    sget v0, Lcom/buzzfeed/mediaviewer/R$id;->errorButton:I

    invoke-virtual {p0, v0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mErrorButton:Landroid/widget/Button;

    .line 110
    sget v0, Lcom/buzzfeed/mediaviewer/R$id;->closeButton:I

    invoke-virtual {p0, v0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mCloseButton:Landroid/widget/ImageButton;

    .line 111
    sget v0, Lcom/buzzfeed/mediaviewer/R$id;->videoTextureView:I

    invoke-virtual {p0, v0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mTextureView:Landroid/view/TextureView;

    .line 114
    new-instance v0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    invoke-direct {v0, p1}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mControllerView:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    .line 115
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mControllerView:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    sget v1, Lcom/buzzfeed/mediaviewer/R$id;->player_control_view:I

    invoke-virtual {v0, v1}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->setId(I)V

    .line 117
    new-instance v0, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;

    invoke-direct {v0, p1}, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mHeaderView:Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;

    .line 118
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mHeaderView:Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;

    sget v1, Lcom/buzzfeed/mediaviewer/R$id;->header_view:I

    invoke-virtual {v0, v1}, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;->setId(I)V

    .line 120
    new-instance v0, Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;

    invoke-direct {v0, p1}, Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mVideoFooterView:Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;

    .line 121
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mVideoFooterView:Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;

    sget v1, Lcom/buzzfeed/mediaviewer/R$id;->footer_view:I

    invoke-virtual {v0, v1}, Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;->setId(I)V

    .line 122
    return-void
.end method

.method public setAspectRatio(F)V
    .registers 3
    .param p1, "aspectRatio"    # F

    .prologue
    .line 169
    iget v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mAspectRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_15

    .line 170
    iput p1, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mAspectRatio:F

    .line 171
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mAspectLayout:Lcom/google/android/exoplayer/AspectRatioFrameLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 172
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mCoverImageView:Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;->setAspectRatio(F)V

    .line 173
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->setupHeaderAndFooterViewsIfNeeded()V

    .line 175
    :cond_15
    return-void
.end method

.method public setErrorState(Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;)V
    .registers 5
    .param p1, "errorState"    # Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;

    .prologue
    const/4 v2, 0x0

    .line 179
    sget-object v0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$2;->$SwitchMap$com$buzzfeed$mediaviewer$ui$view$VideoContainerView$PlaybackErrorState:[I

    invoke-virtual {p1}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3e

    .line 196
    :goto_c
    return-void

    .line 181
    :pswitch_d
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mErrorContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c

    .line 185
    :pswitch_15
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mErrorTextView:Landroid/widget/TextView;

    sget v1, Lcom/buzzfeed/mediaviewer/R$string;->video_viewer_error_loading_video:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 186
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mErrorButton:Landroid/widget/Button;

    sget v1, Lcom/buzzfeed/mediaviewer/R$string;->video_viewer_title_reload_button:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 187
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mErrorContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c

    .line 191
    :pswitch_29
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mErrorTextView:Landroid/widget/TextView;

    sget v1, Lcom/buzzfeed/mediaviewer/R$string;->video_viewer_error_offline:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 192
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mErrorButton:Landroid/widget/Button;

    sget v1, Lcom/buzzfeed/mediaviewer/R$string;->video_viewer_title_try_again:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 193
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mErrorContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c

    .line 179
    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_d
        :pswitch_15
        :pswitch_29
    .end packed-switch
.end method

.method protected setupHeaderAndFooterViewsIfNeeded()V
    .registers 3

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mNeedsSetupViewsByAspectRatio:Z

    if-nez v0, :cond_5

    .line 217
    :cond_4
    :goto_4
    return-void

    .line 206
    :cond_5
    iget v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mAspectRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 207
    iget v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mAspectRatio:F

    const v1, 0x3f1020c5

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1f

    .line 208
    invoke-direct {p0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->anchorHeaderBelowBackButton()V

    .line 209
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->anchorFooterToBottom()V

    .line 215
    :goto_1b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mNeedsSetupViewsByAspectRatio:Z

    goto :goto_4

    .line 211
    :cond_1f
    invoke-direct {p0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->anchorHeaderAboveVideo()V

    .line 212
    invoke-direct {p0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->anchorFooterToVideo()V

    .line 213
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mAspectLayout:Lcom/google/android/exoplayer/AspectRatioFrameLayout;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/AspectRatioFrameLayout;->bringToFront()V

    goto :goto_1b
.end method
