.class public final Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;
.super Ljava/lang/Object;
.source "WebmExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;,
        Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$InnerEbmlReaderOutput;
    }
.end annotation


# static fields
.field private static final BLOCK_STATE_DATA:I = 0x2

.field private static final BLOCK_STATE_HEADER:I = 0x1

.field private static final BLOCK_STATE_START:I = 0x0

.field private static final CODEC_ID_AAC:Ljava/lang/String; = "A_AAC"

.field private static final CODEC_ID_AC3:Ljava/lang/String; = "A_AC3"

.field private static final CODEC_ID_ACM:Ljava/lang/String; = "A_MS/ACM"

.field private static final CODEC_ID_DTS:Ljava/lang/String; = "A_DTS"

.field private static final CODEC_ID_DTS_EXPRESS:Ljava/lang/String; = "A_DTS/EXPRESS"

.field private static final CODEC_ID_DTS_LOSSLESS:Ljava/lang/String; = "A_DTS/LOSSLESS"

.field private static final CODEC_ID_E_AC3:Ljava/lang/String; = "A_EAC3"

.field private static final CODEC_ID_FLAC:Ljava/lang/String; = "A_FLAC"

.field private static final CODEC_ID_FOURCC:Ljava/lang/String; = "V_MS/VFW/FOURCC"

.field private static final CODEC_ID_H264:Ljava/lang/String; = "V_MPEG4/ISO/AVC"

.field private static final CODEC_ID_H265:Ljava/lang/String; = "V_MPEGH/ISO/HEVC"

.field private static final CODEC_ID_MP3:Ljava/lang/String; = "A_MPEG/L3"

.field private static final CODEC_ID_MPEG2:Ljava/lang/String; = "V_MPEG2"

.field private static final CODEC_ID_MPEG4_AP:Ljava/lang/String; = "V_MPEG4/ISO/AP"

.field private static final CODEC_ID_MPEG4_ASP:Ljava/lang/String; = "V_MPEG4/ISO/ASP"

.field private static final CODEC_ID_MPEG4_SP:Ljava/lang/String; = "V_MPEG4/ISO/SP"

.field private static final CODEC_ID_OPUS:Ljava/lang/String; = "A_OPUS"

.field private static final CODEC_ID_PCM_INT_LIT:Ljava/lang/String; = "A_PCM/INT/LIT"

.field private static final CODEC_ID_PGS:Ljava/lang/String; = "S_HDMV/PGS"

.field private static final CODEC_ID_SUBRIP:Ljava/lang/String; = "S_TEXT/UTF8"

.field private static final CODEC_ID_TRUEHD:Ljava/lang/String; = "A_TRUEHD"

.field private static final CODEC_ID_VOBSUB:Ljava/lang/String; = "S_VOBSUB"

.field private static final CODEC_ID_VORBIS:Ljava/lang/String; = "A_VORBIS"

.field private static final CODEC_ID_VP8:Ljava/lang/String; = "V_VP8"

.field private static final CODEC_ID_VP9:Ljava/lang/String; = "V_VP9"

.field private static final DOC_TYPE_MATROSKA:Ljava/lang/String; = "matroska"

.field private static final DOC_TYPE_WEBM:Ljava/lang/String; = "webm"

.field private static final ENCRYPTION_IV_SIZE:I = 0x8

.field private static final FOURCC_COMPRESSION_VC1:I = 0x31435657

.field private static final ID_AUDIO:I = 0xe1

.field private static final ID_AUDIO_BIT_DEPTH:I = 0x6264

.field private static final ID_BLOCK:I = 0xa1

.field private static final ID_BLOCK_DURATION:I = 0x9b

.field private static final ID_BLOCK_GROUP:I = 0xa0

.field private static final ID_CHANNELS:I = 0x9f

.field private static final ID_CLUSTER:I = 0x1f43b675

.field private static final ID_CODEC_DELAY:I = 0x56aa

.field private static final ID_CODEC_ID:I = 0x86

.field private static final ID_CODEC_PRIVATE:I = 0x63a2

.field private static final ID_CONTENT_COMPRESSION:I = 0x5034

.field private static final ID_CONTENT_COMPRESSION_ALGORITHM:I = 0x4254

.field private static final ID_CONTENT_COMPRESSION_SETTINGS:I = 0x4255

.field private static final ID_CONTENT_ENCODING:I = 0x6240

.field private static final ID_CONTENT_ENCODINGS:I = 0x6d80

.field private static final ID_CONTENT_ENCODING_ORDER:I = 0x5031

.field private static final ID_CONTENT_ENCODING_SCOPE:I = 0x5032

.field private static final ID_CONTENT_ENCRYPTION:I = 0x5035

.field private static final ID_CONTENT_ENCRYPTION_AES_SETTINGS:I = 0x47e7

.field private static final ID_CONTENT_ENCRYPTION_AES_SETTINGS_CIPHER_MODE:I = 0x47e8

.field private static final ID_CONTENT_ENCRYPTION_ALGORITHM:I = 0x47e1

.field private static final ID_CONTENT_ENCRYPTION_KEY_ID:I = 0x47e2

.field private static final ID_CUES:I = 0x1c53bb6b

.field private static final ID_CUE_CLUSTER_POSITION:I = 0xf1

.field private static final ID_CUE_POINT:I = 0xbb

.field private static final ID_CUE_TIME:I = 0xb3

.field private static final ID_CUE_TRACK_POSITIONS:I = 0xb7

.field private static final ID_DEFAULT_DURATION:I = 0x23e383

.field private static final ID_DISPLAY_HEIGHT:I = 0x54ba

.field private static final ID_DISPLAY_UNIT:I = 0x54b2

.field private static final ID_DISPLAY_WIDTH:I = 0x54b0

.field private static final ID_DOC_TYPE:I = 0x4282

.field private static final ID_DOC_TYPE_READ_VERSION:I = 0x4285

.field private static final ID_DURATION:I = 0x4489

.field private static final ID_EBML:I = 0x1a45dfa3

.field private static final ID_EBML_READ_VERSION:I = 0x42f7

.field private static final ID_INFO:I = 0x1549a966

.field private static final ID_LANGUAGE:I = 0x22b59c

.field private static final ID_PIXEL_HEIGHT:I = 0xba

.field private static final ID_PIXEL_WIDTH:I = 0xb0

.field private static final ID_REFERENCE_BLOCK:I = 0xfb

.field private static final ID_SAMPLING_FREQUENCY:I = 0xb5

.field private static final ID_SEEK:I = 0x4dbb

.field private static final ID_SEEK_HEAD:I = 0x114d9b74

.field private static final ID_SEEK_ID:I = 0x53ab

.field private static final ID_SEEK_POSITION:I = 0x53ac

.field private static final ID_SEEK_PRE_ROLL:I = 0x56bb

.field private static final ID_SEGMENT:I = 0x18538067

.field private static final ID_SEGMENT_INFO:I = 0x1549a966

.field private static final ID_SIMPLE_BLOCK:I = 0xa3

.field private static final ID_TIMECODE_SCALE:I = 0x2ad7b1

.field private static final ID_TIME_CODE:I = 0xe7

.field private static final ID_TRACKS:I = 0x1654ae6b

.field private static final ID_TRACK_ENTRY:I = 0xae

.field private static final ID_TRACK_NUMBER:I = 0xd7

.field private static final ID_TRACK_TYPE:I = 0x83

.field private static final ID_VIDEO:I = 0xe0

.field private static final LACING_EBML:I = 0x3

.field private static final LACING_FIXED_SIZE:I = 0x2

.field private static final LACING_NONE:I = 0x0

.field private static final LACING_XIPH:I = 0x1

.field private static final MP3_MAX_INPUT_SIZE:I = 0x1000

.field private static final OPUS_MAX_INPUT_SIZE:I = 0x1680

.field private static final SUBRIP_PREFIX:[B

.field private static final SUBRIP_PREFIX_END_TIMECODE_OFFSET:I = 0x13

.field private static final SUBRIP_TIMECODE_EMPTY:[B

.field private static final SUBRIP_TIMECODE_LENGTH:I = 0xc

.field private static final TRACK_TYPE_AUDIO:I = 0x2

.field private static final UNKNOWN:I = -0x1

.field private static final VORBIS_MAX_INPUT_SIZE:I = 0x2000

.field private static final WAVE_FORMAT_EXTENSIBLE:I = 0xfffe

.field private static final WAVE_FORMAT_PCM:I = 0x1

.field private static final WAVE_FORMAT_SIZE:I = 0x12

.field private static final WAVE_SUBFORMAT_PCM:Ljava/util/UUID;


# instance fields
.field private blockDurationUs:J

.field private blockFlags:I

.field private blockLacingSampleCount:I

.field private blockLacingSampleIndex:I

.field private blockLacingSampleSizes:[I

.field private blockState:I

.field private blockTimeUs:J

.field private blockTrackNumber:I

.field private blockTrackNumberLength:I

.field private clusterTimecodeUs:J

.field private cueClusterPositions:Lcom/google/android/exoplayer/util/LongArray;

.field private cueTimesUs:Lcom/google/android/exoplayer/util/LongArray;

.field private cuesContentPosition:J

.field private currentTrack:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;

.field private durationTimecode:J

.field private durationUs:J

.field private final encryptionInitializationVector:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final encryptionSubsampleData:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

.field private extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

.field private final nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final nalStartCode:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final reader:Lcom/google/android/exoplayer/extractor/webm/EbmlReader;

.field private sampleBytesRead:I

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private sampleEncodingHandled:Z

.field private sampleInitializationVectorRead:Z

.field private samplePartitionCount:I

.field private samplePartitionCountRead:Z

.field private sampleRead:Z

.field private sampleSeenReferenceBlock:Z

.field private sampleSignalByte:B

.field private sampleSignalByteRead:Z

.field private final sampleStrippedBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private seekEntryId:I

.field private final seekEntryIdBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private seekEntryPosition:J

.field private seekForCues:Z

.field private seekPositionAfterBuildingCues:J

.field private seenClusterPositionForCurrentCuePoint:Z

.field private segmentContentPosition:J

.field private segmentContentSize:J

.field private sentDrmInitData:Z

.field private sentSeekMap:Z

.field private final subripSample:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private timecodeScale:J

.field private final tracks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;",
            ">;"
        }
    .end annotation
.end field

.field private final varintReader:Lcom/google/android/exoplayer/extractor/webm/VarintReader;

.field private final vorbisNumPageSamples:Lcom/google/android/exoplayer/util/ParsableByteArray;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 169
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_24

    sput-object v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->SUBRIP_PREFIX:[B

    .line 177
    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_38

    sput-object v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->SUBRIP_TIMECODE_EMPTY:[B

    .line 203
    new-instance v0, Ljava/util/UUID;

    const-wide v2, 0x100000000001000L

    const-wide v4, -0x7fffff55ffc7648fL

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->WAVE_SUBFORMAT_PCM:Ljava/util/UUID;

    return-void

    .line 169
    :array_24
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    .line 177
    :array_38
    .array-data 1
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 275
    new-instance v0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;

    invoke-direct {v0}, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;-><init>(Lcom/google/android/exoplayer/extractor/webm/EbmlReader;)V

    .line 276
    return-void
.end method

.method constructor <init>(Lcom/google/android/exoplayer/extractor/webm/EbmlReader;)V
    .registers 6
    .param p1, "reader"    # Lcom/google/android/exoplayer/extractor/webm/EbmlReader;

    .prologue
    const/4 v3, 0x4

    const-wide/16 v0, -0x1

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->segmentContentPosition:J

    .line 222
    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->segmentContentSize:J

    .line 223
    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->timecodeScale:J

    .line 224
    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->durationTimecode:J

    .line 225
    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->durationUs:J

    .line 240
    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cuesContentPosition:J

    .line 241
    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekPositionAfterBuildingCues:J

    .line 242
    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->clusterTimecodeUs:J

    .line 279
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->reader:Lcom/google/android/exoplayer/extractor/webm/EbmlReader;

    .line 280
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->reader:Lcom/google/android/exoplayer/extractor/webm/EbmlReader;

    new-instance v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$InnerEbmlReaderOutput;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$InnerEbmlReaderOutput;-><init>(Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$1;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/extractor/webm/EbmlReader;->init(Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;)V

    .line 281
    new-instance v0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;

    invoke-direct {v0}, Lcom/google/android/exoplayer/extractor/webm/VarintReader;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->varintReader:Lcom/google/android/exoplayer/extractor/webm/VarintReader;

    .line 282
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->tracks:Landroid/util/SparseArray;

    .line 283
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 284
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->vorbisNumPageSamples:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 285
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekEntryIdBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 286
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    sget-object v1, Lcom/google/android/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->nalStartCode:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 287
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 288
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 289
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->subripSample:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 290
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->encryptionInitializationVector:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 291
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->encryptionSubsampleData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 292
    return-void
.end method

.method static synthetic access$300()Ljava/util/UUID;
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->WAVE_SUBFORMAT_PCM:Ljava/util/UUID;

    return-object v0
.end method

.method private buildSeekMap()Lcom/google/android/exoplayer/extractor/SeekMap;
    .registers 14

    .prologue
    const-wide/16 v8, -0x1

    const/4 v12, 0x0

    .line 1105
    iget-wide v6, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->segmentContentPosition:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2d

    iget-wide v6, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->durationUs:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2d

    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueTimesUs:Lcom/google/android/exoplayer/util/LongArray;

    if-eqz v6, :cond_2d

    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueTimesUs:Lcom/google/android/exoplayer/util/LongArray;

    .line 1106
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/LongArray;->size()I

    move-result v6

    if-eqz v6, :cond_2d

    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueClusterPositions:Lcom/google/android/exoplayer/util/LongArray;

    if-eqz v6, :cond_2d

    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueClusterPositions:Lcom/google/android/exoplayer/util/LongArray;

    .line 1107
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/LongArray;->size()I

    move-result v6

    iget-object v7, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueTimesUs:Lcom/google/android/exoplayer/util/LongArray;

    invoke-virtual {v7}, Lcom/google/android/exoplayer/util/LongArray;->size()I

    move-result v7

    if-eq v6, v7, :cond_34

    .line 1109
    :cond_2d
    iput-object v12, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueTimesUs:Lcom/google/android/exoplayer/util/LongArray;

    .line 1110
    iput-object v12, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueClusterPositions:Lcom/google/android/exoplayer/util/LongArray;

    .line 1111
    sget-object v6, Lcom/google/android/exoplayer/extractor/SeekMap;->UNSEEKABLE:Lcom/google/android/exoplayer/extractor/SeekMap;

    .line 1131
    :goto_33
    return-object v6

    .line 1113
    :cond_34
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueTimesUs:Lcom/google/android/exoplayer/util/LongArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/LongArray;->size()I

    move-result v0

    .line 1114
    .local v0, "cuePointsSize":I
    new-array v4, v0, [I

    .line 1115
    .local v4, "sizes":[I
    new-array v3, v0, [J

    .line 1116
    .local v3, "offsets":[J
    new-array v1, v0, [J

    .line 1117
    .local v1, "durationsUs":[J
    new-array v5, v0, [J

    .line 1118
    .local v5, "timesUs":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_43
    if-ge v2, v0, :cond_5b

    .line 1119
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueTimesUs:Lcom/google/android/exoplayer/util/LongArray;

    invoke-virtual {v6, v2}, Lcom/google/android/exoplayer/util/LongArray;->get(I)J

    move-result-wide v6

    aput-wide v6, v5, v2

    .line 1120
    iget-wide v6, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->segmentContentPosition:J

    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueClusterPositions:Lcom/google/android/exoplayer/util/LongArray;

    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer/util/LongArray;->get(I)J

    move-result-wide v8

    add-long/2addr v6, v8

    aput-wide v6, v3, v2

    .line 1118
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 1122
    :cond_5b
    const/4 v2, 0x0

    :goto_5c
    add-int/lit8 v6, v0, -0x1

    if-ge v2, v6, :cond_76

    .line 1123
    add-int/lit8 v6, v2, 0x1

    aget-wide v6, v3, v6

    aget-wide v8, v3, v2

    sub-long/2addr v6, v8

    long-to-int v6, v6

    aput v6, v4, v2

    .line 1124
    add-int/lit8 v6, v2, 0x1

    aget-wide v6, v5, v6

    aget-wide v8, v5, v2

    sub-long/2addr v6, v8

    aput-wide v6, v1, v2

    .line 1122
    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    .line 1126
    :cond_76
    add-int/lit8 v6, v0, -0x1

    iget-wide v8, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->segmentContentPosition:J

    iget-wide v10, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->segmentContentSize:J

    add-long/2addr v8, v10

    add-int/lit8 v7, v0, -0x1

    aget-wide v10, v3, v7

    sub-long/2addr v8, v10

    long-to-int v7, v8

    aput v7, v4, v6

    .line 1128
    add-int/lit8 v6, v0, -0x1

    iget-wide v8, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->durationUs:J

    add-int/lit8 v7, v0, -0x1

    aget-wide v10, v5, v7

    sub-long/2addr v8, v10

    aput-wide v8, v1, v6

    .line 1129
    iput-object v12, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueTimesUs:Lcom/google/android/exoplayer/util/LongArray;

    .line 1130
    iput-object v12, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueClusterPositions:Lcom/google/android/exoplayer/util/LongArray;

    .line 1131
    new-instance v6, Lcom/google/android/exoplayer/extractor/ChunkIndex;

    invoke-direct {v6, v4, v3, v1, v5}, Lcom/google/android/exoplayer/extractor/ChunkIndex;-><init>([I[J[J[J)V

    goto :goto_33
.end method

.method private commitSampleToOutput(Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;J)V
    .registers 12
    .param p1, "track"    # Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;
    .param p2, "timeUs"    # J

    .prologue
    .line 839
    const-string v0, "S_TEXT/UTF8"

    iget-object v1, p1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 840
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->writeSubripSample(Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;)V

    .line 842
    :cond_d
    iget-object v1, p1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockFlags:I

    iget v5, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    const/4 v6, 0x0

    iget-object v7, p1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->encryptionKeyId:[B

    move-wide v2, p2

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 843
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleRead:Z

    .line 844
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->resetSample()V

    .line 845
    return-void
.end method

.method private static ensureArrayCapacity([II)[I
    .registers 3
    .param p0, "array"    # [I
    .param p1, "length"    # I

    .prologue
    .line 1200
    if-nez p0, :cond_5

    .line 1201
    new-array p0, p1, [I

    .line 1206
    .end local p0    # "array":[I
    :cond_4
    :goto_4
    return-object p0

    .line 1202
    .restart local p0    # "array":[I
    :cond_5
    array-length v0, p0

    if-ge v0, p1, :cond_4

    .line 1206
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array p0, v0, [I

    goto :goto_4
.end method

.method private static isCodecSupported(Ljava/lang/String;)Z
    .registers 2
    .param p0, "codecId"    # Ljava/lang/String;

    .prologue
    .line 1168
    const-string v0, "V_VP8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "V_VP9"

    .line 1169
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "V_MPEG2"

    .line 1170
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "V_MPEG4/ISO/SP"

    .line 1171
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "V_MPEG4/ISO/ASP"

    .line 1172
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "V_MPEG4/ISO/AP"

    .line 1173
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "V_MPEG4/ISO/AVC"

    .line 1174
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "V_MPEGH/ISO/HEVC"

    .line 1175
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "V_MS/VFW/FOURCC"

    .line 1176
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "A_OPUS"

    .line 1177
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "A_VORBIS"

    .line 1178
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "A_AAC"

    .line 1179
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "A_MPEG/L3"

    .line 1180
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "A_AC3"

    .line 1181
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "A_EAC3"

    .line 1182
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "A_TRUEHD"

    .line 1183
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "A_DTS"

    .line 1184
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "A_DTS/EXPRESS"

    .line 1185
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "A_DTS/LOSSLESS"

    .line 1186
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "A_FLAC"

    .line 1187
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "A_MS/ACM"

    .line 1188
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "A_PCM/INT/LIT"

    .line 1189
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "S_TEXT/UTF8"

    .line 1190
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "S_VOBSUB"

    .line 1191
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "S_HDMV/PGS"

    .line 1192
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ca

    :cond_c8
    const/4 v0, 0x1

    .line 1168
    :goto_c9
    return v0

    .line 1192
    :cond_ca
    const/4 v0, 0x0

    goto :goto_c9
.end method

.method private maybeSeekForCues(Lcom/google/android/exoplayer/extractor/PositionHolder;J)Z
    .registers 10
    .param p1, "seekPosition"    # Lcom/google/android/exoplayer/extractor/PositionHolder;
    .param p2, "currentPosition"    # J

    .prologue
    const-wide/16 v4, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1144
    iget-boolean v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekForCues:Z

    if-eqz v2, :cond_11

    .line 1145
    iput-wide p2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekPositionAfterBuildingCues:J

    .line 1146
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cuesContentPosition:J

    iput-wide v2, p1, Lcom/google/android/exoplayer/extractor/PositionHolder;->position:J

    .line 1147
    iput-boolean v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekForCues:Z

    .line 1157
    :goto_10
    return v0

    .line 1152
    :cond_11
    iget-boolean v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sentSeekMap:Z

    if-eqz v2, :cond_22

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekPositionAfterBuildingCues:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_22

    .line 1153
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekPositionAfterBuildingCues:J

    iput-wide v2, p1, Lcom/google/android/exoplayer/extractor/PositionHolder;->position:J

    .line 1154
    iput-wide v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekPositionAfterBuildingCues:J

    goto :goto_10

    :cond_22
    move v0, v1

    .line 1157
    goto :goto_10
.end method

.method private readScratch(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)V
    .registers 6
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p2, "requiredLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 866
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v0

    if-lt v0, p2, :cond_9

    .line 875
    :goto_8
    return-void

    .line 869
    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->capacity()I

    move-result v0

    if-ge v0, p2, :cond_2f

    .line 870
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 871
    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v2

    .line 870
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset([BI)V

    .line 873
    :cond_2f
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v2

    sub-int v2, p2, v2

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 874
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setLimit(I)V

    goto :goto_8
.end method

.method private readToOutput(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/TrackOutput;I)I
    .registers 7
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p2, "output"    # Lcom/google/android/exoplayer/extractor/TrackOutput;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1086
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    .line 1087
    .local v1, "strippedBytesLeft":I
    if-lez v1, :cond_1c

    .line 1088
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1089
    .local v0, "bytesRead":I
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-interface {p2, v2, v0}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 1093
    :goto_11
    iget v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesRead:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesRead:I

    .line 1094
    iget v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    .line 1095
    return v0

    .line 1091
    .end local v0    # "bytesRead":I
    :cond_1c
    const/4 v2, 0x0

    invoke-interface {p2, p1, p3, v2}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/extractor/ExtractorInput;IZ)I

    move-result v0

    .restart local v0    # "bytesRead":I
    goto :goto_11
.end method

.method private readToTarget(Lcom/google/android/exoplayer/extractor/ExtractorInput;[BII)V
    .registers 8
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p2, "target"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1071
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1072
    .local v0, "pendingStrippedBytes":I
    add-int v1, p3, v0

    sub-int v2, p4, v0

    invoke-interface {p1, p2, v1, v2}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 1073
    if-lez v0, :cond_18

    .line 1074
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1, p2, p3, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 1076
    :cond_18
    iget v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesRead:I

    add-int/2addr v1, p4

    iput v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesRead:I

    .line 1077
    return-void
.end method

.method private resetSample()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 848
    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesRead:I

    .line 849
    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    .line 850
    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleCurrentNalBytesRemaining:I

    .line 851
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleEncodingHandled:Z

    .line 852
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleSignalByteRead:Z

    .line 853
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->samplePartitionCountRead:Z

    .line 854
    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->samplePartitionCount:I

    .line 855
    iput-byte v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleSignalByte:B

    .line 856
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleInitializationVectorRead:Z

    .line 857
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset()V

    .line 858
    return-void
.end method

.method private scaleTimecodeToUs(J)J
    .registers 10
    .param p1, "unscaledTimecode"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 1161
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->timecodeScale:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 1162
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "Can\'t scale timecode prior to timecodeScale being set."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1164
    :cond_10
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->timecodeScale:J

    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static setSubripSampleEndTimecode([BJ)V
    .registers 14
    .param p0, "subripSampleData"    # [B
    .param p1, "timeUs"    # J

    .prologue
    const-wide v8, 0xd693a400L

    const/4 v10, 0x0

    .line 1048
    const-wide/16 v6, -0x1

    cmp-long v5, p1, v6

    if-nez v5, :cond_16

    .line 1049
    sget-object v4, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->SUBRIP_TIMECODE_EMPTY:[B

    .line 1061
    .local v4, "timeCodeData":[B
    :goto_e
    const/16 v5, 0x13

    const/16 v6, 0xc

    invoke-static {v4, v10, p0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1063
    return-void

    .line 1051
    .end local v4    # "timeCodeData":[B
    :cond_16
    div-long v6, p1, v8

    long-to-int v0, v6

    .line 1052
    .local v0, "hours":I
    int-to-long v6, v0

    mul-long/2addr v6, v8

    sub-long/2addr p1, v6

    .line 1053
    const-wide/32 v6, 0x3938700

    div-long v6, p1, v6

    long-to-int v2, v6

    .line 1054
    .local v2, "minutes":I
    const v5, 0x3938700

    mul-int/2addr v5, v2

    int-to-long v6, v5

    sub-long/2addr p1, v6

    .line 1055
    const-wide/32 v6, 0xf4240

    div-long v6, p1, v6

    long-to-int v3, v6

    .line 1056
    .local v3, "seconds":I
    const v5, 0xf4240

    mul-int/2addr v5, v3

    int-to-long v6, v5

    sub-long/2addr p1, v6

    .line 1057
    const-wide/16 v6, 0x3e8

    div-long v6, p1, v6

    long-to-int v1, v6

    .line 1058
    .local v1, "milliseconds":I
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%02d:%02d:%02d,%03d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    .line 1059
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 1058
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1059
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .restart local v4    # "timeCodeData":[B
    goto :goto_e
.end method

.method private writeSampleData(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;I)V
    .registers 25
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p2, "track"    # Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 879
    const-string v18, "S_TEXT/UTF8"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->codecId:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6e

    .line 880
    sget-object v18, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->SUBRIP_PREFIX:[B

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    add-int v15, v18, p3

    .line 881
    .local v15, "sizeWithPrefix":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->subripSample:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/exoplayer/util/ParsableByteArray;->capacity()I

    move-result v18

    move/from16 v0, v18

    if-ge v0, v15, :cond_39

    .line 884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->subripSample:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v18, v0

    sget-object v19, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->SUBRIP_PREFIX:[B

    add-int v20, v15, p3

    invoke-static/range {v19 .. v20}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    .line 886
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->subripSample:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v18, v0

    sget-object v19, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->SUBRIP_PREFIX:[B

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->subripSample:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->subripSample:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setLimit(I)V

    .line 1036
    .end local v15    # "sizeWithPrefix":I
    :cond_6d
    :goto_6d
    return-void

    .line 894
    :cond_6e
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    .line 895
    .local v11, "output":Lcom/google/android/exoplayer/extractor/TrackOutput;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleEncodingHandled:Z

    move/from16 v18, v0

    if-nez v18, :cond_385

    .line 896
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->hasContentEncryption:Z

    move/from16 v18, v0

    if-eqz v18, :cond_44d

    .line 899
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockFlags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, -0x3

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockFlags:I

    .line 900
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleSignalByteRead:Z

    move/from16 v18, v0

    if-nez v18, :cond_105

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 902
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesRead:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesRead:I

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-byte v18, v18, v19

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x80

    move/from16 v18, v0

    const/16 v19, 0x80

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e7

    .line 904
    new-instance v18, Lcom/google/android/exoplayer/ParserException;

    const-string v19, "Extension bit is set in signal byte"

    invoke-direct/range {v18 .. v19}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 906
    :cond_e7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-byte v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-byte v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleSignalByte:B

    .line 907
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleSignalByteRead:Z

    .line 909
    :cond_105
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleSignalByte:B

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x1

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_30e

    const/4 v7, 0x1

    .line 910
    .local v7, "isEncrypted":Z
    :goto_116
    if-eqz v7, :cond_37d

    .line 911
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleSignalByte:B

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x2

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_311

    const/4 v5, 0x1

    .line 912
    .local v5, "hasSubsampleEncryption":Z
    :goto_129
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockFlags:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockFlags:I

    .line 913
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleInitializationVectorRead:Z

    move/from16 v18, v0

    if-nez v18, :cond_1db

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->encryptionInitializationVector:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 915
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesRead:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x8

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesRead:I

    .line 916
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleInitializationVectorRead:Z

    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    if-eqz v5, :cond_314

    const/16 v18, 0x80

    :goto_182
    or-int/lit8 v18, v18, 0x8

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v19, v20

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v11, v0, v1}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 921
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    .line 923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->encryptionInitializationVector:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->encryptionInitializationVector:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v11, v0, v1}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 925
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x8

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    .line 927
    :cond_1db
    if-eqz v5, :cond_37d

    .line 928
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->samplePartitionCountRead:Z

    move/from16 v18, v0

    if-nez v18, :cond_231

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 930
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesRead:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesRead:I

    .line 931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->samplePartitionCount:I

    .line 933
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->samplePartitionCountRead:Z

    .line 935
    :cond_231
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->samplePartitionCount:I

    move/from16 v18, v0

    mul-int/lit8 v14, v18, 0x4

    .line 936
    .local v14, "samplePartitionDataSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v18

    move/from16 v0, v18

    if-ge v0, v14, :cond_258

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v18, v0

    new-array v0, v14, [B

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset([BI)V

    .line 939
    :cond_258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2, v14}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 940
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesRead:I

    move/from16 v18, v0

    add-int v18, v18, v14

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesRead:I

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setLimit(I)V

    .line 943
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->samplePartitionCount:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    int-to-short v0, v0

    move/from16 v16, v0

    .line 944
    .local v16, "subsampleCount":S
    mul-int/lit8 v18, v16, 0x6

    add-int/lit8 v17, v18, 0x2

    .line 945
    .local v17, "subsampleDataSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2be

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v18, v0

    .line 946
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_2c8

    .line 947
    :cond_2be
    invoke-static/range {v17 .. v17}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    .line 949
    :cond_2c8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 957
    const/4 v12, 0x0

    .line 958
    .local v12, "partitionOffset":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2e2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->samplePartitionCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_324

    .line 959
    move v13, v12

    .line 960
    .local v13, "previousPartitionOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v12

    .line 961
    rem-int/lit8 v18, v6, 0x2

    if-nez v18, :cond_318

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v18, v0

    sub-int v19, v12, v13

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 958
    :goto_30b
    add-int/lit8 v6, v6, 0x1

    goto :goto_2e2

    .line 909
    .end local v5    # "hasSubsampleEncryption":Z
    .end local v6    # "i":I
    .end local v7    # "isEncrypted":Z
    .end local v12    # "partitionOffset":I
    .end local v13    # "previousPartitionOffset":I
    .end local v14    # "samplePartitionDataSize":I
    .end local v16    # "subsampleCount":S
    .end local v17    # "subsampleDataSize":I
    :cond_30e
    const/4 v7, 0x0

    goto/16 :goto_116

    .line 911
    .restart local v7    # "isEncrypted":Z
    :cond_311
    const/4 v5, 0x0

    goto/16 :goto_129

    .line 918
    .restart local v5    # "hasSubsampleEncryption":Z
    :cond_314
    const/16 v18, 0x0

    goto/16 :goto_182

    .line 965
    .restart local v6    # "i":I
    .restart local v12    # "partitionOffset":I
    .restart local v13    # "previousPartitionOffset":I
    .restart local v14    # "samplePartitionDataSize":I
    .restart local v16    # "subsampleCount":S
    .restart local v17    # "subsampleDataSize":I
    :cond_318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v18, v0

    sub-int v19, v12, v13

    invoke-virtual/range {v18 .. v19}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_30b

    .line 968
    .end local v13    # "previousPartitionOffset":I
    :cond_324
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesRead:I

    move/from16 v18, v0

    sub-int v18, p3, v18

    sub-int v4, v18, v12

    .line 969
    .local v4, "finalPartitionSize":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->samplePartitionCount:I

    move/from16 v18, v0

    rem-int/lit8 v18, v18, 0x2

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_434

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 975
    :goto_349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->encryptionSubsampleData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset([BI)V

    .line 976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->encryptionSubsampleData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v11, v0, v1}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 977
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    move/from16 v18, v0

    add-int v18, v18, v17

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    .line 984
    .end local v4    # "finalPartitionSize":I
    .end local v5    # "hasSubsampleEncryption":Z
    .end local v6    # "i":I
    .end local v7    # "isEncrypted":Z
    .end local v12    # "partitionOffset":I
    .end local v14    # "samplePartitionDataSize":I
    .end local v16    # "subsampleCount":S
    .end local v17    # "subsampleDataSize":I
    :cond_37d
    :goto_37d
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleEncodingHandled:Z

    .line 986
    :cond_385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v18

    add-int p3, p3, v18

    .line 988
    const-string v18, "V_MPEG4/ISO/AVC"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->codecId:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3ad

    const-string v18, "V_MPEGH/ISO/HEVC"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->codecId:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_491

    .line 993
    :cond_3ad
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v8, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    .line 994
    .local v8, "nalLengthData":[B
    const/16 v18, 0x0

    const/16 v19, 0x0

    aput-byte v19, v8, v18

    .line 995
    const/16 v18, 0x1

    const/16 v19, 0x0

    aput-byte v19, v8, v18

    .line 996
    const/16 v18, 0x2

    const/16 v19, 0x0

    aput-byte v19, v8, v18

    .line 997
    move-object/from16 v0, p2

    iget v9, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->nalUnitLengthFieldLength:I

    .line 998
    .local v9, "nalUnitLengthFieldLength":I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->nalUnitLengthFieldLength:I

    move/from16 v18, v0

    rsub-int/lit8 v10, v18, 0x4

    .line 1002
    .local v10, "nalUnitLengthFieldLengthDiff":I
    :goto_3d5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesRead:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, p3

    if-ge v0, v1, :cond_4af

    .line 1003
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleCurrentNalBytesRemaining:I

    move/from16 v18, v0

    if-nez v18, :cond_471

    .line 1005
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v10, v9}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->readToTarget(Lcom/google/android/exoplayer/extractor/ExtractorInput;[BII)V

    .line 1007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 1008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleCurrentNalBytesRemaining:I

    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->nalStartCode:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->nalStartCode:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v11, v0, v1}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 1012
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    goto :goto_3d5

    .line 972
    .end local v8    # "nalLengthData":[B
    .end local v9    # "nalUnitLengthFieldLength":I
    .end local v10    # "nalUnitLengthFieldLengthDiff":I
    .restart local v4    # "finalPartitionSize":I
    .restart local v5    # "hasSubsampleEncryption":Z
    .restart local v6    # "i":I
    .restart local v7    # "isEncrypted":Z
    .restart local v12    # "partitionOffset":I
    .restart local v14    # "samplePartitionDataSize":I
    .restart local v16    # "subsampleCount":S
    .restart local v17    # "subsampleDataSize":I
    :cond_434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v18, v0

    int-to-short v0, v4

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/16 :goto_349

    .line 980
    .end local v4    # "finalPartitionSize":I
    .end local v5    # "hasSubsampleEncryption":Z
    .end local v6    # "i":I
    .end local v7    # "isEncrypted":Z
    .end local v12    # "partitionOffset":I
    .end local v14    # "samplePartitionDataSize":I
    .end local v16    # "subsampleCount":S
    .end local v17    # "subsampleDataSize":I
    :cond_44d
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->sampleStrippedBytes:[B

    move-object/from16 v18, v0

    if-eqz v18, :cond_37d

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->sampleStrippedBytes:[B

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->sampleStrippedBytes:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset([BI)V

    goto/16 :goto_37d

    .line 1015
    .restart local v8    # "nalLengthData":[B
    .restart local v9    # "nalUnitLengthFieldLength":I
    .restart local v10    # "nalUnitLengthFieldLengthDiff":I
    :cond_471
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleCurrentNalBytesRemaining:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleCurrentNalBytesRemaining:I

    move/from16 v19, v0

    .line 1016
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v11, v2}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->readToOutput(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/TrackOutput;I)I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleCurrentNalBytesRemaining:I

    goto/16 :goto_3d5

    .line 1020
    .end local v8    # "nalLengthData":[B
    .end local v9    # "nalUnitLengthFieldLength":I
    .end local v10    # "nalUnitLengthFieldLengthDiff":I
    :cond_491
    :goto_491
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesRead:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, p3

    if-ge v0, v1, :cond_4af

    .line 1021
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesRead:I

    move/from16 v18, v0

    sub-int v18, p3, v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v11, v2}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->readToOutput(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/TrackOutput;I)I

    goto :goto_491

    .line 1025
    :cond_4af
    const-string v18, "A_VORBIS"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->codecId:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6d

    .line 1032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->vorbisNumPageSamples:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 1033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->vorbisNumPageSamples:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v11, v0, v1}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 1034
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    goto/16 :goto_6d
.end method

.method private writeSubripSample(Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;)V
    .registers 6
    .param p1, "track"    # Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->subripSample:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockDurationUs:J

    invoke-static {v0, v2, v3}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->setSubripSampleEndTimecode([BJ)V

    .line 1042
    iget-object v0, p1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->subripSample:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->subripSample:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 1043
    iget v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->subripSample:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    .line 1044
    return-void
.end method


# virtual methods
.method binaryElement(IILcom/google/android/exoplayer/extractor/ExtractorInput;)V
    .registers 34
    .param p1, "id"    # I
    .param p2, "contentSize"    # I
    .param p3, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 680
    sparse-switch p1, :sswitch_data_566

    .line 834
    new-instance v25, Lcom/google/android/exoplayer/ParserException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Unexpected id: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 682
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekEntryIdBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Ljava/util/Arrays;->fill([BB)V

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekEntryIdBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v25, v0

    rsub-int/lit8 v26, p2, 0x4

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, p2

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekEntryIdBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekEntryIdBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v26

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekEntryId:I

    .line 832
    :goto_6a
    return-void

    .line 688
    :sswitch_6b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;

    move-object/from16 v25, v0

    move/from16 v0, p2

    new-array v0, v0, [B

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->codecPrivate:[B

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->codecPrivate:[B

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, p2

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    goto :goto_6a

    .line 693
    :sswitch_97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;

    move-object/from16 v25, v0

    move/from16 v0, p2

    new-array v0, v0, [B

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->sampleStrippedBytes:[B

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->sampleStrippedBytes:[B

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, p2

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    goto :goto_6a

    .line 697
    :sswitch_c3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;

    move-object/from16 v25, v0

    move/from16 v0, p2

    new-array v0, v0, [B

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->encryptionKeyId:[B

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->encryptionKeyId:[B

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, p2

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    goto/16 :goto_6a

    .line 707
    :sswitch_f0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockState:I

    move/from16 v25, v0

    if-nez v25, :cond_146

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->varintReader:Lcom/google/android/exoplayer/extractor/webm/VarintReader;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x1

    const/16 v28, 0x8

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->readUnsignedVarint(Lcom/google/android/exoplayer/extractor/ExtractorInput;ZZI)J

    move-result-wide v26

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockTrackNumber:I

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->varintReader:Lcom/google/android/exoplayer/extractor/webm/VarintReader;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->getLastLength()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockTrackNumberLength:I

    .line 710
    const-wide/16 v26, -0x1

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockDurationUs:J

    .line 711
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockState:I

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset()V

    .line 715
    :cond_146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->tracks:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockTrackNumber:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;

    .line 718
    .local v24, "track":Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;
    if-nez v24, :cond_173

    .line 719
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockTrackNumberLength:I

    move/from16 v25, v0

    sub-int v25, p2, v25

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    .line 720
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockState:I

    goto/16 :goto_6a

    .line 724
    :cond_173
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockState:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_287

    .line 726
    const/16 v25, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->readScratch(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)V

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v25, v0

    const/16 v26, 0x2

    aget-byte v25, v25, v26

    and-int/lit8 v25, v25, 0x6

    shr-int/lit8 v13, v25, 0x1

    .line 728
    .local v13, "lacing":I
    if-nez v13, :cond_2f3

    .line 729
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleCount:I

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-static/range {v25 .. v26}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->ensureArrayCapacity([II)[I

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockTrackNumberLength:I

    move/from16 v27, v0

    sub-int v27, p2, v27

    add-int/lit8 v27, v27, -0x3

    aput v27, v25, v26

    .line 805
    :goto_1d0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget-byte v25, v25, v26

    shl-int/lit8 v25, v25, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget-byte v26, v26, v27

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    or-int v22, v25, v26

    .line 806
    .local v22, "timecode":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->clusterTimecodeUs:J

    move-wide/from16 v26, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v28

    add-long v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockTimeUs:J

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v25, v0

    const/16 v26, 0x2

    aget-byte v25, v25, v26

    and-int/lit8 v25, v25, 0x8

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_535

    const/4 v11, 0x1

    .line 808
    .local v11, "isInvisible":Z
    :goto_230
    move-object/from16 v0, v24

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->type:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_264

    const/16 v25, 0xa3

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_538

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v25, v0

    const/16 v26, 0x2

    aget-byte v25, v25, v26

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0x80

    move/from16 v25, v0

    const/16 v26, 0x80

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_538

    :cond_264
    const/4 v12, 0x1

    .line 810
    .local v12, "isKeyframe":Z
    :goto_265
    if-eqz v12, :cond_53b

    const/16 v25, 0x1

    move/from16 v26, v25

    :goto_26b
    if-eqz v11, :cond_541

    const/high16 v25, 0x8000000

    :goto_26f
    or-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockFlags:I

    .line 812
    const/16 v25, 0x2

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockState:I

    .line 813
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleIndex:I

    .line 816
    .end local v11    # "isInvisible":Z
    .end local v12    # "isKeyframe":Z
    .end local v13    # "lacing":I
    .end local v22    # "timecode":I
    :cond_287
    const/16 v25, 0xa3

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_54f

    .line 818
    :goto_28f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleIndex:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleCount:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_545

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleIndex:I

    move/from16 v26, v0

    aget v25, v25, v26

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->writeSampleData(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;I)V

    .line 820
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockTimeUs:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleIndex:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->defaultSampleDurationNs:I

    move/from16 v28, v0

    mul-int v25, v25, v28

    move/from16 v0, v25

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v20, v26, v28

    .line 822
    .local v20, "sampleTimeUs":J
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->commitSampleToOutput(Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;J)V

    .line 823
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleIndex:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleIndex:I

    goto :goto_28f

    .line 733
    .end local v20    # "sampleTimeUs":J
    .restart local v13    # "lacing":I
    :cond_2f3
    const/16 v25, 0xa3

    move/from16 v0, p1

    move/from16 v1, v25

    if-eq v0, v1, :cond_303

    .line 734
    new-instance v25, Lcom/google/android/exoplayer/ParserException;

    const-string v26, "Lacing only supported in SimpleBlocks."

    invoke-direct/range {v25 .. v26}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 738
    :cond_303
    const/16 v25, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->readScratch(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)V

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v25, v0

    const/16 v26, 0x3

    aget-byte v25, v25, v26

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleCount:I

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleCount:I

    move/from16 v26, v0

    .line 741
    invoke-static/range {v25 .. v26}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->ensureArrayCapacity([II)[I

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    .line 742
    const/16 v25, 0x2

    move/from16 v0, v25

    if-ne v13, v0, :cond_373

    .line 743
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockTrackNumberLength:I

    move/from16 v25, v0

    sub-int v25, p2, v25

    add-int/lit8 v25, v25, -0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleCount:I

    move/from16 v26, v0

    div-int v6, v25, v26

    .line 745
    .local v6, "blockLacingSampleSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleCount:I

    move/from16 v27, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([IIII)V

    goto/16 :goto_1d0

    .line 746
    .end local v6    # "blockLacingSampleSize":I
    :cond_373
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v13, v0, :cond_3f0

    .line 747
    const/16 v23, 0x0

    .line 748
    .local v23, "totalSamplesSize":I
    const/4 v8, 0x4

    .line 749
    .local v8, "headerSize":I
    const/16 v17, 0x0

    .local v17, "sampleIndex":I
    :goto_37e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleCount:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v17

    move/from16 v1, v25

    if-ge v0, v1, :cond_3d2

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput v26, v25, v17

    .line 753
    :cond_396
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v8}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->readScratch(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)V

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v25, v0

    add-int/lit8 v26, v8, -0x1

    aget-byte v25, v25, v26

    move/from16 v0, v25

    and-int/lit16 v7, v0, 0xff

    .line 755
    .local v7, "byteValue":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    move-object/from16 v25, v0

    aget v26, v25, v17

    add-int v26, v26, v7

    aput v26, v25, v17

    .line 756
    const/16 v25, 0xff

    move/from16 v0, v25

    if-eq v7, v0, :cond_396

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    move-object/from16 v25, v0

    aget v25, v25, v17

    add-int v23, v23, v25

    .line 749
    add-int/lit8 v17, v17, 0x1

    goto :goto_37e

    .line 759
    .end local v7    # "byteValue":I
    :cond_3d2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleCount:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockTrackNumberLength:I

    move/from16 v27, v0

    sub-int v27, p2, v27

    sub-int v27, v27, v8

    sub-int v27, v27, v23

    aput v27, v25, v26

    goto/16 :goto_1d0

    .line 761
    .end local v8    # "headerSize":I
    .end local v17    # "sampleIndex":I
    .end local v23    # "totalSamplesSize":I
    :cond_3f0
    const/16 v25, 0x3

    move/from16 v0, v25

    if-ne v13, v0, :cond_51a

    .line 762
    const/16 v23, 0x0

    .line 763
    .restart local v23    # "totalSamplesSize":I
    const/4 v8, 0x4

    .line 764
    .restart local v8    # "headerSize":I
    const/16 v17, 0x0

    .restart local v17    # "sampleIndex":I
    :goto_3fb
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleCount:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v17

    move/from16 v1, v25

    if-ge v0, v1, :cond_4fc

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput v26, v25, v17

    .line 766
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v8}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->readScratch(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)V

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v25, v0

    add-int/lit8 v26, v8, -0x1

    aget-byte v25, v25, v26

    if-nez v25, :cond_436

    .line 768
    new-instance v25, Lcom/google/android/exoplayer/ParserException;

    const-string v26, "No valid varint length mask found"

    invoke-direct/range {v25 .. v26}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 770
    :cond_436
    const-wide/16 v18, 0x0

    .line 771
    .local v18, "readValue":J
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_439
    const/16 v25, 0x8

    move/from16 v0, v25

    if-ge v9, v0, :cond_4ba

    .line 772
    const/16 v25, 0x1

    rsub-int/lit8 v26, v9, 0x7

    shl-int v14, v25, v26

    .line 773
    .local v14, "lengthMask":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v25, v0

    add-int/lit8 v26, v8, -0x1

    aget-byte v25, v25, v26

    and-int v25, v25, v14

    if-eqz v25, :cond_4d0

    .line 774
    add-int/lit8 v15, v8, -0x1

    .line 775
    .local v15, "readPosition":I
    add-int/2addr v8, v9

    .line 776
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v8}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->readScratch(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)V

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v25, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "readPosition":I
    .local v16, "readPosition":I
    aget-byte v25, v25, v15

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    xor-int/lit8 v26, v14, -0x1

    and-int v25, v25, v26

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v18, v0

    .line 778
    :goto_482
    move/from16 v0, v16

    if-ge v0, v8, :cond_4aa

    .line 779
    const/16 v25, 0x8

    shl-long v18, v18, v25

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v25, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "readPosition":I
    .restart local v15    # "readPosition":I
    aget-byte v25, v25, v16

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    or-long v18, v18, v26

    move/from16 v16, v15

    .end local v15    # "readPosition":I
    .restart local v16    # "readPosition":I
    goto :goto_482

    .line 783
    :cond_4aa
    if-lez v17, :cond_4ba

    .line 784
    const-wide/16 v26, 0x1

    mul-int/lit8 v25, v9, 0x7

    add-int/lit8 v25, v25, 0x6

    shl-long v26, v26, v25

    const-wide/16 v28, 0x1

    sub-long v26, v26, v28

    sub-long v18, v18, v26

    .line 789
    .end local v14    # "lengthMask":I
    .end local v16    # "readPosition":I
    :cond_4ba
    const-wide/32 v26, -0x80000000

    cmp-long v25, v18, v26

    if-ltz v25, :cond_4c8

    const-wide/32 v26, 0x7fffffff

    cmp-long v25, v18, v26

    if-lez v25, :cond_4d4

    .line 790
    :cond_4c8
    new-instance v25, Lcom/google/android/exoplayer/ParserException;

    const-string v26, "EBML lacing sample size out of range."

    invoke-direct/range {v25 .. v26}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 771
    .restart local v14    # "lengthMask":I
    :cond_4d0
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_439

    .line 792
    .end local v14    # "lengthMask":I
    :cond_4d4
    move-wide/from16 v0, v18

    long-to-int v10, v0

    .line 793
    .local v10, "intReadValue":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    move-object/from16 v25, v0

    if-nez v17, :cond_4ef

    .end local v10    # "intReadValue":I
    :goto_4df
    aput v10, v25, v17

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    move-object/from16 v25, v0

    aget v25, v25, v17

    add-int v23, v23, v25

    .line 764
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_3fb

    .line 793
    .restart local v10    # "intReadValue":I
    :cond_4ef
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    move-object/from16 v26, v0

    add-int/lit8 v27, v17, -0x1

    aget v26, v26, v27

    add-int v10, v10, v26

    goto :goto_4df

    .line 797
    .end local v9    # "i":I
    .end local v10    # "intReadValue":I
    .end local v18    # "readValue":J
    :cond_4fc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleCount:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockTrackNumberLength:I

    move/from16 v27, v0

    sub-int v27, p2, v27

    sub-int v27, v27, v8

    sub-int v27, v27, v23

    aput v27, v25, v26

    goto/16 :goto_1d0

    .line 801
    .end local v8    # "headerSize":I
    .end local v17    # "sampleIndex":I
    .end local v23    # "totalSamplesSize":I
    :cond_51a
    new-instance v25, Lcom/google/android/exoplayer/ParserException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Unexpected lacing value: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 807
    .restart local v22    # "timecode":I
    :cond_535
    const/4 v11, 0x0

    goto/16 :goto_230

    .line 808
    .restart local v11    # "isInvisible":Z
    :cond_538
    const/4 v12, 0x0

    goto/16 :goto_265

    .line 810
    .restart local v12    # "isKeyframe":Z
    :cond_53b
    const/16 v25, 0x0

    move/from16 v26, v25

    goto/16 :goto_26b

    :cond_541
    const/16 v25, 0x0

    goto/16 :goto_26f

    .line 825
    .end local v11    # "isInvisible":Z
    .end local v12    # "isKeyframe":Z
    .end local v13    # "lacing":I
    .end local v22    # "timecode":I
    :cond_545
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockState:I

    goto/16 :goto_6a

    .line 829
    :cond_54f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->writeSampleData(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;I)V

    goto/16 :goto_6a

    .line 680
    :sswitch_data_566
    .sparse-switch
        0xa1 -> :sswitch_f0
        0xa3 -> :sswitch_f0
        0x4255 -> :sswitch_97
        0x47e2 -> :sswitch_c3
        0x53ab -> :sswitch_20
        0x63a2 -> :sswitch_6b
    .end sparse-switch
.end method

.method endMasterElement(I)V
    .registers 8
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const-wide/16 v2, -0x1

    .line 457
    sparse-switch p1, :sswitch_data_102

    .line 528
    :cond_6
    :goto_6
    return-void

    .line 459
    :sswitch_7
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->timecodeScale:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    .line 461
    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->timecodeScale:J

    .line 463
    :cond_12
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->durationTimecode:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 464
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->durationTimecode:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->durationUs:J

    goto :goto_6

    .line 468
    :sswitch_21
    iget v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekEntryId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2c

    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekEntryPosition:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_34

    .line 469
    :cond_2c
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "Mandatory element SeekID or SeekPosition not found"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_34
    iget v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekEntryId:I

    const v1, 0x1c53bb6b

    if-ne v0, v1, :cond_6

    .line 472
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekEntryPosition:J

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cuesContentPosition:J

    goto :goto_6

    .line 476
    :sswitch_40
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sentSeekMap:Z

    if-nez v0, :cond_6

    .line 477
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->buildSeekMap()Lcom/google/android/exoplayer/extractor/SeekMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer/extractor/SeekMap;)V

    .line 478
    iput-boolean v5, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sentSeekMap:Z

    goto :goto_6

    .line 484
    :sswitch_50
    iget v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 489
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleSeenReferenceBlock:Z

    if-nez v0, :cond_5f

    .line 490
    iget v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockFlags:I

    .line 492
    :cond_5f
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->tracks:Landroid/util/SparseArray;

    iget v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockTrackNumber:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockTimeUs:J

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->commitSampleToOutput(Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;J)V

    .line 493
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockState:I

    goto :goto_6

    .line 496
    :sswitch_72
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;

    iget-boolean v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->hasContentEncryption:Z

    if-eqz v0, :cond_6

    .line 497
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->encryptionKeyId:[B

    if-nez v0, :cond_86

    .line 498
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :cond_86
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sentDrmInitData:Z

    if-nez v0, :cond_6

    .line 501
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    new-instance v1, Lcom/google/android/exoplayer/drm/DrmInitData$Universal;

    new-instance v2, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    const-string/jumbo v3, "video/webm"

    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;

    iget-object v4, v4, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->encryptionKeyId:[B

    invoke-direct {v2, v3, v4}, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;-><init>(Ljava/lang/String;[B)V

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer/drm/DrmInitData$Universal;-><init>(Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->drmInitData(Lcom/google/android/exoplayer/drm/DrmInitData;)V

    .line 503
    iput-boolean v5, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sentDrmInitData:Z

    goto/16 :goto_6

    .line 508
    :sswitch_a4
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;

    iget-boolean v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->hasContentEncryption:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->sampleStrippedBytes:[B

    if-eqz v0, :cond_6

    .line 509
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "Combining encryption and compression is not supported"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    :sswitch_b8
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->tracks:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;

    iget v1, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->number:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e6

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->codecId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->isCodecSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 514
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;

    iget v2, v2, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->number:I

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->durationUs:J

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->initializeOutput(Lcom/google/android/exoplayer/extractor/ExtractorOutput;IJ)V

    .line 515
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->tracks:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;

    iget v1, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->number:I

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 519
    :cond_e6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;

    goto/16 :goto_6

    .line 522
    :sswitch_eb
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_fb

    .line 523
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "No valid tracks were found"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 525
    :cond_fb
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v0}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->endTracks()V

    goto/16 :goto_6

    .line 457
    :sswitch_data_102
    .sparse-switch
        0xa0 -> :sswitch_50
        0xae -> :sswitch_b8
        0x4dbb -> :sswitch_21
        0x6240 -> :sswitch_72
        0x6d80 -> :sswitch_a4
        0x1549a966 -> :sswitch_7
        0x1654ae6b -> :sswitch_eb
        0x1c53bb6b -> :sswitch_40
    .end sparse-switch
.end method

.method floatElement(ID)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "value"    # D

    .prologue
    .line 647
    sparse-switch p1, :sswitch_data_e

    .line 655
    :goto_3
    return-void

    .line 649
    :sswitch_4
    double-to-long v0, p2

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->durationTimecode:J

    goto :goto_3

    .line 652
    :sswitch_8
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;

    double-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->sampleRate:I

    goto :goto_3

    .line 647
    :sswitch_data_e
    .sparse-switch
        0xb5 -> :sswitch_8
        0x4489 -> :sswitch_4
    .end sparse-switch
.end method

.method getElementType(I)I
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 333
    sparse-switch p1, :sswitch_data_10

    .line 396
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 353
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 380
    :sswitch_7
    const/4 v0, 0x2

    goto :goto_4

    .line 384
    :sswitch_9
    const/4 v0, 0x3

    goto :goto_4

    .line 391
    :sswitch_b
    const/4 v0, 0x4

    goto :goto_4

    .line 394
    :sswitch_d
    const/4 v0, 0x5

    goto :goto_4

    .line 333
    nop

    :sswitch_data_10
    .sparse-switch
        0x83 -> :sswitch_7
        0x86 -> :sswitch_9
        0x9b -> :sswitch_7
        0x9f -> :sswitch_7
        0xa0 -> :sswitch_5
        0xa1 -> :sswitch_b
        0xa3 -> :sswitch_b
        0xae -> :sswitch_5
        0xb0 -> :sswitch_7
        0xb3 -> :sswitch_7
        0xb5 -> :sswitch_d
        0xb7 -> :sswitch_5
        0xba -> :sswitch_7
        0xbb -> :sswitch_5
        0xd7 -> :sswitch_7
        0xe0 -> :sswitch_5
        0xe1 -> :sswitch_5
        0xe7 -> :sswitch_7
        0xf1 -> :sswitch_7
        0xfb -> :sswitch_7
        0x4254 -> :sswitch_7
        0x4255 -> :sswitch_b
        0x4282 -> :sswitch_9
        0x4285 -> :sswitch_7
        0x42f7 -> :sswitch_7
        0x4489 -> :sswitch_d
        0x47e1 -> :sswitch_7
        0x47e2 -> :sswitch_b
        0x47e7 -> :sswitch_5
        0x47e8 -> :sswitch_7
        0x4dbb -> :sswitch_5
        0x5031 -> :sswitch_7
        0x5032 -> :sswitch_7
        0x5034 -> :sswitch_5
        0x5035 -> :sswitch_5
        0x53ab -> :sswitch_b
        0x53ac -> :sswitch_7
        0x54b0 -> :sswitch_7
        0x54b2 -> :sswitch_7
        0x54ba -> :sswitch_7
        0x56aa -> :sswitch_7
        0x56bb -> :sswitch_7
        0x6240 -> :sswitch_5
        0x6264 -> :sswitch_7
        0x63a2 -> :sswitch_b
        0x6d80 -> :sswitch_5
        0x22b59c -> :sswitch_9
        0x23e383 -> :sswitch_7
        0x2ad7b1 -> :sswitch_7
        0x114d9b74 -> :sswitch_5
        0x1549a966 -> :sswitch_5
        0x1654ae6b -> :sswitch_5
        0x18538067 -> :sswitch_5
        0x1a45dfa3 -> :sswitch_5
        0x1c53bb6b -> :sswitch_5
        0x1f43b675 -> :sswitch_5
    .end sparse-switch
.end method

.method public init(Lcom/google/android/exoplayer/extractor/ExtractorOutput;)V
    .registers 2
    .param p1, "output"    # Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .line 302
    return-void
.end method

.method integerElement(IJ)V
    .registers 8
    .param p1, "id"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const-wide/16 v0, 0x1

    .line 533
    sparse-switch p1, :sswitch_data_188

    .line 642
    :cond_6
    :goto_6
    return-void

    .line 536
    :sswitch_7
    cmp-long v0, p2, v0

    if-eqz v0, :cond_6

    .line 537
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EBMLReadVersion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 542
    :sswitch_2a
    cmp-long v0, p2, v0

    if-ltz v0, :cond_34

    const-wide/16 v0, 0x2

    cmp-long v0, p2, v0

    if-lez v0, :cond_6

    .line 543
    :cond_34
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DocTypeReadVersion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 549
    :sswitch_53
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->segmentContentPosition:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekEntryPosition:J

    goto :goto_6

    .line 552
    :sswitch_59
    iput-wide p2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->timecodeScale:J

    goto :goto_6

    .line 555
    :sswitch_5c
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->width:I

    goto :goto_6

    .line 558
    :sswitch_62
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->height:I

    goto :goto_6

    .line 561
    :sswitch_68
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->displayWidth:I

    goto :goto_6

    .line 564
    :sswitch_6e
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->displayHeight:I

    goto :goto_6

    .line 567
    :sswitch_74
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->displayUnit:I

    goto :goto_6

    .line 570
    :sswitch_7a
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->number:I

    goto :goto_6

    .line 573
    :sswitch_80
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->type:I

    goto :goto_6

    .line 576
    :sswitch_86
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->defaultSampleDurationNs:I

    goto/16 :goto_6

    .line 579
    :sswitch_8d
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;

    iput-wide p2, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->codecDelayNs:J

    goto/16 :goto_6

    .line 582
    :sswitch_93
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;

    iput-wide p2, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->seekPreRollNs:J

    goto/16 :goto_6

    .line 585
    :sswitch_99
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->channelCount:I

    goto/16 :goto_6

    .line 588
    :sswitch_a0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->audioBitDepth:I

    goto/16 :goto_6

    .line 591
    :sswitch_a7
    iput-boolean v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleSeenReferenceBlock:Z

    goto/16 :goto_6

    .line 595
    :sswitch_ab
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_6

    .line 596
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentEncodingOrder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 601
    :sswitch_d0
    cmp-long v0, p2, v0

    if-eqz v0, :cond_6

    .line 602
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentEncodingScope "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 607
    :sswitch_f3
    const-wide/16 v0, 0x3

    cmp-long v0, p2, v0

    if-eqz v0, :cond_6

    .line 608
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentCompAlgo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 613
    :sswitch_118
    const-wide/16 v0, 0x5

    cmp-long v0, p2, v0

    if-eqz v0, :cond_6

    .line 614
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentEncAlgo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 619
    :sswitch_13d
    cmp-long v0, p2, v0

    if-eqz v0, :cond_6

    .line 620
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AESSettingsCipherMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 624
    :sswitch_160
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueTimesUs:Lcom/google/android/exoplayer/util/LongArray;

    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer/util/LongArray;->add(J)V

    goto/16 :goto_6

    .line 627
    :sswitch_16b
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seenClusterPositionForCurrentCuePoint:Z

    if-nez v0, :cond_6

    .line 631
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueClusterPositions:Lcom/google/android/exoplayer/util/LongArray;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer/util/LongArray;->add(J)V

    .line 632
    iput-boolean v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seenClusterPositionForCurrentCuePoint:Z

    goto/16 :goto_6

    .line 636
    :sswitch_178
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->clusterTimecodeUs:J

    goto/16 :goto_6

    .line 639
    :sswitch_180
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockDurationUs:J

    goto/16 :goto_6

    .line 533
    :sswitch_data_188
    .sparse-switch
        0x83 -> :sswitch_80
        0x9b -> :sswitch_180
        0x9f -> :sswitch_99
        0xb0 -> :sswitch_5c
        0xb3 -> :sswitch_160
        0xba -> :sswitch_62
        0xd7 -> :sswitch_7a
        0xe7 -> :sswitch_178
        0xf1 -> :sswitch_16b
        0xfb -> :sswitch_a7
        0x4254 -> :sswitch_f3
        0x4285 -> :sswitch_2a
        0x42f7 -> :sswitch_7
        0x47e1 -> :sswitch_118
        0x47e8 -> :sswitch_13d
        0x5031 -> :sswitch_ab
        0x5032 -> :sswitch_d0
        0x53ac -> :sswitch_53
        0x54b0 -> :sswitch_68
        0x54b2 -> :sswitch_74
        0x54ba -> :sswitch_6e
        0x56aa -> :sswitch_8d
        0x56bb -> :sswitch_93
        0x6264 -> :sswitch_a0
        0x23e383 -> :sswitch_86
        0x2ad7b1 -> :sswitch_59
    .end sparse-switch
.end method

.method isLevel1Element(I)Z
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 401
    const v0, 0x1549a966

    if-eq p1, v0, :cond_14

    const v0, 0x1f43b675

    if-eq p1, v0, :cond_14

    const v0, 0x1c53bb6b

    if-eq p1, v0, :cond_14

    const v0, 0x1654ae6b

    if-ne p1, v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public read(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)I
    .registers 7
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lcom/google/android/exoplayer/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 321
    iput-boolean v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleRead:Z

    .line 322
    const/4 v0, 0x1

    .line 323
    .local v0, "continueReading":Z
    :cond_4
    if-eqz v0, :cond_1e

    iget-boolean v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleRead:Z

    if-nez v2, :cond_1e

    .line 324
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->reader:Lcom/google/android/exoplayer/extractor/webm/EbmlReader;

    invoke-interface {v2, p1}, Lcom/google/android/exoplayer/extractor/webm/EbmlReader;->read(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z

    move-result v0

    .line 325
    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    invoke-direct {p0, p2, v2, v3}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->maybeSeekForCues(Lcom/google/android/exoplayer/extractor/PositionHolder;J)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 326
    const/4 v1, 0x1

    .line 329
    :cond_1d
    :goto_1d
    return v1

    :cond_1e
    if-nez v0, :cond_1d

    const/4 v1, -0x1

    goto :goto_1d
.end method

.method public release()V
    .registers 1

    .prologue
    .line 316
    return-void
.end method

.method public seek()V
    .registers 3

    .prologue
    .line 306
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->clusterTimecodeUs:J

    .line 307
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockState:I

    .line 308
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->reader:Lcom/google/android/exoplayer/extractor/webm/EbmlReader;

    invoke-interface {v0}, Lcom/google/android/exoplayer/extractor/webm/EbmlReader;->reset()V

    .line 309
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->varintReader:Lcom/google/android/exoplayer/extractor/webm/VarintReader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->reset()V

    .line 310
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->resetSample()V

    .line 311
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
    .line 296
    new-instance v0, Lcom/google/android/exoplayer/extractor/webm/Sniffer;

    invoke-direct {v0}, Lcom/google/android/exoplayer/extractor/webm/Sniffer;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/extractor/webm/Sniffer;->sniff(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z

    move-result v0

    return v0
.end method

.method startMasterElement(IJJ)V
    .registers 12
    .param p1, "id"    # I
    .param p2, "contentPosition"    # J
    .param p4, "contentSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const-wide/16 v4, -0x1

    const/4 v2, 0x1

    .line 406
    sparse-switch p1, :sswitch_data_62

    .line 452
    :cond_7
    :goto_7
    :sswitch_7
    return-void

    .line 408
    :sswitch_8
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->segmentContentPosition:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1c

    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->segmentContentPosition:J

    cmp-long v0, v0, p2

    if-eqz v0, :cond_1c

    .line 409
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "Multiple Segment elements not supported"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_1c
    iput-wide p2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->segmentContentPosition:J

    .line 412
    iput-wide p4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->segmentContentSize:J

    goto :goto_7

    .line 415
    :sswitch_21
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekEntryId:I

    .line 416
    iput-wide v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekEntryPosition:J

    goto :goto_7

    .line 419
    :sswitch_27
    new-instance v0, Lcom/google/android/exoplayer/util/LongArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/LongArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueTimesUs:Lcom/google/android/exoplayer/util/LongArray;

    .line 420
    new-instance v0, Lcom/google/android/exoplayer/util/LongArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/LongArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueClusterPositions:Lcom/google/android/exoplayer/util/LongArray;

    goto :goto_7

    .line 423
    :sswitch_36
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seenClusterPositionForCurrentCuePoint:Z

    goto :goto_7

    .line 426
    :sswitch_39
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sentSeekMap:Z

    if-nez v0, :cond_7

    .line 428
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cuesContentPosition:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_46

    .line 430
    iput-boolean v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekForCues:Z

    goto :goto_7

    .line 434
    :cond_46
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    sget-object v1, Lcom/google/android/exoplayer/extractor/SeekMap;->UNSEEKABLE:Lcom/google/android/exoplayer/extractor/SeekMap;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer/extractor/SeekMap;)V

    .line 435
    iput-boolean v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sentSeekMap:Z

    goto :goto_7

    .line 440
    :sswitch_50
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleSeenReferenceBlock:Z

    goto :goto_7

    .line 446
    :sswitch_53
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;

    iput-boolean v2, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->hasContentEncryption:Z

    goto :goto_7

    .line 449
    :sswitch_58
    new-instance v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;-><init>(Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;

    goto :goto_7

    .line 406
    nop

    :sswitch_data_62
    .sparse-switch
        0xa0 -> :sswitch_50
        0xae -> :sswitch_58
        0xbb -> :sswitch_36
        0x4dbb -> :sswitch_21
        0x5035 -> :sswitch_53
        0x6240 -> :sswitch_7
        0x18538067 -> :sswitch_8
        0x1c53bb6b -> :sswitch_27
        0x1f43b675 -> :sswitch_39
    .end sparse-switch
.end method

.method stringElement(ILjava/lang/String;)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 660
    sparse-switch p1, :sswitch_data_40

    .line 674
    :cond_3
    :goto_3
    return-void

    .line 663
    :sswitch_4
    const-string/jumbo v0, "webm"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "matroska"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 664
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DocType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 668
    :sswitch_34
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;

    iput-object p2, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->codecId:Ljava/lang/String;

    goto :goto_3

    .line 671
    :sswitch_39
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;

    # setter for: Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->language:Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;->access$202(Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$Track;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3

    .line 660
    nop

    :sswitch_data_40
    .sparse-switch
        0x86 -> :sswitch_34
        0x4282 -> :sswitch_4
        0x22b59c -> :sswitch_39
    .end sparse-switch
.end method
