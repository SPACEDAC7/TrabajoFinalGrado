.class Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$1;
.super Ljava/lang/Object;
.source "MediaCodecAudioTrackRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->notifyAudioTrackInitializationError(Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;

.field final synthetic val$e:Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;

    .prologue
    .line 452
    iput-object p1, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$1;->this$0:Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;

    iput-object p2, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$1;->val$e:Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 455
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$1;->this$0:Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;

    # getter for: Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->eventListener:Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;
    invoke-static {v0}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->access$000(Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;)Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$1;->val$e:Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;->onAudioTrackInitializationError(Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;)V

    .line 456
    return-void
.end method
