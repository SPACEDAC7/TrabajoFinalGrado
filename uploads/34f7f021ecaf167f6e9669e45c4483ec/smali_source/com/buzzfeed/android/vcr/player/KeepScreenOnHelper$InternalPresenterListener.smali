.class final Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper$InternalPresenterListener;
.super Ljava/lang/Object;
.source "KeepScreenOnHelper.java"

# interfaces
.implements Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InternalPresenterListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;)V
    .registers 2

    .prologue
    .line 80
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper$InternalPresenterListener;->this$0:Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;
    .param p2, "x1"    # Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper$1;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper$InternalPresenterListener;-><init>(Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;)V

    return-void
.end method


# virtual methods
.method public onAudioMutedStateChanged(Z)V
    .registers 2
    .param p1, "muted"    # Z

    .prologue
    .line 90
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper$InternalPresenterListener;->this$0:Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;

    const/4 v1, 0x0

    # invokes: Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;->updateKeepScreenOnFlags(Z)V
    invoke-static {v0, v1}, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;->access$100(Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;Z)V

    .line 127
    return-void
.end method

.method public onPlayerPrepared(Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;)V
    .registers 4
    .param p1, "exoPlayer"    # Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper$InternalPresenterListener;->this$0:Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;

    const/4 v1, 0x1

    # invokes: Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;->updateKeepScreenOnFlags(Z)V
    invoke-static {v0, v1}, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;->access$100(Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;Z)V

    .line 85
    return-void
.end method

.method public onPlayerReleased(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;J)V
    .registers 6
    .param p1, "presenter"    # Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;
    .param p2, "playbackPosition"    # J

    .prologue
    .line 94
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper$InternalPresenterListener;->this$0:Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;

    const/4 v1, 0x0

    # invokes: Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;->updateKeepScreenOnFlags(Z)V
    invoke-static {v0, v1}, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;->access$100(Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;Z)V

    .line 95
    return-void
.end method

.method public onPlayerStopped(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;J)V
    .registers 6
    .param p1, "presenter"    # Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;
    .param p2, "playbackPosition"    # J

    .prologue
    .line 99
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper$InternalPresenterListener;->this$0:Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;

    const/4 v1, 0x0

    # invokes: Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;->updateKeepScreenOnFlags(Z)V
    invoke-static {v0, v1}, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;->access$100(Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;Z)V

    .line 100
    return-void
.end method

.method public onStateChanged(ZI)V
    .registers 6
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .prologue
    .line 105
    packed-switch p2, :pswitch_data_32

    .line 119
    # getter for: Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;->access$200()Ljava/lang/String;

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

    .line 122
    :goto_1d
    return-void

    .line 108
    :pswitch_1e
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper$InternalPresenterListener;->this$0:Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;

    const/4 v1, 0x0

    # invokes: Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;->updateKeepScreenOnFlags(Z)V
    invoke-static {v0, v1}, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;->access$100(Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;Z)V

    goto :goto_1d

    .line 111
    :pswitch_25
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper$InternalPresenterListener;->this$0:Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;

    # invokes: Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;->updateKeepScreenOnFlags(Z)V
    invoke-static {v0, p1}, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;->access$100(Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;Z)V

    goto :goto_1d

    .line 115
    :pswitch_2b
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper$InternalPresenterListener;->this$0:Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;

    const/4 v1, 0x1

    # invokes: Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;->updateKeepScreenOnFlags(Z)V
    invoke-static {v0, v1}, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;->access$100(Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;Z)V

    goto :goto_1d

    .line 105
    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_2b
        :pswitch_2b
        :pswitch_25
        :pswitch_1e
    .end packed-switch
.end method

.method public onVideoSizeChanged(IIIF)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unappliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F

    .prologue
    .line 133
    return-void
.end method
