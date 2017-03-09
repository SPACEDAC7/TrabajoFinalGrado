.class final Lcom/google/android/exoplayer/extractor/ogg/OggSeeker;
.super Ljava/lang/Object;
.source "OggSeeker.java"


# static fields
.field private static final MATCH_RANGE:I = 0x11940


# instance fields
.field private audioDataLength:J

.field private final headerArray:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final pageHeader:Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;

.field private totalSamples:J


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;

    invoke-direct {v0}, Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ogg/OggSeeker;->pageHeader:Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;

    .line 32
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/16 v1, 0x11a

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ogg/OggSeeker;->headerArray:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 33
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/ogg/OggSeeker;->audioDataLength:J

    return-void
.end method


# virtual methods
.method public getNextSeekPosition(JLcom/google/android/exoplayer/extractor/ExtractorInput;)J
    .registers 15
    .param p1, "targetGranule"    # J
    .param p3, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 64
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/ogg/OggSeeker;->audioDataLength:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4e

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/ogg/OggSeeker;->totalSamples:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4e

    const/4 v4, 0x1

    :goto_11
    invoke-static {v4}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 65
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ogg/OggSeeker;->pageHeader:Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;

    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/ogg/OggSeeker;->headerArray:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v6, 0x0

    invoke-static {p3, v4, v5, v6}, Lcom/google/android/exoplayer/extractor/ogg/OggUtil;->populatePageHeader(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;Lcom/google/android/exoplayer/util/ParsableByteArray;Z)Z

    .line 66
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ogg/OggSeeker;->pageHeader:Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;

    iget-wide v4, v4, Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;->granulePosition:J

    sub-long v0, p1, v4

    .line 67
    .local v0, "granuleDistance":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_2f

    const-wide/32 v4, 0x11940

    cmp-long v4, v0, v4

    if-lez v4, :cond_52

    .line 69
    :cond_2f
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ogg/OggSeeker;->pageHeader:Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;

    iget v4, v4, Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;->bodySize:I

    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/ogg/OggSeeker;->pageHeader:Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;

    iget v5, v5, Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;->headerSize:I

    add-int/2addr v5, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-gtz v4, :cond_50

    const/4 v4, 0x2

    :goto_3f
    mul-int/2addr v4, v5

    int-to-long v2, v4

    .line 71
    .local v2, "offset":J
    invoke-interface {p3}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    sub-long/2addr v4, v2

    iget-wide v6, p0, Lcom/google/android/exoplayer/extractor/ogg/OggSeeker;->audioDataLength:J

    mul-long/2addr v6, v0

    iget-wide v8, p0, Lcom/google/android/exoplayer/extractor/ogg/OggSeeker;->totalSamples:J

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    .line 75
    .end local v2    # "offset":J
    :goto_4d
    return-wide v4

    .line 64
    .end local v0    # "granuleDistance":J
    :cond_4e
    const/4 v4, 0x0

    goto :goto_11

    .line 69
    .restart local v0    # "granuleDistance":J
    :cond_50
    const/4 v4, 0x1

    goto :goto_3f

    .line 74
    :cond_52
    invoke-interface {p3}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    .line 75
    const-wide/16 v4, -0x1

    goto :goto_4d
.end method

.method public setup(JJ)V
    .registers 10
    .param p1, "audioDataLength"    # J
    .param p3, "totalSamples"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 43
    cmp-long v0, p1, v2

    if-lez v0, :cond_13

    cmp-long v0, p3, v2

    if-lez v0, :cond_13

    const/4 v0, 0x1

    :goto_b
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 44
    iput-wide p1, p0, Lcom/google/android/exoplayer/extractor/ogg/OggSeeker;->audioDataLength:J

    .line 45
    iput-wide p3, p0, Lcom/google/android/exoplayer/extractor/ogg/OggSeeker;->totalSamples:J

    .line 46
    return-void

    .line 43
    :cond_13
    const/4 v0, 0x0

    goto :goto_b
.end method
