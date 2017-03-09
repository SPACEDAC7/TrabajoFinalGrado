.class final Lcom/google/android/exoplayer/hls/WebvttExtractor;
.super Ljava/lang/Object;
.source "WebvttExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/Extractor;


# static fields
.field private static final LOCAL_TIMESTAMP:Ljava/util/regex/Pattern;

.field private static final MEDIA_TIMESTAMP:Ljava/util/regex/Pattern;


# instance fields
.field private output:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

.field private final ptsTimestampAdjuster:Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;

.field private sampleData:[B

.field private final sampleDataWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private sampleSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const-string v0, "LOCAL:([^,]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->LOCAL_TIMESTAMP:Ljava/util/regex/Pattern;

    .line 49
    const-string v0, "MPEGTS:(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->MEDIA_TIMESTAMP:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;)V
    .registers 3
    .param p1, "ptsTimestampAdjuster"    # Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->ptsTimestampAdjuster:Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;

    .line 61
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->sampleDataWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 62
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->sampleData:[B

    .line 63
    return-void
.end method

.method private buildTrackOutput(J)Lcom/google/android/exoplayer/extractor/TrackOutput;
    .registers 12
    .param p1, "subsampleOffsetUs"    # J

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->output:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v8

    .line 165
    .local v8, "trackOutput":Lcom/google/android/exoplayer/extractor/TrackOutput;
    const-string v0, "id"

    const-string/jumbo v1, "text/vtt"

    const/4 v2, -0x1

    const-wide/16 v3, -0x1

    const-string v5, "en"

    move-wide v6, p1

    invoke-static/range {v0 .. v7}, Lcom/google/android/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;J)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    invoke-interface {v8, v0}, Lcom/google/android/exoplayer/extractor/TrackOutput;->format(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 167
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->output:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v0}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->endTracks()V

    .line 168
    return-object v8
.end method

.method private processSample()V
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 116
    new-instance v17, Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->sampleData:[B

    move-object/from16 v0, v17

    invoke-direct {v0, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>([B)V

    .line 119
    .local v17, "webvttData":Lcom/google/android/exoplayer/util/ParsableByteArray;
    invoke-static/range {v17 .. v17}, Lcom/google/android/exoplayer/text/webvtt/WebvttParserUtil;->validateWebvttHeaderLine(Lcom/google/android/exoplayer/util/ParsableByteArray;)V

    .line 122
    const-wide/16 v22, 0x0

    .line 123
    .local v22, "vttTimestampUs":J
    const-wide/16 v20, 0x0

    .line 127
    .local v20, "tsTimestampUs":J
    :cond_12
    :goto_12
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v14

    .local v14, "line":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_87

    .line 128
    const-string v8, "X-TIMESTAMP-MAP"

    invoke-virtual {v14, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 129
    sget-object v8, Lcom/google/android/exoplayer/hls/WebvttExtractor;->LOCAL_TIMESTAMP:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    .line 130
    .local v15, "localTimestampMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-nez v8, :cond_49

    .line 131
    new-instance v8, Lcom/google/android/exoplayer/ParserException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "X-TIMESTAMP-MAP doesn\'t contain local timestamp: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 133
    :cond_49
    sget-object v8, Lcom/google/android/exoplayer/hls/WebvttExtractor;->MEDIA_TIMESTAMP:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    .line 134
    .local v16, "mediaTimestampMatcher":Ljava/util/regex/Matcher;
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-nez v8, :cond_6e

    .line 135
    new-instance v8, Lcom/google/android/exoplayer/ParserException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "X-TIMESTAMP-MAP doesn\'t contain media timestamp: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 137
    :cond_6e
    const/4 v8, 0x1

    invoke-virtual {v15, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/exoplayer/text/webvtt/WebvttParserUtil;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v22

    .line 138
    const/4 v8, 0x1

    .line 139
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 138
    invoke-static {v8, v9}, Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;->ptsToUs(J)J

    move-result-wide v20

    .line 140
    goto :goto_12

    .line 144
    .end local v15    # "localTimestampMatcher":Ljava/util/regex/Matcher;
    .end local v16    # "mediaTimestampMatcher":Ljava/util/regex/Matcher;
    :cond_87
    invoke-static/range {v17 .. v17}, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser;->findNextCueHeader(Lcom/google/android/exoplayer/util/ParsableByteArray;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 145
    .local v4, "cueHeaderMatcher":Ljava/util/regex/Matcher;
    if-nez v4, :cond_95

    .line 147
    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/google/android/exoplayer/hls/WebvttExtractor;->buildTrackOutput(J)Lcom/google/android/exoplayer/extractor/TrackOutput;

    .line 161
    :goto_94
    return-void

    .line 151
    :cond_95
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/exoplayer/text/webvtt/WebvttParserUtil;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v12

    .line 152
    .local v12, "firstCueTimeUs":J
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->ptsTimestampAdjuster:Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;

    add-long v10, v12, v20

    sub-long v10, v10, v22

    .line 153
    invoke-static {v10, v11}, Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;->usToPts(J)J

    move-result-wide v10

    .line 152
    invoke-virtual {v8, v10, v11}, Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;->adjustTimestamp(J)J

    move-result-wide v6

    .line 154
    .local v6, "sampleTimeUs":J
    sub-long v18, v6, v12

    .line 156
    .local v18, "subsampleOffsetUs":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/hls/WebvttExtractor;->buildTrackOutput(J)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v5

    .line 158
    .local v5, "trackOutput":Lcom/google/android/exoplayer/extractor/TrackOutput;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->sampleDataWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->sampleData:[B

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->sampleSize:I

    invoke-virtual {v8, v9, v10}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset([BI)V

    .line 159
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->sampleDataWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->sampleSize:I

    invoke-interface {v5, v8, v9}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 160
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->sampleSize:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    goto :goto_94
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer/extractor/ExtractorOutput;)V
    .registers 3
    .param p1, "output"    # Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->output:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .line 76
    sget-object v0, Lcom/google/android/exoplayer/extractor/SeekMap;->UNSEEKABLE:Lcom/google/android/exoplayer/extractor/SeekMap;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer/extractor/SeekMap;)V

    .line 77
    return-void
.end method

.method public read(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)I
    .registers 10
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lcom/google/android/exoplayer/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 93
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    long-to-int v1, v4

    .line 96
    .local v1, "currentFileSize":I
    iget v2, p0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->sampleSize:I

    iget-object v4, p0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->sampleData:[B

    array-length v4, v4

    if-ne v2, v4, :cond_1c

    .line 97
    iget-object v4, p0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->sampleData:[B

    if-eq v1, v3, :cond_39

    move v2, v1

    :goto_12
    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->sampleData:[B

    .line 102
    :cond_1c
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->sampleData:[B

    iget v4, p0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->sampleSize:I

    iget-object v5, p0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->sampleData:[B

    array-length v5, v5

    iget v6, p0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->sampleSize:I

    sub-int/2addr v5, v6

    invoke-interface {p1, v2, v4, v5}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->read([BII)I

    move-result v0

    .line 103
    .local v0, "bytesRead":I
    if-eq v0, v3, :cond_3d

    .line 104
    iget v2, p0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->sampleSize:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->sampleSize:I

    .line 105
    if-eq v1, v3, :cond_37

    iget v2, p0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->sampleSize:I

    if-eq v2, v1, :cond_3d

    .line 106
    :cond_37
    const/4 v2, 0x0

    .line 112
    :goto_38
    return v2

    .line 97
    .end local v0    # "bytesRead":I
    :cond_39
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->sampleData:[B

    array-length v2, v2

    goto :goto_12

    .line 111
    .restart local v0    # "bytesRead":I
    :cond_3d
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/WebvttExtractor;->processSample()V

    move v2, v3

    .line 112
    goto :goto_38
.end method

.method public release()V
    .registers 1

    .prologue
    .line 88
    return-void
.end method

.method public seek()V
    .registers 2

    .prologue
    .line 82
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
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
    .line 70
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
