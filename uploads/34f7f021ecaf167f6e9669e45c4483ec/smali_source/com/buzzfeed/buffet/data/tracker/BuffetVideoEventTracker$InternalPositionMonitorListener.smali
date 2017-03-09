.class Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalPositionMonitorListener;
.super Ljava/lang/Object;
.source "BuffetVideoEventTracker.java"

# interfaces
.implements Lcom/buzzfeed/android/vcr/toolbox/PlaybackPositionMonitor$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalPositionMonitorListener"
.end annotation


# instance fields
.field private mLastKnownProgressMarker:Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;

.field final synthetic this$0:Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;)V
    .registers 2

    .prologue
    .line 324
    iput-object p1, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalPositionMonitorListener;->this$0:Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;
    .param p2, "x1"    # Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$1;

    .prologue
    .line 324
    invoke-direct {p0, p1}, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalPositionMonitorListener;-><init>(Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;)V

    return-void
.end method


# virtual methods
.method public onPositionTrackingStarted(JJ)V
    .registers 6
    .param p1, "playbackPosition"    # J
    .param p3, "contentDuration"    # J

    .prologue
    .line 340
    invoke-static {p1, p2, p3, p4}, Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils;->getProgressMarkerForPosition(JJ)Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalPositionMonitorListener;->mLastKnownProgressMarker:Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;

    .line 341
    return-void
.end method

.method public onPositionUpdated(JJ)V
    .registers 10
    .param p1, "playbackPosition"    # J
    .param p3, "contentDuration"    # J

    .prologue
    .line 330
    invoke-static {p1, p2, p3, p4}, Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils;->getProgressMarkerForPosition(JJ)Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;

    move-result-object v0

    .line 332
    .local v0, "marker":Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;
    sget-object v1, Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;->START:Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;

    if-eq v0, v1, :cond_1d

    iget-object v1, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalPositionMonitorListener;->mLastKnownProgressMarker:Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;

    if-eq v1, v0, :cond_1d

    .line 333
    iput-object v0, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalPositionMonitorListener;->mLastKnownProgressMarker:Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;

    .line 334
    iget-object v1, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalPositionMonitorListener;->this$0:Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;

    # getter for: Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->mVideoEventTracker:Lcom/buzzfeed/analytics/client/VideoTracker;
    invoke-static {v1}, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->access$400(Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;)Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v1

    const-string v2, "Feed"

    iget-object v3, p0, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker$InternalPositionMonitorListener;->mLastKnownProgressMarker:Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;

    iget v3, v3, Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;->percentage:I

    invoke-virtual {v1, v2, v3}, Lcom/buzzfeed/analytics/client/VideoTracker;->sendPlaybackProgress(Ljava/lang/String;I)V

    .line 336
    :cond_1d
    return-void
.end method
