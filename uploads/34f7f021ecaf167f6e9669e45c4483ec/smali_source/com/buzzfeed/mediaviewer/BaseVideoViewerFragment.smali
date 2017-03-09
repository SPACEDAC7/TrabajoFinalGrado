.class public abstract Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;
.super Landroid/app/Fragment;
.source "BaseVideoViewerFragment.java"

# interfaces
.implements Lcom/buzzfeed/android/vcr/util/SystemUiHelper$OnVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$InternalPresenterListener;,
        Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$SeekBarListener;,
        Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$ShareClickListener;,
        Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$OnSurfaceTextureClickListener;
    }
.end annotation


# static fields
.field private static final HIDE_DELAY:J = 0x7d0L

.field private static final KEY_ERROR_STATE:Ljava/lang/String; = "KEY_ERROR_STATE"

.field private static final KEY_LAST_PROGRESS:Ljava/lang/String; = "KEY_LAST_PROGRESS"

.field private static final TAG:Ljava/lang/String;

.field public static final TRANSITION_NAME_COVER_IMAGE:Ljava/lang/String; = "TRANSITION_NAME_COVER_IMAGE"


# instance fields
.field private mAspectRatio:F

.field protected mErrorState:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;

.field private mKeepScreenOnHelper:Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;

.field private mLastProgressPercentage:D

.field private mSeekBarListener:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$SeekBarListener;

.field private mSurfaceTexturePresenterListener:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$InternalPresenterListener;

.field private mSystemUiHelper:Lcom/buzzfeed/android/vcr/util/SystemUiHelper;

.field protected mVideoContainerView:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;

.field protected mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

.field protected mVideoTracker:Lcom/buzzfeed/analytics/client/VideoTracker;

.field protected mViewHelper:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 71
    const-class v0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 94
    sget-object v0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;->NONE:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;

    iput-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mErrorState:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;

    return-void
.end method

.method static synthetic access$400(Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;)D
    .registers 3
    .param p0, "x0"    # Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mLastProgressPercentage:D

    return-wide v0
.end method

.method static synthetic access$402(Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;D)D
    .registers 4
    .param p0, "x0"    # Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;
    .param p1, "x1"    # D

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mLastProgressPercentage:D

    return-wide p1
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    .prologue
    .line 68
    sget-object v0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private attachKeepOnScreenHelperIfNeeded()V
    .registers 3

    .prologue
    .line 373
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mKeepScreenOnHelper:Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    if-nez v0, :cond_9

    .line 380
    :cond_8
    :goto_8
    return-void

    .line 375
    :cond_9
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mKeepScreenOnHelper:Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 376
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mKeepScreenOnHelper:Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;->detachFromPresenter()V

    .line 379
    :cond_16
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mKeepScreenOnHelper:Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;

    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;->attachTo(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;)V

    goto :goto_8
.end method

.method private static getColor(Landroid/content/Context;I)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 152
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    .line 153
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 156
    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_a
.end method

.method private removePlayerCallbacks()V
    .registers 3

    .prologue
    .line 383
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    if-eqz v0, :cond_10

    .line 384
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mSurfaceTexturePresenterListener:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$InternalPresenterListener;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->removeListener(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;)V

    .line 385
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mKeepScreenOnHelper:Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;->detachFromPresenter()V

    .line 387
    :cond_10
    return-void
.end method

.method private setupAnalytics()V
    .registers 7

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 204
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "KEY_REFERRER_FEED_POSITION"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 205
    .local v1, "referrerFeedPosition":I
    const-string v3, "KEY_REFERRER_SCREEN"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, "referrerScreenName":Ljava/lang/String;
    iget-object v3, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoTracker:Lcom/buzzfeed/analytics/client/VideoTracker;

    .line 208
    invoke-virtual {v3, v1}, Lcom/buzzfeed/analytics/client/VideoTracker;->setPositionInFeed(I)Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v3

    .line 209
    invoke-virtual {v3, v2}, Lcom/buzzfeed/analytics/client/VideoTracker;->setScreenName(Ljava/lang/String;)Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v3

    .line 210
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->getVideoDuration()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/buzzfeed/analytics/client/VideoTracker;->setVideoDuration(J)Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v3

    .line 211
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->getContentId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/buzzfeed/analytics/client/VideoTracker;->setVideoId(Ljava/lang/String;)Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v3

    .line 212
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->getVideoTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/buzzfeed/analytics/client/VideoTracker;->setVideoTitle(Ljava/lang/String;)Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v3

    .line 213
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->getContentUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/buzzfeed/analytics/client/VideoTracker;->setVideoUrl(Ljava/lang/String;)Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v3

    const-string v4, "media_viewer"

    .line 214
    invoke-virtual {v3, v4}, Lcom/buzzfeed/analytics/client/VideoTracker;->setPlayerLocation(Ljava/lang/String;)Lcom/buzzfeed/analytics/client/VideoTracker;

    .line 215
    return-void
.end method

.method private setupAspectRatio()F
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 255
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v1}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    .line 256
    invoke-virtual {v1}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->getAspectRatio()F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1a

    .line 257
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v1}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->getAspectRatio()F

    move-result v1

    .line 260
    :goto_19
    return v1

    .line 259
    :cond_1a
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 260
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "KEY_ASPECT_RATIO"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    goto :goto_19
.end method

.method private setupErrorState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 218
    if-eqz p1, :cond_16

    .line 219
    const-string v1, "KEY_ERROR_STATE"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "errString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 221
    invoke-static {v0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;->toEnum(Ljava/lang/String;)Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->setErrorState(Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;)V

    .line 224
    .end local v0    # "errString":Ljava/lang/String;
    :cond_16
    return-void
.end method

.method private updateOverlay(Z)V
    .registers 3
    .param p1, "visible"    # Z

    .prologue
    .line 420
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mViewHelper:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;

    if-nez v0, :cond_5

    .line 427
    :goto_4
    return-void

    .line 422
    :cond_5
    if-eqz p1, :cond_d

    .line 423
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mViewHelper:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;

    invoke-virtual {v0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->showOverlay()V

    goto :goto_4

    .line 425
    :cond_d
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mViewHelper:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;

    invoke-virtual {v0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->hideOverlay()V

    goto :goto_4
.end method


# virtual methods
.method protected cancelHideSystemUi()V
    .registers 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mSystemUiHelper:Lcom/buzzfeed/android/vcr/util/SystemUiHelper;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/util/SystemUiHelper;->cancelHide()V

    .line 446
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mViewHelper:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;

    invoke-virtual {v0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->cancelHide()V

    .line 447
    return-void
.end method

.method protected delayHideSystemUi(J)V
    .registers 4
    .param p1, "delay"    # J

    .prologue
    .line 440
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mSystemUiHelper:Lcom/buzzfeed/android/vcr/util/SystemUiHelper;

    invoke-virtual {v0, p1, p2}, Lcom/buzzfeed/android/vcr/util/SystemUiHelper;->delayHide(J)V

    .line 441
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mViewHelper:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;

    invoke-virtual {v0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->cancelHide()V

    .line 442
    return-void
.end method

.method protected getContentId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "KEY_CONTENT_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getContentUri()Ljava/lang/String;
    .registers 3

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "KEY_CONTENT_URI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCoverImageUrl(I)Ljava/lang/String;
    .registers 5
    .param p1, "width"    # I

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 395
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "KEY_COVER_IMAGE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 396
    .local v1, "thumbnails":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/buzzfeed/toolkit/util/ImageUtil;->getDownsizeWidthUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_22
    return-object v2

    :cond_23
    const/4 v2, 0x0

    goto :goto_22
.end method

.method protected getVideoDuration()J
    .registers 3

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "KEY_DURATION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getVideoTitle()Ljava/lang/String;
    .registers 3

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "KEY_VIDEO_TITLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected hideSystemUi()V
    .registers 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mSystemUiHelper:Lcom/buzzfeed/android/vcr/util/SystemUiHelper;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/util/SystemUiHelper;->hide()V

    .line 436
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mViewHelper:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;

    invoke-virtual {v0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->cancelHide()V

    .line 437
    return-void
.end method

.method public isSystemUiVisible()Z
    .registers 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mSystemUiHelper:Lcom/buzzfeed/android/vcr/util/SystemUiHelper;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/util/SystemUiHelper;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 169
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 170
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoTracker:Lcom/buzzfeed/analytics/client/VideoTracker;

    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/UIUtil;->isLandscape(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/analytics/client/VideoTracker;->setDeviceOrientation(Z)Lcom/buzzfeed/analytics/client/VideoTracker;

    .line 171
    new-instance v0, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;

    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;-><init>(Landroid/view/Window;)V

    iput-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mKeepScreenOnHelper:Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;

    .line 172
    invoke-direct {p0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->attachKeepOnScreenHelperIfNeeded()V

    .line 173
    new-instance v0, Lcom/buzzfeed/android/vcr/util/SystemUiHelper;

    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/buzzfeed/android/vcr/util/SystemUiHelper;-><init>(Landroid/app/Activity;IILcom/buzzfeed/android/vcr/util/SystemUiHelper$OnVisibilityChangeListener;)V

    iput-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mSystemUiHelper:Lcom/buzzfeed/android/vcr/util/SystemUiHelper;

    .line 177
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mSystemUiHelper:Lcom/buzzfeed/android/vcr/util/SystemUiHelper;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/util/SystemUiHelper;->show()V

    .line 178
    return-void
.end method

.method protected abstract onCreatePlayer(Landroid/content/Context;)Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 114
    sget v3, Lcom/buzzfeed/mediaviewer/R$layout;->fragment_video_viewer:I

    const/4 v6, 0x0

    invoke-virtual {p1, v3, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 115
    .local v2, "rootView":Landroid/view/View;
    sget v3, Lcom/buzzfeed/mediaviewer/R$id;->rootContainer:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;

    iput-object v3, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoContainerView:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;

    .line 116
    new-instance v3, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;

    iget-object v6, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoContainerView:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;

    invoke-direct {v3, v6}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;-><init>(Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;)V

    iput-object v3, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mViewHelper:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;

    .line 118
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 119
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0, p3, v1}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->setUpStartPosition(Landroid/os/Bundle;Landroid/os/Bundle;)J

    move-result-wide v4

    .line 121
    .local v4, "startPos":J
    new-instance v3, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$InternalPresenterListener;

    invoke-direct {v3, p0, v7}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$InternalPresenterListener;-><init>(Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$1;)V

    iput-object v3, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mSurfaceTexturePresenterListener:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$InternalPresenterListener;

    .line 122
    iget-object v3, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    if-nez v3, :cond_3d

    .line 123
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->onCreatePlayer(Landroid/content/Context;)Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    move-result-object v3

    iput-object v3, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    .line 124
    iget-object v3, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v3, v4, v5}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->seekTo(J)V

    .line 127
    :cond_3d
    iget-object v3, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {p0, v3}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->onSetupVideoPlayer(Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;)V

    .line 130
    iget-object v3, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoContainerView:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;

    invoke-virtual {v3}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->getHeaderView()Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->onSetupHeader(Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;)V

    .line 131
    iget-object v3, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoContainerView:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;

    invoke-virtual {v3}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->getVideoFooterView()Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->onSetupFooter(Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;)V

    .line 133
    iget-object v3, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoContainerView:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;

    invoke-virtual {v3}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->getControllerView()Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    move-result-object v3

    invoke-virtual {p0, v3, v4, v5}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->onSetupControllerView(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;J)V

    .line 134
    iget-object v3, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoContainerView:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;

    invoke-virtual {v3}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->getCloseButton()Landroid/widget/ImageButton;

    move-result-object v3

    iget-object v6, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoContainerView:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;

    invoke-virtual {v6}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->getErrorButton()Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->onSetupButtons(Landroid/view/View;Landroid/view/View;)V

    .line 136
    iget-object v3, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoContainerView:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->setClickable(Z)V

    .line 137
    iget-object v3, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoContainerView:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;

    new-instance v6, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$OnSurfaceTextureClickListener;

    invoke-direct {v6, p0, v7}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$OnSurfaceTextureClickListener;-><init>(Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$1;)V

    invoke-virtual {v3, v6}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v3, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoContainerView:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;

    invoke-virtual {v3}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v3

    .line 139
    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v6, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoContainerView:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;

    .line 140
    invoke-virtual {v6}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/buzzfeed/mediaviewer/R$color;->buzzfeed_blue:I

    invoke-static {v6, v7}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->getColor(Landroid/content/Context;I)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 143
    invoke-direct {p0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->setupAspectRatio()F

    move-result v0

    .line 144
    .local v0, "aspectRatio":F
    invoke-virtual {p0, v0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->setAspectRatio(F)V

    .line 145
    iget-object v3, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoContainerView:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;

    invoke-virtual {v3}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->getCoverImageView()Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->onSetUpCoverImage(Landroid/widget/ImageView;F)V

    .line 146
    invoke-direct {p0, p3}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->setupErrorState(Landroid/os/Bundle;)V

    .line 148
    return-object v2
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 244
    invoke-direct {p0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->removePlayerCallbacks()V

    .line 245
    iput-object v1, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mKeepScreenOnHelper:Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;

    .line 246
    iput-object v1, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoContainerView:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;

    .line 247
    iput-object v1, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mViewHelper:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;

    .line 248
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mSystemUiHelper:Lcom/buzzfeed/android/vcr/util/SystemUiHelper;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/util/SystemUiHelper;->detachView()V

    .line 249
    iput-object v1, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mSystemUiHelper:Lcom/buzzfeed/android/vcr/util/SystemUiHelper;

    .line 250
    const/4 v0, 0x0

    iput v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mAspectRatio:F

    .line 251
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 252
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 188
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 189
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mSeekBarListener:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$SeekBarListener;

    # invokes: Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$SeekBarListener;->trackProgressIfNeeded()V
    invoke-static {v0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$SeekBarListener;->access$200(Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$SeekBarListener;)V

    .line 190
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 191
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->showSystemUi()V

    .line 193
    :cond_11
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 182
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 183
    invoke-direct {p0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->setupAnalytics()V

    .line 184
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 197
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 198
    const-string v0, "KEY_ERROR_STATE"

    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mErrorState:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;

    invoke-virtual {v1}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v0, "KEY_LAST_PROGRESS"

    iget-wide v2, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mLastProgressPercentage:D

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 200
    return-void
.end method

.method protected onSetUpCoverImage(Landroid/widget/ImageView;F)V
    .registers 9
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "aspectRatio"    # F

    .prologue
    .line 343
    invoke-static {}, Lcom/buzzfeed/toolkit/util/UIUtil;->getScreenWidth()I

    move-result v3

    .line 344
    .local v3, "width":I
    invoke-virtual {p0, v3}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->getCoverImageUrl(I)Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 346
    const/4 v4, 0x0

    cmpl-float v4, p2, v4

    if-lez v4, :cond_2f

    int-to-float v4, v3

    div-float/2addr v4, p2

    float-to-int v0, v4

    .line 348
    .local v0, "desiredHeight":I
    :goto_16
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v4

    sget-object v5, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 349
    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    .line 351
    .local v1, "requestBuilder":Lcom/bumptech/glide/DrawableRequestBuilder;
    if-lez v3, :cond_2b

    if-lez v0, :cond_2b

    .line 352
    invoke-virtual {v1, v3, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    .line 354
    :cond_2b
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 356
    .end local v0    # "desiredHeight":I
    .end local v1    # "requestBuilder":Lcom/bumptech/glide/DrawableRequestBuilder;
    :cond_2e
    return-void

    .line 346
    :cond_2f
    const/4 v0, 0x0

    goto :goto_16
.end method

.method protected onSetupButtons(Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .param p1, "closeButton"    # Landroid/view/View;
    .param p2, "errorButton"    # Landroid/view/View;

    .prologue
    .line 319
    new-instance v0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$3;

    invoke-direct {v0, p0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$3;-><init>(Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    return-void
.end method

.method protected onSetupControllerView(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;J)V
    .registers 12
    .param p1, "controlFooterView"    # Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;
    .param p2, "startPos"    # J

    .prologue
    .line 309
    new-instance v6, Lcom/buzzfeed/android/vcr/player/VCRPlayerControl;

    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-direct {v6, v0}, Lcom/buzzfeed/android/vcr/player/VCRPlayerControl;-><init>(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;)V

    .line 310
    .local v6, "playerControl":Lcom/buzzfeed/android/vcr/player/VCRPlayerControl;
    invoke-virtual {p1, v6}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->setPlayerControl(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 312
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->getVideoDuration()J

    move-result-wide v2

    .line 313
    .local v2, "duration":J
    long-to-int v0, p2

    long-to-int v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->updateProgressPosition(II)V

    .line 314
    new-instance v0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$SeekBarListener;

    move-object v1, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$SeekBarListener;-><init>(Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;JJ)V

    iput-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mSeekBarListener:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$SeekBarListener;

    .line 315
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mSeekBarListener:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$SeekBarListener;

    invoke-virtual {p1, v0}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->setOnSeekBarChangeListener(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$OnSeekBarChangeListener;)V

    .line 316
    return-void
.end method

.method protected onSetupFooter(Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;)V
    .registers 7
    .param p1, "footerView"    # Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 292
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "KEY_RECIPE_CLICK_INTENT"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 293
    .local v1, "recipeClickIntent":Landroid/content/Intent;
    if-eqz v1, :cond_1a

    .line 294
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;->setRecipeButtonVisible(Z)V

    .line 295
    new-instance v4, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$2;

    invoke-direct {v4, p0, v1}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$2;-><init>(Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;Landroid/content/Intent;)V

    invoke-virtual {p1, v4}, Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;->setRecipeButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    :cond_1a
    const-string v4, "KEY_VIDEO_TITLE"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 304
    .local v3, "videoTitle":Ljava/lang/String;
    const-string v4, "KEY_SOURCE_URL"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, "sourceUri":Ljava/lang/String;
    new-instance v4, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$ShareClickListener;

    invoke-direct {v4, p0, v3, v2}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$ShareClickListener;-><init>(Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;->setShareButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    return-void
.end method

.method protected onSetupHeader(Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;)V
    .registers 8
    .param p1, "headerView"    # Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 266
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v5, "KEY_AVATAR_URL"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "avatarImageUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 268
    invoke-virtual {p1, v0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;->setAvatarImageUrl(Ljava/lang/String;)V

    .line 271
    :cond_13
    const-string v5, "KEY_VIDEO_TITLE"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 272
    .local v4, "videoTitle":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_22

    .line 273
    invoke-virtual {p1, v4}, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;->setTitle(Ljava/lang/String;)V

    .line 276
    :cond_22
    const-string v5, "KEY_SHOW_CLICK_INTENT"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 277
    .local v2, "showClickIntent":Landroid/content/Intent;
    if-eqz v2, :cond_3a

    .line 278
    const-string v5, "KEY_SHOW_ID"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 279
    .local v3, "showId":Ljava/lang/String;
    new-instance v5, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$1;

    invoke-direct {v5, p0, v2, v3}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$1;-><init>(Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;->setShowAvatarClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    .end local v3    # "showId":Ljava/lang/String;
    :cond_3a
    return-void
.end method

.method protected onSetupVideoPlayer(Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;)V
    .registers 4
    .param p1, "player"    # Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mSurfaceTexturePresenterListener:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$InternalPresenterListener;

    invoke-virtual {p1, v0}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->addListener(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;)V

    .line 164
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->getContentUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->getContentUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/android/vcr/model/VideoType;->inferContentType(Ljava/lang/String;)Lcom/buzzfeed/android/vcr/model/VideoType;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->setContent(Ljava/lang/String;Lcom/buzzfeed/android/vcr/model/VideoType;)V

    .line 165
    return-void
.end method

.method public onSystemUiVisibilityChange(Z)V
    .registers 2
    .param p1, "visible"    # Z

    .prologue
    .line 416
    invoke-direct {p0, p1}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->updateOverlay(Z)V

    .line 417
    return-void
.end method

.method protected setAspectRatio(F)V
    .registers 3
    .param p1, "aspectRatio"    # F

    .prologue
    .line 400
    iget v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mAspectRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_12

    .line 401
    iput p1, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mAspectRatio:F

    .line 402
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoContainerView:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->setAspectRatio(F)V

    .line 403
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mViewHelper:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->setAspectRatio(F)V

    .line 405
    :cond_12
    return-void
.end method

.method protected setErrorState(Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;)V
    .registers 4
    .param p1, "errorState"    # Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;

    .prologue
    .line 408
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mErrorState:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;

    if-eq v0, p1, :cond_d

    .line 409
    iput-object p1, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mErrorState:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;

    .line 410
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoContainerView:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;

    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mErrorState:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->setErrorState(Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;)V

    .line 412
    :cond_d
    return-void
.end method

.method protected setUpStartPosition(Landroid/os/Bundle;Landroid/os/Bundle;)J
    .registers 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v4, 0x0

    .line 329
    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v2}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->isReady()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 330
    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v2}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->getCurrentPosition()J

    move-result-wide v0

    .line 339
    .local v0, "startPos":J
    :goto_14
    return-wide v0

    .line 331
    .end local v0    # "startPos":J
    :cond_15
    if-nez p1, :cond_28

    .line 332
    const-string v2, "KEY_START_POSITION"

    invoke-virtual {p2, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 333
    .restart local v0    # "startPos":J
    const-string v2, "KEY_START_POSITION"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 334
    const-string v2, "KEY_START_POSITION"

    invoke-virtual {p2, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_14

    .line 336
    .end local v0    # "startPos":J
    :cond_28
    const-string v2, "KEY_LAST_PROGRESS"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mLastProgressPercentage:D

    .line 337
    iget-wide v2, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mLastProgressPercentage:D

    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->getVideoDuration()J

    move-result-wide v4

    long-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-long v0, v2

    .restart local v0    # "startPos":J
    goto :goto_14
.end method

.method public setVideoPlayer(Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;)V
    .registers 4
    .param p1, "videoPlayerPresenter"    # Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    .prologue
    .line 359
    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    if-ne p1, v0, :cond_7

    .line 370
    :cond_6
    :goto_6
    return-void

    .line 364
    :cond_7
    invoke-direct {p0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->removePlayerCallbacks()V

    .line 365
    iput-object p1, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    .line 366
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    if-eqz v0, :cond_6

    .line 367
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->setAudioMuted(Z)V

    .line 368
    invoke-direct {p0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->attachKeepOnScreenHelperIfNeeded()V

    goto :goto_6
.end method

.method public setVideoTracker(Lcom/buzzfeed/analytics/client/VideoTracker;)V
    .registers 2
    .param p1, "videoTracker"    # Lcom/buzzfeed/analytics/client/VideoTracker;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoTracker:Lcom/buzzfeed/analytics/client/VideoTracker;

    .line 391
    return-void
.end method

.method protected showSystemUi()V
    .registers 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mSystemUiHelper:Lcom/buzzfeed/android/vcr/util/SystemUiHelper;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/util/SystemUiHelper;->show()V

    .line 431
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mViewHelper:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;

    invoke-virtual {v0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->cancelHide()V

    .line 432
    return-void
.end method

.method protected showWithDelayedHide()V
    .registers 3

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->showSystemUi()V

    .line 455
    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->delayHideSystemUi(J)V

    .line 456
    return-void
.end method

.method protected updateViewPlaybackState(ZI)V
    .registers 9
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .prologue
    const/16 v3, 0x8

    .line 626
    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v2}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->getCurrentPosition()J

    move-result-wide v0

    .line 627
    .local v0, "currentPosition":J
    packed-switch p2, :pswitch_data_ae

    .line 665
    sget-object v2, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown playback state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    :cond_23
    :goto_23
    return-void

    .line 629
    :pswitch_24
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->showSystemUi()V

    .line 630
    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoContainerView:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;

    invoke-virtual {v2}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->getCoverImageView()Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;->setVisibility(I)V

    .line 631
    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoContainerView:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;

    invoke-virtual {v2}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_23

    .line 634
    :pswitch_3a
    if-eqz p1, :cond_52

    .line 635
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->showWithDelayedHide()V

    .line 639
    :goto_3f
    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoContainerView:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;

    invoke-virtual {v2}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->getCoverImageView()Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;->setVisibility(I)V

    .line 640
    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoContainerView:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;

    invoke-virtual {v2}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_23

    .line 637
    :cond_52
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->showSystemUi()V

    goto :goto_3f

    .line 644
    :pswitch_56
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->showSystemUi()V

    .line 645
    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoContainerView:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;

    invoke-virtual {v2}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 646
    sget-object v2, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;->NONE:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;

    invoke-virtual {p0, v2}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->setErrorState(Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;)V

    goto :goto_23

    .line 649
    :pswitch_69
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->showSystemUi()V

    .line 650
    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v2}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->pause()V

    .line 651
    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->seekTo(J)V

    .line 652
    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoContainerView:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;

    invoke-virtual {v2}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->getCoverImageView()Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;->setVisibility(I)V

    .line 653
    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoContainerView:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;

    invoke-virtual {v2}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 654
    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoContainerView:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;

    invoke-virtual {v2}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->getControllerView()Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->stopProgressUpdates()V

    .line 655
    if-eqz p1, :cond_23

    .line 656
    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoTracker:Lcom/buzzfeed/analytics/client/VideoTracker;

    invoke-virtual {v2, v0, v1}, Lcom/buzzfeed/analytics/client/VideoTracker;->sendVideoCompleteEvent(J)V

    .line 657
    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mVideoTracker:Lcom/buzzfeed/analytics/client/VideoTracker;

    const-string v3, "MediaViewer"

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4}, Lcom/buzzfeed/analytics/client/VideoTracker;->sendPlaybackProgress(Ljava/lang/String;I)V

    .line 658
    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mSeekBarListener:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$SeekBarListener;

    if-eqz v2, :cond_23

    .line 659
    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->mSeekBarListener:Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$SeekBarListener;

    invoke-virtual {v2}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment$SeekBarListener;->resetProgress()V

    goto/16 :goto_23

    .line 627
    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_24
        :pswitch_56
        :pswitch_56
        :pswitch_3a
        :pswitch_69
    .end packed-switch
.end method
