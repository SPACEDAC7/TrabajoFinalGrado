.class final Lcom/google/android/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;
.super Ljava/lang/Object;
.source "WavHeaderReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/extractor/wav/WavHeaderReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ChunkHeader"
.end annotation


# static fields
.field public static final SIZE_IN_BYTES:I = 0x8


# instance fields
.field public final id:I

.field public final size:J


# direct methods
.method private constructor <init>(IJ)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "size"    # J

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput p1, p0, Lcom/google/android/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;->id:I

    .line 165
    iput-wide p2, p0, Lcom/google/android/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;->size:J

    .line 166
    return-void
.end method

.method public static peek(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;
    .registers 8
    .param p0, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p1, "scratch"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 179
    iget-object v1, p1, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/16 v4, 0x8

    invoke-interface {p0, v1, v5, v4}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 180
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 182
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 183
    .local v0, "id":I
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v2

    .line 185
    .local v2, "size":J
    new-instance v1, Lcom/google/android/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;-><init>(IJ)V

    return-object v1
.end method
