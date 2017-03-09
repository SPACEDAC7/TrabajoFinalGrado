.class Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$1;
.super Ljava/lang/Object;
.source "MediaCodecVideoTrackRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->maybeNotifyVideoSizeChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

.field final synthetic val$currentHeight:I

.field final synthetic val$currentPixelWidthHeightRatio:F

.field final synthetic val$currentUnappliedRotationDegrees:I

.field final synthetic val$currentWidth:I


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;IIIF)V
    .registers 6
    .param p1, "this$0"    # Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    .prologue
    .line 562
    iput-object p1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$1;->this$0:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    iput p2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$1;->val$currentWidth:I

    iput p3, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$1;->val$currentHeight:I

    iput p4, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$1;->val$currentUnappliedRotationDegrees:I

    iput p5, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$1;->val$currentPixelWidthHeightRatio:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 565
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$1;->this$0:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    # getter for: Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->eventListener:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;
    invoke-static {v0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->access$000(Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;)Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$1;->val$currentWidth:I

    iget v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$1;->val$currentHeight:I

    iget v3, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$1;->val$currentUnappliedRotationDegrees:I

    iget v4, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$1;->val$currentPixelWidthHeightRatio:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;->onVideoSizeChanged(IIIF)V

    .line 567
    return-void
.end method
