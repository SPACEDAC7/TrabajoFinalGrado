.class final Lcom/google/ads/interactivemedia/v3/a/c/d/i;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/a/c/d/i$c;,
        Lcom/google/ads/interactivemedia/v3/a/c/d/i$d;,
        Lcom/google/ads/interactivemedia/v3/a/c/d/i$b;,
        Lcom/google/ads/interactivemedia/v3/a/c/d/i$a;
    }
.end annotation


# direct methods
.method public static a(I)I
    .registers 2

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    :goto_1
    if-lez p0, :cond_8

    .line 41
    add-int/lit8 v0, v0, 0x1

    .line 42
    ushr-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 44
    :cond_8
    return v0
.end method

.method private static a(JJ)J
    .registers 10

    .prologue
    .line 401
    long-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L

    long-to-double v4, p2

    div-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public static a(Lcom/google/ads/interactivemedia/v3/a/f/m;)Lcom/google/ads/interactivemedia/v3/a/c/d/i$d;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/r;
        }
    .end annotation

    .prologue
    .line 59
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/d/i;->a(ILcom/google/ads/interactivemedia/v3/a/f/m;Z)Z

    .line 61
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->l()J

    move-result-wide v1

    .line 62
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v3

    .line 63
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->l()J

    move-result-wide v4

    .line 64
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->n()I

    move-result v6

    .line 65
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->n()I

    move-result v7

    .line 66
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->n()I

    move-result v8

    .line 68
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v0

    .line 69
    const-wide/high16 v10, 0x4000000000000000L

    and-int/lit8 v9, v0, 0xf

    int-to-double v12, v9

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-int v9, v10

    .line 70
    const-wide/high16 v10, 0x4000000000000000L

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    int-to-double v12, v0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-int v10, v10

    .line 72
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_50

    const/4 v11, 0x1

    .line 74
    :goto_40
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c()I

    move-result v12

    invoke-static {v0, v12}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v12

    .line 76
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/d/i$d;

    invoke-direct/range {v0 .. v12}, Lcom/google/ads/interactivemedia/v3/a/c/d/i$d;-><init>(JIJIIIIIZ[B)V

    return-object v0

    .line 72
    :cond_50
    const/4 v11, 0x0

    goto :goto_40
.end method

.method private static a(ILcom/google/ads/interactivemedia/v3/a/c/d/g;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/r;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v1, 0x1

    const/16 v8, 0x8

    const/4 v3, 0x0

    .line 210
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->a(I)I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    move v4, v3

    .line 211
    :goto_d
    if-ge v4, v5, :cond_92

    .line 212
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->a(I)I

    move-result v0

    .line 213
    packed-switch v0, :pswitch_data_94

    .line 246
    const-string v2, "VorbisUtil"

    const/16 v6, 0x34

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "mapping type other than 0 not supported: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_32
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_d

    .line 216
    :pswitch_36
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->a()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 217
    invoke-virtual {p1, v9}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 222
    :goto_42
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->a()Z

    move-result v2

    if-eqz v2, :cond_68

    .line 223
    invoke-virtual {p1, v8}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->a(I)I

    move-result v2

    add-int/lit8 v6, v2, 0x1

    move v2, v3

    .line 224
    :goto_4f
    if-ge v2, v6, :cond_68

    .line 225
    add-int/lit8 v7, p0, -0x1

    invoke-static {v7}, Lcom/google/ads/interactivemedia/v3/a/c/d/i;->a(I)I

    move-result v7

    invoke-virtual {p1, v7}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->b(I)V

    .line 226
    add-int/lit8 v7, p0, -0x1

    invoke-static {v7}, Lcom/google/ads/interactivemedia/v3/a/c/d/i;->a(I)I

    move-result v7

    invoke-virtual {p1, v7}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->b(I)V

    .line 224
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    :cond_66
    move v0, v1

    .line 219
    goto :goto_42

    .line 231
    :cond_68
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->a(I)I

    move-result v2

    if-eqz v2, :cond_78

    .line 232
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string/jumbo v1, "to reserved bits must be zero after mapping coupling steps"

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_78
    if-le v0, v1, :cond_83

    move v2, v3

    .line 235
    :goto_7b
    if-ge v2, p0, :cond_83

    .line 236
    invoke-virtual {p1, v9}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->b(I)V

    .line 235
    add-int/lit8 v2, v2, 0x1

    goto :goto_7b

    :cond_83
    move v2, v3

    .line 239
    :goto_84
    if-ge v2, v0, :cond_32

    .line 240
    invoke-virtual {p1, v8}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->b(I)V

    .line 241
    invoke-virtual {p1, v8}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->b(I)V

    .line 242
    invoke-virtual {p1, v8}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->b(I)V

    .line 239
    add-int/lit8 v2, v2, 0x1

    goto :goto_84

    .line 249
    :cond_92
    return-void

    .line 213
    nop

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_36
    .end packed-switch
.end method

.method public static a(ILcom/google/ads/interactivemedia/v3/a/f/m;Z)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/r;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 129
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v1

    if-eq v1, p0, :cond_2a

    .line 130
    if-eqz p2, :cond_a

    .line 149
    :cond_9
    :goto_9
    return v0

    .line 133
    :cond_a
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string v2, "expected header type "

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_20
    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_24
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_20

    .line 137
    :cond_2a
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v1

    const/16 v2, 0x76

    if-ne v1, v2, :cond_5a

    .line 138
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v1

    const/16 v2, 0x6f

    if-ne v1, v2, :cond_5a

    .line 139
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_5a

    .line 140
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v1

    const/16 v2, 0x62

    if-ne v1, v2, :cond_5a

    .line 141
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v1

    const/16 v2, 0x69

    if-ne v1, v2, :cond_5a

    .line 142
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v1

    const/16 v2, 0x73

    if-eq v1, v2, :cond_64

    .line 143
    :cond_5a
    if-nez p2, :cond_9

    .line 146
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string v1, "expected characters \'vorbis\'"

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_64
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/a/c/d/g;)[Lcom/google/ads/interactivemedia/v3/a/c/d/i$c;
    .registers 10

    .prologue
    const/16 v8, 0x10

    .line 196
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->a(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 197
    new-array v2, v1, [Lcom/google/ads/interactivemedia/v3/a/c/d/i$c;

    .line 198
    const/4 v0, 0x0

    :goto_c
    if-ge v0, v1, :cond_2a

    .line 199
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->a()Z

    move-result v3

    .line 200
    invoke-virtual {p0, v8}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->a(I)I

    move-result v4

    .line 201
    invoke-virtual {p0, v8}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->a(I)I

    move-result v5

    .line 202
    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->a(I)I

    move-result v6

    .line 203
    new-instance v7, Lcom/google/ads/interactivemedia/v3/a/c/d/i$c;

    invoke-direct {v7, v3, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/a/c/d/i$c;-><init>(ZIII)V

    aput-object v7, v2, v0

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 205
    :cond_2a
    return-object v2
.end method

.method public static a(Lcom/google/ads/interactivemedia/v3/a/f/m;I)[Lcom/google/ads/interactivemedia/v3/a/c/d/i$c;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/r;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 167
    const/4 v1, 0x5

    invoke-static {v1, p0, v0}, Lcom/google/ads/interactivemedia/v3/a/c/d/i;->a(ILcom/google/ads/interactivemedia/v3/a/f/m;Z)Z

    .line 169
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 171
    new-instance v3, Lcom/google/ads/interactivemedia/v3/a/c/d/g;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    invoke-direct {v3, v1}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;-><init>([B)V

    .line 172
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v3, v1}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->b(I)V

    move v1, v0

    .line 174
    :goto_1c
    if-ge v1, v2, :cond_24

    .line 175
    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/a/c/d/i;->d(Lcom/google/ads/interactivemedia/v3/a/c/d/g;)Lcom/google/ads/interactivemedia/v3/a/c/d/i$a;

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 178
    :cond_24
    const/4 v1, 0x6

    invoke-virtual {v3, v1}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->a(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 179
    :goto_2b
    if-ge v0, v1, :cond_40

    .line 180
    const/16 v2, 0x10

    invoke-virtual {v3, v2}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->a(I)I

    move-result v2

    if-eqz v2, :cond_3d

    .line 181
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string v1, "placeholder of time domain transforms not zeroed out"

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 184
    :cond_40
    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/a/c/d/i;->c(Lcom/google/ads/interactivemedia/v3/a/c/d/g;)V

    .line 185
    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/a/c/d/i;->b(Lcom/google/ads/interactivemedia/v3/a/c/d/g;)V

    .line 186
    invoke-static {p1, v3}, Lcom/google/ads/interactivemedia/v3/a/c/d/i;->a(ILcom/google/ads/interactivemedia/v3/a/c/d/g;)V

    .line 188
    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/a/c/d/i;->a(Lcom/google/ads/interactivemedia/v3/a/c/d/g;)[Lcom/google/ads/interactivemedia/v3/a/c/d/i$c;

    move-result-object v0

    .line 189
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->a()Z

    move-result v1

    if-nez v1, :cond_5b

    .line 190
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string v1, "framing bit after modes not set as expected"

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_5b
    return-object v0
.end method

.method public static b(Lcom/google/ads/interactivemedia/v3/a/f/m;)Lcom/google/ads/interactivemedia/v3/a/c/d/i$b;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/r;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 92
    const/4 v1, 0x3

    invoke-static {v1, p0, v0}, Lcom/google/ads/interactivemedia/v3/a/c/d/i;->a(ILcom/google/ads/interactivemedia/v3/a/f/m;Z)Z

    .line 95
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->l()J

    move-result-wide v2

    long-to-int v1, v2

    .line 97
    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->e(I)Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xb

    .line 100
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->l()J

    move-result-wide v4

    .line 101
    long-to-int v3, v4

    new-array v3, v3, [Ljava/lang/String;

    .line 102
    add-int/lit8 v1, v1, 0x4

    .line 103
    :goto_1d
    int-to-long v6, v0

    cmp-long v6, v6, v4

    if-gez v6, :cond_39

    .line 104
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->l()J

    move-result-wide v6

    long-to-int v6, v6

    .line 105
    add-int/lit8 v1, v1, 0x4

    .line 106
    invoke-virtual {p0, v6}, Lcom/google/ads/interactivemedia/v3/a/f/m;->e(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v0

    .line 107
    aget-object v6, v3, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v1, v6

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 109
    :cond_39
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_49

    .line 110
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string v1, "framing bit expected to be set"

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_49
    add-int/lit8 v0, v1, 0x1

    .line 113
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/c/d/i$b;

    invoke-direct {v1, v2, v3, v0}, Lcom/google/ads/interactivemedia/v3/a/c/d/i$b;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    return-object v1
.end method

.method private static b(Lcom/google/ads/interactivemedia/v3/a/c/d/g;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/r;
        }
    .end annotation

    .prologue
    const/4 v11, 0x6

    const/16 v10, 0x18

    const/16 v9, 0x8

    const/4 v1, 0x0

    .line 252
    invoke-virtual {p0, v11}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->a(I)I

    move-result v0

    add-int/lit8 v4, v0, 0x1

    move v3, v1

    .line 253
    :goto_d
    if-ge v3, v4, :cond_6b

    .line 254
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->a(I)I

    move-result v0

    .line 255
    const/4 v2, 0x2

    if-le v0, v2, :cond_20

    .line 256
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    const-string v1, "residueType greater than 2 is not decodable"

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_20
    invoke-virtual {p0, v10}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->b(I)V

    .line 259
    invoke-virtual {p0, v10}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->b(I)V

    .line 260
    invoke-virtual {p0, v10}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->b(I)V

    .line 261
    invoke-virtual {p0, v11}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->a(I)I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    .line 262
    invoke-virtual {p0, v9}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->b(I)V

    .line 263
    new-array v6, v5, [I

    move v2, v1

    .line 264
    :goto_35
    if-ge v2, v5, :cond_50

    .line 266
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->a(I)I

    move-result v7

    .line 267
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->a()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 268
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->a(I)I

    move-result v0

    .line 270
    :goto_47
    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v7

    aput v0, v6, v2

    .line 264
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_35

    :cond_50
    move v2, v1

    .line 272
    :goto_51
    if-ge v2, v5, :cond_67

    move v0, v1

    .line 273
    :goto_54
    if-ge v0, v9, :cond_63

    .line 274
    aget v7, v6, v2

    const/4 v8, 0x1

    shl-int/2addr v8, v0

    and-int/2addr v7, v8

    if-eqz v7, :cond_60

    .line 275
    invoke-virtual {p0, v9}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->b(I)V

    .line 273
    :cond_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    .line 272
    :cond_63
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_51

    .line 253
    :cond_67
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_d

    .line 281
    :cond_6b
    return-void

    :cond_6c
    move v0, v1

    goto :goto_47
.end method

.method private static c(Lcom/google/ads/interactivemedia/v3/a/c/d/g;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/r;
        }
    .end annotation

    .prologue
    const/4 v14, 0x2

    const/16 v13, 0x10

    const/4 v12, 0x4

    const/16 v11, 0x8

    const/4 v1, 0x0

    .line 284
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->a(I)I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    move v4, v1

    .line 285
    :goto_f
    if-ge v4, v5, :cond_b5

    .line 286
    invoke-virtual {p0, v13}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->a(I)I

    move-result v0

    .line 287
    packed-switch v0, :pswitch_data_b6

    .line 332
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/r;

    const/16 v2, 0x34

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "floor type greater than 1 not decodable: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v1

    .line 289
    :pswitch_33
    invoke-virtual {p0, v11}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->b(I)V

    .line 290
    invoke-virtual {p0, v13}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->b(I)V

    .line 291
    invoke-virtual {p0, v13}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->b(I)V

    .line 292
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->b(I)V

    .line 293
    invoke-virtual {p0, v11}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->b(I)V

    .line 294
    invoke-virtual {p0, v12}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->a(I)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    move v0, v1

    .line 295
    :goto_4a
    if-ge v0, v2, :cond_b0

    .line 296
    invoke-virtual {p0, v11}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->b(I)V

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 300
    :pswitch_52
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->a(I)I

    move-result v6

    .line 301
    const/4 v0, -0x1

    .line 302
    new-array v7, v6, [I

    move v2, v1

    .line 303
    :goto_5b
    if-ge v2, v6, :cond_6c

    .line 304
    invoke-virtual {p0, v12}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->a(I)I

    move-result v3

    aput v3, v7, v2

    .line 305
    aget v3, v7, v2

    if-le v3, v0, :cond_69

    .line 306
    aget v0, v7, v2

    .line 303
    :cond_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    .line 309
    :cond_6c
    add-int/lit8 v0, v0, 0x1

    new-array v8, v0, [I

    move v0, v1

    .line 310
    :goto_71
    array-length v2, v8

    if-ge v0, v2, :cond_94

    .line 311
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->a(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    aput v2, v8, v0

    .line 312
    invoke-virtual {p0, v14}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->a(I)I

    move-result v3

    .line 313
    if-lez v3, :cond_86

    .line 314
    invoke-virtual {p0, v11}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->b(I)V

    :cond_86
    move v2, v1

    .line 316
    :goto_87
    const/4 v9, 0x1

    shl-int/2addr v9, v3

    if-ge v2, v9, :cond_91

    .line 317
    invoke-virtual {p0, v11}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->b(I)V

    .line 316
    add-int/lit8 v2, v2, 0x1

    goto :goto_87

    .line 310
    :cond_91
    add-int/lit8 v0, v0, 0x1

    goto :goto_71

    .line 320
    :cond_94
    invoke-virtual {p0, v14}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->b(I)V

    .line 321
    invoke-virtual {p0, v12}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->a(I)I

    move-result v9

    move v0, v1

    move v2, v1

    move v3, v1

    .line 323
    :goto_9e
    if-ge v2, v6, :cond_b0

    .line 324
    aget v10, v7, v2

    .line 325
    aget v10, v8, v10

    add-int/2addr v3, v10

    .line 326
    :goto_a5
    if-ge v0, v3, :cond_ad

    .line 327
    invoke-virtual {p0, v9}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->b(I)V

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_a5

    .line 323
    :cond_ad
    add-int/lit8 v2, v2, 0x1

    goto :goto_9e

    .line 285
    :cond_b0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_f

    .line 335
    :cond_b5
    return-void

    .line 287
    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_33
        :pswitch_52
    .end packed-switch
.end method

.method private static d(Lcom/google/ads/interactivemedia/v3/a/c/d/g;)Lcom/google/ads/interactivemedia/v3/a/c/d/i$a;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/r;
        }
    .end annotation

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x2

    const/4 v8, 0x5

    const/4 v12, 0x1

    const/4 v0, 0x0

    .line 338
    const/16 v1, 0x18

    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->a(I)I

    move-result v1

    const v2, 0x564342

    if-eq v1, v2, :cond_2f

    .line 339
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    .line 340
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->b()I

    move-result v1

    const/16 v2, 0x42

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "expected code book to start with [0x56, 0x43, 0x42] at "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_2f
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->a(I)I

    move-result v1

    .line 343
    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->a(I)I

    move-result v2

    .line 344
    new-array v3, v2, [J

    .line 346
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->a()Z

    move-result v5

    .line 347
    if-nez v5, :cond_6d

    .line 348
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->a()Z

    move-result v4

    .line 349
    :goto_47
    array-length v6, v3

    if-ge v0, v6, :cond_95

    .line 350
    if-eqz v4, :cond_63

    .line 351
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->a()Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 352
    invoke-virtual {p0, v8}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->a(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v6, v6

    aput-wide v6, v3, v0

    .line 349
    :goto_5b
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 354
    :cond_5e
    const-wide/16 v6, 0x0

    aput-wide v6, v3, v0

    goto :goto_5b

    .line 357
    :cond_63
    invoke-virtual {p0, v8}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->a(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v6, v6

    aput-wide v6, v3, v0

    goto :goto_5b

    .line 361
    :cond_6d
    invoke-virtual {p0, v8}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->a(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move v6, v4

    move v4, v0

    .line 362
    :goto_75
    array-length v7, v3

    if-ge v4, v7, :cond_95

    .line 363
    sub-int v7, v2, v4

    invoke-static {v7}, Lcom/google/ads/interactivemedia/v3/a/c/d/i;->a(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->a(I)I

    move-result v9

    move v7, v0

    .line 364
    :goto_83
    if-ge v7, v9, :cond_92

    array-length v8, v3

    if-ge v4, v8, :cond_92

    .line 365
    int-to-long v10, v6

    aput-wide v10, v3, v4

    .line 364
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v4, v7, 0x1

    move v7, v4

    move v4, v8

    goto :goto_83

    .line 367
    :cond_92
    add-int/lit8 v6, v6, 0x1

    .line 368
    goto :goto_75

    .line 371
    :cond_95
    invoke-virtual {p0, v14}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->a(I)I

    move-result v4

    .line 372
    if-le v4, v13, :cond_b6

    .line 373
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/r;

    const/16 v1, 0x35

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "lookup type greater than 2 not decodable: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/r;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_b6
    if-eq v4, v12, :cond_ba

    if-ne v4, v13, :cond_dd

    .line 375
    :cond_ba
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->b(I)V

    .line 376
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->b(I)V

    .line 377
    invoke-virtual {p0, v14}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 378
    invoke-virtual {p0, v12}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->b(I)V

    .line 380
    if-ne v4, v12, :cond_e6

    .line 381
    if-eqz v1, :cond_e3

    .line 382
    int-to-long v6, v2

    int-to-long v8, v1

    invoke-static {v6, v7, v8, v9}, Lcom/google/ads/interactivemedia/v3/a/c/d/i;->a(JJ)J

    move-result-wide v6

    .line 392
    :goto_d7
    int-to-long v8, v0

    mul-long/2addr v6, v8

    long-to-int v0, v6

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/c/d/g;->b(I)V

    .line 394
    :cond_dd
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/d/i$a;

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/a/c/d/i$a;-><init>(II[JIZ)V

    return-object v0

    .line 385
    :cond_e3
    const-wide/16 v6, 0x0

    goto :goto_d7

    .line 389
    :cond_e6
    mul-int v6, v2, v1

    int-to-long v6, v6

    goto :goto_d7
.end method
