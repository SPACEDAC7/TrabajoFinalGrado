.class final Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;
.super Lcom/google/android/exoplayer/extractor/ogg/StreamReader;
.source "VorbisReader.java"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;
    }
.end annotation


# static fields
.field private static final LARGEST_EXPECTED_PAGE_SIZE:J = 0x1f40L


# instance fields
.field private audioStartPosition:J

.field private commentHeader:Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$CommentHeader;

.field private duration:J

.field private elapsedSamples:J

.field private inputLength:J

.field private final oggSeeker:Lcom/google/android/exoplayer/extractor/ogg/OggSeeker;

.field private previousPacketBlockSize:I

.field private seenFirstAudioPacket:Z

.field private targetGranule:J

.field private totalSamples:J

.field private vorbisIdHeader:Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;

.field private vorbisSetup:Lcom/google/android/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ogg/StreamReader;-><init>()V

    .line 43
    new-instance v0, Lcom/google/android/exoplayer/extractor/ogg/OggSeeker;

    invoke-direct {v0}, Lcom/google/android/exoplayer/extractor/ogg/OggSeeker;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->oggSeeker:Lcom/google/android/exoplayer/extractor/ogg/OggSeeker;

    .line 44
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->targetGranule:J

    return-void
.end method

.method static appendNumberOfSamples(Lcom/google/android/exoplayer/util/ParsableByteArray;J)V
    .registers 10
    .param p0, "buffer"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "packetSampleCount"    # J

    .prologue
    const-wide/16 v4, 0xff

    .line 187
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setLimit(I)V

    .line 190
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    and-long v2, p1, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 191
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    const/16 v2, 0x8

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/16 v2, 0x10

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 193
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x18

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 194
    return-void
.end method

.method private static decodeBlockSize(BLcom/google/android/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;)I
    .registers 6
    .param p0, "firstByteOfAudioPacket"    # B
    .param p1, "vorbisSetup"    # Lcom/google/android/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;

    .prologue
    .line 198
    iget v2, p1, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;->iLogModes:I

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/google/android/exoplayer/extractor/ogg/OggUtil;->readBits(BII)I

    move-result v1

    .line 200
    .local v1, "modeNumber":I
    iget-object v2, p1, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;->modes:[Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$Mode;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$Mode;->blockFlag:Z

    if-nez v2, :cond_14

    .line 201
    iget-object v2, p1, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget v0, v2, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;->blockSize0:I

    .line 205
    .local v0, "currentBlockSize":I
    :goto_13
    return v0

    .line 203
    .end local v0    # "currentBlockSize":I
    :cond_14
    iget-object v2, p1, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget v0, v2, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;->blockSize1:I

    .restart local v0    # "currentBlockSize":I
    goto :goto_13
.end method

.method static verifyBitstreamType(Lcom/google/android/exoplayer/util/ParsableByteArray;)Z
    .registers 4
    .param p0, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    .line 55
    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_2
    invoke-static {v1, p0, v2}, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILcom/google/android/exoplayer/util/ParsableByteArray;Z)Z
    :try_end_5
    .catch Lcom/google/android/exoplayer/ParserException; {:try_start_2 .. :try_end_5} :catch_7

    move-result v1

    .line 57
    :goto_6
    return v1

    .line 56
    :catch_7
    move-exception v0

    .line 57
    .local v0, "e":Lcom/google/android/exoplayer/ParserException;
    const/4 v1, 0x0

    goto :goto_6
.end method


# virtual methods
.method public getPosition(J)J
    .registers 10
    .param p1, "timeUs"    # J

    .prologue
    .line 215
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_d

    .line 216
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->targetGranule:J

    .line 217
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->audioStartPosition:J

    .line 220
    :goto_c
    return-wide v0

    .line 219
    :cond_d
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->vorbisSetup:Lcom/google/android/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget-wide v0, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;->sampleRate:J

    mul-long/2addr v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->targetGranule:J

    .line 220
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->audioStartPosition:J

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->inputLength:J

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->audioStartPosition:J

    sub-long/2addr v2, v4

    mul-long/2addr v2, p1

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->duration:J

    div-long/2addr v2, v4

    const-wide/16 v4, 0xfa0

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_c
.end method

.method public isSeekable()Z
    .registers 5

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->vorbisSetup:Lcom/google/android/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;

    if-eqz v0, :cond_e

    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->inputLength:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public read(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)I
    .registers 23
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lcom/google/android/exoplayer/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 74
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->totalSamples:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_10e

    .line 75
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->vorbisSetup:Lcom/google/android/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;

    if-nez v2, :cond_56

    .line 76
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->inputLength:J

    .line 77
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->readSetupHeaders(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->vorbisSetup:Lcom/google/android/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;

    .line 78
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->audioStartPosition:J

    .line 79
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer/extractor/SeekMap;)V

    .line 80
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->inputLength:J

    const-wide/16 v6, -0x1

    cmp-long v2, v2, v6

    if-eqz v2, :cond_56

    .line 82
    const-wide/16 v2, 0x0

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getLength()J

    move-result-wide v6

    const-wide/16 v8, 0x1f40

    sub-long/2addr v6, v8

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-object/from16 v0, p2

    iput-wide v2, v0, Lcom/google/android/exoplayer/extractor/PositionHolder;->position:J

    .line 83
    const/4 v2, 0x1

    .line 150
    :goto_55
    return v2

    .line 86
    :cond_56
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->inputLength:J

    const-wide/16 v6, -0x1

    cmp-long v2, v2, v6

    if-nez v2, :cond_ef

    const-wide/16 v2, -0x1

    .line 87
    :goto_62
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->totalSamples:J

    .line 89
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v10, "codecInitialisationData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->vorbisSetup:Lcom/google/android/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object v2, v2, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget-object v2, v2, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;->data:[B

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->vorbisSetup:Lcom/google/android/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object v2, v2, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;->setupHeaderData:[B

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->inputLength:J

    const-wide/16 v6, -0x1

    cmp-long v2, v2, v6

    if-nez v2, :cond_fb

    const-wide/16 v2, -0x1

    :goto_8b
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->duration:J

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    const-string v3, "audio/vorbis"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->vorbisSetup:Lcom/google/android/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object v6, v6, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget v4, v6, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;->bitrateNominal:I

    const v5, 0xfe01

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->duration:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->vorbisSetup:Lcom/google/android/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object v8, v8, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget v8, v8, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;->channels:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->vorbisSetup:Lcom/google/android/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object v9, v9, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget-wide v0, v9, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;->sampleRate:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-int v9, v0

    const/4 v11, 0x0

    invoke-static/range {v2 .. v11}, Lcom/google/android/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer/extractor/TrackOutput;->format(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 100
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->inputLength:J

    const-wide/16 v6, -0x1

    cmp-long v2, v2, v6

    if-eqz v2, :cond_10e

    .line 101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->oggSeeker:Lcom/google/android/exoplayer/extractor/ogg/OggSeeker;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->inputLength:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->audioStartPosition:J

    sub-long/2addr v6, v8

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->totalSamples:J

    invoke-virtual {v2, v6, v7, v8, v9}, Lcom/google/android/exoplayer/extractor/ogg/OggSeeker;->setup(JJ)V

    .line 103
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->audioStartPosition:J

    move-object/from16 v0, p2

    iput-wide v2, v0, Lcom/google/android/exoplayer/extractor/PositionHolder;->position:J

    .line 104
    const/4 v2, 0x1

    goto/16 :goto_55

    .line 86
    .end local v10    # "codecInitialisationData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_ef
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->oggParser:Lcom/google/android/exoplayer/extractor/ogg/OggParser;

    .line 87
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->readGranuleOfLastPage(Lcom/google/android/exoplayer/extractor/ExtractorInput;)J

    move-result-wide v2

    goto/16 :goto_62

    .line 93
    .restart local v10    # "codecInitialisationData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_fb
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->totalSamples:J

    const-wide/32 v6, 0xf4240

    mul-long/2addr v2, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->vorbisSetup:Lcom/google/android/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object v6, v6, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget-wide v6, v6, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;->sampleRate:J

    div-long/2addr v2, v6

    goto/16 :goto_8b

    .line 109
    .end local v10    # "codecInitialisationData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_10e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    if-nez v2, :cond_15d

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->targetGranule:J

    const-wide/16 v6, -0x1

    cmp-long v2, v2, v6

    if-lez v2, :cond_15d

    .line 110
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer/extractor/ogg/OggUtil;->skipToNextPage(Lcom/google/android/exoplayer/extractor/ExtractorInput;)V

    .line 111
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->oggSeeker:Lcom/google/android/exoplayer/extractor/ogg/OggSeeker;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->targetGranule:J

    move-object/from16 v0, p1

    invoke-virtual {v2, v6, v7, v0}, Lcom/google/android/exoplayer/extractor/ogg/OggSeeker;->getNextSeekPosition(JLcom/google/android/exoplayer/extractor/ExtractorInput;)J

    move-result-wide v14

    .line 112
    .local v14, "position":J
    const-wide/16 v2, -0x1

    cmp-long v2, v14, v2

    if-eqz v2, :cond_13c

    .line 113
    move-object/from16 v0, p2

    iput-wide v14, v0, Lcom/google/android/exoplayer/extractor/PositionHolder;->position:J

    .line 114
    const/4 v2, 0x1

    goto/16 :goto_55

    .line 116
    :cond_13c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->oggParser:Lcom/google/android/exoplayer/extractor/ogg/OggParser;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->targetGranule:J

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v6, v7}, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->skipToPageOfGranule(Lcom/google/android/exoplayer/extractor/ExtractorInput;J)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->elapsedSamples:J

    .line 117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->vorbisIdHeader:Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget v2, v2, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;->blockSize0:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    .line 119
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    .line 124
    .end local v14    # "position":J
    :cond_15d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->oggParser:Lcom/google/android/exoplayer/extractor/ogg/OggParser;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->readPacket(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/util/ParsableByteArray;)Z

    move-result v2

    if-eqz v2, :cond_20b

    .line 126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1ff

    .line 128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->vorbisSetup:Lcom/google/android/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->decodeBlockSize(BLcom/google/android/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;)I

    move-result v12

    .line 131
    .local v12, "packetBlockSize":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    if-eqz v2, :cond_209

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    add-int/2addr v2, v12

    div-int/lit8 v13, v2, 0x4

    .line 133
    .local v13, "samplesInPacket":I
    :goto_199
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->elapsedSamples:J

    int-to-long v6, v13

    add-long/2addr v2, v6

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->targetGranule:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_1ec

    .line 135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    int-to-long v6, v13

    invoke-static {v2, v6, v7}, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->appendNumberOfSamples(Lcom/google/android/exoplayer/util/ParsableByteArray;J)V

    .line 137
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->elapsedSamples:J

    const-wide/32 v6, 0xf4240

    mul-long/2addr v2, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->vorbisSetup:Lcom/google/android/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object v6, v6, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget-wide v6, v6, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;->sampleRate:J

    div-long v4, v2, v6

    .line 138
    .local v4, "timeUs":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v6

    invoke-interface {v2, v3, v6}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 139
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 140
    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->targetGranule:J

    .line 143
    .end local v4    # "timeUs":J
    :cond_1ec
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    .line 144
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->elapsedSamples:J

    int-to-long v6, v13

    add-long/2addr v2, v6

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->elapsedSamples:J

    .line 145
    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    .line 147
    .end local v12    # "packetBlockSize":I
    .end local v13    # "samplesInPacket":I
    :cond_1ff
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset()V

    .line 148
    const/4 v2, 0x0

    goto/16 :goto_55

    .line 131
    .restart local v12    # "packetBlockSize":I
    :cond_209
    const/4 v13, 0x0

    goto :goto_199

    .line 150
    .end local v12    # "packetBlockSize":I
    :cond_20b
    const/4 v2, -0x1

    goto/16 :goto_55
.end method

.method readSetupHeaders(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;
    .registers 9
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p2, "scratch"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 157
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->vorbisIdHeader:Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;

    if-nez v0, :cond_13

    .line 158
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->oggParser:Lcom/google/android/exoplayer/extractor/ogg/OggParser;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->readPacket(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/util/ParsableByteArray;)Z

    .line 159
    invoke-static {p2}, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil;->readVorbisIdentificationHeader(Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->vorbisIdHeader:Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;

    .line 160
    invoke-virtual {p2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset()V

    .line 163
    :cond_13
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->commentHeader:Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$CommentHeader;

    if-nez v0, :cond_25

    .line 164
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->oggParser:Lcom/google/android/exoplayer/extractor/ogg/OggParser;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->readPacket(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/util/ParsableByteArray;)Z

    .line 165
    invoke-static {p2}, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil;->readVorbisCommentHeader(Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$CommentHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->commentHeader:Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$CommentHeader;

    .line 166
    invoke-virtual {p2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset()V

    .line 169
    :cond_25
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->oggParser:Lcom/google/android/exoplayer/extractor/ogg/OggParser;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->readPacket(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/util/ParsableByteArray;)Z

    .line 171
    invoke-virtual {p2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v0

    new-array v3, v0, [B

    .line 173
    .local v3, "setupHeaderData":[B
    iget-object v0, p2, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-virtual {p2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v1

    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->vorbisIdHeader:Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget v0, v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;->channels:I

    invoke-static {p2, v0}, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil;->readVorbisModes(Lcom/google/android/exoplayer/util/ParsableByteArray;I)[Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$Mode;

    move-result-object v4

    .line 177
    .local v4, "modes":[Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$Mode;
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil;->iLog(I)I

    move-result v5

    .line 178
    .local v5, "iLogModes":I
    invoke-virtual {p2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset()V

    .line 180
    new-instance v0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->vorbisIdHeader:Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->commentHeader:Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$CommentHeader;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader$VorbisSetup;-><init>(Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$VorbisIdHeader;Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$CommentHeader;[B[Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$Mode;I)V

    return-object v0
.end method

.method public seek()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-super {p0}, Lcom/google/android/exoplayer/extractor/ogg/StreamReader;->seek()V

    .line 64
    iput v2, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->elapsedSamples:J

    .line 66
    iput-boolean v2, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    .line 67
    return-void
.end method
