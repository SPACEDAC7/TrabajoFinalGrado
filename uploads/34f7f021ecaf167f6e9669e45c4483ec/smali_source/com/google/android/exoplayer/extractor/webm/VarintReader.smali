.class final Lcom/google/android/exoplayer/extractor/webm/VarintReader;
.super Ljava/lang/Object;
.source "VarintReader.java"


# static fields
.field private static final STATE_BEGIN_READING:I = 0x0

.field private static final STATE_READ_CONTENTS:I = 0x1

.field private static final VARINT_LENGTH_MASKS:[J


# instance fields
.field private length:I

.field private final scratch:[B

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->VARINT_LENGTH_MASKS:[J

    return-void

    :array_a
    .array-data 8
        0x80
        0x40
        0x20
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->scratch:[B

    .line 33
    return-void
.end method

.method public static assembleVarint([BIZ)J
    .registers 13
    .param p0, "varintBytes"    # [B
    .param p1, "varintLength"    # I
    .param p2, "removeLengthMask"    # Z

    .prologue
    const-wide/16 v8, 0xff

    .line 129
    const/4 v1, 0x0

    aget-byte v1, p0, v1

    int-to-long v4, v1

    and-long v2, v4, v8

    .line 130
    .local v2, "varint":J
    if-eqz p2, :cond_14

    .line 131
    sget-object v1, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->VARINT_LENGTH_MASKS:[J

    add-int/lit8 v4, p1, -0x1

    aget-wide v4, v1, v4

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    and-long/2addr v2, v4

    .line 133
    :cond_14
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_15
    if-ge v0, p1, :cond_24

    .line 134
    const/16 v1, 0x8

    shl-long v4, v2, v1

    aget-byte v1, p0, v0

    int-to-long v6, v1

    and-long/2addr v6, v8

    or-long v2, v4, v6

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 136
    :cond_24
    return-wide v2
.end method

.method public static parseUnsignedVarintLength(I)I
    .registers 7
    .param p0, "firstByte"    # I

    .prologue
    .line 109
    const/4 v1, -0x1

    .line 110
    .local v1, "varIntLength":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    sget-object v2, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->VARINT_LENGTH_MASKS:[J

    array-length v2, v2

    if-ge v0, v2, :cond_15

    .line 111
    sget-object v2, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->VARINT_LENGTH_MASKS:[J

    aget-wide v2, v2, v0

    int-to-long v4, p0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_16

    .line 112
    add-int/lit8 v1, v0, 0x1

    .line 116
    :cond_15
    return v1

    .line 110
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method public getLastLength()I
    .registers 2

    .prologue
    .line 99
    iget v0, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->length:I

    return v0
.end method

.method public readUnsignedVarint(Lcom/google/android/exoplayer/extractor/ExtractorInput;ZZI)J
    .registers 10
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p2, "allowEndOfInput"    # Z
    .param p3, "removeLengthMask"    # Z
    .param p4, "maximumAllowedLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 68
    iget v1, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->state:I

    if-nez v1, :cond_2c

    .line 70
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->scratch:[B

    invoke-interface {p1, v1, v3, v4, p2}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v1

    if-nez v1, :cond_11

    .line 71
    const-wide/16 v2, -0x1

    .line 92
    :goto_10
    return-wide v2

    .line 73
    :cond_11
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->scratch:[B

    aget-byte v1, v1, v3

    and-int/lit16 v0, v1, 0xff

    .line 74
    .local v0, "firstByte":I
    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->parseUnsignedVarintLength(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->length:I

    .line 75
    iget v1, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->length:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2a

    .line 76
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No valid varint length mask found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_2a
    iput v4, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->state:I

    .line 81
    .end local v0    # "firstByte":I
    :cond_2c
    iget v1, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->length:I

    if-le v1, p4, :cond_35

    .line 82
    iput v3, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->state:I

    .line 83
    const-wide/16 v2, -0x2

    goto :goto_10

    .line 86
    :cond_35
    iget v1, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->length:I

    if-eq v1, v4, :cond_42

    .line 88
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->scratch:[B

    iget v2, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->length:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v1, v4, v2}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 91
    :cond_42
    iput v3, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->state:I

    .line 92
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->scratch:[B

    iget v2, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->length:I

    invoke-static {v1, v2, p3}, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->assembleVarint([BIZ)J

    move-result-wide v2

    goto :goto_10
.end method

.method public reset()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->state:I

    .line 40
    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->length:I

    .line 41
    return-void
.end method
