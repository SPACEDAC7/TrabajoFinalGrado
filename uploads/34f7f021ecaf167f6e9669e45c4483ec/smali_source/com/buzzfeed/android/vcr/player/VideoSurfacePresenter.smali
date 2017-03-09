.class public abstract Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;
.super Ljava/lang/Object;
.source "VideoSurfacePresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;,
        Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$VCRExoPlayerListenerInternal;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mAspectRatio:F

.field private mContentType:Lcom/buzzfeed/android/vcr/model/VideoType;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mContentUri:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mIsAudioMuted:Z

.field private mIsLoggingEnabled:Z

.field private mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;",
            ">;"
        }
    .end annotation
.end field

.field protected mPlayWhenReady:Z

.field private mPlaybackStateListener:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$Listener;

.field private mPlayerNeedsPrepare:Z

.field protected mPositionCache:Lcom/buzzfeed/android/vcr/toolbox/PositionCache;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mRendererBuilder:Lcom/buzzfeed/android/vcr/player/RendererBuilder;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mSurface:Landroid/view/Surface;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mVideoPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;, "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/buzzfeed/android/vcr/model/VideoType;->NONE:Lcom/buzzfeed/android/vcr/model/VideoType;

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mContentType:Lcom/buzzfeed/android/vcr/model/VideoType;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mPlayerNeedsPrepare:Z

    .line 42
    new-instance v0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$VCRExoPlayerListenerInternal;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$VCRExoPlayerListenerInternal;-><init>(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$1;)V

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mPlaybackStateListener:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$Listener;

    .line 43
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Application context was null."

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mAppContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method private buildPlayerIfNeeded()V
    .registers 1

    .prologue
    .line 278
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;, "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter<TT;>;"
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->initRendererBuilderIfNeeded()V

    .line 279
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->preparePlayerIfNeeded()V

    .line 280
    return-void
.end method

.method private initRendererBuilderIfNeeded()V
    .registers 7

    .prologue
    .line 283
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;, "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter<TT;>;"
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->isContentAvailable()Z

    move-result v1

    if-nez v1, :cond_7

    .line 295
    :cond_6
    :goto_6
    return-void

    .line 285
    :cond_7
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mRendererBuilder:Lcom/buzzfeed/android/vcr/player/RendererBuilder;

    if-nez v1, :cond_6

    .line 287
    :try_start_b
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mContentUri:Ljava/lang/String;

    iget-object v3, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mContentType:Lcom/buzzfeed/android/vcr/model/VideoType;

    .line 290
    invoke-static {}, Lcom/buzzfeed/android/vcr/VCRConfig;->getInstance()Lcom/buzzfeed/android/vcr/VCRConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/buzzfeed/android/vcr/VCRConfig;->getAdaptiveBitrateLimit()J

    move-result-wide v4

    .line 287
    invoke-static {v1, v2, v3, v4, v5}, Lcom/buzzfeed/android/vcr/player/RendererBuilderFactory;->getRendererBuilder(Landroid/content/Context;Ljava/lang/String;Lcom/buzzfeed/android/vcr/model/VideoType;J)Lcom/buzzfeed/android/vcr/player/RendererBuilder;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mRendererBuilder:Lcom/buzzfeed/android/vcr/player/RendererBuilder;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1f} :catch_20

    goto :goto_6

    .line 291
    :catch_20
    move-exception v0

    .line 292
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->onPlayerOnError(Ljava/lang/Exception;)V

    goto :goto_6
.end method

.method private isContentAvailable()Z
    .registers 3

    .prologue
    .line 320
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;, "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter<TT;>;"
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mContentUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mContentType:Lcom/buzzfeed/android/vcr/model/VideoType;

    sget-object v1, Lcom/buzzfeed/android/vcr/model/VideoType;->NONE:Lcom/buzzfeed/android/vcr/model/VideoType;

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private isInPlaybackState()Z
    .registers 4

    .prologue
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;, "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter<TT;>;"
    const/4 v1, 0x0

    .line 189
    iget-object v2, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mVideoPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    if-nez v2, :cond_6

    .line 195
    :cond_5
    :goto_5
    return v1

    .line 193
    :cond_6
    iget-object v2, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mVideoPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    invoke-virtual {v2}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->getPlaybackState()I

    move-result v0

    .line 195
    .local v0, "currentState":I
    const/4 v2, 0x4

    if-eq v0, v2, :cond_12

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    :cond_12
    const/4 v1, 0x1

    goto :goto_5
.end method

.method private isSurfaceAvailable()Z
    .registers 2

    .prologue
    .line 324
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;, "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter<TT;>;"
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private preparePlayerIfNeeded()V
    .registers 5

    .prologue
    .line 298
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;, "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter<TT;>;"
    iget-boolean v2, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mPlayerNeedsPrepare:Z

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mRendererBuilder:Lcom/buzzfeed/android/vcr/player/RendererBuilder;

    if-eqz v2, :cond_e

    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->isSurfaceAvailable()Z

    move-result v2

    if-nez v2, :cond_f

    .line 317
    :cond_e
    :goto_e
    return-void

    .line 300
    :cond_f
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mPlayerNeedsPrepare:Z

    .line 301
    iget-object v2, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mVideoPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    if-nez v2, :cond_2b

    .line 302
    new-instance v2, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    invoke-direct {v2}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;-><init>()V

    iput-object v2, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mVideoPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    .line 303
    iget-object v2, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mVideoPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    iget-object v3, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mPlaybackStateListener:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$Listener;

    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->addListener(Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$Listener;)V

    .line 304
    iget-object v2, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mVideoPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    iget-boolean v3, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mIsLoggingEnabled:Z

    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->setDebugLoggingEnabled(Z)V

    .line 307
    :cond_2b
    iget-object v2, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mVideoPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    iget-object v3, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mRendererBuilder:Lcom/buzzfeed/android/vcr/player/RendererBuilder;

    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->setRendererBuilder(Lcom/buzzfeed/android/vcr/player/RendererBuilder;)V

    .line 308
    iget-object v2, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mVideoPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    invoke-virtual {v2}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->prepare()V

    .line 309
    iget-object v2, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mVideoPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    iget-object v3, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->setSurface(Landroid/view/Surface;)V

    .line 310
    iget-object v2, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mVideoPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    iget-boolean v3, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mPlayWhenReady:Z

    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->setPlayWhenReady(Z)V

    .line 311
    iget-object v2, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mVideoPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    iget-boolean v3, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mIsAudioMuted:Z

    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->setAudioMuted(Z)V

    .line 313
    iget-object v2, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mPositionCache:Lcom/buzzfeed/android/vcr/toolbox/PositionCache;

    if-eqz v2, :cond_5f

    iget-object v2, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mPositionCache:Lcom/buzzfeed/android/vcr/toolbox/PositionCache;

    iget-object v3, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mContentUri:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/buzzfeed/android/vcr/toolbox/PositionCache;->getPosition(Ljava/lang/String;)J

    move-result-wide v0

    .line 315
    .local v0, "position":J
    :goto_58
    invoke-virtual {p0, v0, v1}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->seekTo(J)V

    .line 316
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->onPlayerPrepared()V

    goto :goto_e

    .line 313
    .end local v0    # "position":J
    :cond_5f
    const-wide/16 v0, 0x0

    goto :goto_58
.end method

.method private setPlayWhenReady(Z)V
    .registers 3
    .param p1, "playWhenReady"    # Z

    .prologue
    .line 149
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;, "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter<TT;>;"
    iput-boolean p1, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mPlayWhenReady:Z

    .line 150
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mVideoPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    if-eqz v0, :cond_b

    .line 151
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mVideoPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->setPlayWhenReady(Z)V

    .line 153
    :cond_b
    return-void
.end method


# virtual methods
.method protected addContentPlaybackPositionToCache()V
    .registers 5
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 360
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;, "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter<TT;>;"
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mPositionCache:Lcom/buzzfeed/android/vcr/toolbox/PositionCache;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mVideoPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->isContentAvailable()Z

    move-result v0

    if-nez v0, :cond_f

    .line 365
    :cond_e
    :goto_e
    return-void

    .line 364
    :cond_f
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mPositionCache:Lcom/buzzfeed/android/vcr/toolbox/PositionCache;

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mContentUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mVideoPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    invoke-virtual {v2}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->getCurrentPosition()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/buzzfeed/android/vcr/toolbox/PositionCache;->putPosition(Ljava/lang/String;J)V

    goto :goto_e
.end method

.method public addListener(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;)V
    .registers 3
    .param p1, "listener"    # Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;

    .prologue
    .line 333
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;, "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter<TT;>;"
    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 334
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_f
    return-void
.end method

.method public blockingClearSurface()V
    .registers 2

    .prologue
    .line 119
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;, "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter<TT;>;"
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_10

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mSurface:Landroid/view/Surface;

    .line 121
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mVideoPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    if-eqz v0, :cond_10

    .line 122
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mVideoPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->blockingClearSurface()V

    .line 125
    :cond_10
    return-void
.end method

.method public getAspectRatio()F
    .registers 2

    .prologue
    .line 78
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;, "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter<TT;>;"
    iget v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mAspectRatio:F

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;, "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter<TT;>;"
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mContentUri:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPosition()J
    .registers 3

    .prologue
    .line 82
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;, "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter<TT;>;"
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mVideoPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    if-eqz v0, :cond_b

    .line 83
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mVideoPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    .line 89
    :goto_a
    return-wide v0

    .line 85
    :cond_b
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mContentUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mPositionCache:Lcom/buzzfeed/android/vcr/toolbox/PositionCache;

    if-eqz v0, :cond_20

    .line 86
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mPositionCache:Lcom/buzzfeed/android/vcr/toolbox/PositionCache;

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mContentUri:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/buzzfeed/android/vcr/toolbox/PositionCache;->getPosition(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_a

    .line 89
    :cond_20
    const-wide/16 v0, 0x0

    goto :goto_a
.end method

.method public getDuration()J
    .registers 3

    .prologue
    .line 93
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;, "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter<TT;>;"
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mVideoPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    if-eqz v0, :cond_b

    .line 94
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mVideoPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->getDuration()J

    move-result-wide v0

    .line 97
    :goto_a
    return-wide v0

    :cond_b
    const-wide/16 v0, 0x0

    goto :goto_a
.end method

.method public getVideoPlayer()Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 329
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;, "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter<TT;>;"
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mVideoPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    return-object v0
.end method

.method public getVideoType()Lcom/buzzfeed/android/vcr/model/VideoType;
    .registers 2

    .prologue
    .line 74
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;, "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter<TT;>;"
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mContentType:Lcom/buzzfeed/android/vcr/model/VideoType;

    return-object v0
.end method

.method public isAudioMuted()Z
    .registers 2

    .prologue
    .line 274
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;, "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter<TT;>;"
    iget-boolean v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mIsAudioMuted:Z

    return v0
.end method

.method public isPaused()Z
    .registers 2

    .prologue
    .line 161
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;, "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter<TT;>;"
    iget-boolean v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mPlayWhenReady:Z

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 185
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;, "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter<TT;>;"
    iget-boolean v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mPlayWhenReady:Z

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isPrepared()Z
    .registers 2

    .prologue
    .line 170
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;, "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter<TT;>;"
    iget-boolean v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mPlayerNeedsPrepare:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isReady()Z
    .registers 2

    .prologue
    .line 178
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;, "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter<TT;>;"
    iget-boolean v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mPlayerNeedsPrepare:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mVideoPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected onAudioMutedStateChanged()V
    .registers 4
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 404
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;, "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter<TT;>;"
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;

    .line 405
    .local v0, "listener":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;
    iget-boolean v2, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mIsAudioMuted:Z

    invoke-interface {v0, v2}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;->onAudioMutedStateChanged(Z)V

    goto :goto_6

    .line 407
    .end local v0    # "listener":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;
    :cond_18
    return-void
.end method

.method protected onPlayerOnError(Ljava/lang/Exception;)V
    .registers 5
    .param p1, "ex"    # Ljava/lang/Exception;
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 430
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;, "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter<TT;>;"
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->addContentPlaybackPositionToCache()V

    .line 431
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mPlayerNeedsPrepare:Z

    .line 432
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;

    .line 433
    .local v0, "listener":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;
    invoke-interface {v0, p1}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;->onError(Ljava/lang/Exception;)V

    goto :goto_c

    .line 435
    .end local v0    # "listener":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;
    :cond_1c
    return-void
.end method

.method protected onPlayerPrepared()V
    .registers 4
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 394
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;, "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter<TT;>;"
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;

    .line 395
    .local v0, "listener":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;
    iget-object v2, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mVideoPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    invoke-interface {v0, v2}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;->onPlayerPrepared(Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;)V

    goto :goto_6

    .line 397
    .end local v0    # "listener":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;
    :cond_18
    return-void
.end method

.method protected onPlayerReleased(J)V
    .registers 6
    .param p1, "playbackPosition"    # J
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 469
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;, "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter<TT;>;"
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;

    .line 470
    .local v0, "listener":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;
    invoke-interface {v0, p0, p1, p2}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;->onPlayerReleased(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;J)V

    goto :goto_6

    .line 472
    .end local v0    # "listener":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;
    :cond_16
    return-void
.end method

.method protected onPlayerStateChanged(ZI)V
    .registers 6
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 414
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;, "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter<TT;>;"
    const/4 v1, 0x5

    if-ne p2, v1, :cond_6

    .line 415
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->removeContentPlaybackPositionFromCache()V

    .line 418
    :cond_6
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;

    .line 419
    .local v0, "listener":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;
    invoke-interface {v0, p1, p2}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;->onStateChanged(ZI)V

    goto :goto_c

    .line 421
    .end local v0    # "listener":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;
    :cond_1c
    return-void
.end method

.method protected onPlayerStopped(J)V
    .registers 6
    .param p1, "playbackPosition"    # J
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 479
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;, "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter<TT;>;"
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;

    .line 480
    .local v0, "listener":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;
    invoke-interface {v0, p0, p1, p2}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;->onPlayerStopped(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;J)V

    goto :goto_6

    .line 482
    .end local v0    # "listener":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;
    :cond_16
    return-void
.end method

.method protected onVideoSizeChanged(IIIF)V
    .registers 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unappliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 458
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;, "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter<TT;>;"
    if-nez p2, :cond_1c

    const/high16 v1, 0x3f800000

    :goto_4
    iput v1, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mAspectRatio:F

    .line 459
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;

    .line 460
    .local v0, "listener":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;->onVideoSizeChanged(IIIF)V

    goto :goto_c

    .line 458
    .end local v0    # "listener":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;
    :cond_1c
    int-to-float v1, p1

    mul-float/2addr v1, p4

    int-to-float v2, p2

    div-float/2addr v1, v2

    goto :goto_4

    .line 462
    :cond_21
    return-void
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 145
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;, "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->setPlayWhenReady(Z)V

    .line 146
    return-void
.end method

.method public play()V
    .registers 2

    .prologue
    .line 135
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;, "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->setPlayWhenReady(Z)V

    .line 136
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->buildPlayerIfNeeded()V

    .line 137
    return-void
.end method

.method public release()V
    .registers 7

    .prologue
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;, "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter<TT;>;"
    const/4 v5, 0x0

    .line 223
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mVideoPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    if-eqz v1, :cond_33

    .line 224
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mVideoPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    invoke-virtual {v1}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->getPlaybackState()I

    move-result v0

    .line 225
    .local v0, "playbackState":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_11

    .line 226
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->addContentPlaybackPositionToCache()V

    .line 228
    :cond_11
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mVideoPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    invoke-virtual {v1}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->getCurrentPosition()J

    move-result-wide v2

    .line 229
    .local v2, "pos":J
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mVideoPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    iget-object v4, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mPlaybackStateListener:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$Listener;

    invoke-virtual {v1, v4}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->removeListener(Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$Listener;)V

    .line 230
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mVideoPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    invoke-virtual {v1}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->release()V

    .line 231
    iput-object v5, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mVideoPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    .line 232
    iput-object v5, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mRendererBuilder:Lcom/buzzfeed/android/vcr/player/RendererBuilder;

    .line 233
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mPlayerNeedsPrepare:Z

    .line 234
    iput-object v5, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mSurface:Landroid/view/Surface;

    .line 235
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->setPlayWhenReady(Z)V

    .line 236
    invoke-virtual {p0, v2, v3}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->onPlayerReleased(J)V

    .line 238
    .end local v0    # "playbackState":I
    .end local v2    # "pos":J
    :cond_33
    return-void
.end method

.method protected removeContentPlaybackPositionFromCache()V
    .registers 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 372
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;, "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter<TT;>;"
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mPositionCache:Lcom/buzzfeed/android/vcr/toolbox/PositionCache;

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->isContentAvailable()Z

    move-result v0

    if-nez v0, :cond_b

    .line 377
    :cond_a
    :goto_a
    return-void

    .line 376
    :cond_b
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mPositionCache:Lcom/buzzfeed/android/vcr/toolbox/PositionCache;

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mContentUri:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/buzzfeed/android/vcr/toolbox/PositionCache;->removePosition(Ljava/lang/String;)V

    goto :goto_a
.end method

.method public removeListener(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;)V
    .registers 3
    .param p1, "listener"    # Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;

    .prologue
    .line 339
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;, "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter<TT;>;"
    if-eqz p1, :cond_7

    .line 340
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 342
    :cond_7
    return-void
.end method

.method public seekTo(J)V
    .registers 6
    .param p1, "positionMs"    # J

    .prologue
    .line 246
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;, "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter<TT;>;"
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mVideoPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mPlayerNeedsPrepare:Z

    if-nez v0, :cond_e

    .line 247
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mVideoPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->seekTo(J)V

    .line 251
    :cond_d
    :goto_d
    return-void

    .line 248
    :cond_e
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mPositionCache:Lcom/buzzfeed/android/vcr/toolbox/PositionCache;

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 249
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mPositionCache:Lcom/buzzfeed/android/vcr/toolbox/PositionCache;

    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/buzzfeed/android/vcr/toolbox/PositionCache;->putPosition(Ljava/lang/String;J)V

    goto :goto_d
.end method

.method public setAudioMuted(Z)V
    .registers 4
    .param p1, "muted"    # Z

    .prologue
    .line 261
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;, "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter<TT;>;"
    iget-boolean v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mIsAudioMuted:Z

    if-ne v0, p1, :cond_5

    .line 268
    :goto_4
    return-void

    .line 263
    :cond_5
    iput-boolean p1, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mIsAudioMuted:Z

    .line 264
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mVideoPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    if-eqz v0, :cond_12

    .line 265
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mVideoPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    iget-boolean v1, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mIsAudioMuted:Z

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->setAudioMuted(Z)V

    .line 267
    :cond_12
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->onAudioMutedStateChanged()V

    goto :goto_4
.end method

.method public setContent(Ljava/lang/String;Lcom/buzzfeed/android/vcr/model/VideoType;)V
    .registers 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/buzzfeed/android/vcr/model/VideoType;

    .prologue
    .line 58
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;, "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter<TT;>;"
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mContentUri:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mRendererBuilder:Lcom/buzzfeed/android/vcr/player/RendererBuilder;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mPlayerNeedsPrepare:Z

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mAspectRatio:F

    .line 64
    :cond_11
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mContentUri:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mContentType:Lcom/buzzfeed/android/vcr/model/VideoType;

    .line 66
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->buildPlayerIfNeeded()V

    .line 67
    return-void
.end method

.method public setDebugLoggingEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 348
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;, "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter<TT;>;"
    iput-boolean p1, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mIsLoggingEnabled:Z

    .line 350
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mVideoPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    if-eqz v0, :cond_b

    .line 351
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mVideoPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->setDebugLoggingEnabled(Z)V

    .line 353
    :cond_b
    return-void
.end method

.method public setPositionCache(Lcom/buzzfeed/android/vcr/toolbox/PositionCache;)V
    .registers 2
    .param p1, "positionCache"    # Lcom/buzzfeed/android/vcr/toolbox/PositionCache;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 385
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;, "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter<TT;>;"
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mPositionCache:Lcom/buzzfeed/android/vcr/toolbox/PositionCache;

    .line 386
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 106
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;, "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter<TT;>;"
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mSurface:Landroid/view/Surface;

    .line 107
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mVideoPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    if-eqz v0, :cond_f

    .line 108
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mVideoPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->setSurface(Landroid/view/Surface;)V

    .line 109
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->preparePlayerIfNeeded()V

    .line 113
    :goto_e
    return-void

    .line 111
    :cond_f
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->buildPlayerIfNeeded()V

    goto :goto_e
.end method

.method public abstract setTargetView(Landroid/view/View;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public stop()V
    .registers 5

    .prologue
    .line 204
    .local p0, "this":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;, "Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter<TT;>;"
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mVideoPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    if-eqz v1, :cond_28

    .line 205
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mVideoPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    invoke-virtual {v1}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->getPlaybackState()I

    move-result v0

    .line 206
    .local v0, "playbackState":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_10

    .line 207
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->addContentPlaybackPositionToCache()V

    .line 209
    :cond_10
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mVideoPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    invoke-virtual {v1}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->getCurrentPosition()J

    move-result-wide v2

    .line 210
    .local v2, "pos":J
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mVideoPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    invoke-virtual {v1}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->stop()V

    .line 211
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mRendererBuilder:Lcom/buzzfeed/android/vcr/player/RendererBuilder;

    .line 212
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->mPlayerNeedsPrepare:Z

    .line 213
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->setPlayWhenReady(Z)V

    .line 214
    invoke-virtual {p0, v2, v3}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->onPlayerStopped(J)V

    .line 216
    .end local v0    # "playbackState":I
    .end local v2    # "pos":J
    :cond_28
    return-void
.end method
