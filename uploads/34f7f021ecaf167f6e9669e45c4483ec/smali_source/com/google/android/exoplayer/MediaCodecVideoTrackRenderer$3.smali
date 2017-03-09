.class Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$3;
.super Ljava/lang/Object;
.source "MediaCodecVideoTrackRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->maybeNotifyDroppedFrameCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

.field final synthetic val$countToNotify:I

.field final synthetic val$elapsedToNotify:J


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;IJ)V
    .registers 6
    .param p1, "this$0"    # Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    .prologue
    .line 600
    iput-object p1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$3;->this$0:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    iput p2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$3;->val$countToNotify:I

    iput-wide p3, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$3;->val$elapsedToNotify:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 603
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$3;->this$0:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    # getter for: Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->eventListener:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;
    invoke-static {v0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->access$000(Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;)Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$3;->val$countToNotify:I

    iget-wide v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$3;->val$elapsedToNotify:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;->onDroppedFrames(IJ)V

    .line 604
    return-void
.end method
