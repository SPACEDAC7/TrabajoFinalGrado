.class public Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;
.super Ljava/lang/Object;
.source "VCRExoPlayer.java"

# interfaces
.implements Lcom/buzzfeed/android/vcr/player/VCRVideoPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$InternalEventProxy;,
        Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$InternalExoPlayerListener;,
        Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;,
        Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$Listener;
    }
.end annotation


# static fields
.field static final RENDERER_COUNT:I = 0x2

.field public static final STATE_BUFFERING:I = 0x3

.field public static final STATE_ENDED:I = 0x5

.field public static final STATE_IDLE:I = 0x1

.field public static final STATE_PREPARING:I = 0x2

.field public static final STATE_READY:I = 0x4

.field private static final TAG:Ljava/lang/String;

.field static final TYPE_AUDIO:I = 0x1

.field static final TYPE_VIDEO:I


# instance fields
.field private mAudioRenderer:Lcom/google/android/exoplayer/TrackRenderer;

.field private mEventProxy:Lcom/buzzfeed/android/vcr/player/VCRExoPlayerEventProxy;

.field private mIsAudioMuted:Z

.field private mIsDebugEnabled:Z

.field private mLastReportedPlayWhenReady:Z

.field private mLastReportedPlaybackState:I

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainHandler:Landroid/os/Handler;

.field private final mPlayer:Lcom/google/android/exoplayer/ExoPlayer;

.field private mRendererBuilder:Lcom/buzzfeed/android/vcr/player/RendererBuilder;

.field private mRendererBuildingState:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;

.field private mSurface:Landroid/view/Surface;

.field private mVideoRenderer:Lcom/google/android/exoplayer/TrackRenderer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const-class v0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;-><init>(Lcom/buzzfeed/android/vcr/player/RendererBuilder;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Lcom/buzzfeed/android/vcr/player/RendererBuilder;)V
    .registers 5
    .param p1, "rendererBuilder"    # Lcom/buzzfeed/android/vcr/player/RendererBuilder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mRendererBuilder:Lcom/buzzfeed/android/vcr/player/RendererBuilder;

    .line 89
    const/4 v0, 0x2

    const/16 v1, 0x3e8

    const/16 v2, 0x1388

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer/ExoPlayer$Factory;->newInstance(III)Lcom/google/android/exoplayer/ExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    .line 91
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    new-instance v1, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$InternalExoPlayerListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$InternalExoPlayerListener;-><init>(Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$1;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/ExoPlayer;->addListener(Lcom/google/android/exoplayer/ExoPlayer$Listener;)V

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mMainHandler:Landroid/os/Handler;

    .line 93
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 95
    const/4 v0, 0x1

    iput v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mLastReportedPlaybackState:I

    .line 96
    sget-object v0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;->IDLE:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mRendererBuildingState:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;

    .line 97
    return-void
.end method

.method static synthetic access$200(Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;)V
    .registers 1
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->reportPlayerState()V

    return-void
.end method

.method static synthetic access$302(Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;)Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;
    .param p1, "x1"    # Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mRendererBuildingState:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;

    return-object p1
.end method

.method static synthetic access$400(Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mIsDebugEnabled:Z

    return v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private pushSurface(Z)V
    .registers 6
    .param p1, "blockForSurfacePush"    # Z

    .prologue
    const/4 v3, 0x1

    .line 335
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mVideoRenderer:Lcom/google/android/exoplayer/TrackRenderer;

    if-nez v0, :cond_6

    .line 346
    :goto_5
    return-void

    .line 339
    :cond_6
    if-eqz p1, :cond_12

    .line 340
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mVideoRenderer:Lcom/google/android/exoplayer/TrackRenderer;

    iget-object v2, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mSurface:Landroid/view/Surface;

    invoke-interface {v0, v1, v3, v2}, Lcom/google/android/exoplayer/ExoPlayer;->blockingSendMessage(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    goto :goto_5

    .line 343
    :cond_12
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mVideoRenderer:Lcom/google/android/exoplayer/TrackRenderer;

    iget-object v2, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mSurface:Landroid/view/Surface;

    invoke-interface {v0, v1, v3, v2}, Lcom/google/android/exoplayer/ExoPlayer;->sendMessage(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    goto :goto_5
.end method

.method private reportPlayerState()V
    .registers 6

    .prologue
    .line 125
    iget-object v3, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v3}, Lcom/google/android/exoplayer/ExoPlayer;->getPlayWhenReady()Z

    move-result v1

    .line 126
    .local v1, "playWhenReady":Z
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->getPlaybackState()I

    move-result v2

    .line 127
    .local v2, "playbackState":I
    iget-boolean v3, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mLastReportedPlayWhenReady:Z

    if-ne v3, v1, :cond_12

    iget v3, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mLastReportedPlaybackState:I

    if-eq v3, v2, :cond_2c

    .line 129
    :cond_12
    iget-object v3, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$Listener;

    .line 130
    .local v0, "listener":Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$Listener;
    invoke-interface {v0, v1, v2}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$Listener;->onStateChanged(ZI)V

    goto :goto_18

    .line 132
    .end local v0    # "listener":Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$Listener;
    :cond_28
    iput-boolean v1, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mLastReportedPlayWhenReady:Z

    .line 133
    iput v2, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mLastReportedPlaybackState:I

    .line 135
    :cond_2c
    return-void
.end method

.method private resetRendererBuilderState()V
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mRendererBuilder:Lcom/buzzfeed/android/vcr/player/RendererBuilder;

    if-eqz v0, :cond_9

    .line 156
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mRendererBuilder:Lcom/buzzfeed/android/vcr/player/RendererBuilder;

    invoke-interface {v0}, Lcom/buzzfeed/android/vcr/player/RendererBuilder;->cancel()V

    .line 158
    :cond_9
    sget-object v0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;->IDLE:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mRendererBuildingState:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;

    .line 159
    return-void
.end method


# virtual methods
.method public addListener(Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$Listener;)V
    .registers 3
    .param p1, "listener"    # Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$Listener;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 264
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_d
    return-void
.end method

.method public blockingClearSurface()V
    .registers 2

    .prologue
    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mSurface:Landroid/view/Surface;

    .line 182
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->pushSurface(Z)V

    .line 183
    return-void
.end method

.method public getBufferedPercentage()J
    .registers 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getBufferedPercentage()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getCurrentPosition()J
    .registers 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .registers 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method getEventProxy()Lcom/buzzfeed/android/vcr/player/VCRExoPlayerEventProxy;
    .registers 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mEventProxy:Lcom/buzzfeed/android/vcr/player/VCRExoPlayerEventProxy;

    return-object v0
.end method

.method getMainHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getPlayWhenReady()Z
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getPlayWhenReady()Z

    move-result v0

    return v0
.end method

.method public getPlaybackState()I
    .registers 5

    .prologue
    const/4 v1, 0x2

    .line 187
    iget-object v2, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mRendererBuildingState:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;

    sget-object v3, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;->BUILDING:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;

    if-ne v2, v3, :cond_9

    move v0, v1

    .line 197
    :cond_8
    :goto_8
    return v0

    .line 191
    :cond_9
    iget-object v2, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v2}, Lcom/google/android/exoplayer/ExoPlayer;->getPlaybackState()I

    move-result v0

    .line 192
    .local v0, "playerState":I
    iget-object v2, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mRendererBuildingState:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;

    sget-object v3, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;->BUILT:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;

    if-ne v2, v3, :cond_8

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    move v0, v1

    .line 194
    goto :goto_8
.end method

.method onRenderers([Lcom/google/android/exoplayer/TrackRenderer;)V
    .registers 5
    .param p1, "renderers"    # [Lcom/google/android/exoplayer/TrackRenderer;

    .prologue
    const/4 v2, 0x0

    .line 299
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/4 v1, 0x2

    if-ge v0, v1, :cond_13

    .line 300
    aget-object v1, p1, v0

    if-nez v1, :cond_10

    .line 301
    new-instance v1, Lcom/google/android/exoplayer/DummyTrackRenderer;

    invoke-direct {v1}, Lcom/google/android/exoplayer/DummyTrackRenderer;-><init>()V

    aput-object v1, p1, v0

    .line 299
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 305
    :cond_13
    aget-object v1, p1, v2

    iput-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mVideoRenderer:Lcom/google/android/exoplayer/TrackRenderer;

    .line 306
    const/4 v1, 0x1

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mAudioRenderer:Lcom/google/android/exoplayer/TrackRenderer;

    .line 307
    invoke-direct {p0, v2}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->pushSurface(Z)V

    .line 308
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v1, p1}, Lcom/google/android/exoplayer/ExoPlayer;->prepare([Lcom/google/android/exoplayer/TrackRenderer;)V

    .line 309
    sget-object v1, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;->BUILT:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;

    iput-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mRendererBuildingState:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;

    .line 311
    iget-boolean v1, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mIsAudioMuted:Z

    if-eqz v1, :cond_30

    .line 312
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->setAudioVolume(F)V

    .line 314
    :cond_30
    return-void
.end method

.method onRenderersError(Ljava/lang/Exception;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 322
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$Listener;

    .line 323
    .local v0, "listener":Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$Listener;
    invoke-interface {v0, p1}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$Listener;->onError(Ljava/lang/Exception;)V

    goto :goto_6

    .line 325
    .end local v0    # "listener":Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$Listener;
    :cond_16
    sget-object v1, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;->IDLE:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;

    iput-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mRendererBuildingState:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;

    .line 326
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->reportPlayerState()V

    .line 328
    sget-object v1, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->TAG:Ljava/lang/String;

    const-string v2, "playerFailed"

    invoke-static {v1, v2, p1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 329
    return-void
.end method

.method public prepare()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 101
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mRendererBuilder:Lcom/buzzfeed/android/vcr/player/RendererBuilder;

    const-string v1, "RendererBuilder must be set before preparing."

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mRendererBuildingState:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;

    sget-object v1, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;->BUILT:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;

    if-ne v0, v1, :cond_13

    .line 103
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->stop()V

    .line 106
    :cond_13
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mEventProxy:Lcom/buzzfeed/android/vcr/player/VCRExoPlayerEventProxy;

    if-nez v0, :cond_25

    .line 107
    new-instance v0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$InternalEventProxy;

    invoke-direct {v0, p0, v2}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$InternalEventProxy;-><init>(Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$1;)V

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mEventProxy:Lcom/buzzfeed/android/vcr/player/VCRExoPlayerEventProxy;

    .line 108
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mEventProxy:Lcom/buzzfeed/android/vcr/player/VCRExoPlayerEventProxy;

    iget-boolean v1, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mIsDebugEnabled:Z

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayerEventProxy;->setLoggingEnabled(Z)V

    .line 111
    :cond_25
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mRendererBuilder:Lcom/buzzfeed/android/vcr/player/RendererBuilder;

    invoke-interface {v0}, Lcom/buzzfeed/android/vcr/player/RendererBuilder;->cancel()V

    .line 112
    iput-object v2, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mVideoRenderer:Lcom/google/android/exoplayer/TrackRenderer;

    .line 113
    iput-object v2, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mAudioRenderer:Lcom/google/android/exoplayer/TrackRenderer;

    .line 114
    sget-object v0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;->BUILDING:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mRendererBuildingState:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;

    .line 116
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->reportPlayerState()V

    .line 117
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mRendererBuilder:Lcom/buzzfeed/android/vcr/player/RendererBuilder;

    invoke-interface {v0, p0}, Lcom/buzzfeed/android/vcr/player/RendererBuilder;->buildRenderers(Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;)V

    .line 118
    return-void
.end method

.method public release()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->resetRendererBuilderState()V

    .line 146
    iput-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mSurface:Landroid/view/Surface;

    .line 147
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->release()V

    .line 148
    iput-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mEventProxy:Lcom/buzzfeed/android/vcr/player/VCRExoPlayerEventProxy;

    .line 149
    return-void
.end method

.method public removeListener(Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$Listener;)V
    .registers 3
    .param p1, "listener"    # Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$Listener;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 273
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 275
    :cond_d
    return-void
.end method

.method public seekTo(J)V
    .registers 4
    .param p1, "positionMs"    # J

    .prologue
    .line 168
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer/ExoPlayer;->seekTo(J)V

    .line 169
    return-void
.end method

.method public setAudioMuted(Z)V
    .registers 3
    .param p1, "isMuted"    # Z

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mIsAudioMuted:Z

    if-ne v0, p1, :cond_5

    .line 249
    :goto_4
    return-void

    .line 247
    :cond_5
    iput-boolean p1, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mIsAudioMuted:Z

    .line 248
    iget-boolean v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mIsAudioMuted:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->setAudioVolume(F)V

    goto :goto_4

    :cond_10
    const/high16 v0, 0x3f800000

    goto :goto_c
.end method

.method public setAudioVolume(F)V
    .registers 6
    .param p1, "volume"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 253
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mAudioRenderer:Lcom/google/android/exoplayer/TrackRenderer;

    if-eqz v0, :cond_10

    .line 254
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mAudioRenderer:Lcom/google/android/exoplayer/TrackRenderer;

    const/4 v2, 0x1

    .line 255
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 254
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer/ExoPlayer;->sendMessage(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    .line 257
    :cond_10
    return-void
.end method

.method public setDebugLoggingEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 233
    iput-boolean p1, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mIsDebugEnabled:Z

    .line 234
    iget-boolean v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mIsDebugEnabled:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/VerboseLogUtil;->setEnableAllTags(Z)V

    .line 236
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mEventProxy:Lcom/buzzfeed/android/vcr/player/VCRExoPlayerEventProxy;

    if-eqz v0, :cond_12

    .line 237
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mEventProxy:Lcom/buzzfeed/android/vcr/player/VCRExoPlayerEventProxy;

    iget-boolean v1, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mIsDebugEnabled:Z

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayerEventProxy;->setLoggingEnabled(Z)V

    .line 239
    :cond_12
    return-void
.end method

.method public setPlayWhenReady(Z)V
    .registers 3
    .param p1, "playWhenReady"    # Z

    .prologue
    .line 163
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/ExoPlayer;->setPlayWhenReady(Z)V

    .line 164
    return-void
.end method

.method public setRendererBuilder(Lcom/buzzfeed/android/vcr/player/RendererBuilder;)V
    .registers 3
    .param p1, "rendererBuilder"    # Lcom/buzzfeed/android/vcr/player/RendererBuilder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 223
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mRendererBuilder:Lcom/buzzfeed/android/vcr/player/RendererBuilder;

    .line 224
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->pushSurface(Z)V

    .line 225
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 173
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mSurface:Landroid/view/Surface;

    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->pushSurface(Z)V

    .line 175
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->resetRendererBuilderState()V

    .line 140
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->stop()V

    .line 141
    return-void
.end method
