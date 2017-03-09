.class final Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$InternalExoPlayerListener;
.super Ljava/lang/Object;
.source "VCRExoPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer/ExoPlayer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InternalExoPlayerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;)V
    .registers 2

    .prologue
    .line 351
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$InternalExoPlayerListener;->this$0:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;
    .param p2, "x1"    # Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$1;

    .prologue
    .line 351
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$InternalExoPlayerListener;-><init>(Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;)V

    return-void
.end method


# virtual methods
.method public onPlayWhenReadyCommitted()V
    .registers 1

    .prologue
    .line 361
    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer/ExoPlaybackException;)V
    .registers 5
    .param p1, "error"    # Lcom/google/android/exoplayer/ExoPlaybackException;

    .prologue
    .line 365
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$InternalExoPlayerListener;->this$0:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    sget-object v2, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;->IDLE:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;

    # setter for: Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mRendererBuildingState:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;
    invoke-static {v1, v2}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->access$302(Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;)Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$RendererBuildingState;

    .line 366
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$InternalExoPlayerListener;->this$0:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    # getter for: Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v1}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->access$400(Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$Listener;

    .line 367
    .local v0, "listener":Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$Listener;
    invoke-interface {v0, p1}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$Listener;->onError(Ljava/lang/Exception;)V

    goto :goto_11

    .line 369
    .end local v0    # "listener":Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$Listener;
    :cond_21
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .registers 4
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .prologue
    .line 355
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$InternalExoPlayerListener;->this$0:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    # invokes: Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->reportPlayerState()V
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->access$200(Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;)V

    .line 356
    return-void
.end method
