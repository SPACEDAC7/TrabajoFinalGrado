.class Lcom/google/android/exoplayer/hls/HlsSampleSource$4;
.super Ljava/lang/Object;
.source "HlsSampleSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer/hls/HlsSampleSource;->notifyLoadError(Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/hls/HlsSampleSource;

.field final synthetic val$e:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/hls/HlsSampleSource;Ljava/io/IOException;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/android/exoplayer/hls/HlsSampleSource;

    .prologue
    .line 818
    iput-object p1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$4;->this$0:Lcom/google/android/exoplayer/hls/HlsSampleSource;

    iput-object p2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$4;->val$e:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 821
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$4;->this$0:Lcom/google/android/exoplayer/hls/HlsSampleSource;

    # getter for: Lcom/google/android/exoplayer/hls/HlsSampleSource;->eventListener:Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;
    invoke-static {v0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->access$100(Lcom/google/android/exoplayer/hls/HlsSampleSource;)Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$4;->this$0:Lcom/google/android/exoplayer/hls/HlsSampleSource;

    # getter for: Lcom/google/android/exoplayer/hls/HlsSampleSource;->eventSourceId:I
    invoke-static {v1}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->access$000(Lcom/google/android/exoplayer/hls/HlsSampleSource;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$4;->val$e:Ljava/io/IOException;

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;->onLoadError(ILjava/io/IOException;)V

    .line 822
    return-void
.end method
