.class Lcom/google/android/exoplayer/hls/HlsSampleSource$3;
.super Ljava/lang/Object;
.source "HlsSampleSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer/hls/HlsSampleSource;->notifyLoadCanceled(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/hls/HlsSampleSource;

.field final synthetic val$bytesLoaded:J


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/hls/HlsSampleSource;J)V
    .registers 4
    .param p1, "this$0"    # Lcom/google/android/exoplayer/hls/HlsSampleSource;

    .prologue
    .line 807
    iput-object p1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$3;->this$0:Lcom/google/android/exoplayer/hls/HlsSampleSource;

    iput-wide p2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$3;->val$bytesLoaded:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 810
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$3;->this$0:Lcom/google/android/exoplayer/hls/HlsSampleSource;

    # getter for: Lcom/google/android/exoplayer/hls/HlsSampleSource;->eventListener:Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;
    invoke-static {v0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->access$100(Lcom/google/android/exoplayer/hls/HlsSampleSource;)Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$3;->this$0:Lcom/google/android/exoplayer/hls/HlsSampleSource;

    # getter for: Lcom/google/android/exoplayer/hls/HlsSampleSource;->eventSourceId:I
    invoke-static {v1}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->access$000(Lcom/google/android/exoplayer/hls/HlsSampleSource;)I

    move-result v1

    iget-wide v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$3;->val$bytesLoaded:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;->onLoadCanceled(IJ)V

    .line 811
    return-void
.end method
