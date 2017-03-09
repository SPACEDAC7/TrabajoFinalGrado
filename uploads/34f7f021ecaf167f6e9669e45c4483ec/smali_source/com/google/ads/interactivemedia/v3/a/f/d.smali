.class public final Lcom/google/ads/interactivemedia/v3/a/f/d;
.super Ljava/lang/Object;
.source "IMASDK"


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I

.field private static final d:Lcom/google/ads/interactivemedia/v3/a/f/l;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x10

    .line 29
    new-array v0, v1, [I

    fill-array-data v0, :array_22

    sput-object v0, Lcom/google/ads/interactivemedia/v3/a/f/d;->a:[I

    .line 35
    new-array v0, v1, [I

    fill-array-data v0, :array_46

    sput-object v0, Lcom/google/ads/interactivemedia/v3/a/f/d;->b:[I

    .line 41
    const/16 v0, 0x1d

    new-array v0, v0, [I

    fill-array-data v0, :array_6a

    sput-object v0, Lcom/google/ads/interactivemedia/v3/a/f/d;->c:[I

    .line 45
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/a/f/l;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/a/f/d;->d:Lcom/google/ads/interactivemedia/v3/a/f/l;

    return-void

    .line 29
    nop

    :array_22
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x6
        0x6
        0x6
        0x7
        0x8
        0x8
    .end array-data

    .line 35
    :array_46
    .array-data 4
        -0x1
        0x1f40
        0x3e80
        0x7d00
        -0x1
        -0x1
        0x2b11
        0x5622
        0xac44
        -0x1
        -0x1
        0x2ee0
        0x5dc0
        0xbb80
        -0x1
        -0x1
    .end array-data

    .line 41
    :array_6a
    .array-data 4
        0x40
        0x70
        0x80
        0xc0
        0xe0
        0x100
        0x180
        0x1c0
        0x200
        0x280
        0x300
        0x380
        0x400
        0x480
        0x500
        0x600
        0x780
        0x800
        0x900
        0xa00
        0xa80
        0xb00
        0xb07
        0xb80
        0xc00
        0xf00
        0x1000
        0x1800
        0x1e00
    .end array-data
.end method

.method public static a(Ljava/nio/ByteBuffer;)I
    .registers 3

    .prologue
    .line 95
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 96
    add-int/lit8 v1, v0, 0x4

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x6

    add-int/lit8 v0, v0, 0x5

    .line 97
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xfc

    shr-int/lit8 v0, v0, 0x2

    or-int/2addr v0, v1

    .line 98
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x20

    return v0
.end method

.method public static a([B)I
    .registers 3

    .prologue
    .line 85
    const/4 v0, 0x4

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x6

    const/4 v1, 0x5

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xfc

    shr-int/lit8 v1, v1, 0x2

    or-int/2addr v0, v1

    .line 86
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x20

    return v0
.end method

.method public static a([BLjava/lang/String;JLjava/lang/String;)Lcom/google/ads/interactivemedia/v3/a/p;
    .registers 15

    .prologue
    const/4 v3, -0x1

    .line 61
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/f/d;->d:Lcom/google/ads/interactivemedia/v3/a/f/l;

    .line 62
    invoke-virtual {v0, p0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->a([B)V

    .line 63
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 64
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c(I)I

    move-result v1

    .line 65
    sget-object v2, Lcom/google/ads/interactivemedia/v3/a/f/d;->a:[I

    aget v1, v2, v1

    .line 66
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c(I)I

    move-result v2

    .line 67
    sget-object v4, Lcom/google/ads/interactivemedia/v3/a/f/d;->b:[I

    aget v7, v4, v2

    .line 68
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c(I)I

    move-result v2

    .line 69
    sget-object v4, Lcom/google/ads/interactivemedia/v3/a/f/d;->c:[I

    array-length v4, v4

    if-lt v2, v4, :cond_42

    move v2, v3

    .line 71
    :goto_28
    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 72
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c(I)I

    move-result v0

    if-lez v0, :cond_4b

    const/4 v0, 0x1

    :goto_35
    add-int v6, v1, v0

    .line 73
    const-string v1, "audio/vnd.dts"

    const/4 v8, 0x0

    move-object v0, p1

    move-wide v4, p2

    move-object v9, p4

    invoke-static/range {v0 .. v9}, Lcom/google/ads/interactivemedia/v3/a/p;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/a/p;

    move-result-object v0

    return-object v0

    .line 70
    :cond_42
    sget-object v4, Lcom/google/ads/interactivemedia/v3/a/f/d;->c:[I

    aget v2, v4, v2

    mul-int/lit16 v2, v2, 0x3e8

    div-int/lit8 v2, v2, 0x2

    goto :goto_28

    .line 72
    :cond_4b
    const/4 v0, 0x0

    goto :goto_35
.end method

.method public static b([B)I
    .registers 3

    .prologue
    .line 108
    const/4 v0, 0x5

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x2

    shl-int/lit8 v0, v0, 0xc

    const/4 v1, 0x6

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    const/4 v1, 0x7

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xf0

    shr-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
