.class Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$2;
.super Ljava/lang/Object;
.source "MediaCodecVideoTrackRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->maybeNotifyDrawnToSurface()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

.field final synthetic val$surface:Landroid/view/Surface;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;Landroid/view/Surface;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    .prologue
    .line 582
    iput-object p1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$2;->this$0:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    iput-object p2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$2;->val$surface:Landroid/view/Surface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 585
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$2;->this$0:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    # getter for: Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->eventListener:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;
    invoke-static {v0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->access$000(Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;)Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$2;->val$surface:Landroid/view/Surface;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;->onDrawnToSurface(Landroid/view/Surface;)V

    .line 586
    return-void
.end method
