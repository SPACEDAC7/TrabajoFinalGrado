.class Lcom/google/android/exoplayer/chunk/ChunkSampleSource$6;
.super Ljava/lang/Object;
.source "ChunkSampleSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->notifyDownstreamFormatChanged(Lcom/google/android/exoplayer/chunk/Format;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

.field final synthetic val$format:Lcom/google/android/exoplayer/chunk/Format;

.field final synthetic val$positionUs:J

.field final synthetic val$trigger:I


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;Lcom/google/android/exoplayer/chunk/Format;IJ)V
    .registers 6
    .param p1, "this$0"    # Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    .prologue
    .line 684
    iput-object p1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$6;->this$0:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    iput-object p2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$6;->val$format:Lcom/google/android/exoplayer/chunk/Format;

    iput p3, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$6;->val$trigger:I

    iput-wide p4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$6;->val$positionUs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 687
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$6;->this$0:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    # getter for: Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventListener:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;
    invoke-static {v0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->access$100(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;)Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$6;->this$0:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    # getter for: Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventSourceId:I
    invoke-static {v1}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->access$000(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$6;->val$format:Lcom/google/android/exoplayer/chunk/Format;

    iget v3, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$6;->val$trigger:I

    iget-object v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$6;->this$0:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    iget-wide v6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$6;->val$positionUs:J

    .line 688
    invoke-virtual {v4, v6, v7}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->usToMs(J)J

    move-result-wide v4

    .line 687
    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;->onDownstreamFormatChanged(ILcom/google/android/exoplayer/chunk/Format;IJ)V

    .line 689
    return-void
.end method
