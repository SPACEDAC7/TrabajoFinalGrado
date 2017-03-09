.class final Lcom/google/ads/interactivemedia/v3/a/c/b/b;
.super Ljava/lang/Object;
.source "IMASDK"


# static fields
.field private static final a:I

.field private static final b:[Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 36
    const-string v0, "ID3"

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/q;->c(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/ads/interactivemedia/v3/a/c/b/b;->a:I

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/nio/charset/Charset;

    const/4 v1, 0x0

    const-string v2, "ISO-8859-1"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "UTF-16LE"

    .line 38
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "UTF-16BE"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/ads/interactivemedia/v3/a/c/b/b;->b:[Ljava/nio/charset/Charset;

    .line 37
    return-void
.end method

.method private static a(ILcom/google/ads/interactivemedia/v3/a/f/m;)Landroid/util/Pair;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/ads/interactivemedia/v3/a/f/m;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x4

    const/4 v1, 0x0

    .line 140
    :goto_5
    if-ne p0, v8, :cond_5e

    .line 141
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v0

    const/4 v2, 0x6

    if-ge v0, v2, :cond_f

    .line 184
    :cond_e
    :goto_e
    return-object v1

    .line 144
    :cond_f
    const/4 v0, 0x3

    const-string v2, "US-ASCII"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    .line 145
    const-string v0, "\u0000\u0000\u0000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 148
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->j()I

    move-result v0

    .line 149
    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v5

    if-gt v0, v5, :cond_e

    .line 152
    const-string v5, "COM"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 178
    :cond_36
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v2

    .line 179
    if-ltz v2, :cond_e

    sget-object v5, Lcom/google/ads/interactivemedia/v3/a/c/b/b;->b:[Ljava/nio/charset/Charset;

    array-length v5, v5

    if-ge v2, v5, :cond_e

    .line 182
    sget-object v5, Lcom/google/ads/interactivemedia/v3/a/c/b/b;->b:[Ljava/nio/charset/Charset;

    aget-object v2, v5, v2

    .line 183
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u0000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 184
    array-length v2, v0

    if-ne v2, v8, :cond_b0

    aget-object v1, v0, v4

    aget-object v0, v0, v3

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    :goto_5c
    move-object v1, v0

    goto :goto_e

    .line 156
    :cond_5e
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v0

    const/16 v2, 0xa

    if-lt v0, v2, :cond_e

    .line 159
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v7, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    .line 160
    const-string v0, "\u0000\u0000\u0000\u0000"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 163
    if-ne p0, v7, :cond_a9

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->r()I

    move-result v0

    .line 164
    :goto_7e
    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-gt v0, v2, :cond_e

    .line 167
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->g()I

    move-result v2

    .line 168
    if-ne p0, v7, :cond_92

    and-int/lit8 v6, v2, 0xc

    if-nez v6, :cond_99

    :cond_92
    const/4 v6, 0x3

    if-ne p0, v6, :cond_ae

    and-int/lit16 v2, v2, 0xc0

    if-eqz v2, :cond_ae

    :cond_99
    move v2, v3

    .line 170
    :goto_9a
    if-nez v2, :cond_a4

    const-string v2, "COMM"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 174
    :cond_a4
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    goto/16 :goto_5

    .line 163
    :cond_a9
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v0

    goto :goto_7e

    :cond_ae
    move v2, v4

    .line 168
    goto :goto_9a

    :cond_b0
    move-object v0, v1

    .line 184
    goto :goto_5c
.end method

.method public static a(Lcom/google/ads/interactivemedia/v3/a/c/f;)Lcom/google/ads/interactivemedia/v3/a/c/i;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xa

    const/4 v2, 0x0

    .line 50
    new-instance v3, Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-direct {v3, v8}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>(I)V

    .line 52
    const/4 v0, 0x0

    move v1, v2

    .line 54
    :goto_a
    iget-object v4, v3, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    invoke-interface {p0, v4, v2, v8}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c([BII)V

    .line 55
    invoke-virtual {v3, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 56
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/m;->j()I

    move-result v4

    sget v5, Lcom/google/ads/interactivemedia/v3/a/c/b/b;->a:I

    if-eq v4, v5, :cond_21

    .line 74
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/a/c/f;->a()V

    .line 75
    invoke-interface {p0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c(I)V

    .line 76
    return-object v0

    .line 60
    :cond_21
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v4

    .line 61
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v5

    .line 62
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v6

    .line 63
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/m;->r()I

    move-result v7

    .line 64
    if-nez v0, :cond_4b

    invoke-static {v4, v5, v6, v7}, Lcom/google/ads/interactivemedia/v3/a/c/b/b;->a(IIII)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 65
    new-array v0, v7, [B

    .line 66
    invoke-interface {p0, v0, v2, v7}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c([BII)V

    .line 67
    new-instance v5, Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-direct {v5, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>([B)V

    invoke-static {v5, v4, v6}, Lcom/google/ads/interactivemedia/v3/a/c/b/b;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;II)Lcom/google/ads/interactivemedia/v3/a/c/i;

    move-result-object v0

    .line 72
    :goto_47
    add-int/lit8 v4, v7, 0xa

    add-int/2addr v1, v4

    .line 73
    goto :goto_a

    .line 69
    :cond_4b
    invoke-interface {p0, v7}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c(I)V

    goto :goto_47
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/a/f/m;II)Lcom/google/ads/interactivemedia/v3/a/c/i;
    .registers 9

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x3

    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 89
    invoke-static {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/a/c/b/b;->b(Lcom/google/ads/interactivemedia/v3/a/f/m;II)Z

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 93
    if-ne p1, v4, :cond_69

    and-int/lit8 v0, p2, 0x40

    if-eqz v0, :cond_69

    .line 94
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v0

    if-ge v0, v3, :cond_19

    move-object v0, v1

    .line 134
    :goto_18
    return-object v0

    .line 97
    :cond_19
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v0

    .line 98
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v2

    if-le v0, v2, :cond_25

    move-object v0, v1

    .line 99
    goto :goto_18

    .line 102
    :cond_25
    if-lt v0, v5, :cond_43

    .line 103
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 104
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v2

    .line 105
    invoke-virtual {p0, v3}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 106
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c()I

    move-result v3

    sub-int v2, v3, v2

    invoke-virtual {p0, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b(I)V

    .line 107
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v2

    if-ge v2, v0, :cond_43

    move-object v0, v1

    .line 108
    goto :goto_18

    .line 111
    :cond_43
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 125
    :cond_46
    :goto_46
    invoke-static {p1, p0}, Lcom/google/ads/interactivemedia/v3/a/c/b/b;->a(ILcom/google/ads/interactivemedia/v3/a/f/m;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_8b

    .line 126
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_46

    .line 127
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 128
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/google/ads/interactivemedia/v3/a/c/i;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/a/c/i;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_46

    goto :goto_18

    .line 112
    :cond_69
    if-ne p1, v3, :cond_46

    and-int/lit8 v0, p2, 0x40

    if-eqz v0, :cond_46

    .line 113
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v0

    if-ge v0, v3, :cond_77

    move-object v0, v1

    .line 114
    goto :goto_18

    .line 116
    :cond_77
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->r()I

    move-result v0

    .line 117
    if-lt v0, v5, :cond_85

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    if-le v0, v2, :cond_87

    :cond_85
    move-object v0, v1

    .line 118
    goto :goto_18

    .line 120
    :cond_87
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    goto :goto_46

    :cond_8b
    move-object v0, v1

    .line 134
    goto :goto_18
.end method

.method private static a([BII)V
    .registers 5

    .prologue
    .line 289
    shr-int/lit8 v0, p2, 0x15

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 290
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0xe

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 291
    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x7

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 292
    add-int/lit8 v0, p1, 0x3

    and-int/lit8 v1, p2, 0x7f

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 293
    return-void
.end method

.method private static a(IIII)Z
    .registers 7

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x2

    .line 81
    const/16 v0, 0xff

    if-eq p1, v0, :cond_27

    if-lt p0, v1, :cond_27

    if-gt p0, v2, :cond_27

    const/high16 v0, 0x300000

    if-gt p3, v0, :cond_27

    if-ne p0, v1, :cond_18

    and-int/lit8 v0, p2, 0x3f

    if-nez v0, :cond_27

    and-int/lit8 v0, p2, 0x40

    if-nez v0, :cond_27

    :cond_18
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1f

    and-int/lit8 v0, p2, 0x1f

    if-nez v0, :cond_27

    :cond_1f
    if-ne p0, v2, :cond_25

    and-int/lit8 v0, p2, 0xf

    if-nez v0, :cond_27

    :cond_25
    const/4 v0, 0x1

    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/a/f/m;Z)Z
    .registers 14

    .prologue
    const/4 v2, 0x1

    const-wide/16 v10, 0x7f

    const/4 v3, 0x0

    .line 216
    invoke-virtual {p0, v3}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 217
    :goto_7
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_67

    .line 218
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v0

    if-nez v0, :cond_17

    move v0, v2

    .line 241
    :goto_16
    return v0

    .line 221
    :cond_17
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->k()J

    move-result-wide v0

    .line 222
    if-nez p1, :cond_44

    .line 224
    const-wide/32 v4, 0x808080

    and-long/2addr v4, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_29

    move v0, v3

    .line 225
    goto :goto_16

    .line 227
    :cond_29
    and-long v4, v0, v10

    const/16 v6, 0x8

    shr-long v6, v0, v6

    and-long/2addr v6, v10

    const/4 v8, 0x7

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    const/16 v6, 0x10

    shr-long v6, v0, v6

    and-long/2addr v6, v10

    const/16 v8, 0xe

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    const/16 v6, 0x18

    shr-long/2addr v0, v6

    and-long/2addr v0, v10

    const/16 v6, 0x15

    shl-long/2addr v0, v6

    or-long/2addr v0, v4

    .line 230
    :cond_44
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-lez v4, :cond_51

    move v0, v3

    .line 231
    goto :goto_16

    .line 233
    :cond_51
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->g()I

    move-result v4

    .line 234
    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_62

    .line 235
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_62

    move v0, v3

    .line 236
    goto :goto_16

    .line 239
    :cond_62
    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    goto :goto_7

    :cond_67
    move v0, v2

    .line 241
    goto :goto_16
.end method

.method private static b(Lcom/google/ads/interactivemedia/v3/a/f/m;Z)V
    .registers 12

    .prologue
    const/4 v4, 0x0

    .line 245
    invoke-virtual {p0, v4}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 246
    iget-object v9, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    .line 247
    :goto_6
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_14

    .line 248
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v0

    if-nez v0, :cond_15

    .line 286
    :cond_14
    return-void

    .line 251
    :cond_15
    if-eqz p1, :cond_6f

    .line 252
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v0

    .line 253
    :goto_1b
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->g()I

    move-result v8

    .line 255
    and-int/lit8 v1, v8, 0x1

    if-eqz v1, :cond_aa

    .line 257
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d()I

    move-result v1

    .line 258
    add-int/lit8 v2, v1, 0x4

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-static {v9, v2, v9, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    add-int/lit8 v1, v0, -0x4

    .line 260
    and-int/lit8 v2, v8, -0x2

    .line 261
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b(I)V

    .line 263
    :goto_3f
    and-int/lit8 v0, v2, 0x2

    if-eqz v0, :cond_a8

    .line 265
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    move v3, v4

    move v5, v0

    .line 267
    :goto_4b
    add-int/lit8 v6, v3, 0x1

    if-ge v6, v1, :cond_74

    .line 268
    add-int/lit8 v6, v0, -0x1

    aget-byte v6, v9, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0xff

    if-ne v6, v7, :cond_61

    aget-byte v6, v9, v0

    if-nez v6, :cond_61

    .line 269
    add-int/lit8 v0, v0, 0x1

    .line 270
    add-int/lit8 v1, v1, -0x1

    .line 272
    :cond_61
    add-int/lit8 v6, v5, 0x1

    add-int/lit8 v7, v0, 0x1

    aget-byte v0, v9, v0

    aput-byte v0, v9, v5

    .line 267
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v5, v6

    move v0, v7

    goto :goto_4b

    .line 252
    :cond_6f
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->r()I

    move-result v0

    goto :goto_1b

    .line 274
    :cond_74
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c()I

    move-result v3

    sub-int v6, v0, v5

    sub-int/2addr v3, v6

    invoke-virtual {p0, v3}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b(I)V

    .line 275
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-static {v9, v0, v9, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    and-int/lit8 v0, v2, -0x3

    .line 278
    :goto_88
    if-ne v0, v8, :cond_8c

    if-eqz p1, :cond_a3

    .line 279
    :cond_8c
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    .line 280
    invoke-static {v9, v2, v1}, Lcom/google/ads/interactivemedia/v3/a/c/b/b;->a([BII)V

    .line 281
    add-int/lit8 v3, v2, 0x4

    shr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    aput-byte v5, v9, v3

    .line 282
    add-int/lit8 v2, v2, 0x5

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v9, v2

    .line 284
    :cond_a3
    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    goto/16 :goto_6

    :cond_a8
    move v0, v2

    goto :goto_88

    :cond_aa
    move v2, v8

    move v1, v0

    goto :goto_3f
.end method

.method private static b(Lcom/google/ads/interactivemedia/v3/a/f/m;II)Z
    .registers 11

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 188
    const/4 v2, 0x4

    if-eq p1, v2, :cond_36

    .line 189
    and-int/lit16 v2, p2, 0x80

    if-eqz v2, :cond_34

    .line 191
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    .line 192
    array-length v2, v3

    move v7, v0

    move v0, v2

    move v2, v7

    .line 193
    :goto_f
    add-int/lit8 v4, v2, 0x1

    if-ge v4, v0, :cond_31

    .line 194
    aget-byte v4, v3, v2

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xff

    if-ne v4, v5, :cond_2e

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, v3, v4

    if-nez v4, :cond_2e

    .line 195
    add-int/lit8 v4, v2, 0x2

    add-int/lit8 v5, v2, 0x1

    sub-int v6, v0, v2

    add-int/lit8 v6, v6, -0x2

    invoke-static {v3, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    add-int/lit8 v0, v0, -0x1

    .line 193
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 199
    :cond_31
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b(I)V

    :cond_34
    :goto_34
    move v0, v1

    .line 211
    :cond_35
    return v0

    .line 203
    :cond_36
    invoke-static {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/c/b/b;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;Z)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 204
    invoke-static {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/c/b/b;->b(Lcom/google/ads/interactivemedia/v3/a/f/m;Z)V

    goto :goto_34

    .line 205
    :cond_40
    invoke-static {p0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/b/b;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;Z)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 206
    invoke-static {p0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/b/b;->b(Lcom/google/ads/interactivemedia/v3/a/f/m;Z)V

    goto :goto_34
.end method
