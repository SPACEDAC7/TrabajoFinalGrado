.class final Lcom/google/android/exoplayer/extractor/ogg/OggParser;
.super Ljava/lang/Object;
.source "OggParser.java"


# static fields
.field public static final OGG_MAX_SEGMENT_SIZE:I = 0xff


# instance fields
.field private currentSegmentIndex:I

.field private elapsedSamples:J

.field private final headerArray:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final holder:Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;

.field private final pageHeader:Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;

    invoke-direct {v0}, Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->pageHeader:Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;

    .line 34
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/16 v1, 0x11a

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->headerArray:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 35
    new-instance v0, Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;

    invoke-direct {v0}, Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->holder:Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->currentSegmentIndex:I

    return-void
.end method


# virtual methods
.method public getPageHeader()Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->pageHeader:Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;

    return-object v0
.end method

.method public readGranuleOfLastPage(Lcom/google/android/exoplayer/extractor/ExtractorInput;)J
    .registers 8
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_40

    const/4 v0, 0x1

    :goto_c
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 112
    invoke-static {p1}, Lcom/google/android/exoplayer/extractor/ogg/OggUtil;->skipToNextPage(Lcom/google/android/exoplayer/extractor/ExtractorInput;)V

    .line 113
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->pageHeader:Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;->reset()V

    .line 114
    :goto_17
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->pageHeader:Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;

    iget v0, v0, Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;->type:I

    and-int/lit8 v0, v0, 0x4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_42

    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_42

    .line 115
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->pageHeader:Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->headerArray:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {p1, v0, v2, v1}, Lcom/google/android/exoplayer/extractor/ogg/OggUtil;->populatePageHeader(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;Lcom/google/android/exoplayer/util/ParsableByteArray;Z)Z

    .line 116
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->pageHeader:Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;

    iget v0, v0, Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;->headerSize:I

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->pageHeader:Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;

    iget v2, v2, Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;->bodySize:I

    add-int/2addr v0, v2

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_17

    :cond_40
    move v0, v1

    .line 111
    goto :goto_c

    .line 118
    :cond_42
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->pageHeader:Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;

    iget-wide v0, v0, Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;->granulePosition:J

    return-wide v0
.end method

.method public readPacket(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/util/ParsableByteArray;)Z
    .registers 11
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p2, "packetArray"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 64
    if-eqz p1, :cond_1c

    if-eqz p2, :cond_1c

    move v3, v4

    :goto_7
    invoke-static {v3}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 66
    const/4 v1, 0x0

    .line 67
    .local v1, "packetComplete":Z
    :goto_b
    if-nez v1, :cond_91

    .line 68
    iget v3, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->currentSegmentIndex:I

    if-gez v3, :cond_47

    .line 70
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->pageHeader:Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;

    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->headerArray:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {p1, v3, v6, v4}, Lcom/google/android/exoplayer/extractor/ogg/OggUtil;->populatePageHeader(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;Lcom/google/android/exoplayer/util/ParsableByteArray;Z)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 97
    :goto_1b
    return v5

    .end local v1    # "packetComplete":Z
    :cond_1c
    move v3, v5

    .line 64
    goto :goto_7

    .line 73
    .restart local v1    # "packetComplete":Z
    :cond_1e
    const/4 v2, 0x0

    .line 74
    .local v2, "segmentIndex":I
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->pageHeader:Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;

    iget v0, v3, Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;->headerSize:I

    .line 75
    .local v0, "bytesToSkip":I
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->pageHeader:Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;

    iget v3, v3, Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;->type:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_42

    invoke-virtual {p2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v3

    if-nez v3, :cond_42

    .line 78
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->pageHeader:Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;

    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->holder:Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;

    invoke-static {v3, v2, v6}, Lcom/google/android/exoplayer/extractor/ogg/OggUtil;->calculatePacketSize(Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;ILcom/google/android/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;)V

    .line 79
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->holder:Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;

    iget v3, v3, Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;->segmentCount:I

    add-int/2addr v2, v3

    .line 80
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->holder:Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;

    iget v3, v3, Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;->size:I

    add-int/2addr v0, v3

    .line 82
    :cond_42
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    .line 83
    iput v2, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->currentSegmentIndex:I

    .line 86
    .end local v0    # "bytesToSkip":I
    .end local v2    # "segmentIndex":I
    :cond_47
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->pageHeader:Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;

    iget v6, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->currentSegmentIndex:I

    iget-object v7, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->holder:Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;

    invoke-static {v3, v6, v7}, Lcom/google/android/exoplayer/extractor/ogg/OggUtil;->calculatePacketSize(Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;ILcom/google/android/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;)V

    .line 87
    iget v3, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->currentSegmentIndex:I

    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->holder:Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;

    iget v6, v6, Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;->segmentCount:I

    add-int v2, v3, v6

    .line 88
    .restart local v2    # "segmentIndex":I
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->holder:Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;

    iget v3, v3, Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;->size:I

    if-lez v3, :cond_84

    .line 89
    iget-object v3, p2, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-virtual {p2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v6

    iget-object v7, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->holder:Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;

    iget v7, v7, Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;->size:I

    invoke-interface {p1, v3, v6, v7}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 90
    invoke-virtual {p2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v3

    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->holder:Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;

    iget v6, v6, Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;->size:I

    add-int/2addr v3, v6

    invoke-virtual {p2, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setLimit(I)V

    .line 91
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->pageHeader:Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;

    iget-object v3, v3, Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;->laces:[I

    add-int/lit8 v6, v2, -0x1

    aget v3, v3, v6

    const/16 v6, 0xff

    if-eq v3, v6, :cond_8f

    move v1, v4

    .line 94
    :cond_84
    :goto_84
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->pageHeader:Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;

    iget v3, v3, Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;->pageSegmentCount:I

    if-ne v2, v3, :cond_8b

    const/4 v2, -0x1

    .end local v2    # "segmentIndex":I
    :cond_8b
    iput v2, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->currentSegmentIndex:I

    goto/16 :goto_b

    .restart local v2    # "segmentIndex":I
    :cond_8f
    move v1, v5

    .line 91
    goto :goto_84

    .end local v2    # "segmentIndex":I
    :cond_91
    move v5, v4

    .line 97
    goto :goto_1b
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->pageHeader:Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;->reset()V

    .line 45
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->headerArray:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->currentSegmentIndex:I

    .line 47
    return-void
.end method

.method public skipToPageOfGranule(Lcom/google/android/exoplayer/extractor/ExtractorInput;J)J
    .registers 12
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p2, "targetGranule"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 138
    invoke-static {p1}, Lcom/google/android/exoplayer/extractor/ogg/OggUtil;->skipToNextPage(Lcom/google/android/exoplayer/extractor/ExtractorInput;)V

    .line 139
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->pageHeader:Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->headerArray:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {p1, v2, v3, v4}, Lcom/google/android/exoplayer/extractor/ogg/OggUtil;->populatePageHeader(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;Lcom/google/android/exoplayer/util/ParsableByteArray;Z)Z

    .line 140
    :goto_d
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->pageHeader:Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;

    iget-wide v2, v2, Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;->granulePosition:J

    cmp-long v2, v2, p2

    if-gez v2, :cond_2f

    .line 141
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->pageHeader:Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;

    iget v2, v2, Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;->headerSize:I

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->pageHeader:Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;

    iget v3, v3, Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;->bodySize:I

    add-int/2addr v2, v3

    invoke-interface {p1, v2}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    .line 143
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->pageHeader:Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;

    iget-wide v2, v2, Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;->granulePosition:J

    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->elapsedSamples:J

    .line 145
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->pageHeader:Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->headerArray:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {p1, v2, v3, v4}, Lcom/google/android/exoplayer/extractor/ogg/OggUtil;->populatePageHeader(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;Lcom/google/android/exoplayer/util/ParsableByteArray;Z)Z

    goto :goto_d

    .line 147
    :cond_2f
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->elapsedSamples:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_3b

    .line 148
    new-instance v2, Lcom/google/android/exoplayer/ParserException;

    invoke-direct {v2}, Lcom/google/android/exoplayer/ParserException;-><init>()V

    throw v2

    .line 150
    :cond_3b
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    .line 151
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->elapsedSamples:J

    .line 153
    .local v0, "returnValue":J
    iput-wide v6, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->elapsedSamples:J

    .line 154
    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->currentSegmentIndex:I

    .line 155
    return-wide v0
.end method
