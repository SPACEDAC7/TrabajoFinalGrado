.class public final Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;
.super Ljava/lang/Object;
.source "PtsTimestampAdjusterProvider.java"


# instance fields
.field private final ptsTimestampAdjusters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;->ptsTimestampAdjusters:Landroid/util/SparseArray;

    .line 32
    return-void
.end method


# virtual methods
.method public getAdjuster(ZIJ)Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;
    .registers 8
    .param p1, "isMasterSource"    # Z
    .param p2, "discontinuitySequence"    # I
    .param p3, "startTimeUs"    # J

    .prologue
    .line 47
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;->ptsTimestampAdjusters:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;

    .line 48
    .local v0, "adjuster":Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;
    if-eqz p1, :cond_16

    if-nez v0, :cond_16

    .line 49
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;

    .end local v0    # "adjuster":Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;
    invoke-direct {v0, p3, p4}, Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;-><init>(J)V

    .line 50
    .restart local v0    # "adjuster":Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;->ptsTimestampAdjusters:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    :cond_16
    if-nez p1, :cond_20

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_21

    .end local v0    # "adjuster":Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;
    :cond_20
    :goto_20
    return-object v0

    .restart local v0    # "adjuster":Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;
    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;->ptsTimestampAdjusters:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 60
    return-void
.end method
