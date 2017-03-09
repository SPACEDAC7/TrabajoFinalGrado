.class final Lcom/google/ads/interactivemedia/v3/a/c/e/c;
.super Lcom/google/ads/interactivemedia/v3/a/c/e/e;
.source "IMASDK"


# static fields
.field private static final b:[B


# instance fields
.field private final c:Lcom/google/ads/interactivemedia/v3/a/f/l;

.field private final d:Lcom/google/ads/interactivemedia/v3/a/f/m;

.field private final e:Lcom/google/ads/interactivemedia/v3/a/c/m;

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:Z

.field private k:J

.field private l:I

.field private m:J

.field private n:Lcom/google/ads/interactivemedia/v3/a/c/m;

.field private o:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->b:[B

    return-void

    nop

    :array_a
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/a/c/m;Lcom/google/ads/interactivemedia/v3/a/c/m;)V
    .registers 6

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/c/e/e;-><init>(Lcom/google/ads/interactivemedia/v3/a/c/m;)V

    .line 84
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->e:Lcom/google/ads/interactivemedia/v3/a/c/m;

    .line 85
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/a/p;->a()Lcom/google/ads/interactivemedia/v3/a/p;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/p;)V

    .line 86
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/l;

    const/4 v1, 0x7

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/l;-><init>([B)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    .line 87
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/m;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->b:[B

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>([B)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->d:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 88
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->c()V

    .line 89
    return-void
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/a/c/m;JII)V
    .registers 8

    .prologue
    .line 177
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->f:I

    .line 178
    iput p4, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->g:I

    .line 179
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->n:Lcom/google/ads/interactivemedia/v3/a/c/m;

    .line 180
    iput-wide p2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->o:J

    .line 181
    iput p5, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->l:I

    .line 182
    return-void
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/a/f/m;[BI)Z
    .registers 6

    .prologue
    .line 141
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->g:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 142
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->g:I

    invoke-virtual {p1, p2, v1, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a([BII)V

    .line 143
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->g:I

    .line 144
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->g:I

    if-ne v0, p3, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private b(Lcom/google/ads/interactivemedia/v3/a/f/m;)V
    .registers 9

    .prologue
    const/16 v6, 0x200

    const/16 v5, 0x100

    .line 199
    iget-object v2, p1, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    .line 200
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d()I

    move-result v0

    .line 201
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c()I

    move-result v3

    .line 202
    :goto_e
    if-ge v0, v3, :cond_58

    .line 203
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    .line 204
    iget v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->h:I

    if-ne v4, v6, :cond_32

    const/16 v4, 0xf0

    if-lt v0, v4, :cond_32

    const/16 v4, 0xff

    if-eq v0, v4, :cond_32

    .line 205
    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_30

    const/4 v0, 0x1

    :goto_27
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->i:Z

    .line 206
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->e()V

    .line 207
    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 235
    :goto_2f
    return-void

    .line 205
    :cond_30
    const/4 v0, 0x0

    goto :goto_27

    .line 210
    :cond_32
    iget v4, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->h:I

    or-int/2addr v0, v4

    sparse-switch v0, :sswitch_data_5e

    .line 225
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->h:I

    if-eq v0, v5, :cond_5c

    .line 228
    iput v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->h:I

    .line 229
    add-int/lit8 v0, v1, -0x1

    goto :goto_e

    .line 212
    :sswitch_41
    iput v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->h:I

    move v0, v1

    .line 213
    goto :goto_e

    .line 215
    :sswitch_45
    const/16 v0, 0x300

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->h:I

    move v0, v1

    .line 216
    goto :goto_e

    .line 218
    :sswitch_4b
    const/16 v0, 0x400

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->h:I

    move v0, v1

    .line 219
    goto :goto_e

    .line 221
    :sswitch_51
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->d()V

    .line 222
    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    goto :goto_2f

    .line 234
    :cond_58
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    goto :goto_2f

    :cond_5c
    move v0, v1

    goto :goto_e

    .line 210
    :sswitch_data_5e
    .sparse-switch
        0x149 -> :sswitch_45
        0x1ff -> :sswitch_41
        0x344 -> :sswitch_4b
        0x433 -> :sswitch_51
    .end sparse-switch
.end method

.method private c()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 151
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->f:I

    .line 152
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->g:I

    .line 153
    const/16 v0, 0x100

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->h:I

    .line 154
    return-void
.end method

.method private c(Lcom/google/ads/interactivemedia/v3/a/f/m;)V
    .registers 10

    .prologue
    .line 303
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->l:I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->g:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 304
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->n:Lcom/google/ads/interactivemedia/v3/a/c/m;

    invoke-interface {v1, p1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;I)V

    .line 305
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->g:I

    .line 306
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->g:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->l:I

    if-ne v0, v1, :cond_33

    .line 307
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->n:Lcom/google/ads/interactivemedia/v3/a/c/m;

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->m:J

    const/4 v4, 0x1

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->l:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(JIII[B)V

    .line 308
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->m:J

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->o:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->m:J

    .line 309
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->c()V

    .line 311
    :cond_33
    return-void
.end method

.method private d()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 161
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->f:I

    .line 162
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->b:[B

    array-length v0, v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->g:I

    .line 163
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->l:I

    .line 164
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->d:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 165
    return-void
.end method

.method private e()V
    .registers 2

    .prologue
    .line 188
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->f:I

    .line 189
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->g:I

    .line 190
    return-void
.end method

.method private f()V
    .registers 7

    .prologue
    const/16 v4, 0xa

    .line 241
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->e:Lcom/google/ads/interactivemedia/v3/a/c/m;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->d:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-interface {v0, v1, v4}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;I)V

    .line 242
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->d:Lcom/google/ads/interactivemedia/v3/a/f/m;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 243
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->e:Lcom/google/ads/interactivemedia/v3/a/c/m;

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->d:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 244
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->r()I

    move-result v0

    add-int/lit8 v5, v0, 0xa

    move-object v0, p0

    .line 243
    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->a(Lcom/google/ads/interactivemedia/v3/a/c/m;JII)V

    .line 245
    return-void
.end method

.method private g()V
    .registers 14

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v2, -0x1

    const/4 v0, 0x2

    .line 251
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v1, v10}, Lcom/google/ads/interactivemedia/v3/a/f/l;->a(I)V

    .line 253
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->j:Z

    if-nez v1, :cond_a2

    .line 254
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 255
    if-eq v1, v0, :cond_aa

    .line 265
    const-string v3, "AdtsReader"

    const/16 v4, 0x3d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Detected audio object type: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", but assuming AAC LC."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :goto_38
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v1, v12}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c(I)I

    move-result v1

    .line 270
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v3, v11}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 271
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c(I)I

    move-result v3

    .line 273
    invoke-static {v0, v1, v3}, Lcom/google/ads/interactivemedia/v3/a/f/c;->a(III)[B

    move-result-object v8

    .line 275
    invoke-static {v8}, Lcom/google/ads/interactivemedia/v3/a/f/c;->a([B)Landroid/util/Pair;

    move-result-object v7

    .line 278
    const/4 v0, 0x0

    const-string v1, "audio/mp4a-latm"

    const-wide/16 v4, -0x1

    iget-object v3, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 279
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v3, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 280
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    move v3, v2

    .line 278
    invoke-static/range {v0 .. v9}, Lcom/google/ads/interactivemedia/v3/a/p;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/a/p;

    move-result-object v0

    .line 283
    const-wide/32 v2, 0x3d090000

    iget v1, v0, Lcom/google/ads/interactivemedia/v3/a/p;->q:I

    int-to-long v4, v1

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->k:J

    .line 284
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->a:Lcom/google/ads/interactivemedia/v3/a/c/m;

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/p;)V

    .line 285
    iput-boolean v11, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->j:Z

    .line 290
    :goto_81
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    invoke-virtual {v0, v12}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 291
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    add-int/lit8 v5, v0, -0x5

    .line 292
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->i:Z

    if-eqz v0, :cond_98

    .line 293
    add-int/lit8 v5, v5, -0x2

    .line 296
    :cond_98
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->a:Lcom/google/ads/interactivemedia/v3/a/c/m;

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->k:J

    move-object v0, p0

    move v4, v10

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->a(Lcom/google/ads/interactivemedia/v3/a/c/m;JII)V

    .line 297
    return-void

    .line 287
    :cond_a2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    goto :goto_81

    :cond_aa
    move v0, v1

    goto :goto_38
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->c()V

    .line 94
    return-void
.end method

.method public a(JZ)V
    .registers 5

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->m:J

    .line 99
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/f/m;)V
    .registers 4

    .prologue
    .line 103
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v0

    if-lez v0, :cond_39

    .line 104
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->f:I

    packed-switch v0, :pswitch_data_3a

    goto :goto_0

    .line 106
    :pswitch_c
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->b(Lcom/google/ads/interactivemedia/v3/a/f/m;)V

    goto :goto_0

    .line 109
    :pswitch_10
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->d:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    const/16 v1, 0xa

    invoke-direct {p0, p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->f()V

    goto :goto_0

    .line 114
    :pswitch_20
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->i:Z

    if-eqz v0, :cond_33

    const/4 v0, 0x7

    .line 115
    :goto_25
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->c:Lcom/google/ads/interactivemedia/v3/a/f/l;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/a/f/l;->a:[B

    invoke-direct {p0, p1, v1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->g()V

    goto :goto_0

    .line 114
    :cond_33
    const/4 v0, 0x5

    goto :goto_25

    .line 120
    :pswitch_35
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/c/e/c;->c(Lcom/google/ads/interactivemedia/v3/a/f/m;)V

    goto :goto_0

    .line 124
    :cond_39
    return-void

    .line 104
    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_c
        :pswitch_10
        :pswitch_20
        :pswitch_35
    .end packed-switch
.end method

.method public b()V
    .registers 1

    .prologue
    .line 129
    return-void
.end method
