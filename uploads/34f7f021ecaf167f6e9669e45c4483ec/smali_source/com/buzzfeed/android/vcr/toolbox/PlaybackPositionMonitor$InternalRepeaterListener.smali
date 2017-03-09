.class final Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor$InternalRepeaterListener;
.super Ljava/lang/Object;
.source "PlaybackPositionMonitor.java"

# interfaces
.implements Lcom/buzzfeed/toolkit/util/Repeater$RepeatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InternalRepeaterListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;)V
    .registers 2

    .prologue
    .line 163
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor$InternalRepeaterListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;
    .param p2, "x1"    # Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor$1;

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor$InternalRepeaterListener;-><init>(Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;)V

    return-void
.end method


# virtual methods
.method public onRepeat()V
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor$InternalRepeaterListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;

    # getter for: Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;->mVideoSurfacePresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;->access$500(Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;)Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 168
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor$InternalRepeaterListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;

    # invokes: Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;->notifyProgressUpdate()V
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;->access$400(Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor;)V

    .line 170
    :cond_11
    return-void
.end method
