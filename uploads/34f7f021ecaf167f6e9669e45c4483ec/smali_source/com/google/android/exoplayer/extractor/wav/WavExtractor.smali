.class public final Lcom/google/android/exoplayer/extractor/wav/WavExtractor;
.super Ljava/lang/Object;
.source "WavExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/Extractor;
.implements Lcom/google/android/exoplayer/extractor/SeekMap;


# static fields
.field private static final MAX_INPUT_SIZE:I = 0x8000


# instance fields
.field private bytesPerFrame:I

.field private extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

.field private pendingBytes:I

.field private trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

.field private wavHeader:Lcom/google/android/exoplayer/extractor/wav/WavHeader;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPosition(J)J
    .registers 6
    .param p1, "timeUs"    # J

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/wav/WavExtractor;->wavHeader:Lcom/google/android/exoplayer/extractor/wav/WavHeader;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer/extractor/wav/WavHeader;->getPosition(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public init(Lcom/google/android/exoplayer/extractor/ExtractorOutput;)V
    .registers 3
    .param p1, "output"    # Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/wav/WavExtractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .line 50
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/wav/WavExtractor;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/wav/WavExtractor;->wavHeader:Lcom/google/android/exoplayer/extractor/wav/WavHeader;

    .line 52
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->endTracks()V

    .line 53
    return-void
.end method

.method public isSeekable()Z
    .registers 2

    .prologue
    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method public read(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)I
    .registers 20
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lcom/google/android/exoplayer/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 69
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/wav/WavExtractor;->wavHeader:Lcom/google/android/exoplayer/extractor/wav/WavHeader;

    if-nez v2, :cond_28

    .line 70
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer/extractor/wav/WavHeaderReader;->peek(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Lcom/google/android/exoplayer/extractor/wav/WavHeader;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer/extractor/wav/WavExtractor;->wavHeader:Lcom/google/android/exoplayer/extractor/wav/WavHeader;

    .line 71
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/wav/WavExtractor;->wavHeader:Lcom/google/android/exoplayer/extractor/wav/WavHeader;

    if-nez v2, :cond_1c

    .line 73
    new-instance v2, Lcom/google/android/exoplayer/ParserException;

    const-string v3, "Error initializing WavHeader. Did you sniff first?"

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 75
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/wav/WavExtractor;->wavHeader:Lcom/google/android/exoplayer/extractor/wav/WavHeader;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/extractor/wav/WavHeader;->getBytesPerFrame()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer/extractor/wav/WavExtractor;->bytesPerFrame:I

    .line 79
    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/wav/WavExtractor;->wavHeader:Lcom/google/android/exoplayer/extractor/wav/WavHeader;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/extractor/wav/WavHeader;->hasDataBounds()Z

    move-result v2

    if-nez v2, :cond_83

    .line 80
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/wav/WavExtractor;->wavHeader:Lcom/google/android/exoplayer/extractor/wav/WavHeader;

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/exoplayer/extractor/wav/WavHeaderReader;->skipToData(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/wav/WavHeader;)V

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/wav/WavExtractor;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    const-string v3, "audio/raw"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/wav/WavExtractor;->wavHeader:Lcom/google/android/exoplayer/extractor/wav/WavHeader;

    .line 86
    invoke-virtual {v4}, Lcom/google/android/exoplayer/extractor/wav/WavHeader;->getBitrate()I

    move-result v4

    const v5, 0x8000

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer/extractor/wav/WavExtractor;->wavHeader:Lcom/google/android/exoplayer/extractor/wav/WavHeader;

    .line 88
    invoke-virtual {v6}, Lcom/google/android/exoplayer/extractor/wav/WavHeader;->getDurationUs()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer/extractor/wav/WavExtractor;->wavHeader:Lcom/google/android/exoplayer/extractor/wav/WavHeader;

    .line 89
    invoke-virtual {v8}, Lcom/google/android/exoplayer/extractor/wav/WavHeader;->getNumChannels()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer/extractor/wav/WavExtractor;->wavHeader:Lcom/google/android/exoplayer/extractor/wav/WavHeader;

    .line 90
    invoke-virtual {v9}, Lcom/google/android/exoplayer/extractor/wav/WavHeader;->getSampleRateHz()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer/extractor/wav/WavExtractor;->wavHeader:Lcom/google/android/exoplayer/extractor/wav/WavHeader;

    .line 93
    invoke-virtual {v12}, Lcom/google/android/exoplayer/extractor/wav/WavHeader;->getEncoding()I

    move-result v12

    .line 83
    invoke-static/range {v2 .. v12}, Lcom/google/android/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;I)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v2

    .line 82
    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer/extractor/TrackOutput;->format(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 94
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/wav/WavExtractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer/extractor/SeekMap;)V

    .line 97
    :cond_83
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/wav/WavExtractor;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    const v3, 0x8000

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/extractor/wav/WavExtractor;->pendingBytes:I

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v3, v4}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/extractor/ExtractorInput;IZ)I

    move-result v13

    .line 99
    .local v13, "bytesAppended":I
    const/4 v2, -0x1

    if-eq v13, v2, :cond_a2

    .line 100
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/extractor/wav/WavExtractor;->pendingBytes:I

    add-int/2addr v2, v13

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer/extractor/wav/WavExtractor;->pendingBytes:I

    .line 104
    :cond_a2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/extractor/wav/WavExtractor;->pendingBytes:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer/extractor/wav/WavExtractor;->bytesPerFrame:I

    div-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer/extractor/wav/WavExtractor;->bytesPerFrame:I

    mul-int v7, v2, v3

    .line 105
    .local v7, "frameBytes":I
    if-lez v7, :cond_dc

    .line 106
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/extractor/wav/WavExtractor;->pendingBytes:I

    int-to-long v4, v4

    sub-long v14, v2, v4

    .line 107
    .local v14, "sampleStartPosition":J
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/extractor/wav/WavExtractor;->pendingBytes:I

    sub-int/2addr v2, v7

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer/extractor/wav/WavExtractor;->pendingBytes:I

    .line 108
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/wav/WavExtractor;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/wav/WavExtractor;->wavHeader:Lcom/google/android/exoplayer/extractor/wav/WavHeader;

    .line 109
    invoke-virtual {v2, v14, v15}, Lcom/google/android/exoplayer/extractor/wav/WavHeader;->getTimeUs(J)J

    move-result-wide v4

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/exoplayer/extractor/wav/WavExtractor;->pendingBytes:I

    const/4 v9, 0x0

    .line 108
    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 116
    .end local v14    # "sampleStartPosition":J
    :cond_dc
    const/4 v2, -0x1

    if-ne v13, v2, :cond_e1

    .line 117
    const/4 v2, -0x1

    .line 120
    :goto_e0
    return v2

    :cond_e1
    const/4 v2, 0x0

    goto :goto_e0
.end method

.method public release()V
    .registers 1

    .prologue
    .line 63
    return-void
.end method

.method public seek()V
    .registers 2

    .prologue
    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/wav/WavExtractor;->pendingBytes:I

    .line 58
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .registers 3
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {p1}, Lcom/google/android/exoplayer/extractor/wav/WavHeaderReader;->peek(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Lcom/google/android/exoplayer/extractor/wav/WavHeader;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
