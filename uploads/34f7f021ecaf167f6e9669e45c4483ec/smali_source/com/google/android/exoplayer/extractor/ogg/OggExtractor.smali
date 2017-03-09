.class public Lcom/google/android/exoplayer/extractor/ogg/OggExtractor;
.super Ljava/lang/Object;
.source "OggExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/Extractor;


# instance fields
.field private streamReader:Lcom/google/android/exoplayer/extractor/ogg/StreamReader;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer/extractor/ExtractorOutput;)V
    .registers 4
    .param p1, "output"    # Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .prologue
    .line 65
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v0

    .line 66
    .local v0, "trackOutput":Lcom/google/android/exoplayer/extractor/TrackOutput;
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->endTracks()V

    .line 67
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ogg/OggExtractor;->streamReader:Lcom/google/android/exoplayer/extractor/ogg/StreamReader;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/exoplayer/extractor/ogg/StreamReader;->init(Lcom/google/android/exoplayer/extractor/ExtractorOutput;Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    .line 68
    return-void
.end method

.method public read(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)I
    .registers 4
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lcom/google/android/exoplayer/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ogg/OggExtractor;->streamReader:Lcom/google/android/exoplayer/extractor/ogg/StreamReader;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer/extractor/ogg/StreamReader;->read(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)I

    move-result v0

    return v0
.end method

.method public release()V
    .registers 1

    .prologue
    .line 78
    return-void
.end method

.method public seek()V
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ogg/OggExtractor;->streamReader:Lcom/google/android/exoplayer/extractor/ogg/StreamReader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ogg/StreamReader;->seek()V

    .line 73
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .registers 9
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x7

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    :try_start_3
    new-instance v1, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/16 v4, 0x1b

    new-array v4, v4, [B

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>([BI)V

    .line 38
    .local v1, "scratch":Lcom/google/android/exoplayer/util/ParsableByteArray;
    new-instance v0, Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;

    invoke-direct {v0}, Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;-><init>()V

    .line 39
    .local v0, "header":Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;
    const/4 v4, 0x1

    invoke-static {p1, v0, v1, v4}, Lcom/google/android/exoplayer/extractor/ogg/OggUtil;->populatePageHeader(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;Lcom/google/android/exoplayer/util/ParsableByteArray;Z)Z

    move-result v4

    if-eqz v4, :cond_24

    iget v4, v0, Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;->type:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_24

    iget v4, v0, Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;->bodySize:I

    if-ge v4, v6, :cond_25

    .line 60
    .end local v0    # "header":Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;
    .end local v1    # "scratch":Lcom/google/android/exoplayer/util/ParsableByteArray;
    :cond_24
    :goto_24
    return v2

    .line 43
    .restart local v0    # "header":Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;
    .restart local v1    # "scratch":Lcom/google/android/exoplayer/util/ParsableByteArray;
    :cond_25
    invoke-virtual {v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset()V

    .line 44
    iget-object v4, v1, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v5, 0x0

    const/4 v6, 0x7

    invoke-interface {p1, v4, v5, v6}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 45
    invoke-static {v1}, Lcom/google/android/exoplayer/extractor/ogg/FlacReader;->verifyBitstreamType(Lcom/google/android/exoplayer/util/ParsableByteArray;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 46
    new-instance v4, Lcom/google/android/exoplayer/extractor/ogg/FlacReader;

    invoke-direct {v4}, Lcom/google/android/exoplayer/extractor/ogg/FlacReader;-><init>()V

    iput-object v4, p0, Lcom/google/android/exoplayer/extractor/ogg/OggExtractor;->streamReader:Lcom/google/android/exoplayer/extractor/ogg/StreamReader;

    :goto_3c
    move v2, v3

    .line 55
    goto :goto_24

    .line 48
    :cond_3e
    invoke-virtual {v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset()V

    .line 49
    invoke-static {v1}, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;->verifyBitstreamType(Lcom/google/android/exoplayer/util/ParsableByteArray;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 50
    new-instance v4, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;

    invoke-direct {v4}, Lcom/google/android/exoplayer/extractor/ogg/VorbisReader;-><init>()V

    iput-object v4, p0, Lcom/google/android/exoplayer/extractor/ogg/OggExtractor;->streamReader:Lcom/google/android/exoplayer/extractor/ogg/StreamReader;
    :try_end_4e
    .catch Lcom/google/android/exoplayer/ParserException; {:try_start_3 .. :try_end_4e} :catch_4f
    .catchall {:try_start_3 .. :try_end_4e} :catchall_51

    goto :goto_3c

    .line 56
    .end local v0    # "header":Lcom/google/android/exoplayer/extractor/ogg/OggUtil$PageHeader;
    .end local v1    # "scratch":Lcom/google/android/exoplayer/util/ParsableByteArray;
    :catch_4f
    move-exception v3

    goto :goto_24

    .line 58
    :catchall_51
    move-exception v2

    throw v2
.end method
