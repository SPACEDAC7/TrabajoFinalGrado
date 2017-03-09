.class final Lcom/google/android/exoplayer/extractor/ts/H265Reader;
.super Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
.source "H265Reader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/extractor/ts/H265Reader$SampleReader;
    }
.end annotation


# static fields
.field private static final BLA_W_LP:I = 0x10

.field private static final CRA_NUT:I = 0x15

.field private static final PPS_NUT:I = 0x22

.field private static final PREFIX_SEI_NUT:I = 0x27

.field private static final RASL_R:I = 0x9

.field private static final SPS_NUT:I = 0x21

.field private static final SUFFIX_SEI_NUT:I = 0x28

.field private static final TAG:Ljava/lang/String; = "H265Reader"

.field private static final VPS_NUT:I = 0x20


# instance fields
.field private hasOutputFormat:Z

.field private pesTimeUs:J

.field private final pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

.field private final prefixFlags:[Z

.field private final prefixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

.field private final sampleReader:Lcom/google/android/exoplayer/extractor/ts/H265Reader$SampleReader;

.field private final seiReader:Lcom/google/android/exoplayer/extractor/ts/SeiReader;

.field private final seiWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

.field private final suffixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

.field private totalBytesWritten:J

.field private final vps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/extractor/TrackOutput;Lcom/google/android/exoplayer/extractor/ts/SeiReader;)V
    .registers 6
    .param p1, "output"    # Lcom/google/android/exoplayer/extractor/TrackOutput;
    .param p2, "seiReader"    # Lcom/google/android/exoplayer/extractor/ts/SeiReader;

    .prologue
    const/16 v2, 0x80

    .line 70
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    .line 71
    iput-object p2, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->seiReader:Lcom/google/android/exoplayer/extractor/ts/SeiReader;

    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->prefixFlags:[Z

    .line 73
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->vps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    .line 74
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    const/16 v1, 0x21

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    .line 75
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    const/16 v1, 0x22

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    .line 76
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    const/16 v1, 0x27

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->prefixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    .line 77
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    const/16 v1, 0x28

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->suffixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    .line 78
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/H265Reader$SampleReader;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer/extractor/ts/H265Reader$SampleReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->sampleReader:Lcom/google/android/exoplayer/extractor/ts/H265Reader$SampleReader;

    .line 79
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->seiWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 80
    return-void
.end method

.method private endNalUnit(JIIJ)V
    .registers 14
    .param p1, "position"    # J
    .param p3, "offset"    # I
    .param p4, "discardPadding"    # I
    .param p5, "pesTimeUs"    # J

    .prologue
    const/4 v5, 0x5

    .line 175
    iget-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-eqz v1, :cond_5d

    .line 176
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->sampleReader:Lcom/google/android/exoplayer/extractor/ts/H265Reader$SampleReader;

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/ts/H265Reader$SampleReader;->endNalUnit(JI)V

    .line 186
    :cond_a
    :goto_a
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->prefixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1, p4}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 187
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->prefixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget-object v1, v1, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->prefixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget v2, v2, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v1, v2}, Lcom/google/android/exoplayer/util/NalUnitUtil;->unescapeStream([BI)I

    move-result v0

    .line 188
    .local v0, "unescapedLength":I
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->seiWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->prefixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget-object v2, v2, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {v1, v2, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset([BI)V

    .line 191
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->seiWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 192
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->seiReader:Lcom/google/android/exoplayer/extractor/ts/SeiReader;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->seiWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1, p5, p6, v2}, Lcom/google/android/exoplayer/extractor/ts/SeiReader;->consume(JLcom/google/android/exoplayer/util/ParsableByteArray;)V

    .line 194
    .end local v0    # "unescapedLength":I
    :cond_33
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->suffixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1, p4}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 195
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->suffixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget-object v1, v1, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->suffixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget v2, v2, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v1, v2}, Lcom/google/android/exoplayer/util/NalUnitUtil;->unescapeStream([BI)I

    move-result v0

    .line 196
    .restart local v0    # "unescapedLength":I
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->seiWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->suffixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget-object v2, v2, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {v1, v2, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset([BI)V

    .line 199
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->seiWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 200
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->seiReader:Lcom/google/android/exoplayer/extractor/ts/SeiReader;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->seiWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1, p5, p6, v2}, Lcom/google/android/exoplayer/extractor/ts/SeiReader;->consume(JLcom/google/android/exoplayer/util/ParsableByteArray;)V

    .line 202
    .end local v0    # "unescapedLength":I
    :cond_5c
    return-void

    .line 178
    :cond_5d
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->vps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1, p4}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 179
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1, p4}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 180
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1, p4}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 181
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->vps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 182
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->vps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-static {v2, v3, v4}, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->parseMediaFormat(Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer/extractor/TrackOutput;->format(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 183
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->hasOutputFormat:Z

    goto/16 :goto_a
.end method

.method private nalUnitData([BII)V
    .registers 5
    .param p1, "dataArray"    # [B
    .param p2, "offset"    # I
    .param p3, "limit"    # I

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_14

    .line 164
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->sampleReader:Lcom/google/android/exoplayer/extractor/ts/H265Reader$SampleReader;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/ts/H265Reader$SampleReader;->readNalUnitData([BII)V

    .line 170
    :goto_9
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->prefixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 171
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->suffixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 172
    return-void

    .line 166
    :cond_14
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->vps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 167
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 168
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    goto :goto_9
.end method

.method private static parseMediaFormat(Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;)Lcom/google/android/exoplayer/MediaFormat;
    .registers 34
    .param p0, "vps"    # Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;
    .param p1, "sps"    # Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;
    .param p2, "pps"    # Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    .prologue
    .line 207
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v2, v3

    move-object/from16 v0, p2

    iget v3, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v2, v3

    new-array v0, v2, [B

    move-object/from16 v20, v0

    .line 208
    .local v20, "csd":[B
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v4, v5

    move-object/from16 v0, p2

    iget v5, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    move-object/from16 v0, p1

    iget v3, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v2, v3}, Lcom/google/android/exoplayer/util/NalUnitUtil;->unescapeStream([BI)I

    .line 214
    new-instance v14, Lcom/google/android/exoplayer/util/ParsableBitArray;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-direct {v14, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;-><init>([B)V

    .line 215
    .local v14, "bitArray":Lcom/google/android/exoplayer/util/ParsableBitArray;
    const/16 v2, 0x2c

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 216
    const/4 v2, 0x3

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v24

    .line 217
    .local v24, "maxSubLayersMinus1":I
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 220
    const/16 v2, 0x58

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 221
    const/16 v2, 0x8

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 222
    const/16 v30, 0x0

    .line 223
    .local v30, "toSkip":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_7a
    move/from16 v0, v21

    move/from16 v1, v24

    if-ge v0, v1, :cond_93

    .line 224
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_88

    .line 225
    add-int/lit8 v30, v30, 0x59

    .line 227
    :cond_88
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_90

    .line 228
    add-int/lit8 v30, v30, 0x8

    .line 223
    :cond_90
    add-int/lit8 v21, v21, 0x1

    goto :goto_7a

    .line 231
    :cond_93
    move/from16 v0, v30

    invoke-virtual {v14, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 232
    if-lez v24, :cond_a1

    .line 233
    rsub-int/lit8 v2, v24, 0x8

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 236
    :cond_a1
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 237
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v15

    .line 238
    .local v15, "chromaFormatIdc":I
    const/4 v2, 0x3

    if-ne v15, v2, :cond_af

    .line 239
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 241
    :cond_af
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v8

    .line 242
    .local v8, "picWidthInLumaSamples":I
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v9

    .line 243
    .local v9, "picHeightInLumaSamples":I
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_e4

    .line 244
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v17

    .line 245
    .local v17, "confWinLeftOffset":I
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v18

    .line 246
    .local v18, "confWinRightOffset":I
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v19

    .line 247
    .local v19, "confWinTopOffset":I
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v16

    .line 249
    .local v16, "confWinBottomOffset":I
    const/4 v2, 0x1

    if-eq v15, v2, :cond_d3

    const/4 v2, 0x2

    if-ne v15, v2, :cond_108

    :cond_d3
    const/16 v29, 0x2

    .line 250
    .local v29, "subWidthC":I
    :goto_d5
    const/4 v2, 0x1

    if-ne v15, v2, :cond_10b

    const/16 v28, 0x2

    .line 251
    .local v28, "subHeightC":I
    :goto_da
    add-int v2, v17, v18

    mul-int v2, v2, v29

    sub-int/2addr v8, v2

    .line 252
    add-int v2, v19, v16

    mul-int v2, v2, v28

    sub-int/2addr v9, v2

    .line 254
    .end local v16    # "confWinBottomOffset":I
    .end local v17    # "confWinLeftOffset":I
    .end local v18    # "confWinRightOffset":I
    .end local v19    # "confWinTopOffset":I
    .end local v28    # "subHeightC":I
    .end local v29    # "subWidthC":I
    :cond_e4
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 255
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 256
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v22

    .line 258
    .local v22, "log2MaxPicOrderCntLsbMinus4":I
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_10e

    const/16 v21, 0x0

    :goto_f6
    move/from16 v0, v21

    move/from16 v1, v24

    if-gt v0, v1, :cond_111

    .line 259
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 260
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 261
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 258
    add-int/lit8 v21, v21, 0x1

    goto :goto_f6

    .line 249
    .end local v22    # "log2MaxPicOrderCntLsbMinus4":I
    .restart local v16    # "confWinBottomOffset":I
    .restart local v17    # "confWinLeftOffset":I
    .restart local v18    # "confWinRightOffset":I
    .restart local v19    # "confWinTopOffset":I
    :cond_108
    const/16 v29, 0x1

    goto :goto_d5

    .line 250
    .restart local v29    # "subWidthC":I
    :cond_10b
    const/16 v28, 0x1

    goto :goto_da

    .end local v16    # "confWinBottomOffset":I
    .end local v17    # "confWinLeftOffset":I
    .end local v18    # "confWinRightOffset":I
    .end local v19    # "confWinTopOffset":I
    .end local v29    # "subWidthC":I
    .restart local v22    # "log2MaxPicOrderCntLsbMinus4":I
    :cond_10e
    move/from16 v21, v24

    .line 258
    goto :goto_f6

    .line 263
    :cond_111
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 264
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 265
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 266
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 267
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 268
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 270
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v27

    .line 271
    .local v27, "scalingListEnabled":Z
    if-eqz v27, :cond_132

    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_132

    .line 272
    invoke-static {v14}, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->skipScalingList(Lcom/google/android/exoplayer/util/ParsableBitArray;)V

    .line 274
    :cond_132
    const/4 v2, 0x2

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 275
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_14b

    .line 277
    const/16 v2, 0x8

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 278
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 279
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 280
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 283
    :cond_14b
    invoke-static {v14}, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->skipShortTermRefPicSets(Lcom/google/android/exoplayer/util/ParsableBitArray;)V

    .line 284
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_168

    .line 286
    const/16 v21, 0x0

    :goto_156
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_168

    .line 287
    add-int/lit8 v23, v22, 0x4

    .line 289
    .local v23, "ltRefPicPocLsbSpsLength":I
    add-int/lit8 v2, v23, 0x1

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 286
    add-int/lit8 v21, v21, 0x1

    goto :goto_156

    .line 292
    .end local v23    # "ltRefPicPocLsbSpsLength":I
    :cond_168
    const/4 v2, 0x2

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 293
    const/high16 v12, 0x3f800000

    .line 294
    .local v12, "pixelWidthHeightRatio":F
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_19c

    .line 295
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_19c

    .line 296
    const/16 v2, 0x8

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 297
    .local v13, "aspectRatioIdc":I
    const/16 v2, 0xff

    if-ne v13, v2, :cond_1ae

    .line 298
    const/16 v2, 0x10

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v26

    .line 299
    .local v26, "sarWidth":I
    const/16 v2, 0x10

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v25

    .line 300
    .local v25, "sarHeight":I
    if-eqz v26, :cond_19c

    if-eqz v25, :cond_19c

    .line 301
    move/from16 v0, v26

    int-to-float v2, v0

    move/from16 v0, v25

    int-to-float v3, v0

    div-float v12, v2, v3

    .line 311
    .end local v13    # "aspectRatioIdc":I
    .end local v25    # "sarHeight":I
    .end local v26    # "sarWidth":I
    :cond_19c
    :goto_19c
    const/4 v2, 0x0

    const-string/jumbo v3, "video/hevc"

    const/4 v4, -0x1

    const/4 v5, -0x1

    const-wide/16 v6, -0x1

    .line 313
    invoke-static/range {v20 .. v20}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const/4 v11, -0x1

    .line 311
    invoke-static/range {v2 .. v12}, Lcom/google/android/exoplayer/MediaFormat;->createVideoFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;IF)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v2

    return-object v2

    .line 303
    .restart local v13    # "aspectRatioIdc":I
    :cond_1ae
    sget-object v2, Lcom/google/android/exoplayer/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    array-length v2, v2

    if-ge v13, v2, :cond_1b8

    .line 304
    sget-object v2, Lcom/google/android/exoplayer/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    aget v12, v2, v13

    goto :goto_19c

    .line 306
    :cond_1b8
    const-string v2, "H265Reader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19c
.end method

.method private static skipScalingList(Lcom/google/android/exoplayer/util/ParsableBitArray;)V
    .registers 9
    .param p0, "bitArray"    # Lcom/google/android/exoplayer/util/ParsableBitArray;

    .prologue
    const/4 v5, 0x3

    const/4 v6, 0x1

    .line 320
    const/4 v3, 0x0

    .local v3, "sizeId":I
    :goto_3
    const/4 v4, 0x4

    if-ge v3, v4, :cond_37

    .line 321
    const/4 v2, 0x0

    .local v2, "matrixId":I
    :goto_7
    const/4 v4, 0x6

    if-ge v2, v4, :cond_34

    .line 322
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-nez v4, :cond_18

    .line 324
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 321
    :cond_13
    if-ne v3, v5, :cond_32

    move v4, v5

    :goto_16
    add-int/2addr v2, v4

    goto :goto_7

    .line 326
    :cond_18
    const/16 v4, 0x40

    shl-int/lit8 v7, v3, 0x1

    add-int/lit8 v7, v7, 0x4

    shl-int v7, v6, v7

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 327
    .local v0, "coefNum":I
    if-le v3, v6, :cond_29

    .line 329
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readSignedExpGolombCodedInt()I

    .line 331
    :cond_29
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2a
    if-ge v1, v0, :cond_13

    .line 332
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readSignedExpGolombCodedInt()I

    .line 331
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .end local v0    # "coefNum":I
    .end local v1    # "i":I
    :cond_32
    move v4, v6

    .line 321
    goto :goto_16

    .line 320
    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 337
    .end local v2    # "matrixId":I
    :cond_37
    return-void
.end method

.method private static skipShortTermRefPicSets(Lcom/google/android/exoplayer/util/ParsableBitArray;)V
    .registers 11
    .param p0, "bitArray"    # Lcom/google/android/exoplayer/util/ParsableBitArray;

    .prologue
    const/4 v9, 0x1

    .line 344
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v5

    .line 345
    .local v5, "numShortTermRefPicSets":I
    const/4 v1, 0x0

    .line 346
    .local v1, "interRefPicSetPredictionFlag":Z
    const/4 v3, 0x0

    .line 347
    .local v3, "numNegativePics":I
    const/4 v4, 0x0

    .line 351
    .local v4, "numPositivePics":I
    const/4 v6, 0x0

    .line 352
    .local v6, "previousNumDeltaPocs":I
    const/4 v7, 0x0

    .local v7, "stRpsIdx":I
    :goto_a
    if-ge v7, v5, :cond_4e

    .line 353
    if-eqz v7, :cond_12

    .line 354
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v1

    .line 356
    :cond_12
    if-eqz v1, :cond_29

    .line 357
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 358
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 359
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1b
    if-gt v2, v6, :cond_4b

    .line 360
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v8

    if-eqz v8, :cond_26

    .line 361
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 359
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 365
    .end local v2    # "j":I
    :cond_29
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v3

    .line 366
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v4

    .line 367
    add-int v6, v3, v4

    .line 368
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_34
    if-ge v0, v3, :cond_3f

    .line 369
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 370
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 368
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 372
    :cond_3f
    const/4 v0, 0x0

    :goto_40
    if-ge v0, v4, :cond_4b

    .line 373
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 374
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 372
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 352
    .end local v0    # "i":I
    :cond_4b
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 378
    :cond_4e
    return-void
.end method

.method private startNalUnit(JIIJ)V
    .registers 16
    .param p1, "position"    # J
    .param p3, "offset"    # I
    .param p4, "nalUnitType"    # I
    .param p5, "pesTimeUs"    # J

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_18

    .line 152
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->sampleReader:Lcom/google/android/exoplayer/extractor/ts/H265Reader$SampleReader;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer/extractor/ts/H265Reader$SampleReader;->startNalUnit(JIIJ)V

    .line 158
    :goto_d
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->prefixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 159
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->suffixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 160
    return-void

    .line 154
    :cond_18
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->vps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 155
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 156
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    goto :goto_d
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer/util/ParsableByteArray;)V
    .registers 20
    .param p1, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    .line 101
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    if-lez v3, :cond_41

    .line 102
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v14

    .line 103
    .local v14, "offset":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v11

    .line 104
    .local v11, "limit":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    .line 107
    .local v2, "dataArray":[B
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->totalBytesWritten:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v16, v0

    add-long v8, v8, v16

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->totalBytesWritten:J

    .line 108
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v7}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 111
    :goto_30
    if-ge v14, v11, :cond_0

    .line 112
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->prefixFlags:[Z

    invoke-static {v2, v14, v11, v3}, Lcom/google/android/exoplayer/util/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v12

    .line 114
    .local v12, "nalUnitOffset":I
    if-ne v12, v11, :cond_42

    .line 116
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14, v11}, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->nalUnitData([BII)V

    .line 143
    .end local v2    # "dataArray":[B
    .end local v11    # "limit":I
    .end local v12    # "nalUnitOffset":I
    .end local v14    # "offset":I
    :cond_41
    return-void

    .line 121
    .restart local v2    # "dataArray":[B
    .restart local v11    # "limit":I
    .restart local v12    # "nalUnitOffset":I
    .restart local v14    # "offset":I
    :cond_42
    invoke-static {v2, v12}, Lcom/google/android/exoplayer/util/NalUnitUtil;->getH265NalUnitType([BI)I

    move-result v13

    .line 125
    .local v13, "nalUnitType":I
    sub-int v10, v12, v14

    .line 126
    .local v10, "lengthToNalUnit":I
    if-lez v10, :cond_4f

    .line 127
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14, v12}, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->nalUnitData([BII)V

    .line 130
    :cond_4f
    sub-int v6, v11, v12

    .line 131
    .local v6, "bytesWrittenPastPosition":I
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->totalBytesWritten:J

    int-to-long v0, v6

    move-wide/from16 v16, v0

    sub-long v4, v8, v16

    .line 135
    .local v4, "absolutePosition":J
    if-gez v10, :cond_73

    neg-int v7, v10

    :goto_5d
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->pesTimeUs:J

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->endNalUnit(JIIJ)V

    .line 138
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->pesTimeUs:J

    move-object/from16 v3, p0

    move v7, v13

    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->startNalUnit(JIIJ)V

    .line 140
    add-int/lit8 v14, v12, 0x3

    .line 141
    goto :goto_30

    .line 135
    :cond_73
    const/4 v7, 0x0

    goto :goto_5d
.end method

.method public packetFinished()V
    .registers 1

    .prologue
    .line 148
    return-void
.end method

.method public packetStarted(JZ)V
    .registers 5
    .param p1, "pesTimeUs"    # J
    .param p3, "dataAlignmentIndicator"    # Z

    .prologue
    .line 96
    iput-wide p1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->pesTimeUs:J

    .line 97
    return-void
.end method

.method public seek()V
    .registers 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->prefixFlags:[Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 85
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->vps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 86
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 87
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 88
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->prefixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 89
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->suffixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 90
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->sampleReader:Lcom/google/android/exoplayer/extractor/ts/H265Reader$SampleReader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/H265Reader$SampleReader;->reset()V

    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->totalBytesWritten:J

    .line 92
    return-void
.end method
