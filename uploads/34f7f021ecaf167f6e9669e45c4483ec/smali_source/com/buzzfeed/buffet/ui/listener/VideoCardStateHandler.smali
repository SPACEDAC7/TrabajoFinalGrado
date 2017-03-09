.class public Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;
.super Lcom/buzzfeed/android/vcr/player/listener/VideoSurfacePresenterListenerImpl;
.source "VideoCardStateHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mTargetVideoCard:Lcom/buzzfeed/buffet/ui/holder/VideoCard;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const-class v0, Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/player/listener/VideoSurfacePresenterListenerImpl;-><init>()V

    return-void
.end method

.method private applyTargetUiState(Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;)V
    .registers 3
    .param p1, "state"    # Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;->mTargetVideoCard:Lcom/buzzfeed/buffet/ui/holder/VideoCard;

    if-nez v0, :cond_5

    .line 82
    :goto_4
    return-void

    .line 81
    :cond_5
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;->mTargetVideoCard:Lcom/buzzfeed/buffet/ui/holder/VideoCard;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->applyUiState(Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;)V

    goto :goto_4
.end method


# virtual methods
.method public getTargetViewCard()Lcom/buzzfeed/buffet/ui/holder/VideoCard;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;->mTargetVideoCard:Lcom/buzzfeed/buffet/ui/holder/VideoCard;

    return-object v0
.end method

.method public onError(Ljava/lang/Exception;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 60
    sget-object v0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;->ERROR:Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;

    invoke-direct {p0, v0}, Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;->applyTargetUiState(Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;)V

    .line 61
    return-void
.end method

.method public onPlayerPrepared(Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;)V
    .registers 3
    .param p1, "exoPlayer"    # Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    .prologue
    .line 28
    sget-object v0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;->PREPARING:Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;

    invoke-direct {p0, v0}, Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;->applyTargetUiState(Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;)V

    .line 29
    return-void
.end method

.method public onPlayerReleased(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;J)V
    .registers 5
    .param p1, "presenter"    # Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;
    .param p2, "playbackPosition"    # J

    .prologue
    .line 33
    sget-object v0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;->STOPPED:Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;

    invoke-direct {p0, v0}, Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;->applyTargetUiState(Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;)V

    .line 34
    return-void
.end method

.method public onStateChanged(ZI)V
    .registers 6
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .prologue
    .line 38
    packed-switch p2, :pswitch_data_42

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onStateChanged"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown playback state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :goto_2e
    :pswitch_2e
    return-void

    .line 42
    :pswitch_2f
    sget-object v0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;->PLAYING:Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;

    invoke-direct {p0, v0}, Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;->applyTargetUiState(Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;)V

    goto :goto_2e

    .line 46
    :pswitch_35
    sget-object v0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;->PREPARING:Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;

    invoke-direct {p0, v0}, Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;->applyTargetUiState(Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;)V

    goto :goto_2e

    .line 49
    :pswitch_3b
    sget-object v0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;->STOPPED:Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;

    invoke-direct {p0, v0}, Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;->applyTargetUiState(Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;)V

    goto :goto_2e

    .line 38
    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_35
        :pswitch_35
        :pswitch_2f
        :pswitch_3b
    .end packed-switch
.end method

.method public onVideoSizeChanged(IIIF)V
    .registers 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unappliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F

    .prologue
    .line 66
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;->mTargetVideoCard:Lcom/buzzfeed/buffet/ui/holder/VideoCard;

    if-nez v0, :cond_5

    .line 72
    :goto_4
    return-void

    .line 70
    :cond_5
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;->mTargetVideoCard:Lcom/buzzfeed/buffet/ui/holder/VideoCard;

    if-nez p2, :cond_16

    const/high16 v0, 0x3f800000

    :goto_b
    invoke-virtual {v1, v0}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->updateVideoAspectRatio(F)V

    .line 71
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;->mTargetVideoCard:Lcom/buzzfeed/buffet/ui/holder/VideoCard;

    sget-object v1, Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;->PLAYING:Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->applyUiState(Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;)V

    goto :goto_4

    .line 70
    :cond_16
    int-to-float v0, p1

    mul-float/2addr v0, p4

    int-to-float v2, p2

    div-float/2addr v0, v2

    goto :goto_b
.end method

.method public setTargetVideoCard(Lcom/buzzfeed/buffet/ui/holder/VideoCard;)V
    .registers 2
    .param p1, "card"    # Lcom/buzzfeed/buffet/ui/holder/VideoCard;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;->mTargetVideoCard:Lcom/buzzfeed/buffet/ui/holder/VideoCard;

    .line 20
    return-void
.end method
