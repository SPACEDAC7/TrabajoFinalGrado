.class final Lcom/google/android/exoplayer/extractor/ts/SeiReader;
.super Ljava/lang/Object;
.source "SeiReader.java"


# instance fields
.field private final output:Lcom/google/android/exoplayer/extractor/TrackOutput;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V
    .registers 9
    .param p1, "output"    # Lcom/google/android/exoplayer/extractor/TrackOutput;

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/ts/SeiReader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    .line 36
    const-string v2, "application/eia-608"

    const/4 v3, -0x1

    const-wide/16 v4, -0x1

    move-object v6, v1

    invoke-static/range {v1 .. v6}, Lcom/google/android/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/extractor/TrackOutput;->format(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 38
    return-void
.end method


# virtual methods
.method public consume(JLcom/google/android/exoplayer/util/ParsableByteArray;)V
    .registers 15
    .param p1, "pesTimeUs"    # J
    .param p3, "seiBuffer"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    const/16 v9, 0xff

    const/4 v4, 0x1

    .line 42
    :goto_3
    invoke-virtual {p3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-le v1, v4, :cond_31

    .line 44
    const/4 v8, 0x0

    .line 46
    .local v8, "payloadType":I
    :cond_a
    invoke-virtual {p3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 47
    .local v0, "b":I
    add-int/2addr v8, v0

    .line 48
    if-eq v0, v9, :cond_a

    .line 50
    const/4 v5, 0x0

    .line 52
    .local v5, "payloadSize":I
    :cond_12
    invoke-virtual {p3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 53
    add-int/2addr v5, v0

    .line 54
    if-eq v0, v9, :cond_12

    .line 56
    invoke-static {v8, v5, p3}, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->isSeiMessageEia608(IILcom/google/android/exoplayer/util/ParsableByteArray;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 57
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/SeiReader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    invoke-interface {v1, p3, v5}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 58
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/SeiReader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, p1

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    goto :goto_3

    .line 60
    :cond_2d
    invoke-virtual {p3, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_3

    .line 63
    .end local v0    # "b":I
    .end local v5    # "payloadSize":I
    .end local v8    # "payloadType":I
    :cond_31
    return-void
.end method
