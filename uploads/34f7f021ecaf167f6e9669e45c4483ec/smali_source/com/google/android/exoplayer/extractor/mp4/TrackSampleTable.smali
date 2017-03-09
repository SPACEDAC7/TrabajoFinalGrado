.class final Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;
.super Ljava/lang/Object;
.source "TrackSampleTable.java"


# static fields
.field public static final NO_SAMPLE:I = -0x1


# instance fields
.field public final flags:[I

.field public final maximumSize:I

.field public final offsets:[J

.field public final sampleCount:I

.field public final sizes:[I

.field public final timestampsUs:[J


# direct methods
.method constructor <init>([J[II[J[I)V
    .registers 10
    .param p1, "offsets"    # [J
    .param p2, "sizes"    # [I
    .param p3, "maximumSize"    # I
    .param p4, "timestampsUs"    # [J
    .param p5, "flags"    # [I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    array-length v0, p2

    array-length v3, p4

    if-ne v0, v3, :cond_2a

    move v0, v1

    :goto_a
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 59
    array-length v0, p1

    array-length v3, p4

    if-ne v0, v3, :cond_2c

    move v0, v1

    :goto_12
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 60
    array-length v0, p5

    array-length v3, p4

    if-ne v0, v3, :cond_2e

    :goto_19
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 62
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->offsets:[J

    .line 63
    iput-object p2, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->sizes:[I

    .line 64
    iput p3, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->maximumSize:I

    .line 65
    iput-object p4, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    .line 66
    iput-object p5, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->flags:[I

    .line 67
    array-length v0, p1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->sampleCount:I

    .line 68
    return-void

    :cond_2a
    move v0, v2

    .line 58
    goto :goto_a

    :cond_2c
    move v0, v2

    .line 59
    goto :goto_12

    :cond_2e
    move v1, v2

    .line 60
    goto :goto_19
.end method


# virtual methods
.method public getIndexOfEarlierOrEqualSynchronizationSample(J)I
    .registers 8
    .param p1, "timeUs"    # J

    .prologue
    .line 80
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, p1, p2, v3, v4}, Lcom/google/android/exoplayer/util/Util;->binarySearchFloor([JJZZ)I

    move-result v1

    .line 81
    .local v1, "startIndex":I
    move v0, v1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_17

    .line 82
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->flags:[I

    aget v2, v2, v0

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_14

    .line 86
    .end local v0    # "i":I
    :goto_13
    return v0

    .line 81
    .restart local v0    # "i":I
    :cond_14
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 86
    :cond_17
    const/4 v0, -0x1

    goto :goto_13
.end method

.method public getIndexOfLaterOrEqualSynchronizationSample(J)I
    .registers 8
    .param p1, "timeUs"    # J

    .prologue
    .line 97
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, p1, p2, v3, v4}, Lcom/google/android/exoplayer/util/Util;->binarySearchCeil([JJZZ)I

    move-result v1

    .line 98
    .local v1, "startIndex":I
    move v0, v1

    .local v0, "i":I
    :goto_9
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    array-length v2, v2

    if-ge v0, v2, :cond_1a

    .line 99
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->flags:[I

    aget v2, v2, v0

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_17

    .line 103
    .end local v0    # "i":I
    :goto_16
    return v0

    .line 98
    .restart local v0    # "i":I
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 103
    :cond_1a
    const/4 v0, -0x1

    goto :goto_16
.end method
