.class public Lcom/buzzfeed/buffet/ui/listener/VideoCardPlaybackStateHandler;
.super Ljava/lang/Object;
.source "VideoCardPlaybackStateHandler.java"

# interfaces
.implements Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private applyTargetUiState(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;)V
    .registers 4
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "state"    # Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;

    .prologue
    .line 54
    if-nez p1, :cond_3

    .line 60
    :goto_2
    return-void

    :cond_3
    move-object v0, p1

    .line 58
    check-cast v0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;

    .line 59
    .local v0, "card":Lcom/buzzfeed/buffet/ui/holder/VideoCard;
    invoke-virtual {v0, p2}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->applyUiState(Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;)V

    goto :goto_2
.end method


# virtual methods
.method public onAudioMuteStateChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V
    .registers 3
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "isMuted"    # Z

    .prologue
    .line 48
    return-void
.end method

.method public onPlaybackError(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 3
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 30
    sget-object v0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;->ERROR:Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;

    invoke-direct {p0, p1, v0}, Lcom/buzzfeed/buffet/ui/listener/VideoCardPlaybackStateHandler;->applyTargetUiState(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;)V

    .line 31
    return-void
.end method

.method public onPlaybackPreparing(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 3
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 15
    sget-object v0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;->PREPARING:Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;

    invoke-direct {p0, p1, v0}, Lcom/buzzfeed/buffet/ui/listener/VideoCardPlaybackStateHandler;->applyTargetUiState(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;)V

    .line 16
    return-void
.end method

.method public onPlaybackStarted(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 3
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 20
    sget-object v0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;->PLAYING:Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;

    invoke-direct {p0, p1, v0}, Lcom/buzzfeed/buffet/ui/listener/VideoCardPlaybackStateHandler;->applyTargetUiState(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;)V

    .line 21
    return-void
.end method

.method public onPlaybackStopped(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 3
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 25
    sget-object v0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;->STOPPED:Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;

    invoke-direct {p0, p1, v0}, Lcom/buzzfeed/buffet/ui/listener/VideoCardPlaybackStateHandler;->applyTargetUiState(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;)V

    .line 26
    return-void
.end method

.method public onVideoSizeChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIIF)V
    .registers 9
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "rotationDegrees"    # I
    .param p5, "pixelWidthHeightRatio"    # F

    .prologue
    .line 36
    if-nez p1, :cond_3

    .line 43
    :goto_2
    return-void

    :cond_3
    move-object v0, p1

    .line 40
    check-cast v0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;

    .line 41
    .local v0, "card":Lcom/buzzfeed/buffet/ui/holder/VideoCard;
    if-nez p3, :cond_13

    const/high16 v1, 0x3f800000

    :goto_a
    invoke-virtual {v0, v1}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->updateVideoAspectRatio(F)V

    .line 42
    sget-object v1, Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;->PLAYING:Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;

    invoke-direct {p0, p1, v1}, Lcom/buzzfeed/buffet/ui/listener/VideoCardPlaybackStateHandler;->applyTargetUiState(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;)V

    goto :goto_2

    .line 41
    :cond_13
    int-to-float v1, p2

    mul-float/2addr v1, p5

    int-to-float v2, p3

    div-float/2addr v1, v2

    goto :goto_a
.end method
