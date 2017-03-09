.class public Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;
.super Ljava/lang/Object;
.source "PlaybackPositionMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor$InternalRepeaterListener;,
        Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor$InternalPlaybackEventListener;,
        Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor$Listener;
    }
.end annotation


# instance fields
.field private mInternalPlaybackEventListener:Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor$InternalPlaybackEventListener;

.field private mListener:Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor$Listener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mRepeater:Lcom/buzzfeed/toolkit/util/Repeater;

.field private mVideoSurfacePresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;


# direct methods
.method public constructor <init>(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;)V
    .registers 4
    .param p1, "videoSurfacePresenter"    # Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 53
    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p1, v0, v1}, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;-><init>(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;J)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;J)V
    .registers 8
    .param p1, "videoSurfacePresenter"    # Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "pollInterval"    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x64L
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {p1}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;->mVideoSurfacePresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    .line 65
    new-instance v0, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor$InternalPlaybackEventListener;

    invoke-direct {v0, p0, v2}, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor$InternalPlaybackEventListener;-><init>(Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor$1;)V

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;->mInternalPlaybackEventListener:Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor$InternalPlaybackEventListener;

    .line 67
    new-instance v0, Lcom/buzzfeed/toolkit/util/Repeater;

    invoke-direct {v0}, Lcom/buzzfeed/toolkit/util/Repeater;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;->mRepeater:Lcom/buzzfeed/toolkit/util/Repeater;

    .line 68
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;->mRepeater:Lcom/buzzfeed/toolkit/util/Repeater;

    invoke-virtual {v0, p2, p3}, Lcom/buzzfeed/toolkit/util/Repeater;->setRepeatDelay(J)V

    .line 69
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;->mRepeater:Lcom/buzzfeed/toolkit/util/Repeater;

    new-instance v1, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor$InternalRepeaterListener;

    invoke-direct {v1, p0, v2}, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor$InternalRepeaterListener;-><init>(Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor$1;)V

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/util/Repeater;->setRepeatListener(Lcom/buzzfeed/toolkit/util/Repeater$RepeatListener;)V

    .line 70
    return-void
.end method

.method static synthetic access$200(Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;)V
    .registers 1
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;->stopProgressUpdates()V

    return-void
.end method

.method static synthetic access$300(Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;)V
    .registers 1
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;->startProgressUpdates()V

    return-void
.end method

.method static synthetic access$400(Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;)V
    .registers 1
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;->notifyProgressUpdate()V

    return-void
.end method

.method static synthetic access$500(Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;)Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;->mVideoSurfacePresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    return-object v0
.end method

.method private notifyProgressStarted()V
    .registers 7

    .prologue
    .line 106
    iget-object v4, p0, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;->mListener:Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor$Listener;

    if-eqz v4, :cond_1b

    .line 107
    iget-object v4, p0, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;->mVideoSurfacePresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    invoke-virtual {v4}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->getCurrentPosition()J

    move-result-wide v2

    .line 108
    .local v2, "currentPosition":J
    iget-object v4, p0, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;->mVideoSurfacePresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    invoke-virtual {v4}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->getDuration()J

    move-result-wide v0

    .line 110
    .local v0, "contentDuration":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_1b

    .line 111
    iget-object v4, p0, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;->mListener:Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor$Listener;

    invoke-interface {v4, v2, v3, v0, v1}, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor$Listener;->onPositionTrackingStarted(JJ)V

    .line 114
    .end local v0    # "contentDuration":J
    .end local v2    # "currentPosition":J
    :cond_1b
    return-void
.end method

.method private notifyProgressUpdate()V
    .registers 7

    .prologue
    .line 117
    iget-object v4, p0, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;->mListener:Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor$Listener;

    if-eqz v4, :cond_1b

    .line 118
    iget-object v4, p0, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;->mVideoSurfacePresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    invoke-virtual {v4}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->getCurrentPosition()J

    move-result-wide v2

    .line 119
    .local v2, "currentPosition":J
    iget-object v4, p0, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;->mVideoSurfacePresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    invoke-virtual {v4}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->getDuration()J

    move-result-wide v0

    .line 121
    .local v0, "contentDuration":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_1b

    .line 122
    iget-object v4, p0, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;->mListener:Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor$Listener;

    invoke-interface {v4, v2, v3, v0, v1}, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor$Listener;->onPositionUpdated(JJ)V

    .line 125
    .end local v0    # "contentDuration":J
    .end local v2    # "currentPosition":J
    :cond_1b
    return-void
.end method

.method private startProgressUpdates()V
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;->mRepeater:Lcom/buzzfeed/toolkit/util/Repeater;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/util/Repeater;->isRunning()Z

    move-result v0

    if-nez v0, :cond_10

    .line 96
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;->mRepeater:Lcom/buzzfeed/toolkit/util/Repeater;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/util/Repeater;->start()V

    .line 97
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;->notifyProgressStarted()V

    .line 99
    :cond_10
    return-void
.end method

.method private stopProgressUpdates()V
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;->mRepeater:Lcom/buzzfeed/toolkit/util/Repeater;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/util/Repeater;->stop()V

    .line 103
    return-void
.end method


# virtual methods
.method public setListener(Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor$Listener;)V
    .registers 2
    .param p1, "listener"    # Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor$Listener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 131
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;->mListener:Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor$Listener;

    .line 132
    return-void
.end method

.method public start()V
    .registers 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;->mVideoSurfacePresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;->mInternalPlaybackEventListener:Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor$InternalPlaybackEventListener;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->addListener(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;)V

    .line 80
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;->mVideoSurfacePresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 81
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;->startProgressUpdates()V

    .line 83
    :cond_12
    return-void
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;->mVideoSurfacePresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;->mInternalPlaybackEventListener:Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor$InternalPlaybackEventListener;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->removeListener(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;)V

    .line 91
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;->stopProgressUpdates()V

    .line 92
    return-void
.end method
