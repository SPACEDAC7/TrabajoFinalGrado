.class final Lcom/google/android/exoplayer/extractor/ts/H264Reader;
.super Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
.source "H264Reader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;
    }
.end annotation


# static fields
.field private static final NAL_UNIT_TYPE_PPS:I = 0x8

.field private static final NAL_UNIT_TYPE_SEI:I = 0x6

.field private static final NAL_UNIT_TYPE_SPS:I = 0x7


# instance fields
.field private hasOutputFormat:Z

.field private pesTimeUs:J

.field private final pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

.field private final prefixFlags:[Z

.field private final sampleReader:Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;

.field private final sei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

.field private final seiReader:Lcom/google/android/exoplayer/extractor/ts/SeiReader;

.field private final seiWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

.field private totalBytesWritten:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/extractor/TrackOutput;Lcom/google/android/exoplayer/extractor/ts/SeiReader;ZZ)V
    .registers 8
    .param p1, "output"    # Lcom/google/android/exoplayer/extractor/TrackOutput;
    .param p2, "seiReader"    # Lcom/google/android/exoplayer/extractor/ts/SeiReader;
    .param p3, "allowNonIdrKeyframes"    # Z
    .param p4, "detectAccessUnits"    # Z

    .prologue
    const/16 v2, 0x80

    .line 68
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    .line 69
    iput-object p2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->seiReader:Lcom/google/android/exoplayer/extractor/ts/SeiReader;

    .line 70
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->prefixFlags:[Z

    .line 71
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;

    invoke-direct {v0, p1, p3, p4}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;ZZ)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sampleReader:Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;

    .line 72
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    const/4 v1, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    .line 73
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    const/16 v1, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    .line 74
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    const/4 v1, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    .line 75
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->seiWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 76
    return-void
.end method

.method private endNalUnit(JIIJ)V
    .registers 26
    .param p1, "position"    # J
    .param p3, "offset"    # I
    .param p4, "discardPadding"    # I
    .param p5, "pesTimeUs"    # J

    .prologue
    .line 162
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sampleReader:Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->needsSpsPps()Z

    move-result v4

    if-eqz v4, :cond_c6

    .line 163
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 164
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 165
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-nez v4, :cond_112

    .line 166
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v4

    if-eqz v4, :cond_c6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v4

    if-eqz v4, :cond_c6

    .line 167
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v12, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget-object v4, v4, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget v5, v5, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget-object v4, v4, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget v5, v5, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-static {v4}, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->unescape(Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;)Lcom/google/android/exoplayer/util/ParsableBitArray;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer/util/NalUnitUtil;->parseSpsNalUnit(Lcom/google/android/exoplayer/util/ParsableBitArray;)Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;

    move-result-object v16

    .line 171
    .local v16, "spsData":Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-static {v4}, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->unescape(Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;)Lcom/google/android/exoplayer/util/ParsableBitArray;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer/util/NalUnitUtil;->parsePpsNalUnit(Lcom/google/android/exoplayer/util/ParsableBitArray;)Lcom/google/android/exoplayer/util/NalUnitUtil$PpsData;

    move-result-object v15

    .line 172
    .local v15, "ppsData":Lcom/google/android/exoplayer/util/NalUnitUtil$PpsData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-object/from16 v18, v0

    const/4 v4, 0x0

    const-string/jumbo v5, "video/avc"

    const/4 v6, -0x1

    const/4 v7, -0x1

    const-wide/16 v8, -0x1

    move-object/from16 v0, v16

    iget v10, v0, Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;->width:I

    move-object/from16 v0, v16

    iget v11, v0, Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;->height:I

    const/4 v13, -0x1

    move-object/from16 v0, v16

    iget v14, v0, Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;->pixelWidthAspectRatio:F

    invoke-static/range {v4 .. v14}, Lcom/google/android/exoplayer/MediaFormat;->createVideoFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;IF)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer/extractor/TrackOutput;->format(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 176
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->hasOutputFormat:Z

    .line 177
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sampleReader:Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->putSps(Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sampleReader:Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v4, v15}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->putPps(Lcom/google/android/exoplayer/util/NalUnitUtil$PpsData;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 180
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 192
    .end local v12    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v15    # "ppsData":Lcom/google/android/exoplayer/util/NalUnitUtil$PpsData;
    .end local v16    # "spsData":Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;
    :cond_c6
    :goto_c6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v4

    if-eqz v4, :cond_106

    .line 193
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget-object v4, v4, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget v5, v5, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v4, v5}, Lcom/google/android/exoplayer/util/NalUnitUtil;->unescapeStream([BI)I

    move-result v17

    .line 194
    .local v17, "unescapedLength":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->seiWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget-object v5, v5, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset([BI)V

    .line 195
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->seiWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 196
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->seiReader:Lcom/google/android/exoplayer/extractor/ts/SeiReader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->seiWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1, v5}, Lcom/google/android/exoplayer/extractor/ts/SeiReader;->consume(JLcom/google/android/exoplayer/util/ParsableByteArray;)V

    .line 198
    .end local v17    # "unescapedLength":I
    :cond_106
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sampleReader:Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;

    move-wide/from16 v0, p1

    move/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->endNalUnit(JI)V

    .line 199
    return-void

    .line 182
    :cond_112
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v4

    if-eqz v4, :cond_139

    .line 183
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-static {v4}, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->unescape(Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;)Lcom/google/android/exoplayer/util/ParsableBitArray;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer/util/NalUnitUtil;->parseSpsNalUnit(Lcom/google/android/exoplayer/util/ParsableBitArray;)Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;

    move-result-object v16

    .line 184
    .restart local v16    # "spsData":Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sampleReader:Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->putSps(Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    goto :goto_c6

    .line 186
    .end local v16    # "spsData":Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;
    :cond_139
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v4

    if-eqz v4, :cond_c6

    .line 187
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-static {v4}, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->unescape(Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;)Lcom/google/android/exoplayer/util/ParsableBitArray;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer/util/NalUnitUtil;->parsePpsNalUnit(Lcom/google/android/exoplayer/util/ParsableBitArray;)Lcom/google/android/exoplayer/util/NalUnitUtil$PpsData;

    move-result-object v15

    .line 188
    .restart local v15    # "ppsData":Lcom/google/android/exoplayer/util/NalUnitUtil$PpsData;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sampleReader:Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v4, v15}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->putPps(Lcom/google/android/exoplayer/util/NalUnitUtil$PpsData;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    goto/16 :goto_c6
.end method

.method private nalUnitData([BII)V
    .registers 5
    .param p1, "dataArray"    # [B
    .param p2, "offset"    # I
    .param p3, "limit"    # I

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sampleReader:Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->needsSpsPps()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 154
    :cond_c
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 155
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 157
    :cond_16
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 158
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sampleReader:Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->appendToNalUnit([BII)V

    .line 159
    return-void
.end method

.method private startNalUnit(JIJ)V
    .registers 12
    .param p1, "position"    # J
    .param p3, "nalUnitType"    # I
    .param p4, "pesTimeUs"    # J

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sampleReader:Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->needsSpsPps()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 145
    :cond_c
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 146
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 148
    :cond_16
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 149
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sampleReader:Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->startNalUnit(JIJ)V

    .line 150
    return-void
.end method

.method private static unescape(Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;)Lcom/google/android/exoplayer/util/ParsableBitArray;
    .registers 5
    .param p0, "buffer"    # Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    .prologue
    .line 202
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v3, p0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v2, v3}, Lcom/google/android/exoplayer/util/NalUnitUtil;->unescapeStream([BI)I

    move-result v1

    .line 203
    .local v1, "length":I
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableBitArray;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-direct {v0, v2, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;-><init>([BI)V

    .line 204
    .local v0, "bitArray":Lcom/google/android/exoplayer/util/ParsableBitArray;
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 205
    return-object v0
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer/util/ParsableByteArray;)V
    .registers 22
    .param p1, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    .line 95
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    if-lez v5, :cond_48

    .line 96
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v19

    .line 97
    .local v19, "offset":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v17

    .line 98
    .local v17, "limit":I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    .line 101
    .local v4, "dataArray":[B
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->totalBytesWritten:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    int-to-long v14, v5

    add-long/2addr v10, v14

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->totalBytesWritten:J

    .line 102
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v5, v0, v9}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 106
    :goto_2d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->prefixFlags:[Z

    move/from16 v0, v19

    move/from16 v1, v17

    invoke-static {v4, v0, v1, v5}, Lcom/google/android/exoplayer/util/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v18

    .line 108
    .local v18, "nalUnitOffset":I
    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_49

    .line 110
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->nalUnitData([BII)V

    .line 136
    .end local v4    # "dataArray":[B
    .end local v17    # "limit":I
    .end local v18    # "nalUnitOffset":I
    .end local v19    # "offset":I
    :cond_48
    return-void

    .line 115
    .restart local v4    # "dataArray":[B
    .restart local v17    # "limit":I
    .restart local v18    # "nalUnitOffset":I
    .restart local v19    # "offset":I
    :cond_49
    move/from16 v0, v18

    invoke-static {v4, v0}, Lcom/google/android/exoplayer/util/NalUnitUtil;->getNalUnitType([BI)I

    move-result v13

    .line 119
    .local v13, "nalUnitType":I
    sub-int v16, v18, v19

    .line 120
    .local v16, "lengthToNalUnit":I
    if-lez v16, :cond_5c

    .line 121
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->nalUnitData([BII)V

    .line 123
    :cond_5c
    sub-int v8, v17, v18

    .line 124
    .local v8, "bytesWrittenPastPosition":I
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->totalBytesWritten:J

    int-to-long v14, v8

    sub-long v6, v10, v14

    .line 128
    .local v6, "absolutePosition":J
    if-gez v16, :cond_80

    move/from16 v0, v16

    neg-int v9, v0

    :goto_6a
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->pesTimeUs:J

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->endNalUnit(JIIJ)V

    .line 131
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->pesTimeUs:J

    move-object/from16 v10, p0

    move-wide v11, v6

    invoke-direct/range {v10 .. v15}, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->startNalUnit(JIJ)V

    .line 133
    add-int/lit8 v19, v18, 0x3

    .line 134
    goto :goto_2d

    .line 128
    :cond_80
    const/4 v9, 0x0

    goto :goto_6a
.end method

.method public packetFinished()V
    .registers 1

    .prologue
    .line 141
    return-void
.end method

.method public packetStarted(JZ)V
    .registers 5
    .param p1, "pesTimeUs"    # J
    .param p3, "dataAlignmentIndicator"    # Z

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->pesTimeUs:J

    .line 91
    return-void
.end method

.method public seek()V
    .registers 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->prefixFlags:[Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 81
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 82
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 83
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 84
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sampleReader:Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;->reset()V

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->totalBytesWritten:J

    .line 86
    return-void
.end method
