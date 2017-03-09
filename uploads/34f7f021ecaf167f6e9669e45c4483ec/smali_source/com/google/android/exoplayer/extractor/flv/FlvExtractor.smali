.class public final Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;
.super Ljava/lang/Object;
.source "FlvExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/Extractor;
.implements Lcom/google/android/exoplayer/extractor/SeekMap;


# static fields
.field private static final FLV_HEADER_SIZE:I = 0x9

.field private static final FLV_TAG:I

.field private static final FLV_TAG_HEADER_SIZE:I = 0xb

.field private static final STATE_READING_FLV_HEADER:I = 0x1

.field private static final STATE_READING_TAG_DATA:I = 0x4

.field private static final STATE_READING_TAG_HEADER:I = 0x3

.field private static final STATE_SKIPPING_TO_TAG_HEADER:I = 0x2

.field private static final TAG_TYPE_AUDIO:I = 0x8

.field private static final TAG_TYPE_SCRIPT_DATA:I = 0x12

.field private static final TAG_TYPE_VIDEO:I = 0x9


# instance fields
.field private audioReader:Lcom/google/android/exoplayer/extractor/flv/AudioTagPayloadReader;

.field private bytesToNextTagHeader:I

.field private extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

.field private final headerBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private metadataReader:Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;

.field private parserState:I

.field private final scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final tagData:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field public tagDataSize:I

.field private final tagHeaderBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field public tagTimestampUs:J

.field public tagType:I

.field private videoReader:Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const-string v0, "FLV"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->FLV_TAG:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 74
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->headerBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 75
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 76
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 77
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->parserState:I

    .line 78
    return-void
.end method

.method private prepareTagData(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Lcom/google/android/exoplayer/util/ParsableByteArray;
    .registers 6
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 263
    iget v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagDataSize:I

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->capacity()I

    move-result v1

    if-le v0, v1, :cond_33

    .line 264
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset([BI)V

    .line 268
    :goto_20
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget v1, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setLimit(I)V

    .line 269
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-interface {p1, v0, v3, v1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 270
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    return-object v0

    .line 266
    :cond_33
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    goto :goto_20
.end method

.method private readFlvHeader(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .registers 10
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x9

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 163
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->headerBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v5, v5, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v5, v3, v7, v4}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v5

    if-nez v5, :cond_f

    .line 188
    :goto_e
    return v3

    .line 168
    :cond_f
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->headerBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v5, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 169
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->headerBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 170
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->headerBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 171
    .local v0, "flags":I
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_79

    move v1, v4

    .line 172
    .local v1, "hasAudio":Z
    :goto_25
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_7b

    move v2, v4

    .line 173
    .local v2, "hasVideo":Z
    :goto_2a
    if-eqz v1, :cond_3f

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->audioReader:Lcom/google/android/exoplayer/extractor/flv/AudioTagPayloadReader;

    if-nez v3, :cond_3f

    .line 174
    new-instance v3, Lcom/google/android/exoplayer/extractor/flv/AudioTagPayloadReader;

    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    const/16 v6, 0x8

    invoke-interface {v5, v6}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/google/android/exoplayer/extractor/flv/AudioTagPayloadReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    iput-object v3, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->audioReader:Lcom/google/android/exoplayer/extractor/flv/AudioTagPayloadReader;

    .line 176
    :cond_3f
    if-eqz v2, :cond_52

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->videoReader:Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader;

    if-nez v3, :cond_52

    .line 177
    new-instance v3, Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader;

    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v5, v7}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    iput-object v3, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->videoReader:Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader;

    .line 179
    :cond_52
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->metadataReader:Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;

    if-nez v3, :cond_5e

    .line 180
    new-instance v3, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    iput-object v3, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->metadataReader:Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;

    .line 182
    :cond_5e
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v3}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->endTracks()V

    .line 183
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v3, p0}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer/extractor/SeekMap;)V

    .line 186
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->headerBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v3

    add-int/lit8 v3, v3, -0x9

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    .line 187
    const/4 v3, 0x2

    iput v3, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->parserState:I

    move v3, v4

    .line 188
    goto :goto_e

    .end local v1    # "hasAudio":Z
    .end local v2    # "hasVideo":Z
    :cond_79
    move v1, v3

    .line 171
    goto :goto_25

    .restart local v1    # "hasAudio":Z
    :cond_7b
    move v2, v3

    .line 172
    goto :goto_2a
.end method

.method private readTagData(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .registers 8
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 237
    const/4 v0, 0x1

    .line 238
    .local v0, "wasConsumed":Z
    iget v1, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagType:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1d

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->audioReader:Lcom/google/android/exoplayer/extractor/flv/AudioTagPayloadReader;

    if-eqz v1, :cond_1d

    .line 239
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->audioReader:Lcom/google/android/exoplayer/extractor/flv/AudioTagPayloadReader;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->prepareTagData(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-result-object v2

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagTimestampUs:J

    invoke-virtual {v1, v2, v4, v5}, Lcom/google/android/exoplayer/extractor/flv/AudioTagPayloadReader;->consume(Lcom/google/android/exoplayer/util/ParsableByteArray;J)V

    .line 256
    :cond_16
    :goto_16
    const/4 v1, 0x4

    iput v1, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    .line 257
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->parserState:I

    .line 258
    return v0

    .line 240
    :cond_1d
    iget v1, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagType:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_33

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->videoReader:Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader;

    if-eqz v1, :cond_33

    .line 241
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->videoReader:Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->prepareTagData(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-result-object v2

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagTimestampUs:J

    invoke-virtual {v1, v2, v4, v5}, Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader;->consume(Lcom/google/android/exoplayer/util/ParsableByteArray;J)V

    goto :goto_16

    .line 242
    :cond_33
    iget v1, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagType:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_73

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->metadataReader:Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;

    if-eqz v1, :cond_73

    .line 243
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->metadataReader:Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->prepareTagData(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-result-object v2

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagTimestampUs:J

    invoke-virtual {v1, v2, v4, v5}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->consume(Lcom/google/android/exoplayer/util/ParsableByteArray;J)V

    .line 244
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->metadataReader:Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->getDurationUs()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_16

    .line 245
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->audioReader:Lcom/google/android/exoplayer/extractor/flv/AudioTagPayloadReader;

    if-eqz v1, :cond_63

    .line 246
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->audioReader:Lcom/google/android/exoplayer/extractor/flv/AudioTagPayloadReader;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->metadataReader:Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->getDurationUs()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer/extractor/flv/AudioTagPayloadReader;->setDurationUs(J)V

    .line 248
    :cond_63
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->videoReader:Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader;

    if-eqz v1, :cond_16

    .line 249
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->videoReader:Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->metadataReader:Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->getDurationUs()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader;->setDurationUs(J)V

    goto :goto_16

    .line 253
    :cond_73
    iget v1, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    .line 254
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private readTagHeader(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .registers 8
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 213
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/16 v3, 0xb

    invoke-interface {p1, v2, v0, v3, v1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v2

    if-nez v2, :cond_f

    .line 225
    :goto_e
    return v0

    .line 218
    :cond_f
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 219
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagType:I

    .line 220
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagDataSize:I

    .line 221
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagTimestampUs:J

    .line 222
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    int-to-long v2, v0

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagTimestampUs:J

    or-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagTimestampUs:J

    .line 223
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 224
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->parserState:I

    move v0, v1

    .line 225
    goto :goto_e
.end method

.method private skipToTagHeader(Lcom/google/android/exoplayer/extractor/ExtractorInput;)V
    .registers 3
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 199
    iget v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    .line 200
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    .line 201
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->parserState:I

    .line 202
    return-void
.end method


# virtual methods
.method public getPosition(J)J
    .registers 5
    .param p1, "timeUs"    # J

    .prologue
    .line 282
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public init(Lcom/google/android/exoplayer/extractor/ExtractorOutput;)V
    .registers 2
    .param p1, "output"    # Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .line 114
    return-void
.end method

.method public isSeekable()Z
    .registers 2

    .prologue
    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public read(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)I
    .registers 5
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lcom/google/android/exoplayer/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 131
    :cond_1
    :goto_1
    iget v1, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->parserState:I

    packed-switch v1, :pswitch_data_22

    goto :goto_1

    .line 133
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->readFlvHeader(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 147
    :goto_d
    return v0

    .line 138
    :pswitch_e
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->skipToTagHeader(Lcom/google/android/exoplayer/extractor/ExtractorInput;)V

    goto :goto_1

    .line 141
    :pswitch_12
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->readTagHeader(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_d

    .line 146
    :pswitch_19
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->readTagData(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    const/4 v0, 0x0

    goto :goto_d

    .line 131
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_7
        :pswitch_e
        :pswitch_12
        :pswitch_19
    .end packed-switch
.end method

.method public release()V
    .registers 1

    .prologue
    .line 125
    return-void
.end method

.method public seek()V
    .registers 2

    .prologue
    .line 118
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->parserState:I

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    .line 120
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .registers 7
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x0

    .line 83
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v3, 0x3

    invoke-interface {p1, v2, v1, v3}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 84
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 85
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v2

    sget v3, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->FLV_TAG:I

    if-eq v2, v3, :cond_1a

    .line 108
    :cond_19
    :goto_19
    return v1

    .line 90
    :cond_1a
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v3, 0x2

    invoke-interface {p1, v2, v1, v3}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 91
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 92
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    and-int/lit16 v2, v2, 0xfa

    if-nez v2, :cond_19

    .line 97
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v2, v1, v4}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 98
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 99
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 101
    .local v0, "dataOffset":I
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    .line 102
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 105
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v2, v1, v4}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 106
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 108
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    if-nez v2, :cond_19

    const/4 v1, 0x1

    goto :goto_19
.end method
