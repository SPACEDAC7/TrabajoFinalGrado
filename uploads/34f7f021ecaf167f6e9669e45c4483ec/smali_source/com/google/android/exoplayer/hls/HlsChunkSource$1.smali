.class Lcom/google/android/exoplayer/hls/HlsChunkSource$1;
.super Ljava/lang/Object;
.source "HlsChunkSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer/hls/HlsChunkSource;->onChunkLoadCompleted(Lcom/google/android/exoplayer/chunk/Chunk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/hls/HlsChunkSource;

.field final synthetic val$rawResponse:[B


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/hls/HlsChunkSource;[B)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/android/exoplayer/hls/HlsChunkSource;

    .prologue
    .line 556
    iput-object p1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$1;->this$0:Lcom/google/android/exoplayer/hls/HlsChunkSource;

    iput-object p2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$1;->val$rawResponse:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 559
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$1;->this$0:Lcom/google/android/exoplayer/hls/HlsChunkSource;

    # getter for: Lcom/google/android/exoplayer/hls/HlsChunkSource;->eventListener:Lcom/google/android/exoplayer/hls/HlsChunkSource$EventListener;
    invoke-static {v0}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->access$400(Lcom/google/android/exoplayer/hls/HlsChunkSource;)Lcom/google/android/exoplayer/hls/HlsChunkSource$EventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$1;->val$rawResponse:[B

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/hls/HlsChunkSource$EventListener;->onMediaPlaylistLoadCompleted([B)V

    .line 560
    return-void
.end method
