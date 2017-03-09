.class public final Lcom/google/android/exoplayer/util/ParsableBitArray;
.super Ljava/lang/Object;
.source "ParsableBitArray.java"


# instance fields
.field private bitOffset:I

.field private byteLimit:I

.field private byteOffset:I

.field public data:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .param p1, "data"    # [B

    .prologue
    .line 40
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;-><init>([BI)V

    .line 41
    return-void
.end method

.method public constructor <init>([BI)V
    .registers 3
    .param p1, "data"    # [B
    .param p2, "limit"    # I

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->data:[B

    .line 51
    iput p2, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteLimit:I

    .line 52
    return-void
.end method

.method private assertValidOffset()V
    .registers 3

    .prologue
    .line 228
    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    if-ltz v0, :cond_23

    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    if-ltz v0, :cond_23

    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_23

    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    iget v1, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteLimit:I

    if-lt v0, v1, :cond_1e

    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    iget v1, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteLimit:I

    if-ne v0, v1, :cond_23

    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    if-nez v0, :cond_23

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 231
    return-void

    .line 228
    :cond_23
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private readExpGolombCodeNum()I
    .registers 4

    .prologue
    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "leadingZeros":I
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-nez v1, :cond_a

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 223
    :cond_a
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    add-int/lit8 v2, v1, -0x1

    if-lez v0, :cond_16

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v1

    :goto_14
    add-int/2addr v1, v2

    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_14
.end method


# virtual methods
.method public bitsLeft()I
    .registers 3

    .prologue
    .line 80
    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteLimit:I

    iget v1, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public canReadExpGolombCodedNum()Z
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 187
    iget v2, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    .line 188
    .local v2, "initialByteOffset":I
    iget v1, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    .line 189
    .local v1, "initialBitOffset":I
    const/4 v3, 0x0

    .line 190
    .local v3, "leadingZeros":I
    :goto_7
    iget v6, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    iget v7, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteLimit:I

    if-ge v6, v7, :cond_16

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-nez v6, :cond_16

    .line 191
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 193
    :cond_16
    iget v6, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    iget v7, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteLimit:I

    if-ne v6, v7, :cond_2e

    move v0, v4

    .line 194
    .local v0, "hitLimit":Z
    :goto_1d
    iput v2, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    .line 195
    iput v1, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    .line 196
    if-nez v0, :cond_30

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitsLeft()I

    move-result v6

    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x1

    if-lt v6, v7, :cond_30

    :goto_2d
    return v4

    .end local v0    # "hitLimit":Z
    :cond_2e
    move v0, v5

    .line 193
    goto :goto_1d

    .restart local v0    # "hitLimit":Z
    :cond_30
    move v4, v5

    .line 196
    goto :goto_2d
.end method

.method public getPosition()I
    .registers 3

    .prologue
    .line 89
    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public readBit()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 124
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public readBits(I)I
    .registers 12
    .param p1, "numBits"    # I

    .prologue
    const/16 v9, 0x8

    .line 134
    if-nez p1, :cond_6

    .line 135
    const/4 v3, 0x0

    .line 177
    :goto_5
    return v3

    .line 138
    :cond_6
    const/4 v3, 0x0

    .line 141
    .local v3, "returnValue":I
    div-int/lit8 v4, p1, 0x8

    .line 142
    .local v4, "wholeBytes":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v4, :cond_42

    .line 144
    iget v6, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    if-eqz v6, :cond_3b

    .line 145
    iget-object v6, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->data:[B

    iget v7, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    iget v7, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    shl-int/2addr v6, v7

    iget-object v7, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->data:[B

    iget v8, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v8, v8, 0x1

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    iget v8, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    rsub-int/lit8 v8, v8, 0x8

    ushr-int/2addr v7, v8

    or-int v0, v6, v7

    .line 150
    .local v0, "byteValue":I
    :goto_2c
    add-int/lit8 p1, p1, -0x8

    .line 151
    and-int/lit16 v6, v0, 0xff

    shl-int/2addr v6, p1

    or-int/2addr v3, v6

    .line 152
    iget v6, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 148
    .end local v0    # "byteValue":I
    :cond_3b
    iget-object v6, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->data:[B

    iget v7, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    aget-byte v0, v6, v7

    .restart local v0    # "byteValue":I
    goto :goto_2c

    .line 156
    .end local v0    # "byteValue":I
    :cond_42
    if-lez p1, :cond_75

    .line 157
    iget v6, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    add-int v2, v6, p1

    .line 158
    .local v2, "nextBit":I
    const/16 v6, 0xff

    rsub-int/lit8 v7, p1, 0x8

    shr-int/2addr v6, v7

    int-to-byte v5, v6

    .line 160
    .local v5, "writeMask":B
    if-le v2, v9, :cond_79

    .line 162
    iget-object v6, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->data:[B

    iget v7, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v2, -0x8

    shl-int/2addr v6, v7

    iget-object v7, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->data:[B

    iget v8, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v8, v8, 0x1

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    rsub-int/lit8 v8, v2, 0x10

    shr-int/2addr v7, v8

    or-int/2addr v6, v7

    and-int/2addr v6, v5

    or-int/2addr v3, v6

    .line 164
    iget v6, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    .line 173
    :cond_71
    :goto_71
    rem-int/lit8 v6, v2, 0x8

    iput v6, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    .line 176
    .end local v2    # "nextBit":I
    .end local v5    # "writeMask":B
    :cond_75
    invoke-direct {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->assertValidOffset()V

    goto :goto_5

    .line 167
    .restart local v2    # "nextBit":I
    .restart local v5    # "writeMask":B
    :cond_79
    iget-object v6, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->data:[B

    iget v7, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    rsub-int/lit8 v7, v2, 0x8

    shr-int/2addr v6, v7

    and-int/2addr v6, v5

    or-int/2addr v3, v6

    .line 168
    if-ne v2, v9, :cond_71

    .line 169
    iget v6, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    goto :goto_71
.end method

.method public readSignedExpGolombCodedInt()I
    .registers 4

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readExpGolombCodeNum()I

    move-result v0

    .line 215
    .local v0, "codeNum":I
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_f

    const/4 v1, -0x1

    :goto_9
    add-int/lit8 v2, v0, 0x1

    div-int/lit8 v2, v2, 0x2

    mul-int/2addr v1, v2

    return v1

    :cond_f
    const/4 v1, 0x1

    goto :goto_9
.end method

.method public readUnsignedExpGolombCodedInt()I
    .registers 2

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readExpGolombCodeNum()I

    move-result v0

    return v0
.end method

.method public reset([B)V
    .registers 3
    .param p1, "data"    # [B

    .prologue
    .line 60
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->reset([BI)V

    .line 61
    return-void
.end method

.method public reset([BI)V
    .registers 4
    .param p1, "data"    # [B
    .param p2, "limit"    # I

    .prologue
    const/4 v0, 0x0

    .line 70
    iput-object p1, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->data:[B

    .line 71
    iput v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    .line 72
    iput v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    .line 73
    iput p2, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteLimit:I

    .line 74
    return-void
.end method

.method public setPosition(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 98
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    .line 99
    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    sub-int v0, p1, v0

    iput v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    .line 100
    invoke-direct {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->assertValidOffset()V

    .line 101
    return-void
.end method

.method public skipBits(I)V
    .registers 4
    .param p1, "n"    # I

    .prologue
    .line 109
    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    div-int/lit8 v1, p1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    .line 110
    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    rem-int/lit8 v1, p1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    .line 111
    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_1f

    .line 112
    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    .line 113
    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    .line 115
    :cond_1f
    invoke-direct {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->assertValidOffset()V

    .line 116
    return-void
.end method
