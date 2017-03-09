.class public final Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;
.super Ljava/lang/Object;
.source "AdtsExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/Extractor;


# static fields
.field private static final ID3_TAG:I

.field private static final MAX_PACKET_SIZE:I = 0xc8

.field private static final MAX_SNIFF_BYTES:I = 0x2000


# instance fields
.field private adtsReader:Lcom/google/android/exoplayer/extractor/ts/AdtsReader;

.field private final firstSampleTimestampUs:J

.field private final packetBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private startedPacket:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-string v0, "ID3"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;->ID3_TAG:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 50
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;-><init>(J)V

    .line 51
    return-void
.end method

.method public constructor <init>(J)V
    .registers 6
    .param p1, "firstSampleTimestampUs"    # J

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-wide p1, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;->firstSampleTimestampUs:J

    .line 55
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;->packetBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 56
    return-void
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer/extractor/ExtractorOutput;)V
    .registers 5
    .param p1, "output"    # Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .prologue
    .line 115
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;->adtsReader:Lcom/google/android/exoplayer/extractor/ts/AdtsReader;

    .line 116
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->endTracks()V

    .line 117
    sget-object v0, Lcom/google/android/exoplayer/extractor/SeekMap;->UNSEEKABLE:Lcom/google/android/exoplayer/extractor/SeekMap;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer/extractor/SeekMap;)V

    .line 118
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
    const/4 v6, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 134
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;->packetBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v3, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/16 v4, 0xc8

    invoke-interface {p1, v3, v2, v4}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->read([BII)I

    move-result v0

    .line 135
    .local v0, "bytesRead":I
    if-ne v0, v1, :cond_10

    .line 151
    :goto_f
    return v1

    .line 140
    :cond_10
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;->packetBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 141
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;->packetBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setLimit(I)V

    .line 145
    iget-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;->startedPacket:Z

    if-nez v1, :cond_27

    .line 147
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;->adtsReader:Lcom/google/android/exoplayer/extractor/ts/AdtsReader;

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;->firstSampleTimestampUs:J

    invoke-virtual {v1, v4, v5, v6}, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->packetStarted(JZ)V

    .line 148
    iput-boolean v6, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;->startedPacket:Z

    .line 150
    :cond_27
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;->adtsReader:Lcom/google/android/exoplayer/extractor/ts/AdtsReader;

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;->packetBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->consume(Lcom/google/android/exoplayer/util/ParsableByteArray;)V

    move v1, v2

    .line 151
    goto :goto_f
.end method

.method public release()V
    .registers 1

    .prologue
    .line 129
    return-void
.end method

.method public seek()V
    .registers 2

    .prologue
    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;->startedPacket:Z

    .line 123
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;->adtsReader:Lcom/google/android/exoplayer/extractor/ts/AdtsReader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->seek()V

    .line 124
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .registers 14
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v3, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/16 v9, 0xa

    invoke-direct {v3, v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    .line 62
    .local v3, "scratch":Lcom/google/android/exoplayer/util/ParsableByteArray;
    new-instance v4, Lcom/google/android/exoplayer/util/ParsableBitArray;

    iget-object v9, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-direct {v4, v9}, Lcom/google/android/exoplayer/util/ParsableBitArray;-><init>([B)V

    .line 63
    .local v4, "scratchBits":Lcom/google/android/exoplayer/util/ParsableBitArray;
    const/4 v5, 0x0

    .line 65
    .local v5, "startPosition":I
    :goto_f
    iget-object v9, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v10, 0x0

    const/16 v11, 0xa

    invoke-interface {p1, v9, v10, v11}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 66
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 67
    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v9

    sget v10, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;->ID3_TAG:I

    if-eq v9, v10, :cond_53

    .line 75
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    .line 76
    invoke-interface {p1, v5}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 79
    move v1, v5

    .line 80
    .local v1, "headerPosition":I
    const/4 v8, 0x0

    .line 81
    .local v8, "validFramesSize":I
    const/4 v7, 0x0

    .line 83
    .local v7, "validFramesCount":I
    :goto_2c
    iget-object v9, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-interface {p1, v9, v10, v11}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 84
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 85
    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    .line 86
    .local v6, "syncBytes":I
    const v9, 0xfff6

    and-int/2addr v9, v6

    const v10, 0xfff0

    if-eq v9, v10, :cond_86

    .line 87
    const/4 v7, 0x0

    .line 88
    const/4 v8, 0x0

    .line 89
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    .line 90
    add-int/lit8 v1, v1, 0x1

    sub-int v9, v1, v5

    const/16 v10, 0x2000

    if-lt v9, v10, :cond_82

    .line 91
    const/4 v9, 0x0

    .line 105
    :goto_52
    return v9

    .line 70
    .end local v1    # "headerPosition":I
    .end local v6    # "syncBytes":I
    .end local v7    # "validFramesCount":I
    .end local v8    # "validFramesSize":I
    :cond_53
    iget-object v9, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v10, 0x6

    aget-byte v9, v9, v10

    and-int/lit8 v9, v9, 0x7f

    shl-int/lit8 v9, v9, 0x15

    iget-object v10, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v11, 0x7

    aget-byte v10, v10, v11

    and-int/lit8 v10, v10, 0x7f

    shl-int/lit8 v10, v10, 0xe

    or-int/2addr v9, v10

    iget-object v10, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/16 v11, 0x8

    aget-byte v10, v10, v11

    and-int/lit8 v10, v10, 0x7f

    shl-int/lit8 v10, v10, 0x7

    or-int/2addr v9, v10

    iget-object v10, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/16 v11, 0x9

    aget-byte v10, v10, v11

    and-int/lit8 v10, v10, 0x7f

    or-int v2, v9, v10

    .line 72
    .local v2, "length":I
    add-int/lit8 v9, v2, 0xa

    add-int/2addr v5, v9

    .line 73
    invoke-interface {p1, v2}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_f

    .line 93
    .end local v2    # "length":I
    .restart local v1    # "headerPosition":I
    .restart local v6    # "syncBytes":I
    .restart local v7    # "validFramesCount":I
    .restart local v8    # "validFramesSize":I
    :cond_82
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_2c

    .line 95
    :cond_86
    add-int/lit8 v7, v7, 0x1

    const/4 v9, 0x4

    if-lt v7, v9, :cond_91

    const/16 v9, 0xbc

    if-le v8, v9, :cond_91

    .line 96
    const/4 v9, 0x1

    goto :goto_52

    .line 100
    :cond_91
    iget-object v9, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-interface {p1, v9, v10, v11}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 101
    const/16 v9, 0xe

    invoke-virtual {v4, v9}, Lcom/google/android/exoplayer/util/ParsableBitArray;->setPosition(I)V

    .line 102
    const/16 v9, 0xd

    invoke-virtual {v4, v9}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 104
    .local v0, "frameSize":I
    const/4 v9, 0x6

    if-gt v0, v9, :cond_a8

    .line 105
    const/4 v9, 0x0

    goto :goto_52

    .line 107
    :cond_a8
    add-int/lit8 v9, v0, -0x6

    invoke-interface {p1, v9}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 108
    add-int/2addr v8, v0

    goto/16 :goto_2c
.end method
