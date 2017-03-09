.class final Lcom/google/android/exoplayer/extractor/wav/WavHeaderReader;
.super Ljava/lang/Object;
.source "WavHeaderReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WavHeaderReader"

.field private static final TYPE_PCM:I = 0x1

.field private static final TYPE_WAVE_FORMAT_EXTENSIBLE:I = 0xfffe


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static peek(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Lcom/google/android/exoplayer/extractor/wav/WavHeader;
    .registers 19
    .param p0, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v12, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/16 v2, 0x10

    invoke-direct {v12, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    .line 55
    .local v12, "scratch":Lcom/google/android/exoplayer/util/ParsableByteArray;
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/google/android/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;->peek(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v9

    .line 56
    .local v9, "chunkHeader":Lcom/google/android/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;
    iget v2, v9, Lcom/google/android/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;->id:I

    const-string v14, "RIFF"

    invoke-static {v14}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v14

    if-eq v2, v14, :cond_1c

    .line 57
    const/4 v2, 0x0

    .line 105
    :goto_1b
    return-object v2

    .line 60
    :cond_1c
    iget-object v2, v12, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v14, 0x0

    const/4 v15, 0x4

    move-object/from16 v0, p0

    invoke-interface {v0, v2, v14, v15}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 61
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 62
    invoke-virtual {v12}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v11

    .line 63
    .local v11, "riffFormat":I
    const-string v2, "WAVE"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    if-eq v11, v2, :cond_4f

    .line 64
    const-string v2, "WavHeaderReader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unsupported RIFF format: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/4 v2, 0x0

    goto :goto_1b

    .line 69
    :cond_4f
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/google/android/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;->peek(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v9

    .line 70
    :goto_55
    iget v2, v9, Lcom/google/android/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;->id:I

    const-string v14, "fmt "

    invoke-static {v14}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v14

    if-eq v2, v14, :cond_6e

    .line 71
    iget-wide v14, v9, Lcom/google/android/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;->size:J

    long-to-int v2, v14

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 72
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/google/android/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;->peek(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v9

    goto :goto_55

    .line 75
    :cond_6e
    iget-wide v14, v9, Lcom/google/android/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;->size:J

    const-wide/16 v16, 0x10

    cmp-long v2, v14, v16

    if-ltz v2, :cond_c9

    const/4 v2, 0x1

    :goto_77
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 76
    iget-object v2, v12, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v14, 0x0

    const/16 v15, 0x10

    move-object/from16 v0, p0

    invoke-interface {v0, v2, v14, v15}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 77
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 78
    invoke-virtual {v12}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v13

    .line 79
    .local v13, "type":I
    invoke-virtual {v12}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v3

    .line 80
    .local v3, "numChannels":I
    invoke-virtual {v12}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readLittleEndianUnsignedIntToInt()I

    move-result v4

    .line 81
    .local v4, "sampleRateHz":I
    invoke-virtual {v12}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readLittleEndianUnsignedIntToInt()I

    move-result v5

    .line 82
    .local v5, "averageBytesPerSecond":I
    invoke-virtual {v12}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v6

    .line 83
    .local v6, "blockAlignment":I
    invoke-virtual {v12}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v7

    .line 85
    .local v7, "bitsPerSample":I
    mul-int v2, v3, v7

    div-int/lit8 v10, v2, 0x8

    .line 86
    .local v10, "expectedBlockAlignment":I
    if-eq v6, v10, :cond_cb

    .line 87
    new-instance v2, Lcom/google/android/exoplayer/ParserException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Expected block alignment: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "; got: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v2, v14}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 75
    .end local v3    # "numChannels":I
    .end local v4    # "sampleRateHz":I
    .end local v5    # "averageBytesPerSecond":I
    .end local v6    # "blockAlignment":I
    .end local v7    # "bitsPerSample":I
    .end local v10    # "expectedBlockAlignment":I
    .end local v13    # "type":I
    :cond_c9
    const/4 v2, 0x0

    goto :goto_77

    .line 91
    .restart local v3    # "numChannels":I
    .restart local v4    # "sampleRateHz":I
    .restart local v5    # "averageBytesPerSecond":I
    .restart local v6    # "blockAlignment":I
    .restart local v7    # "bitsPerSample":I
    .restart local v10    # "expectedBlockAlignment":I
    .restart local v13    # "type":I
    :cond_cb
    invoke-static {v7}, Lcom/google/android/exoplayer/util/Util;->getPcmEncoding(I)I

    move-result v8

    .line 92
    .local v8, "encoding":I
    if-nez v8, :cond_ec

    .line 93
    const-string v2, "WavHeaderReader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unsupported WAV bit depth: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v2, 0x0

    goto/16 :goto_1b

    .line 97
    :cond_ec
    const/4 v2, 0x1

    if-eq v13, v2, :cond_10f

    const v2, 0xfffe

    if-eq v13, v2, :cond_10f

    .line 98
    const-string v2, "WavHeaderReader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unsupported WAV format type: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v2, 0x0

    goto/16 :goto_1b

    .line 103
    :cond_10f
    iget-wide v14, v9, Lcom/google/android/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;->size:J

    long-to-int v2, v14

    add-int/lit8 v2, v2, -0x10

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 105
    new-instance v2, Lcom/google/android/exoplayer/extractor/wav/WavHeader;

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer/extractor/wav/WavHeader;-><init>(IIIIII)V

    goto/16 :goto_1b
.end method

.method public static skipToData(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/wav/WavHeader;)V
    .registers 11
    .param p0, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p1, "wavHeader"    # Lcom/google/android/exoplayer/extractor/wav/WavHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x8

    .line 124
    invoke-static {p0}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-static {p1}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-interface {p0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    .line 130
    new-instance v3, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v3, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    .line 132
    .local v3, "scratch":Lcom/google/android/exoplayer/util/ParsableByteArray;
    invoke-static {p0, v3}, Lcom/google/android/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;->peek(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v2

    .line 133
    .local v2, "chunkHeader":Lcom/google/android/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;
    :goto_14
    iget v4, v2, Lcom/google/android/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;->id:I

    const-string v5, "data"

    invoke-static {v5}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v5

    if-eq v4, v5, :cond_75

    .line 134
    const-string v4, "WavHeaderReader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring unknown WAV chunk: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/google/android/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-wide/16 v4, 0x8

    iget-wide v6, v2, Lcom/google/android/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;->size:J

    add-long v0, v4, v6

    .line 137
    .local v0, "bytesToSkip":J
    iget v4, v2, Lcom/google/android/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;->id:I

    const-string v5, "RIFF"

    invoke-static {v5}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v5

    if-ne v4, v5, :cond_4a

    .line 138
    const-wide/16 v0, 0xc

    .line 140
    :cond_4a
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v0, v4

    if-lez v4, :cond_6c

    .line 141
    new-instance v4, Lcom/google/android/exoplayer/ParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Chunk is too large (~2GB+) to skip; id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/google/android/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 143
    :cond_6c
    long-to-int v4, v0

    invoke-interface {p0, v4}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    .line 144
    invoke-static {p0, v3}, Lcom/google/android/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;->peek(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v2

    .line 145
    goto :goto_14

    .line 147
    .end local v0    # "bytesToSkip":J
    :cond_75
    invoke-interface {p0, v8}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    .line 149
    invoke-interface {p0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iget-wide v6, v2, Lcom/google/android/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;->size:J

    invoke-virtual {p1, v4, v5, v6, v7}, Lcom/google/android/exoplayer/extractor/wav/WavHeader;->setDataBounds(JJ)V

    .line 150
    return-void
.end method
