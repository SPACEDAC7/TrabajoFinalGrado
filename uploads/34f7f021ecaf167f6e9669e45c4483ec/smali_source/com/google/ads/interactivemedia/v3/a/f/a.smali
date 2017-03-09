.class public final Lcom/google/ads/interactivemedia/v3/a/f/a;
.super Ljava/lang/Object;
.source "IMASDK"


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I

.field private static final e:[I

.field private static final f:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v2, 0x13

    const/4 v1, 0x3

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_32

    sput-object v0, Lcom/google/ads/interactivemedia/v3/a/f/a;->a:[I

    .line 41
    new-array v0, v1, [I

    fill-array-data v0, :array_3e

    sput-object v0, Lcom/google/ads/interactivemedia/v3/a/f/a;->b:[I

    .line 45
    new-array v0, v1, [I

    fill-array-data v0, :array_48

    sput-object v0, Lcom/google/ads/interactivemedia/v3/a/f/a;->c:[I

    .line 49
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_52

    sput-object v0, Lcom/google/ads/interactivemedia/v3/a/f/a;->d:[I

    .line 53
    new-array v0, v2, [I

    fill-array-data v0, :array_66

    sput-object v0, Lcom/google/ads/interactivemedia/v3/a/f/a;->e:[I

    .line 58
    new-array v0, v2, [I

    fill-array-data v0, :array_90

    sput-object v0, Lcom/google/ads/interactivemedia/v3/a/f/a;->f:[I

    return-void

    .line 37
    nop

    :array_32
    .array-data 4
        0x1
        0x2
        0x3
        0x6
    .end array-data

    .line 41
    :array_3e
    .array-data 4
        0xbb80
        0xac44
        0x7d00
    .end array-data

    .line 45
    :array_48
    .array-data 4
        0x5dc0
        0x5622
        0x3e80
    .end array-data

    .line 49
    :array_52
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
    .end array-data

    .line 53
    :array_66
    .array-data 4
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
        0x180
        0x1c0
        0x200
        0x240
        0x280
    .end array-data

    .line 58
    :array_90
    .array-data 4
        0x45
        0x57
        0x68
        0x79
        0x8b
        0xae
        0xd0
        0xf3
        0x116
        0x15c
        0x1a1
        0x1e7
        0x22d
        0x2b8
        0x343
        0x3cf
        0x45a
        0x4e5
        0x571
    .end array-data
.end method

.method public static a()I
    .registers 1

    .prologue
    .line 196
    const/16 v0, 0x600

    return v0
.end method

.method private static a(II)I
    .registers 5

    .prologue
    .line 225
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/f/a;->b:[I

    aget v0, v0, p0

    .line 226
    const v1, 0xac44

    if-ne v0, v1, :cond_15

    .line 227
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/f/a;->f:[I

    div-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    rem-int/lit8 v1, p1, 0x2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    .line 233
    :goto_14
    return v0

    .line 229
    :cond_15
    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/f/a;->e:[I

    div-int/lit8 v2, p1, 0x2

    aget v1, v1, v2

    .line 230
    const/16 v2, 0x7d00

    if-ne v0, v2, :cond_22

    .line 231
    mul-int/lit8 v0, v1, 0x6

    goto :goto_14

    .line 233
    :cond_22
    mul-int/lit8 v0, v1, 0x4

    goto :goto_14
.end method

.method public static a(Ljava/nio/ByteBuffer;)I
    .registers 3

    .prologue
    .line 219
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    .line 220
    const/4 v1, 0x3

    if-ne v0, v1, :cond_15

    const/4 v0, 0x6

    .line 221
    :goto_12
    mul-int/lit16 v0, v0, 0x100

    .line 220
    return v0

    .line 221
    :cond_15
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/f/a;->a:[I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x30

    shr-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    goto :goto_12
.end method

.method public static a([B)I
    .registers 3

    .prologue
    const/4 v1, 0x4

    .line 177
    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    .line 178
    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0x3f

    .line 179
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/a;->a(II)I

    move-result v0

    return v0
.end method

.method public static a(Lcom/google/ads/interactivemedia/v3/a/f/l;Ljava/lang/String;JLjava/lang/String;)Lcom/google/ads/interactivemedia/v3/a/p;
    .registers 15

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x1

    const/4 v5, 0x2

    .line 123
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 124
    invoke-virtual {p0, v5}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c(I)I

    move-result v3

    .line 125
    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 126
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c(I)I

    move-result v4

    .line 127
    and-int/lit8 v1, v4, 0x1

    if-eqz v1, :cond_1f

    if-eq v4, v0, :cond_1f

    .line 128
    invoke-virtual {p0, v5}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 130
    :cond_1f
    and-int/lit8 v1, v4, 0x4

    if-eqz v1, :cond_26

    .line 131
    invoke-virtual {p0, v5}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 133
    :cond_26
    if-ne v4, v5, :cond_2b

    .line 134
    invoke-virtual {p0, v5}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 136
    :cond_2b
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b()Z

    move-result v5

    .line 137
    const-string v1, "audio/ac3"

    sget-object v6, Lcom/google/ads/interactivemedia/v3/a/f/a;->d:[I

    aget v4, v6, v4

    if-eqz v5, :cond_47

    .line 138
    :goto_37
    add-int v6, v4, v0

    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/f/a;->b:[I

    aget v7, v0, v3

    const/4 v8, 0x0

    move-object v0, p1

    move v3, v2

    move-wide v4, p2

    move-object v9, p4

    .line 137
    invoke-static/range {v0 .. v9}, Lcom/google/ads/interactivemedia/v3/a/p;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/a/p;

    move-result-object v0

    return-object v0

    .line 138
    :cond_47
    const/4 v0, 0x0

    goto :goto_37
.end method

.method public static a(Lcom/google/ads/interactivemedia/v3/a/f/m;Ljava/lang/String;JLjava/lang/String;)Lcom/google/ads/interactivemedia/v3/a/p;
    .registers 15

    .prologue
    const/4 v2, -0x1

    .line 73
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    .line 74
    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/f/a;->b:[I

    aget v7, v1, v0

    .line 75
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v0

    .line 76
    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/f/a;->d:[I

    and-int/lit8 v3, v0, 0x38

    shr-int/lit8 v3, v3, 0x3

    aget v6, v1, v3

    .line 77
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1f

    .line 78
    add-int/lit8 v6, v6, 0x1

    .line 80
    :cond_1f
    const-string v1, "audio/ac3"

    const/4 v8, 0x0

    move-object v0, p1

    move v3, v2

    move-wide v4, p2

    move-object v9, p4

    invoke-static/range {v0 .. v9}, Lcom/google/ads/interactivemedia/v3/a/p;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/a/p;

    move-result-object v0

    return-object v0
.end method

.method public static b([B)I
    .registers 3

    .prologue
    .line 189
    const/4 v0, 0x2

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static b(Lcom/google/ads/interactivemedia/v3/a/f/l;Ljava/lang/String;JLjava/lang/String;)Lcom/google/ads/interactivemedia/v3/a/p;
    .registers 15

    .prologue
    const/4 v3, 0x3

    const/4 v2, -0x1

    const/4 v1, 0x2

    .line 154
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 156
    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c(I)I

    move-result v0

    .line 157
    if-ne v0, v3, :cond_33

    .line 158
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/f/a;->c:[I

    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c(I)I

    move-result v1

    aget v7, v0, v1

    .line 163
    :goto_16
    invoke-virtual {p0, v3}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c(I)I

    move-result v0

    .line 164
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b()Z

    move-result v3

    .line 165
    const-string v1, "audio/eac3"

    sget-object v4, Lcom/google/ads/interactivemedia/v3/a/f/a;->d:[I

    aget v4, v4, v0

    if-eqz v3, :cond_3b

    .line 166
    const/4 v0, 0x1

    :goto_27
    add-int v6, v4, v0

    const/4 v8, 0x0

    move-object v0, p1

    move v3, v2

    move-wide v4, p2

    move-object v9, p4

    .line 165
    invoke-static/range {v0 .. v9}, Lcom/google/ads/interactivemedia/v3/a/p;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/a/p;

    move-result-object v0

    return-object v0

    .line 160
    :cond_33
    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 161
    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/f/a;->b:[I

    aget v7, v1, v0

    goto :goto_16

    .line 166
    :cond_3b
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public static b(Lcom/google/ads/interactivemedia/v3/a/f/m;Ljava/lang/String;JLjava/lang/String;)Lcom/google/ads/interactivemedia/v3/a/p;
    .registers 15

    .prologue
    const/4 v2, -0x1

    .line 96
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 100
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    .line 101
    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/f/a;->b:[I

    aget v7, v1, v0

    .line 102
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v0

    .line 103
    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/f/a;->d:[I

    and-int/lit8 v3, v0, 0xe

    shr-int/lit8 v3, v3, 0x1

    aget v6, v1, v3

    .line 104
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_23

    .line 105
    add-int/lit8 v6, v6, 0x1

    .line 107
    :cond_23
    const-string v1, "audio/eac3"

    const/4 v8, 0x0

    move-object v0, p1

    move v3, v2

    move-wide v4, p2

    move-object v9, p4

    invoke-static/range {v0 .. v9}, Lcom/google/ads/interactivemedia/v3/a/p;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/a/p;

    move-result-object v0

    return-object v0
.end method

.method public static c([B)I
    .registers 4

    .prologue
    const/4 v2, 0x4

    .line 207
    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    const/4 v0, 0x6

    .line 208
    :goto_b
    mul-int/lit16 v0, v0, 0x100

    .line 207
    return v0

    .line 208
    :cond_e
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/f/a;->a:[I

    aget-byte v1, p0, v2

    and-int/lit8 v1, v1, 0x30

    shr-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    goto :goto_b
.end method
