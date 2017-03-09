.class final Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor$InternalPlaybackEventListener;
.super Lcom/buzzfeed/android/vcr/player/listener/VideoSurfacePresenterListenerImpl;
.source "PlaybackPositionMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InternalPlaybackEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;)V
    .registers 2

    .prologue
    .line 137
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor$InternalPlaybackEventListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;

    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/player/listener/VideoSurfacePresenterListenerImpl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;
    .param p2, "x1"    # Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor$1;

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor$InternalPlaybackEventListener;-><init>(Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;)V

    return-void
.end method


# virtual methods
.method public onPlayerReleased(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;J)V
    .registers 5
    .param p1, "presenter"    # Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;
    .param p2, "playbackPosition"    # J

    .prologue
    .line 146
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor$InternalPlaybackEventListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;

    # invokes: Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;->stopProgressUpdates()V
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;->access$200(Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;)V

    .line 147
    return-void
.end method

.method public onPlayerStopped(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;J)V
    .registers 5
    .param p1, "presenter"    # Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;
    .param p2, "playbackPosition"    # J

    .prologue
    .line 141
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor$InternalPlaybackEventListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;

    # invokes: Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;->stopProgressUpdates()V
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;->access$200(Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;)V

    .line 142
    return-void
.end method

.method public onStateChanged(ZI)V
    .registers 4
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .prologue
    .line 151
    if-eqz p1, :cond_b

    const/4 v0, 0x3

    if-ne p2, v0, :cond_b

    .line 152
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor$InternalPlaybackEventListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;

    # invokes: Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;->startProgressUpdates()V
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;->access$300(Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;)V

    .line 157
    :cond_a
    :goto_a
    return-void

    .line 153
    :cond_b
    if-eqz p1, :cond_a

    const/4 v0, 0x5

    if-ne p2, v0, :cond_a

    .line 154
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor$InternalPlaybackEventListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;

    # invokes: Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;->notifyProgressUpdate()V
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;->access$400(Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;)V

    .line 155
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor$InternalPlaybackEventListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;

    # invokes: Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;->stopProgressUpdates()V
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;->access$200(Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;)V

    goto :goto_a
.end method
