.class public Lcom/buzzfeed/android/ui/ads/VideoAdViewerFragment;
.super Lcom/buzzfeed/mediaviewer/VideoViewerFragment;
.source "VideoAdViewerFragment.java"


# instance fields
.field private mVideoAdLoader:Lcom/buzzfeed/ads/video/VideoAdLoader;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;-><init>()V

    return-void
.end method

.method private getSponsorAvatarUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/ads/VideoAdViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "KEY_SPONSOR_AVATAR_URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSponsorName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/ads/VideoAdViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "KEY_SPONSOR_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getCoverImageUrl(I)Ljava/lang/String;
    .registers 4
    .param p1, "width"    # I

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/ads/VideoAdViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "KEY_COVER_IMAGE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .registers 5

    .prologue
    .line 112
    iget-object v2, p0, Lcom/buzzfeed/android/ui/ads/VideoAdViewerFragment;->mVideoAdLoader:Lcom/buzzfeed/ads/video/VideoAdLoader;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/buzzfeed/ads/video/VideoAdLoader;->setShouldRefreshAds(Z)V

    .line 113
    iget-object v2, p0, Lcom/buzzfeed/android/ui/ads/VideoAdViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v2}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->getCurrentPosition()J

    move-result-wide v0

    .line 114
    .local v0, "currentPosition":J
    invoke-static {}, Lcom/buzzfeed/analytics/client/VideoTracker;->getInstance()Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v2

    const-string v3, "media_viewer"

    .line 115
    invoke-virtual {v2, v3}, Lcom/buzzfeed/analytics/client/VideoTracker;->setPlayerLocation(Ljava/lang/String;)Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v2

    .line 116
    invoke-virtual {v2, v0, v1}, Lcom/buzzfeed/analytics/client/VideoTracker;->sendLeaveMediaViewer(J)V

    .line 117
    iget-object v2, p0, Lcom/buzzfeed/android/ui/ads/VideoAdViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v2}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 118
    invoke-static {}, Lcom/buzzfeed/analytics/client/VideoTracker;->getInstance()Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v2

    const-string v3, "media_viewer"

    .line 119
    invoke-virtual {v2, v3}, Lcom/buzzfeed/analytics/client/VideoTracker;->setPlayerLocation(Ljava/lang/String;)Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v2

    .line 120
    invoke-virtual {v2, v0, v1}, Lcom/buzzfeed/analytics/client/VideoTracker;->sendAutoPauseEvent(J)V

    .line 122
    :cond_2e
    iget-object v2, p0, Lcom/buzzfeed/android/ui/ads/VideoAdViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v2}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->release()V

    .line 123
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 57
    invoke-super {p0, p1}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/ui/ads/VideoAdViewerFragment;->setRetainInstance(Z)V

    .line 59
    iput-boolean v0, p0, Lcom/buzzfeed/android/ui/ads/VideoAdViewerFragment;->mNeedsPlayOnResume:Z

    .line 60
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/ads/video/VideoAdLoader;->getInstance(Landroid/content/Context;)Lcom/buzzfeed/ads/video/VideoAdLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/ui/ads/VideoAdViewerFragment;->mVideoAdLoader:Lcom/buzzfeed/ads/video/VideoAdLoader;

    .line 46
    invoke-super {p0, p1, p2, p3}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onHandleVideoPlayerOnPause()V
    .registers 5

    .prologue
    .line 94
    iget-object v2, p0, Lcom/buzzfeed/android/ui/ads/VideoAdViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v2}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->getCurrentPosition()J

    move-result-wide v0

    .line 95
    .local v0, "currentPosition":J
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/ads/VideoAdViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 96
    iget-object v2, p0, Lcom/buzzfeed/android/ui/ads/VideoAdViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->setTargetView(Landroid/view/View;)V

    .line 97
    iget-object v2, p0, Lcom/buzzfeed/android/ui/ads/VideoAdViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v2}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 98
    invoke-static {}, Lcom/buzzfeed/analytics/client/VideoTracker;->getInstance()Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/buzzfeed/analytics/client/VideoTracker;->sendOrientationChange(J)V

    .line 102
    :cond_25
    invoke-static {}, Lcom/buzzfeed/toolkit/util/VersionUtil;->hasJellyBeanMR2()Z

    move-result v2

    if-nez v2, :cond_33

    .line 103
    iget-object v2, p0, Lcom/buzzfeed/android/ui/ads/VideoAdViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v2}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->release()V

    .line 104
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/buzzfeed/android/ui/ads/VideoAdViewerFragment;->mNeedsPlayOnResume:Z

    .line 109
    :cond_33
    :goto_33
    return-void

    .line 106
    :cond_34
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/ads/VideoAdViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_33

    .line 107
    invoke-super {p0}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->onHandleVideoPlayerOnPause()V

    goto :goto_33
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 64
    invoke-super {p0}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->onResume()V

    .line 65
    iget-object v0, p0, Lcom/buzzfeed/android/ui/ads/VideoAdViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->getContent()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_20

    .line 66
    iget-object v0, p0, Lcom/buzzfeed/android/ui/ads/VideoAdViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    iget-object v1, p0, Lcom/buzzfeed/android/ui/ads/VideoAdViewerFragment;->mVideoAdLoader:Lcom/buzzfeed/ads/video/VideoAdLoader;

    invoke-virtual {v1}, Lcom/buzzfeed/ads/video/VideoAdLoader;->getContentUri()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/android/ui/ads/VideoAdViewerFragment;->mVideoAdLoader:Lcom/buzzfeed/ads/video/VideoAdLoader;

    invoke-virtual {v2}, Lcom/buzzfeed/ads/video/VideoAdLoader;->getContentUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/buzzfeed/android/vcr/model/VideoType;->inferContentType(Ljava/lang/String;)Lcom/buzzfeed/android/vcr/model/VideoType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->setContent(Ljava/lang/String;Lcom/buzzfeed/android/vcr/model/VideoType;)V

    .line 68
    :cond_20
    iget-object v0, p0, Lcom/buzzfeed/android/ui/ads/VideoAdViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->setAudioMuted(Z)V

    .line 69
    iget-object v0, p0, Lcom/buzzfeed/android/ui/ads/VideoAdViewerFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 70
    iget-object v0, p0, Lcom/buzzfeed/android/ui/ads/VideoAdViewerFragment;->mVideoContainerView:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;

    invoke-virtual {v0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->getCoverImageView()Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;->setVisibility(I)V

    .line 72
    :cond_38
    return-void
.end method

.method protected onSetupControllerView(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;J)V
    .registers 6
    .param p1, "controlFooterView"    # Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;
    .param p2, "startPos"    # J

    .prologue
    .line 76
    invoke-super {p0, p1, p2, p3}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->onSetupControllerView(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;J)V

    .line 77
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->setAllowScrubbing(Z)V

    .line 78
    const v0, 0x7f0200f6

    invoke-virtual {p1, v0}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->setProgressDrawable(I)V

    .line 79
    return-void
.end method

.method protected onSetupHeader(Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;)V
    .registers 4
    .param p1, "headerView"    # Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->onSetupHeader(Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;)V

    .line 84
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/ads/VideoAdViewerFragment;->getSponsorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;->setSponsorName(Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/ads/VideoAdViewerFragment;->getSponsorAvatarUrl()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 88
    invoke-virtual {p1, v0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;->setSponsorImageUrl(Ljava/lang/String;)V

    .line 90
    :cond_17
    return-void
.end method

.method protected onSetupVideoPlayer(Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;)V
    .registers 3
    .param p1, "player"    # Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->onSetupVideoPlayer(Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;)V

    .line 52
    iget-object v0, p0, Lcom/buzzfeed/android/ui/ads/VideoAdViewerFragment;->mVideoAdLoader:Lcom/buzzfeed/ads/video/VideoAdLoader;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/ads/video/VideoAdLoader;->updatePresenter(Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;)V

    .line 53
    return-void
.end method
