.class public final Lcom/google/ads/interactivemedia/v3/a/f/m;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field public a:[B

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    .line 38
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    array-length v0, v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->c:I

    .line 39
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    .line 44
    array-length v0, p1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->c:I

    .line 45
    return-void
.end method

.method public constructor <init>([BI)V
    .registers 3

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    .line 55
    iput p2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->c:I

    .line 56
    return-void
.end method


# virtual methods
.method public a(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 369
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    invoke-direct {v0, v1, v2, p1, p2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 370
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    .line 371
    return-object v0
.end method

.method public a()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    .line 85
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->c:I

    .line 86
    return-void
.end method

.method public a(I)V
    .registers 3

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->e()I

    move-result v0

    if-ge v0, p1, :cond_c

    new-array v0, p1, [B

    :goto_8
    invoke-virtual {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a([BI)V

    .line 66
    return-void

    .line 65
    :cond_c
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    goto :goto_8
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/f/l;I)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 149
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/a/f/l;->a:[B

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a([BII)V

    .line 150
    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/a/f/l;->a(I)V

    .line 151
    return-void
.end method

.method public a([BI)V
    .registers 4

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    .line 76
    iput p2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->c:I

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    .line 78
    return-void
.end method

.method public a([BII)V
    .registers 6

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    .line 161
    return-void
.end method

.method public b()I
    .registers 3

    .prologue
    .line 90
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->c:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public b(I)V
    .registers 3

    .prologue
    .line 104
    if-ltz p1, :cond_e

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    array-length v0, v0

    if-gt p1, v0, :cond_e

    const/4 v0, 0x1

    :goto_8
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->a(Z)V

    .line 105
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->c:I

    .line 106
    return-void

    .line 104
    :cond_e
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public c()I
    .registers 2

    .prologue
    .line 95
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->c:I

    return v0
.end method

.method public c(I)V
    .registers 3

    .prologue
    .line 127
    if-ltz p1, :cond_d

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->c:I

    if-gt p1, v0, :cond_d

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->a(Z)V

    .line 128
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    .line 129
    return-void

    .line 127
    :cond_d
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public d()I
    .registers 2

    .prologue
    .line 110
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    return v0
.end method

.method public d(I)V
    .registers 3

    .prologue
    .line 138
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 139
    return-void
.end method

.method public e()I
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    array-length v0, v0

    goto :goto_5
.end method

.method public e(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 358
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()I
    .registers 4

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public g()I
    .registers 5

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public h()I
    .registers 5

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public i()S
    .registers 5

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public j()I
    .registers 5

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public k()J
    .registers 9

    .prologue
    const-wide/16 v6, 0xff

    .line 223
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    aget-byte v0, v0, v1

    int-to-long v0, v0

    and-long/2addr v0, v6

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public l()J
    .registers 9

    .prologue
    const-wide/16 v6, 0xff

    .line 231
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    aget-byte v0, v0, v1

    int-to-long v0, v0

    and-long/2addr v0, v6

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public m()I
    .registers 5

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public n()I
    .registers 5

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public o()J
    .registers 9

    .prologue
    const-wide/16 v6, 0xff

    .line 255
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    aget-byte v0, v0, v1

    int-to-long v0, v0

    and-long/2addr v0, v6

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public p()J
    .registers 9

    .prologue
    const-wide/16 v6, 0xff

    .line 267
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    aget-byte v0, v0, v1

    int-to-long v0, v0

    and-long/2addr v0, v6

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public q()I
    .registers 5

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 281
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    .line 282
    return v0
.end method

.method public r()I
    .registers 5

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v0

    .line 295
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v1

    .line 296
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v2

    .line 297
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v3

    .line 298
    shl-int/lit8 v0, v0, 0x15

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x7

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    return v0
.end method

.method public s()I
    .registers 5

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v0

    .line 308
    if-gez v0, :cond_21

    .line 309
    new-instance v1, Ljava/lang/IllegalStateException;

    const/16 v2, 0x1d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Top bit not zero: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 311
    :cond_21
    return v0
.end method

.method public t()I
    .registers 5

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->n()I

    move-result v0

    .line 322
    if-gez v0, :cond_21

    .line 323
    new-instance v1, Ljava/lang/IllegalStateException;

    const/16 v2, 0x1d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Top bit not zero: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 325
    :cond_21
    return v0
.end method

.method public u()J
    .registers 6

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->o()J

    move-result-wide v0

    .line 335
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_25

    .line 336
    new-instance v2, Ljava/lang/IllegalStateException;

    const/16 v3, 0x26

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Top bit not zero: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 338
    :cond_25
    return-wide v0
.end method

.method public v()D
    .registers 3

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->o()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public w()J
    .registers 12

    .prologue
    const/4 v5, 0x7

    const/4 v10, 0x6

    const/4 v0, 0x1

    .line 443
    const/4 v1, 0x0

    .line 444
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    move v4, v5

    .line 446
    :goto_c
    if-ltz v4, :cond_22

    .line 447
    shl-int v6, v0, v4

    int-to-long v6, v6

    and-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_43

    .line 448
    if-ge v4, v10, :cond_3f

    .line 449
    shl-int v1, v0, v4

    add-int/lit8 v1, v1, -0x1

    int-to-long v6, v1

    and-long/2addr v2, v6

    .line 450
    rsub-int/lit8 v1, v4, 0x7

    .line 457
    :cond_22
    :goto_22
    if-nez v1, :cond_4d

    .line 458
    new-instance v0, Ljava/lang/NumberFormatException;

    const/16 v1, 0x37

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid UTF-8 sequence first byte: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :cond_3f
    if-ne v4, v5, :cond_22

    move v1, v0

    .line 452
    goto :goto_22

    .line 446
    :cond_43
    add-int/lit8 v4, v4, -0x1

    goto :goto_c

    .line 465
    :cond_46
    shl-long/2addr v2, v10

    and-int/lit8 v4, v4, 0x3f

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 460
    add-int/lit8 v0, v0, 0x1

    :cond_4d
    if-ge v0, v1, :cond_77

    .line 461
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/2addr v5, v0

    aget-byte v4, v4, v5

    .line 462
    and-int/lit16 v5, v4, 0xc0

    const/16 v6, 0x80

    if-eq v5, v6, :cond_46

    .line 463
    new-instance v0, Ljava/lang/NumberFormatException;

    const/16 v1, 0x3e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid UTF-8 sequence continuation byte: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :cond_77
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->b:I

    .line 468
    return-wide v2
.end method
