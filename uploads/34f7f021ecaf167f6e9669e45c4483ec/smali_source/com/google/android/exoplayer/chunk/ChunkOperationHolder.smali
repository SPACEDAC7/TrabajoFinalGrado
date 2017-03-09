.class public final Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;
.super Ljava/lang/Object;
.source "ChunkOperationHolder.java"


# instance fields
.field public chunk:Lcom/google/android/exoplayer/chunk/Chunk;

.field public endOfStream:Z

.field public queueSize:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 48
    iput v1, p0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    .line 50
    iput-boolean v1, p0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->endOfStream:Z

    .line 51
    return-void
.end method
