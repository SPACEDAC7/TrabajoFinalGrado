.class Lcom/google/android/exoplayer/MediaCodecTrackRenderer$1;
.super Ljava/lang/Object;
.source "MediaCodecTrackRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->notifyDecoderInitializationError(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/MediaCodecTrackRenderer;

.field final synthetic val$e:Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/MediaCodecTrackRenderer;Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/android/exoplayer/MediaCodecTrackRenderer;

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$1;->this$0:Lcom/google/android/exoplayer/MediaCodecTrackRenderer;

    iput-object p2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$1;->val$e:Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$1;->this$0:Lcom/google/android/exoplayer/MediaCodecTrackRenderer;

    # getter for: Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->eventListener:Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;
    invoke-static {v0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->access$000(Lcom/google/android/exoplayer/MediaCodecTrackRenderer;)Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$1;->val$e:Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;->onDecoderInitializationError(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V

    .line 1023
    return-void
.end method
