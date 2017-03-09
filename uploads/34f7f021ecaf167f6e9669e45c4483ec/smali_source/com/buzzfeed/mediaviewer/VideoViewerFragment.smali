.class public Lcom/buzzfeed/mediaviewer/VideoViewerFragment;
.super Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;
.source "VideoViewerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/mediaviewer/VideoViewerFragment$BundleBuilder;,
        Lcom/buzzfeed/mediaviewer/VideoViewerFragment$NetworkChangeReceiver;,
        Lcom/buzzfeed/mediaviewer/VideoViewerFragment$PlayPauseListener;
    }
.end annotation


# static fields
.field private static final INTENT_FILTER_NETWORK_CHANGE:Landroid/content/IntentFilter;

.field public static final KEY_SHARED_ELEMENT_TRANSITION:Ljava/lang/String; = "KEY_SHARED_ELEMENT_TRANSITION"

.field private static final TAG:Ljava/lang/String; = "VideoViewerFragment"

.field public static final TRANSITION_NAME_VIDEO:Ljava/lang/String; = "TRANSITION_NAME_VIDEO"


# instance fields
.field private mIsAnimatingSharedElementTransition:Z

.field protected mNeedsPlayOnResume:Z

.field private mNetworkChangeReceiver:Lcom/buzzfeed/mediaviewer/VideoViewerFragment$NetworkChangeReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    new-instance v0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$1;

    invoke-direct {v0}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$1;-><init>()V

    sput-object v0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->INTENT_FILTER_NETWORK_CHANGE:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;-><init>()V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mNeedsPlayOnResume:Z

    .line 66
    new-instance v0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$NetworkChangeReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$NetworkChangeReceiver;-><init>(Lcom/buzzfeed/mediaviewer/VideoViewerFragment;Lcom/buzzfeed/mediaviewer/VideoViewerFragment$1;)V

    iput-object v0, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mNetworkChangeReceiver:Lcom/buzzfeed/mediaviewer/VideoViewerFragment$NetworkChangeReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/buzzfeed/mediaviewer/VideoViewerFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/buzzfeed/mediaviewer/VideoViewerFragment;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->startInitialPlayback()V

    return-void
.end method

.method static synthetic access$202(Lcom/buzzfeed/mediaviewer/VideoViewerFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/mediaviewer/VideoViewerFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mIsAnimatingSharedElementTransition:Z

    return p1
.end method

.method static synthetic access$300(Lcom/buzzfeed/mediaviewer/VideoViewerFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/buzzfeed/mediaviewer/VideoViewerFragment;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->updateViewPlaybackState()V

    return-void
.end method

.method private prepareInitialPlaybackReason()Ljava/lang/String;
    .registers 4

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 313
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "KEY_INITIAL_PLAYBACK_REASON"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 314
    const-string v2, "KEY_INITIAL_PLAYBACK_REASON"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 315
    .local v1, "initialPlaybackReason":Ljava/lang/String;
    const-string v2, "KEY_INITIAL_PLAYBACK_REASON"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 320
    :goto_17
    return-object v1

    .line 317
    .end local v1    # "initialPlaybackReason":Ljava/lang/String;
    :cond_18
    const-string v1, "auto"

    .restart local v1    # "initialPlaybackReason":Ljava/lang/String;
    goto :goto_17
.end method

.method private setupSharedElementTransitionListeners()V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 118
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 119
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getEnterTransition()Landroid/transition/Transition;

    move-result-object v2

    new-instance v3, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$2;

    invoke-direct {v3, p0}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$2;-><init>(Lcom/buzzfeed/mediaviewer/VideoViewerFragment;)V

    invoke-virtual {v2, v3}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 130
    new-instance v2, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$3;

    invoke-direct {v2, p0}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$3;-><init>(Lcom/buzzfeed/mediaviewer/VideoViewerFragment;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    .line 148
    return-void
.end method

.method private startInitialPlayback()V
    .registers 6

    .prologue
    .line 297
    iget-object v3, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v3}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->getCurrentPosition()J

    move-result-wide v0

    .line 298
    .local v0, "currentPosition":J
    invoke-direct {p0}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->prepareInitialPlaybackReason()Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, "playbackReason":Ljava/lang/String;
    iget-object v3, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoTracker:Lcom/buzzfeed/analytics/client/VideoTracker;

    const-string v4, "MediaViewer"

    invoke-virtual {v3, v4, v2, v0, v1}, Lcom/buzzfeed/analytics/client/VideoTracker;->sendPlayEventWithReason(Ljava/lang/String;Ljava/lang/String;J)V

    .line 303
    iget-object v3, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v3}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->play()V

    .line 304
    return-void
.end method

.method private updateViewPlaybackState()V
    .registers 4

    .prologue
    .line 151
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v1}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->getVideoPlayer()Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 152
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v1}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->getVideoPlayer()Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    move-result-object v0

    .line 153
    .local v0, "player":Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;
    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->getPlayWhenReady()Z

    move-result v1

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->getPlaybackState()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->updateViewPlaybackState(ZI)V

    .line 155
    .end local v0    # "player":Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;
    :cond_1d
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->setRetainInstance(Z)V

    .line 72
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "KEY_SHARED_ELEMENT_TRANSITION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mIsAnimatingSharedElementTransition:Z

    .line 74
    iget-boolean v0, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mIsAnimatingSharedElementTransition:Z

    if-eqz v0, :cond_21

    .line 75
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "KEY_SHARED_ELEMENT_TRANSITION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 77
    :cond_21
    return-void
.end method

.method protected onCreatePlayer(Landroid/content/Context;)Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    new-instance v0, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-direct {v0, p1}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;-><init>(Landroid/content/Context;)V

    .line 99
    .local v0, "videoPlayerPresenter":Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;
    invoke-static {}, Lcom/buzzfeed/android/vcr/VCRConfig;->getInstance()Lcom/buzzfeed/android/vcr/VCRConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/buzzfeed/android/vcr/VCRConfig;->getGlobalPositionCache()Lcom/buzzfeed/android/vcr/toolbox/PositionCache;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->setPositionCache(Lcom/buzzfeed/android/vcr/toolbox/PositionCache;)V

    .line 100
    invoke-static {}, Lcom/buzzfeed/android/vcr/VCRConfig;->getInstance()Lcom/buzzfeed/android/vcr/VCRConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/buzzfeed/android/vcr/VCRConfig;->isDebugLoggingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->setDebugLoggingEnabled(Z)V

    .line 101
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 82
    invoke-super {p0, p1, p2, p3}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 83
    .local v1, "view":Landroid/view/View;
    iget-boolean v2, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mIsAnimatingSharedElementTransition:Z

    if-eqz v2, :cond_2c

    invoke-static {}, Lcom/buzzfeed/toolkit/util/VersionUtil;->hasLollipop()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 84
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "KEY_SHARED_ELEMENT_NAME"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "transitionName":Ljava/lang/String;
    const-string v2, "TRANSITION_NAME_COVER_IMAGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 86
    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoContainerView:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;

    invoke-virtual {v2}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->getCoverImageView()Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->onSetupSharedElement(Landroid/widget/ImageView;)V

    .line 90
    :goto_29
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mNeedsPlayOnResume:Z

    .line 92
    .end local v0    # "transitionName":Ljava/lang/String;
    :cond_2c
    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    iget-object v3, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoContainerView:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;

    invoke-virtual {v3}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->getTextureView()Landroid/view/TextureView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->setTargetView(Landroid/view/View;)V

    .line 93
    return-object v1

    .line 88
    .restart local v0    # "transitionName":Ljava/lang/String;
    :cond_38
    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoContainerView:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;

    invoke-virtual {v2}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->getTextureView()Landroid/view/TextureView;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->onSetupSharedElement(Landroid/view/TextureView;)V

    goto :goto_29
.end method

.method protected onHandleVideoPlayerOnPause()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 327
    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v5}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->isPlaying()Z

    move-result v5

    if-nez v5, :cond_12

    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v5}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->isReadyToPlay()Z

    move-result v5

    if-eqz v5, :cond_40

    :cond_12
    move v2, v4

    .line 328
    .local v2, "isPlaying":Z
    :goto_13
    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->setTargetView(Landroid/view/View;)V

    .line 330
    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v5}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->getCurrentPosition()J

    move-result-wide v0

    .line 331
    .local v0, "currentPosition":J
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v5

    if-eqz v5, :cond_54

    .line 333
    if-eqz v2, :cond_30

    .line 334
    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoTracker:Lcom/buzzfeed/analytics/client/VideoTracker;

    invoke-virtual {v5, v0, v1}, Lcom/buzzfeed/analytics/client/VideoTracker;->sendOrientationChange(J)V

    .line 336
    :cond_30
    invoke-static {}, Lcom/buzzfeed/toolkit/util/VersionUtil;->hasJellyBeanMR2()Z

    move-result v5

    if-nez v5, :cond_4b

    .line 337
    if-eqz v2, :cond_42

    .line 338
    iput-boolean v4, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mNeedsPlayOnResume:Z

    .line 345
    :cond_3a
    :goto_3a
    iget-object v3, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v3}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->release()V

    .line 373
    :cond_3f
    :goto_3f
    return-void

    .end local v0    # "currentPosition":J
    .end local v2    # "isPlaying":Z
    :cond_40
    move v2, v3

    .line 327
    goto :goto_13

    .line 340
    .restart local v0    # "currentPosition":J
    .restart local v2    # "isPlaying":Z
    :cond_42
    iget-boolean v5, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mIsAnimatingSharedElementTransition:Z

    if-eqz v5, :cond_3a

    .line 341
    iput-boolean v4, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mNeedsPlayOnResume:Z

    .line 342
    iput-boolean v3, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mIsAnimatingSharedElementTransition:Z

    goto :goto_3a

    .line 347
    :cond_4b
    iget-boolean v5, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mIsAnimatingSharedElementTransition:Z

    if-eqz v5, :cond_3f

    .line 348
    iput-boolean v4, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mNeedsPlayOnResume:Z

    .line 349
    iput-boolean v3, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mIsAnimatingSharedElementTransition:Z

    goto :goto_3f

    .line 352
    :cond_54
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 353
    iget-object v3, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoTracker:Lcom/buzzfeed/analytics/client/VideoTracker;

    const-string v4, "media_viewer"

    .line 354
    invoke-virtual {v3, v4}, Lcom/buzzfeed/analytics/client/VideoTracker;->setPlayerLocation(Ljava/lang/String;)Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v3

    .line 355
    invoke-virtual {v3, v0, v1}, Lcom/buzzfeed/analytics/client/VideoTracker;->sendLeaveMediaViewer(J)V

    .line 356
    if-eqz v2, :cond_76

    .line 357
    iget-object v3, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoTracker:Lcom/buzzfeed/analytics/client/VideoTracker;

    const-string v4, "media_viewer"

    .line 358
    invoke-virtual {v3, v4}, Lcom/buzzfeed/analytics/client/VideoTracker;->setPlayerLocation(Ljava/lang/String;)Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v3

    .line 359
    invoke-virtual {v3, v0, v1}, Lcom/buzzfeed/analytics/client/VideoTracker;->sendAutoPauseEvent(J)V

    .line 361
    :cond_76
    iget-object v3, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v3}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->release()V

    goto :goto_3f

    .line 363
    :cond_7c
    if-eqz v2, :cond_80

    .line 364
    iput-boolean v4, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mNeedsPlayOnResume:Z

    .line 366
    :cond_80
    iget-boolean v3, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mNeedsPlayOnResume:Z

    if-eqz v3, :cond_91

    .line 367
    invoke-static {}, Lcom/buzzfeed/analytics/client/VideoTracker;->getInstance()Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v3

    const-string v4, "media_viewer"

    .line 368
    invoke-virtual {v3, v4}, Lcom/buzzfeed/analytics/client/VideoTracker;->setPlayerLocation(Ljava/lang/String;)Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v3

    .line 369
    invoke-virtual {v3, v0, v1}, Lcom/buzzfeed/analytics/client/VideoTracker;->sendAutoPauseEvent(J)V

    .line 371
    :cond_91
    iget-object v3, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v3}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->release()V

    goto :goto_3f
.end method

.method protected onHandleVideoPlayerOnResume()V
    .registers 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/16 v10, 0x8

    .line 251
    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    iget-object v6, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoContainerView:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;

    invoke-virtual {v6}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->getTextureView()Landroid/view/TextureView;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->setTargetView(Landroid/view/View;)V

    .line 252
    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v5}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->getCurrentPosition()J

    move-result-wide v2

    .line 253
    .local v2, "currentPosition":J
    iget-boolean v5, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mNeedsPlayOnResume:Z

    if-eqz v5, :cond_22

    iget-boolean v5, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mIsAnimatingSharedElementTransition:Z

    if-nez v5, :cond_22

    .line 254
    iput-boolean v7, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mNeedsPlayOnResume:Z

    .line 255
    invoke-direct {p0}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->startInitialPlayback()V

    .line 291
    :goto_21
    return-void

    .line 256
    :cond_22
    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mErrorState:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;

    sget-object v6, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;->OFFLINE:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;

    if-ne v5, v6, :cond_3f

    .line 257
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/buzzfeed/toolkit/util/NetworkUtil;->isConnectedToNetwork(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 258
    sget-object v5, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;->NONE:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;

    invoke-virtual {p0, v5}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->setErrorState(Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;)V

    .line 259
    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoTracker:Lcom/buzzfeed/analytics/client/VideoTracker;

    const-string v6, "MediaViewer"

    invoke-virtual {v5, v6, v2, v3}, Lcom/buzzfeed/analytics/client/VideoTracker;->sendAutoPlayEvent(Ljava/lang/String;J)V

    goto :goto_21

    .line 262
    :cond_3f
    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v5}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->isPlaying()Z

    move-result v5

    if-nez v5, :cond_4f

    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v5}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->isReadyToPlay()Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 263
    :cond_4f
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->showWithDelayedHide()V

    .line 264
    iget-boolean v5, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mIsAnimatingSharedElementTransition:Z

    if-eqz v5, :cond_75

    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoContainerView:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;

    .line 265
    invoke-virtual {v5}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->getCoverImageView()Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;->getTransitionName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_75

    .line 266
    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoContainerView:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;

    invoke-virtual {v5}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->getCoverImageView()Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;->setVisibility(I)V

    .line 270
    :goto_6b
    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoContainerView:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;

    invoke-virtual {v5}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_21

    .line 268
    :cond_75
    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoContainerView:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;

    invoke-virtual {v5}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->getCoverImageView()Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;->setVisibility(I)V

    goto :goto_6b

    .line 272
    :cond_7f
    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v5}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->isReady()Z

    move-result v5

    if-eqz v5, :cond_ca

    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    .line 273
    invoke-virtual {v5}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->getCurrentPosition()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_ca

    .line 278
    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v6, "4.4.2"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b8

    .line 279
    const-string v4, "VideoViewerFragment.onResume"

    .line 280
    .local v4, "tag":Ljava/lang/String;
    const-string v5, "Applying work around for green video still bug."

    invoke-static {v4, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v5}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->getCurrentPosition()J

    move-result-wide v0

    .line 282
    .local v0, "curPos":J
    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    const-wide/16 v6, 0x1

    sub-long v6, v0, v6

    invoke-virtual {v5, v6, v7}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->seekTo(J)V

    .line 283
    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v5, v0, v1}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->seekTo(J)V

    .line 286
    .end local v0    # "curPos":J
    .end local v4    # "tag":Ljava/lang/String;
    :cond_b8
    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoContainerView:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;

    invoke-virtual {v5}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->getCoverImageView()Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;->setVisibility(I)V

    .line 287
    iget-object v5, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoContainerView:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;

    invoke-virtual {v5}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 289
    :cond_ca
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->showSystemUi()V

    goto/16 :goto_21
.end method

.method protected onNetworkChange(Landroid/net/NetworkInfo;)V
    .registers 6
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 407
    if-eqz p1, :cond_20

    .line 408
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mErrorState:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;

    sget-object v3, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;->NONE:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$PlaybackErrorState;

    if-eq v2, v3, :cond_20

    .line 410
    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v2}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->play()V

    .line 411
    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v2}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->getCurrentPosition()J

    move-result-wide v0

    .line 412
    .local v0, "currentPosition":J
    iget-object v2, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoTracker:Lcom/buzzfeed/analytics/client/VideoTracker;

    const-string v3, "MediaViewer"

    invoke-virtual {v2, v3, v0, v1}, Lcom/buzzfeed/analytics/client/VideoTracker;->sendAutoPlayEvent(Ljava/lang/String;J)V

    .line 416
    .end local v0    # "currentPosition":J
    :cond_20
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    if-eqz v0, :cond_7

    .line 238
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->onHandleVideoPlayerOnPause()V

    .line 240
    :cond_7
    invoke-super {p0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->onPause()V

    .line 241
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 229
    invoke-super {p0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->onResume()V

    .line 230
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    if-eqz v0, :cond_a

    .line 231
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->onHandleVideoPlayerOnResume()V

    .line 233
    :cond_a
    return-void
.end method

.method protected onSetupButtons(Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .param p1, "closeButton"    # Landroid/view/View;
    .param p2, "errorButton"    # Landroid/view/View;

    .prologue
    .line 206
    invoke-super {p0, p1, p2}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->onSetupButtons(Landroid/view/View;Landroid/view/View;)V

    .line 207
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 208
    new-instance v0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$6;

    invoke-direct {v0, p0}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$6;-><init>(Lcom/buzzfeed/mediaviewer/VideoViewerFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    new-instance v0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$7;

    invoke-direct {v0, p0}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$7;-><init>(Lcom/buzzfeed/mediaviewer/VideoViewerFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    return-void
.end method

.method protected onSetupControllerView(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;J)V
    .registers 6
    .param p1, "controlFooterView"    # Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;
    .param p2, "startPos"    # J

    .prologue
    .line 245
    invoke-super {p0, p1, p2, p3}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->onSetupControllerView(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;J)V

    .line 246
    new-instance v0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$PlayPauseListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$PlayPauseListener;-><init>(Lcom/buzzfeed/mediaviewer/VideoViewerFragment;Lcom/buzzfeed/mediaviewer/VideoViewerFragment$1;)V

    invoke-virtual {p1, v0}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->setClickListener(Lcom/buzzfeed/android/vcr/view/BaseControllerView$ClickListener;)V

    .line 247
    return-void
.end method

.method protected onSetupSharedElement(Landroid/view/TextureView;)V
    .registers 3
    .param p1, "textureView"    # Landroid/view/TextureView;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 112
    const-string v0, "TRANSITION_NAME_VIDEO"

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setTransitionName(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method protected onSetupSharedElement(Landroid/widget/ImageView;)V
    .registers 3
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 106
    const-string v0, "TRANSITION_NAME_COVER_IMAGE"

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTransitionName(Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->setupSharedElementTransitionListeners()V

    .line 108
    return-void
.end method

.method public onStart()V
    .registers 4

    .prologue
    .line 159
    invoke-super {p0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->onStart()V

    .line 160
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mNetworkChangeReceiver:Lcom/buzzfeed/mediaviewer/VideoViewerFragment$NetworkChangeReceiver;

    sget-object v2, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->INTENT_FILTER_NETWORK_CHANGE:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 161
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 165
    invoke-super {p0}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->onStop()V

    .line 166
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mNetworkChangeReceiver:Lcom/buzzfeed/mediaviewer/VideoViewerFragment$NetworkChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 167
    return-void
.end method

.method public setSharedElementEnterTransition(Landroid/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/transition/Transition;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/buzzfeed/mediaviewer/BaseVideoViewerFragment;->setSharedElementEnterTransition(Landroid/transition/Transition;)V

    .line 175
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_11

    .line 176
    new-instance v0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$4;

    invoke-direct {v0, p0}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$4;-><init>(Lcom/buzzfeed/mediaviewer/VideoViewerFragment;)V

    invoke-virtual {p1, v0}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 191
    :cond_11
    new-instance v0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$5;

    invoke-direct {v0, p0}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$5;-><init>(Lcom/buzzfeed/mediaviewer/VideoViewerFragment;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    .line 202
    return-void
.end method
