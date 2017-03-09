.class public final Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;
.super Ljava/lang/Object;
.source "DefaultExtractorInput.java"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/ExtractorInput;


# static fields
.field private static final SCRATCH_SPACE:[B


# instance fields
.field private final dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

.field private peekBuffer:[B

.field private peekBufferLength:I

.field private peekBufferPosition:I

.field private position:J

.field private final streamLength:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const/16 v0, 0x1000

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->SCRATCH_SPACE:[B

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/upstream/DataSource;JJ)V
    .registers 8
    .param p1, "dataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p2, "position"    # J
    .param p4, "length"    # J

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    .line 46
    iput-wide p2, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->position:J

    .line 47
    iput-wide p4, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->streamLength:J

    .line 48
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBuffer:[B

    .line 49
    return-void
.end method

.method private commitBytesRead(I)V
    .registers 6
    .param p1, "bytesRead"    # I

    .prologue
    .line 255
    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    .line 256
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->position:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->position:J

    .line 258
    :cond_9
    return-void
.end method

.method private ensureSpaceForPeek(I)V
    .registers 5
    .param p1, "length"    # I

    .prologue
    .line 169
    iget v1, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int v0, v1, p1

    .line 170
    .local v0, "requiredLength":I
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBuffer:[B

    array-length v1, v1

    if-le v0, v1, :cond_1a

    .line 171
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBuffer:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBuffer:[B

    .line 173
    :cond_1a
    return-void
.end method

.method private readFromDataSource([BIIIZ)I
    .registers 11
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "bytesAlreadyRead"    # I
    .param p5, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 236
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 237
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 239
    :cond_d
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    add-int v3, p2, p4

    sub-int v4, p3, p4

    invoke-interface {v2, p1, v3, v4}, Lcom/google/android/exoplayer/upstream/DataSource;->read([BII)I

    move-result v0

    .line 240
    .local v0, "bytesRead":I
    if-ne v0, v1, :cond_24

    .line 241
    if-nez p4, :cond_1e

    if-eqz p5, :cond_1e

    .line 246
    :goto_1d
    return v1

    .line 244
    :cond_1e
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 246
    :cond_24
    add-int v1, p4, v0

    goto :goto_1d
.end method

.method private readFromPeekBuffer([BII)I
    .registers 7
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v1, 0x0

    .line 196
    iget v2, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBufferLength:I

    if-nez v2, :cond_7

    move v0, v1

    .line 202
    :goto_6
    return v0

    .line 199
    :cond_7
    iget v2, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBufferLength:I

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 200
    .local v0, "peekBytes":I
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBuffer:[B

    invoke-static {v2, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->updatePeekBuffer(I)V

    goto :goto_6
.end method

.method private skipFromPeekBuffer(I)I
    .registers 4
    .param p1, "length"    # I

    .prologue
    .line 182
    iget v1, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBufferLength:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 183
    .local v0, "bytesSkipped":I
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->updatePeekBuffer(I)V

    .line 184
    return v0
.end method

.method private updatePeekBuffer(I)V
    .registers 6
    .param p1, "bytesConsumed"    # I

    .prologue
    const/4 v3, 0x0

    .line 211
    iget v0, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBufferLength:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBufferLength:I

    .line 212
    iput v3, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBufferPosition:I

    .line 213
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget v2, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBufferLength:I

    invoke-static {v0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    return-void
.end method


# virtual methods
.method public advancePeekPosition(I)V
    .registers 3
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    .line 142
    return-void
.end method

.method public advancePeekPosition(IZ)Z
    .registers 9
    .param p1, "length"    # I
    .param p2, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->ensureSpaceForPeek(I)V

    .line 126
    iget v0, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBufferLength:I

    iget v1, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBufferPosition:I

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 127
    .local v4, "bytesPeeked":I
    iget v0, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBufferLength:I

    sub-int v1, p1, v4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBufferLength:I

    .line 128
    :cond_13
    if-ge v4, p1, :cond_25

    .line 129
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget v2, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBufferPosition:I

    move-object v0, p0

    move v3, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->readFromDataSource([BIIIZ)I

    move-result v4

    .line 131
    const/4 v0, -0x1

    if-ne v4, v0, :cond_13

    .line 132
    const/4 v0, 0x0

    .line 136
    :goto_24
    return v0

    .line 135
    :cond_25
    iget v0, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBufferPosition:I

    .line 136
    const/4 v0, 0x1

    goto :goto_24
.end method

.method public getLength()J
    .registers 3

    .prologue
    .line 161
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->streamLength:J

    return-wide v0
.end method

.method public getPeekPosition()J
    .registers 5

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->position:J

    iget v2, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBufferPosition:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getPosition()J
    .registers 3

    .prologue
    .line 156
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->position:J

    return-wide v0
.end method

.method public peekFully([BII)V
    .registers 5
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekFully([BIIZ)Z

    .line 120
    return-void
.end method

.method public peekFully([BIIZ)Z
    .registers 7
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p0, p3, p4}, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    move-result v0

    if-nez v0, :cond_8

    .line 110
    const/4 v0, 0x0

    .line 113
    :goto_7
    return v0

    .line 112
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget v1, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBufferPosition:I

    sub-int/2addr v1, p3

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public read([BII)I
    .registers 11
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->readFromPeekBuffer([BII)I

    move-result v6

    .line 54
    .local v6, "bytesRead":I
    if-nez v6, :cond_10

    .line 55
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->readFromDataSource([BIIIZ)I

    move-result v6

    .line 57
    :cond_10
    invoke-direct {p0, v6}, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    .line 58
    return v6
.end method

.method public readFully([BII)V
    .registers 5
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->readFully([BIIZ)Z

    .line 76
    return-void
.end method

.method public readFully([BIIZ)Z
    .registers 12
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->readFromPeekBuffer([BII)I

    move-result v4

    .line 65
    .local v4, "bytesRead":I
    :goto_5
    if-ge v4, p3, :cond_13

    if-eq v4, v6, :cond_13

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    .line 66
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->readFromDataSource([BIIIZ)I

    move-result v4

    goto :goto_5

    .line 68
    :cond_13
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    .line 69
    if-eq v4, v6, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public resetPeekPosition()V
    .registers 2

    .prologue
    .line 146
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->peekBufferPosition:I

    .line 147
    return-void
.end method

.method public skip(I)I
    .registers 9
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->skipFromPeekBuffer(I)I

    move-result v6

    .line 81
    .local v6, "bytesSkipped":I
    if-nez v6, :cond_17

    .line 82
    sget-object v1, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->SCRATCH_SPACE:[B

    sget-object v0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->SCRATCH_SPACE:[B

    array-length v0, v0

    .line 83
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v5, 0x1

    move-object v0, p0

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->readFromDataSource([BIIIZ)I

    move-result v6

    .line 85
    :cond_17
    invoke-direct {p0, v6}, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    .line 86
    return v6
.end method

.method public skipFully(I)V
    .registers 3
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->skipFully(IZ)Z

    .line 104
    return-void
.end method

.method public skipFully(IZ)Z
    .registers 10
    .param p1, "length"    # I
    .param p2, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 92
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->skipFromPeekBuffer(I)I

    move-result v4

    .line 93
    .local v4, "bytesSkipped":I
    :goto_5
    if-ge v4, p1, :cond_1b

    if-eq v4, v6, :cond_1b

    .line 94
    sget-object v1, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->SCRATCH_SPACE:[B

    neg-int v2, v4

    sget-object v0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->SCRATCH_SPACE:[B

    array-length v0, v0

    add-int/2addr v0, v4

    .line 95
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object v0, p0

    move v5, p2

    .line 94
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->readFromDataSource([BIIIZ)I

    move-result v4

    goto :goto_5

    .line 97
    :cond_1b
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    .line 98
    if-eq v4, v6, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method
