.class final Lcom/google/android/exoplayer/extractor/mp4/FixedSampleSizeRechunker;
.super Ljava/lang/Object;
.source "FixedSampleSizeRechunker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;
    }
.end annotation


# static fields
.field private static final MAX_SAMPLE_SIZE:I = 0x2000


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static rechunk(I[J[IJ)Lcom/google/android/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;
    .registers 26
    .param p0, "fixedSampleSize"    # I
    .param p1, "chunkOffsets"    # [J
    .param p2, "chunkSampleCounts"    # [I
    .param p3, "timestampDeltaInTimeUnits"    # J

    .prologue
    .line 57
    const/16 v2, 0x2000

    div-int v12, v2, p0

    .line 60
    .local v12, "maxSampleCount":I
    const/4 v15, 0x0

    .line 61
    .local v15, "rechunkedSampleCount":I
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v18, v0

    const/4 v2, 0x0

    :goto_b
    move/from16 v0, v18

    if-ge v2, v0, :cond_1a

    aget v10, p2, v2

    .line 62
    .local v10, "chunkSampleCount":I
    invoke-static {v10, v12}, Lcom/google/android/exoplayer/util/Util;->ceilDivide(II)I

    move-result v19

    add-int v15, v15, v19

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 65
    .end local v10    # "chunkSampleCount":I
    :cond_1a
    new-array v3, v15, [J

    .line 66
    .local v3, "offsets":[J
    new-array v4, v15, [I

    .line 67
    .local v4, "sizes":[I
    const/4 v5, 0x0

    .line 68
    .local v5, "maximumSize":I
    new-array v6, v15, [J

    .line 69
    .local v6, "timestamps":[J
    new-array v7, v15, [I

    .line 71
    .local v7, "flags":[I
    const/4 v14, 0x0

    .line 72
    .local v14, "originalSampleIndex":I
    const/4 v13, 0x0

    .line 73
    .local v13, "newSampleIndex":I
    const/4 v9, 0x0

    .local v9, "chunkIndex":I
    :goto_26
    move-object/from16 v0, p2

    array-length v2, v0

    if-ge v9, v2, :cond_5a

    .line 74
    aget v11, p2, v9

    .line 75
    .local v11, "chunkSamplesRemaining":I
    aget-wide v16, p1, v9

    .line 77
    .local v16, "sampleOffset":J
    :goto_2f
    if-lez v11, :cond_57

    .line 78
    invoke-static {v12, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 80
    .local v8, "bufferSampleCount":I
    aput-wide v16, v3, v13

    .line 81
    mul-int v2, p0, v8

    aput v2, v4, v13

    .line 82
    aget v2, v4, v13

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 83
    int-to-long v0, v14

    move-wide/from16 v18, v0

    mul-long v18, v18, p3

    aput-wide v18, v6, v13

    .line 84
    const/4 v2, 0x1

    aput v2, v7, v13

    .line 86
    aget v2, v4, v13

    int-to-long v0, v2

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    .line 87
    add-int/2addr v14, v8

    .line 89
    sub-int/2addr v11, v8

    .line 90
    add-int/lit8 v13, v13, 0x1

    .line 91
    goto :goto_2f

    .line 73
    .end local v8    # "bufferSampleCount":I
    :cond_57
    add-int/lit8 v9, v9, 0x1

    goto :goto_26

    .line 94
    .end local v11    # "chunkSamplesRemaining":I
    .end local v16    # "sampleOffset":J
    :cond_5a
    new-instance v2, Lcom/google/android/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;-><init>([J[II[J[I)V

    return-object v2
.end method
