.class Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalVideoEventListener;
.super Lcom/buzzfeed/android/vcr/player/listener/VideoSurfacePresenterListenerImpl;
.source "BuffetVideoEventTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalVideoEventListener"
.end annotation


# instance fields
.field private mLastKnownPlayerPosition:J

.field private mVideoStartTracked:Z

.field final synthetic this$0:Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;)V
    .registers 4

    .prologue
    .line 251
    iput-object p1, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalVideoEventListener;->this$0:Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;

    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/player/listener/VideoSurfacePresenterListenerImpl;-><init>()V

    .line 253
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalVideoEventListener;->mLastKnownPlayerPosition:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;
    .param p2, "x1"    # Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$1;

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalVideoEventListener;-><init>(Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;)V

    return-void
.end method

.method static synthetic access$202(Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalVideoEventListener;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalVideoEventListener;
    .param p1, "x1"    # Z

    .prologue
    .line 251
    iput-boolean p1, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalVideoEventListener;->mVideoStartTracked:Z

    return p1
.end method

.method private sendEndVideoEventIfNeeded(Ljava/lang/String;)V
    .registers 6
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalVideoEventListener;->mVideoStartTracked:Z

    if-eqz v0, :cond_28

    .line 309
    iget-object v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalVideoEventListener;->this$0:Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->configureTrackerForCurrentContent()V

    .line 310
    iget-object v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalVideoEventListener;->this$0:Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;

    # getter for: Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mVideoEventTracker:Lcom/buzzfeed/analytics/client/VideoTracker;
    invoke-static {v0}, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->access$400(Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;)Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v0

    iget-wide v2, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalVideoEventListener;->mLastKnownPlayerPosition:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/buzzfeed/analytics/client/VideoTracker;->sendEndVideoEvent(JLjava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalVideoEventListener;->this$0:Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;

    # getter for: Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mHasPendingContentReset:Z
    invoke-static {v0}, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->access$500(Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 313
    iget-object v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalVideoEventListener;->this$0:Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;

    # getter for: Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mVideoEventTracker:Lcom/buzzfeed/analytics/client/VideoTracker;
    invoke-static {v0}, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->access$400(Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;)Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/analytics/client/VideoTracker;->resetVideoData()V

    .line 316
    :cond_25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalVideoEventListener;->mVideoStartTracked:Z

    .line 318
    :cond_28
    return-void
.end method

.method private sendStartVideoEventIfNeeded()V
    .registers 5

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalVideoEventListener;->mVideoStartTracked:Z

    if-nez v0, :cond_30

    .line 294
    iget-object v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalVideoEventListener;->this$0:Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->configureTrackerForCurrentContent()V

    .line 295
    iget-object v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalVideoEventListener;->this$0:Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;

    # getter for: Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mVideoEventTracker:Lcom/buzzfeed/analytics/client/VideoTracker;
    invoke-static {v0}, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->access$400(Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;)Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v0

    const-string v1, "auto"

    .line 296
    invoke-virtual {v0, v1}, Lcom/buzzfeed/analytics/client/VideoTracker;->setPlayReason(Ljava/lang/String;)Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v0

    iget-wide v2, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalVideoEventListener;->mLastKnownPlayerPosition:J

    .line 297
    invoke-virtual {v0, v2, v3}, Lcom/buzzfeed/analytics/client/VideoTracker;->sendStartVideoEvent(J)V

    .line 299
    iget-wide v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalVideoEventListener;->mLastKnownPlayerPosition:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2d

    .line 300
    iget-object v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalVideoEventListener;->this$0:Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;

    # getter for: Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mVideoEventTracker:Lcom/buzzfeed/analytics/client/VideoTracker;
    invoke-static {v0}, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->access$400(Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;)Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v0

    const-string v1, "Feed"

    invoke-virtual {v0, v1}, Lcom/buzzfeed/analytics/client/VideoTracker;->sendAutoPlayBegins(Ljava/lang/String;)V

    .line 303
    :cond_2d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalVideoEventListener;->mVideoStartTracked:Z

    .line 305
    :cond_30
    return-void
.end method

.method private updateLastKnownPlayerPosition(I)V
    .registers 4
    .param p1, "playbackState"    # I

    .prologue
    .line 287
    const/4 v0, 0x4

    if-eq p1, v0, :cond_f

    .line 288
    iget-object v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalVideoEventListener;->this$0:Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;

    # getter for: Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mVideoSurfacePresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;
    invoke-static {v0}, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->access$300(Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;)Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalVideoEventListener;->mLastKnownPlayerPosition:J

    .line 290
    :cond_f
    return-void
.end method


# virtual methods
.method public onPlayerReleased(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;J)V
    .registers 6
    .param p1, "presenter"    # Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;
    .param p2, "playbackPosition"    # J

    .prologue
    .line 262
    iput-wide p2, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalVideoEventListener;->mLastKnownPlayerPosition:J

    .line 263
    const-string v0, "auto"

    invoke-direct {p0, v0}, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalVideoEventListener;->sendEndVideoEventIfNeeded(Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method public onPlayerStopped(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;J)V
    .registers 6
    .param p1, "presenter"    # Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;
    .param p2, "playbackPosition"    # J

    .prologue
    .line 268
    iput-wide p2, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalVideoEventListener;->mLastKnownPlayerPosition:J

    .line 269
    const-string v0, "auto"

    invoke-direct {p0, v0}, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalVideoEventListener;->sendEndVideoEventIfNeeded(Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public onStateChanged(ZI)V
    .registers 4
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .prologue
    .line 274
    invoke-direct {p0, p2}, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalVideoEventListener;->updateLastKnownPlayerPosition(I)V

    .line 275
    if-eqz p1, :cond_c

    const/4 v0, 0x4

    if-ne p2, v0, :cond_c

    .line 276
    invoke-direct {p0}, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalVideoEventListener;->sendStartVideoEventIfNeeded()V

    .line 280
    :cond_b
    :goto_b
    return-void

    .line 277
    :cond_c
    if-eqz p1, :cond_b

    const/4 v0, 0x5

    if-ne p2, v0, :cond_b

    .line 278
    const-string/jumbo v0, "video_complete"

    invoke-direct {p0, v0}, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalVideoEventListener;->sendEndVideoEventIfNeeded(Ljava/lang/String;)V

    goto :goto_b
.end method
