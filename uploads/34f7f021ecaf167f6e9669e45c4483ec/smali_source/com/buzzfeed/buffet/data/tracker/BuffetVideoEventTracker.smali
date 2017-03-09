.class public Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;
.super Ljava/lang/Object;
.source "BuffetVideoEventTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalPositionMonitorListener;,
        Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalVideoEventListener;
    }
.end annotation


# static fields
.field private static final NO_VALUE:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mCurrentContentUri:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCurrentItemPosition:I

.field private mCurrentVideoDuration:J

.field private mCurrentVideoId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCurrentVideoTitle:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mHasPendingContentReset:Z

.field private mIsAttached:Z

.field private mPositionMonitor:Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;

.field private mScreenName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mVideoEventListener:Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalVideoEventListener;

.field private mVideoEventTracker:Lcom/buzzfeed/analytics/client/VideoTracker;

.field private mVideoPositionListener:Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalPositionMonitorListener;

.field private mVideoSurfacePresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-class v0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/buzzfeed/analytics/client/VideoTracker;Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "videoTracker"    # Lcom/buzzfeed/analytics/client/VideoTracker;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "videoSurfacePresenter"    # Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 66
    new-instance v0, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;

    invoke-direct {v0, p3}, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;-><init>(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;-><init>(Landroid/content/Context;Lcom/buzzfeed/analytics/client/VideoTracker;Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/buzzfeed/analytics/client/VideoTracker;Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "videoTracker"    # Lcom/buzzfeed/analytics/client/VideoTracker;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "videoSurfacePresenter"    # Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "positionMonitor"    # Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mCurrentItemPosition:I

    .line 51
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mCurrentVideoDuration:J

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mAppContext:Landroid/content/Context;

    .line 82
    invoke-static {p2}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/analytics/client/VideoTracker;

    iput-object v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mVideoEventTracker:Lcom/buzzfeed/analytics/client/VideoTracker;

    .line 83
    invoke-static {p3}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    iput-object v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mVideoSurfacePresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    .line 84
    invoke-static {p4}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;

    iput-object v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mPositionMonitor:Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;

    .line 86
    invoke-direct {p0}, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->initializeListeners()V

    .line 87
    return-void
.end method

.method static synthetic access$300(Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;)Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mVideoSurfacePresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;)Lcom/buzzfeed/analytics/client/VideoTracker;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mVideoEventTracker:Lcom/buzzfeed/analytics/client/VideoTracker;

    return-object v0
.end method

.method static synthetic access$500(Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;)Z
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mHasPendingContentReset:Z

    return v0
.end method

.method private ensureRequiredContent()Z
    .registers 5

    .prologue
    .line 211
    iget-object v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mScreenName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mCurrentVideoId:Ljava/lang/String;

    .line 212
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mCurrentVideoTitle:Ljava/lang/String;

    .line 213
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mCurrentContentUri:Ljava/lang/String;

    .line 214
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mCurrentItemPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2f

    iget-wide v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mCurrentVideoDuration:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2f

    const/4 v0, 0x1

    :goto_2e
    return v0

    :cond_2f
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method private initializeListeners()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 90
    new-instance v0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalVideoEventListener;

    invoke-direct {v0, p0, v1}, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalVideoEventListener;-><init>(Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$1;)V

    iput-object v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mVideoEventListener:Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalVideoEventListener;

    .line 91
    new-instance v0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalPositionMonitorListener;

    invoke-direct {v0, p0, v1}, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalPositionMonitorListener;-><init>(Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$1;)V

    iput-object v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mVideoPositionListener:Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalPositionMonitorListener;

    .line 92
    return-void
.end method


# virtual methods
.method public attachMediaComponents()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".attachMediaComponents"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "TAG":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mIsAttached:Z

    if-eqz v1, :cond_20

    .line 100
    const-string v1, "BuffetVideoEventTracker is already attached."

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :goto_1f
    return-void

    .line 104
    :cond_20
    iget-object v1, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mScreenName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 105
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Screen name must be supplied before attaching."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :cond_30
    iget-object v1, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mVideoSurfacePresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    iget-object v2, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mVideoEventListener:Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalVideoEventListener;

    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->addListener(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;)V

    .line 109
    iget-object v1, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mPositionMonitor:Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;

    iget-object v2, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mVideoPositionListener:Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalPositionMonitorListener;

    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;->setListener(Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor$Listener;)V

    .line 110
    iget-object v1, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mPositionMonitor:Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;

    invoke-virtual {v1}, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;->start()V

    .line 112
    iget-object v1, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mVideoSurfacePresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    invoke-virtual {v1}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 113
    iget-object v1, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mVideoEventListener:Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalVideoEventListener;

    # setter for: Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalVideoEventListener;->mVideoStartTracked:Z
    invoke-static {v1, v3}, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalVideoEventListener;->access$202(Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalVideoEventListener;Z)Z

    .line 116
    :cond_50
    iput-boolean v3, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mIsAttached:Z

    goto :goto_1f
.end method

.method protected configureTrackerForCurrentContent()V
    .registers 5

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->ensureRequiredContent()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 196
    iget-object v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mVideoEventTracker:Lcom/buzzfeed/analytics/client/VideoTracker;

    iget v1, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mCurrentItemPosition:I

    .line 197
    invoke-virtual {v0, v1}, Lcom/buzzfeed/analytics/client/VideoTracker;->setPositionInFeed(I)Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v0

    iget-wide v2, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mCurrentVideoDuration:J

    .line 198
    invoke-virtual {v0, v2, v3}, Lcom/buzzfeed/analytics/client/VideoTracker;->setVideoDuration(J)Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mCurrentVideoId:Ljava/lang/String;

    .line 199
    invoke-virtual {v0, v1}, Lcom/buzzfeed/analytics/client/VideoTracker;->setVideoId(Ljava/lang/String;)Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mCurrentVideoTitle:Ljava/lang/String;

    .line 200
    invoke-virtual {v0, v1}, Lcom/buzzfeed/analytics/client/VideoTracker;->setVideoTitle(Ljava/lang/String;)Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mCurrentContentUri:Ljava/lang/String;

    .line 201
    invoke-virtual {v0, v1}, Lcom/buzzfeed/analytics/client/VideoTracker;->setVideoUrl(Ljava/lang/String;)Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mScreenName:Ljava/lang/String;

    .line 202
    invoke-virtual {v0, v1}, Lcom/buzzfeed/analytics/client/VideoTracker;->setScreenName(Ljava/lang/String;)Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mAppContext:Landroid/content/Context;

    .line 203
    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/UIUtil;->isLandscape(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/analytics/client/VideoTracker;->setDeviceOrientation(Z)Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v0

    const-string v1, "in_feed"

    .line 204
    invoke-virtual {v0, v1}, Lcom/buzzfeed/analytics/client/VideoTracker;->setPlayerLocation(Ljava/lang/String;)Lcom/buzzfeed/analytics/client/VideoTracker;

    .line 208
    :goto_3b
    return-void

    .line 206
    :cond_3c
    iget-object v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mVideoEventTracker:Lcom/buzzfeed/analytics/client/VideoTracker;

    invoke-virtual {v0}, Lcom/buzzfeed/analytics/client/VideoTracker;->resetVideoData()V

    goto :goto_3b
.end method

.method public detachMediaComponents()V
    .registers 3

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mIsAttached:Z

    if-nez v0, :cond_1f

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".detachMediaComponents"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BuffetVideoEventTracker is not attached."

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :goto_1e
    return-void

    .line 128
    :cond_1f
    iget-object v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mPositionMonitor:Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;->stop()V

    .line 129
    iget-object v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mPositionMonitor:Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;->setListener(Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor$Listener;)V

    .line 130
    iget-object v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mVideoSurfacePresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    iget-object v1, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mVideoEventListener:Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalVideoEventListener;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->removeListener(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;)V

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mIsAttached:Z

    goto :goto_1e
.end method

.method protected getContext()Landroid/content/Context;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getScreenName()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mScreenName:Ljava/lang/String;

    return-object v0
.end method

.method protected getVideoEventTracker()Lcom/buzzfeed/analytics/client/VideoTracker;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mVideoEventTracker:Lcom/buzzfeed/analytics/client/VideoTracker;

    return-object v0
.end method

.method protected getVideoSurfacePresenter()Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mVideoSurfacePresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    return-object v0
.end method

.method public isAttached()Z
    .registers 2

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mIsAttached:Z

    return v0
.end method

.method public notifyContentReset()V
    .registers 2

    .prologue
    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mHasPendingContentReset:Z

    .line 188
    return-void
.end method

.method public setScreenName(Ljava/lang/String;)V
    .registers 4
    .param p1, "screenName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 225
    const-string v0, "Screen name must not be null."

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mScreenName:Ljava/lang/String;

    .line 226
    iget-object v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mVideoEventTracker:Lcom/buzzfeed/analytics/client/VideoTracker;

    iget-object v1, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mScreenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/analytics/client/VideoTracker;->setScreenName(Ljava/lang/String;)Lcom/buzzfeed/analytics/client/VideoTracker;

    .line 227
    return-void
.end method

.method public setVideoContent(Lcom/buzzfeed/toolkit/content/VideoContent;I)V
    .registers 11
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/VideoContent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "itemPosition"    # I

    .prologue
    .line 145
    invoke-static {p1}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->getFirstVideoFromVideoContent(Lcom/buzzfeed/toolkit/content/VideoContent;)Lcom/buzzfeed/toolkit/content/WeaverItem$Video;

    move-result-object v7

    .line 146
    .local v7, "video":Lcom/buzzfeed/toolkit/content/WeaverItem$Video;
    invoke-static {v7}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->getHlsVideoContentUri(Lcom/buzzfeed/toolkit/content/WeaverItem$Video;)Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, "contentUri":Ljava/lang/String;
    if-eqz v7, :cond_21

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 150
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/VideoContent;->getId()Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/VideoContent;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-virtual {v7}, Lcom/buzzfeed/toolkit/content/WeaverItem$Video;->getDuration()J

    move-result-wide v4

    move-object v0, p0

    move v6, p2

    .line 149
    invoke-virtual/range {v0 .. v6}, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->setVideoContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 156
    :cond_21
    return-void
.end method

.method public setVideoContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .registers 9
    .param p1, "videoId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "videoTitle"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "videoContentUri"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "videoDuration"    # J
    .param p6, "itemPosition"    # I

    .prologue
    .line 174
    iput-object p1, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mCurrentVideoId:Ljava/lang/String;

    .line 175
    iput-object p2, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mCurrentVideoTitle:Ljava/lang/String;

    .line 176
    iput-object p3, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mCurrentContentUri:Ljava/lang/String;

    .line 177
    iput-wide p4, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mCurrentVideoDuration:J

    .line 178
    iput p6, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mCurrentItemPosition:I

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mHasPendingContentReset:Z

    .line 180
    invoke-virtual {p0}, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->configureTrackerForCurrentContent()V

    .line 181
    return-void
.end method
