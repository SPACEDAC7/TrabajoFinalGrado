.class public Lcom/bumptech/glide/load/data/ExifOrientationStream;
.super Ljava/io/FilterInputStream;
.source "ExifOrientationStream.java"


# static fields
.field private static final EXIF_SEGMENT:[B

.field private static final ORIENTATION_POSITION:I

.field private static final SEGMENT_LENGTH:I

.field private static final SEGMENT_START_POSITION:I = 0x2


# instance fields
.field private final orientation:B

.field private position:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const/16 v0, 0x1d

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    sput-object v0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->EXIF_SEGMENT:[B

    .line 60
    sget-object v0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->EXIF_SEGMENT:[B

    array-length v0, v0

    sput v0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->SEGMENT_LENGTH:I

    .line 61
    sget v0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->SEGMENT_LENGTH:I

    add-int/lit8 v0, v0, 0x2

    sput v0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->ORIENTATION_POSITION:I

    return-void

    .line 17
    nop

    :array_16
    .array-data 1
        -0x1t
        -0x1ft
        0x0t
        0x1ct
        0x45t
        0x78t
        0x69t
        0x66t
        0x0t
        0x0t
        0x4dt
        0x4dt
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x8t
        0x0t
        0x1t
        0x1t
        0x12t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "orientation"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 67
    const/4 v0, -0x1

    if-lt p2, v0, :cond_a

    const/16 v0, 0x8

    if-le p2, v0, :cond_23

    .line 68
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot add invalid orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_23
    int-to-byte v0, p2

    iput-byte v0, p0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->orientation:B

    .line 71
    return-void
.end method


# virtual methods
.method public mark(I)V
    .registers 3
    .param p1, "readlimit"    # I

    .prologue
    .line 80
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    iget v1, p0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_b

    iget v1, p0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    sget v2, Lcom/bumptech/glide/load/data/ExifOrientationStream;->ORIENTATION_POSITION:I

    if-le v1, v2, :cond_19

    .line 87
    :cond_b
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 93
    .local v0, "result":I
    :goto_f
    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    .line 94
    iget v1, p0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    .line 96
    :cond_18
    return v0

    .line 88
    .end local v0    # "result":I
    :cond_19
    iget v1, p0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    sget v2, Lcom/bumptech/glide/load/data/ExifOrientationStream;->ORIENTATION_POSITION:I

    if-ne v1, v2, :cond_22

    .line 89
    iget-byte v0, p0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->orientation:B

    .restart local v0    # "result":I
    goto :goto_f

    .line 91
    .end local v0    # "result":I
    :cond_22
    sget-object v1, Lcom/bumptech/glide/load/data/ExifOrientationStream;->EXIF_SEGMENT:[B

    iget v2, p0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    add-int/lit8 v2, v2, -0x2

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .restart local v0    # "result":I
    goto :goto_f
.end method

.method public read([BII)I
    .registers 7
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    iget v1, p0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    sget v2, Lcom/bumptech/glide/load/data/ExifOrientationStream;->ORIENTATION_POSITION:I

    if-le v1, v2, :cond_12

    .line 103
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 114
    .local v0, "read":I
    :goto_a
    if-lez v0, :cond_11

    .line 115
    iget v1, p0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    .line 117
    :cond_11
    return v0

    .line 104
    .end local v0    # "read":I
    :cond_12
    iget v1, p0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    sget v2, Lcom/bumptech/glide/load/data/ExifOrientationStream;->ORIENTATION_POSITION:I

    if-ne v1, v2, :cond_1e

    .line 105
    iget-byte v1, p0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->orientation:B

    aput-byte v1, p1, p2

    .line 106
    const/4 v0, 0x1

    .restart local v0    # "read":I
    goto :goto_a

    .line 107
    .end local v0    # "read":I
    :cond_1e
    iget v1, p0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2c

    .line 108
    iget v1, p0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    rsub-int/lit8 v1, v1, 0x2

    invoke-super {p0, p1, p2, v1}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .restart local v0    # "read":I
    goto :goto_a

    .line 110
    .end local v0    # "read":I
    :cond_2c
    sget v1, Lcom/bumptech/glide/load/data/ExifOrientationStream;->ORIENTATION_POSITION:I

    iget v2, p0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    sub-int/2addr v1, v2

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 111
    .restart local v0    # "read":I
    sget-object v1, Lcom/bumptech/glide/load/data/ExifOrientationStream;->EXIF_SEGMENT:[B

    iget v2, p0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    add-int/lit8 v2, v2, -0x2

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_a
.end method

.method public reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public skip(J)J
    .registers 8
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v0

    .line 123
    .local v0, "skipped":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_11

    .line 124
    iget v2, p0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    .line 126
    :cond_11
    return-wide v0
.end method
