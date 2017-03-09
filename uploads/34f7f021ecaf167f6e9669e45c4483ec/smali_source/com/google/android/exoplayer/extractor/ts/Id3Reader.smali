.class final Lcom/google/android/exoplayer/extractor/ts/Id3Reader;
.super Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
.source "Id3Reader.java"


# static fields
.field private static final ID3_HEADER_SIZE:I = 0xa


# instance fields
.field private final id3Header:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private sampleBytesRead:I

.field private sampleSize:I

.field private sampleTimeUs:J

.field private writingSample:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V
    .registers 4
    .param p1, "output"    # Lcom/google/android/exoplayer/extractor/TrackOutput;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    .line 42
    invoke-static {}, Lcom/google/android/exoplayer/MediaFormat;->createId3Format()Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/extractor/TrackOutput;->format(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 43
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->id3Header:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 44
    return-void
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer/util/ParsableByteArray;)V
    .registers 10
    .param p1, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    const/16 v7, 0xa

    .line 64
    iget-boolean v3, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->writingSample:Z

    if-nez v3, :cond_7

    .line 83
    :goto_6
    return-void

    .line 67
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    .line 68
    .local v0, "bytesAvailable":I
    iget v3, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->sampleBytesRead:I

    if-ge v3, v7, :cond_3b

    .line 70
    iget v3, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->sampleBytesRead:I

    rsub-int/lit8 v3, v3, 0xa

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 71
    .local v2, "headerBytesAvailable":I
    iget-object v3, p1, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->id3Header:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v5, v5, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    iget v6, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->sampleBytesRead:I

    invoke-static {v3, v4, v5, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    iget v3, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->sampleBytesRead:I

    add-int/2addr v3, v2

    if-ne v3, v7, :cond_3b

    .line 75
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->id3Header:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 76
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->id3Header:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v3

    add-int/lit8 v3, v3, 0xa

    iput v3, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->sampleSize:I

    .line 80
    .end local v2    # "headerBytesAvailable":I
    :cond_3b
    iget v3, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->sampleSize:I

    iget v4, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->sampleBytesRead:I

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 81
    .local v1, "bytesToWrite":I
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    invoke-interface {v3, p1, v1}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 82
    iget v3, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->sampleBytesRead:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->sampleBytesRead:I

    goto :goto_6
.end method

.method public packetFinished()V
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 87
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->writingSample:Z

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->sampleSize:I

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->sampleBytesRead:I

    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->sampleSize:I

    if-eq v0, v1, :cond_10

    .line 92
    :cond_f
    :goto_f
    return-void

    .line 90
    :cond_10
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->sampleTimeUs:J

    const/4 v4, 0x1

    iget v5, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->sampleSize:I

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 91
    iput-boolean v6, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->writingSample:Z

    goto :goto_f
.end method

.method public packetStarted(JZ)V
    .registers 7
    .param p1, "pesTimeUs"    # J
    .param p3, "dataAlignmentIndicator"    # Z

    .prologue
    const/4 v1, 0x0

    .line 53
    if-nez p3, :cond_4

    .line 60
    :goto_3
    return-void

    .line 56
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->writingSample:Z

    .line 57
    iput-wide p1, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->sampleTimeUs:J

    .line 58
    iput v1, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->sampleSize:I

    .line 59
    iput v1, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->sampleBytesRead:I

    goto :goto_3
.end method

.method public seek()V
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->writingSample:Z

    .line 49
    return-void
.end method
