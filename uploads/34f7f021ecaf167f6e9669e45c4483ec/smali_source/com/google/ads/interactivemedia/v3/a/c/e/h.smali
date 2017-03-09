.class final Lcom/google/ads/interactivemedia/v3/a/c/e/h;
.super Lcom/google/ads/interactivemedia/v3/a/c/e/e;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;
    }
.end annotation


# instance fields
.field private b:Z

.field private final c:Lcom/google/ads/interactivemedia/v3/a/c/e/n;

.field private final d:[Z

.field private final e:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

.field private final f:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

.field private final g:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

.field private final h:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

.field private final i:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

.field private final j:Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;

.field private k:J

.field private l:J

.field private final m:Lcom/google/ads/interactivemedia/v3/a/f/m;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/a/c/m;Lcom/google/ads/interactivemedia/v3/a/c/e/n;)V
    .registers 6

    .prologue
    const/16 v2, 0x80

    .line 70
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/c/e/e;-><init>(Lcom/google/ads/interactivemedia/v3/a/c/m;)V

    .line 71
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->c:Lcom/google/ads/interactivemedia/v3/a/c/e/n;

    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->d:[Z

    .line 73
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    const/16 v1, 0x20

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;-><init>(II)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->e:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    .line 74
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    const/16 v1, 0x21

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;-><init>(II)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->f:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    .line 75
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    const/16 v1, 0x22

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;-><init>(II)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->g:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    .line 76
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    const/16 v1, 0x27

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;-><init>(II)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->h:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    .line 77
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    const/16 v1, 0x28

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;-><init>(II)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->i:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    .line 78
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;-><init>(Lcom/google/ads/interactivemedia/v3/a/c/m;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->j:Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;

    .line 79
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->m:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 80
    return-void
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/a/c/e/k;Lcom/google/ads/interactivemedia/v3/a/c/e/k;Lcom/google/ads/interactivemedia/v3/a/c/e/k;)Lcom/google/ads/interactivemedia/v3/a/p;
    .registers 16

    .prologue
    .line 207
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->b:I

    iget v1, p1, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->b:I

    add-int/2addr v0, v1

    iget v1, p2, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->b:I

    add-int/2addr v0, v1

    new-array v8, v0, [B

    .line 208
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->a:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->b:I

    invoke-static {v0, v1, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->a:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->b:I

    iget v3, p1, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->b:I

    invoke-static {v0, v1, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    iget-object v0, p2, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->a:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->b:I

    iget v3, p1, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->b:I

    add-int/2addr v2, v3

    iget v3, p2, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->b:I

    invoke-static {v0, v1, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->a:[B

    iget v1, p1, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->b:I

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/k;->a([BI)I

    .line 214
    new-instance v3, Lcom/google/ads/interactivemedia/v3/a/f/l;

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->a:[B

    invoke-direct {v3, v0}, Lcom/google/ads/interactivemedia/v3/a/f/l;-><init>([B)V

    .line 215
    const/16 v0, 0x2c

    invoke-virtual {v3, v0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 216
    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c(I)I

    move-result v1

    .line 217
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 220
    const/16 v0, 0x58

    invoke-virtual {v3, v0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 221
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 222
    const/4 v2, 0x0

    .line 223
    const/4 v0, 0x0

    move v12, v0

    move v0, v2

    move v2, v12

    :goto_55
    if-ge v2, v1, :cond_6a

    .line 224
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b()Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 225
    add-int/lit8 v0, v0, 0x59

    .line 227
    :cond_5f
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b()Z

    move-result v4

    if-eqz v4, :cond_67

    .line 228
    add-int/lit8 v0, v0, 0x8

    .line 223
    :cond_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    .line 231
    :cond_6a
    invoke-virtual {v3, v0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 232
    if-lez v1, :cond_76

    .line 233
    rsub-int/lit8 v0, v1, 0x8

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {v3, v0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 236
    :cond_76
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/l;->d()I

    .line 237
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/l;->d()I

    move-result v4

    .line 238
    const/4 v0, 0x3

    if-ne v4, v0, :cond_84

    .line 239
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 241
    :cond_84
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/l;->d()I

    move-result v6

    .line 242
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/l;->d()I

    move-result v7

    .line 243
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b()Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 244
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/l;->d()I

    move-result v5

    .line 245
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/l;->d()I

    move-result v9

    .line 246
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/l;->d()I

    move-result v10

    .line 247
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/l;->d()I

    move-result v11

    .line 249
    const/4 v0, 0x1

    if-eq v4, v0, :cond_a8

    const/4 v0, 0x2

    if-ne v4, v0, :cond_d5

    :cond_a8
    const/4 v0, 0x2

    move v2, v0

    .line 250
    :goto_aa
    const/4 v0, 0x1

    if-ne v4, v0, :cond_d8

    const/4 v0, 0x2

    .line 251
    :goto_ae
    add-int v4, v5, v9

    mul-int/2addr v2, v4

    sub-int/2addr v6, v2

    .line 252
    add-int v2, v10, v11

    mul-int/2addr v0, v2

    sub-int/2addr v7, v0

    .line 254
    :cond_b6
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/l;->d()I

    .line 255
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/l;->d()I

    .line 256
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/l;->d()I

    move-result v2

    .line 258
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b()Z

    move-result v0

    if-eqz v0, :cond_da

    const/4 v0, 0x0

    :goto_c7
    if-gt v0, v1, :cond_dc

    .line 259
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/l;->d()I

    .line 260
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/l;->d()I

    .line 261
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/l;->d()I

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_c7

    .line 249
    :cond_d5
    const/4 v0, 0x1

    move v2, v0

    goto :goto_aa

    .line 250
    :cond_d8
    const/4 v0, 0x1

    goto :goto_ae

    :cond_da
    move v0, v1

    .line 258
    goto :goto_c7

    .line 263
    :cond_dc
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/l;->d()I

    .line 264
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/l;->d()I

    .line 265
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/l;->d()I

    .line 266
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/l;->d()I

    .line 267
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/l;->d()I

    .line 268
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/l;->d()I

    .line 270
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b()Z

    move-result v0

    .line 271
    if-eqz v0, :cond_fd

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b()Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 272
    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->a(Lcom/google/ads/interactivemedia/v3/a/f/l;)V

    .line 274
    :cond_fd
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 275
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b()Z

    move-result v0

    if-eqz v0, :cond_116

    .line 277
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 278
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/l;->d()I

    .line 279
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/l;->d()I

    .line 280
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 283
    :cond_116
    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->b(Lcom/google/ads/interactivemedia/v3/a/f/l;)V

    .line 284
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b()Z

    move-result v0

    if-eqz v0, :cond_130

    .line 286
    const/4 v0, 0x0

    :goto_120
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/l;->d()I

    move-result v1

    if-ge v0, v1, :cond_130

    .line 287
    add-int/lit8 v1, v2, 0x4

    .line 289
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_120

    .line 292
    :cond_130
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 293
    const/high16 v0, 0x3f800000

    .line 294
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b()Z

    move-result v1

    if-eqz v1, :cond_197

    .line 295
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b()Z

    move-result v1

    if-eqz v1, :cond_197

    .line 296
    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c(I)I

    move-result v1

    .line 297
    const/16 v2, 0xff

    if-ne v1, v2, :cond_172

    .line 298
    const/16 v1, 0x10

    invoke-virtual {v3, v1}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c(I)I

    move-result v1

    .line 299
    const/16 v2, 0x10

    invoke-virtual {v3, v2}, Lcom/google/ads/interactivemedia/v3/a/f/l;->c(I)I

    move-result v2

    .line 300
    if-eqz v1, :cond_15f

    if-eqz v2, :cond_15f

    .line 301
    int-to-float v0, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    :cond_15f
    move v10, v0

    .line 311
    :goto_160
    const/4 v0, 0x0

    const-string/jumbo v1, "video/hevc"

    const/4 v2, -0x1

    const/4 v3, -0x1

    const-wide/16 v4, -0x1

    .line 313
    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v9, -0x1

    .line 311
    invoke-static/range {v0 .. v10}, Lcom/google/ads/interactivemedia/v3/a/p;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;IF)Lcom/google/ads/interactivemedia/v3/a/p;

    move-result-object v0

    return-object v0

    .line 303
    :cond_172
    sget-object v2, Lcom/google/ads/interactivemedia/v3/a/f/k;->b:[F

    array-length v2, v2

    if-ge v1, v2, :cond_17d

    .line 304
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/f/k;->b:[F

    aget v0, v0, v1

    move v10, v0

    goto :goto_160

    .line 306
    :cond_17d
    const-string v2, "H265Reader"

    const/16 v3, 0x2e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_197
    move v10, v0

    goto :goto_160
.end method

.method private a(JIIJ)V
    .registers 16

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->b:Z

    if-eqz v0, :cond_18

    .line 152
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->j:Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->a(JIIJ)V

    .line 158
    :goto_d
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->h:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    invoke-virtual {v0, p4}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->a(I)V

    .line 159
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->i:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    invoke-virtual {v0, p4}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->a(I)V

    .line 160
    return-void

    .line 154
    :cond_18
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->e:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    invoke-virtual {v0, p4}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->a(I)V

    .line 155
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->f:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    invoke-virtual {v0, p4}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->a(I)V

    .line 156
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->g:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    invoke-virtual {v0, p4}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->a(I)V

    goto :goto_d
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/a/f/l;)V
    .registers 8

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 320
    move v5, v3

    :goto_4
    const/4 v0, 0x4

    if-ge v5, v0, :cond_3a

    move v4, v3

    .line 321
    :goto_8
    const/4 v0, 0x6

    if-ge v4, v0, :cond_36

    .line 322
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 324
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->d()I

    .line 321
    :cond_14
    if-ne v5, v1, :cond_34

    move v0, v1

    :goto_17
    add-int/2addr v0, v4

    move v4, v0

    goto :goto_8

    .line 326
    :cond_1a
    const/16 v0, 0x40

    shl-int/lit8 v6, v5, 0x1

    add-int/lit8 v6, v6, 0x4

    shl-int v6, v2, v6

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 327
    if-le v5, v2, :cond_2b

    .line 329
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->e()I

    :cond_2b
    move v0, v3

    .line 331
    :goto_2c
    if-ge v0, v6, :cond_14

    .line 332
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->e()I

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_34
    move v0, v2

    .line 321
    goto :goto_17

    .line 320
    :cond_36
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_4

    .line 337
    :cond_3a
    return-void
.end method

.method private a([BII)V
    .registers 5

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->b:Z

    if-eqz v0, :cond_14

    .line 164
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->j:Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->a([BII)V

    .line 170
    :goto_9
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->h:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->a([BII)V

    .line 171
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->i:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->a([BII)V

    .line 172
    return-void

    .line 166
    :cond_14
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->e:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->a([BII)V

    .line 167
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->f:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->a([BII)V

    .line 168
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->g:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->a([BII)V

    goto :goto_9
.end method

.method private b(JIIJ)V
    .registers 12

    .prologue
    const/4 v4, 0x5

    .line 175
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->b:Z

    if-eqz v0, :cond_5d

    .line 176
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->j:Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->a(JI)V

    .line 186
    :cond_a
    :goto_a
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->h:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    invoke-virtual {v0, p4}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->b(I)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 187
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->h:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->a:[B

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->h:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    iget v1, v1, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->b:I

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/k;->a([BI)I

    move-result v0

    .line 188
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->m:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->h:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->a:[B

    invoke-virtual {v1, v2, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a([BI)V

    .line 191
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->m:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 192
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->c:Lcom/google/ads/interactivemedia/v3/a/c/e/n;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->m:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0, p5, p6, v1}, Lcom/google/ads/interactivemedia/v3/a/c/e/n;->a(JLcom/google/ads/interactivemedia/v3/a/f/m;)V

    .line 194
    :cond_33
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->i:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    invoke-virtual {v0, p4}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->b(I)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 195
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->i:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->a:[B

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->i:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    iget v1, v1, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->b:I

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/k;->a([BI)I

    move-result v0

    .line 196
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->m:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->i:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->a:[B

    invoke-virtual {v1, v2, v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a([BI)V

    .line 199
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->m:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 200
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->c:Lcom/google/ads/interactivemedia/v3/a/c/e/n;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->m:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0, p5, p6, v1}, Lcom/google/ads/interactivemedia/v3/a/c/e/n;->a(JLcom/google/ads/interactivemedia/v3/a/f/m;)V

    .line 202
    :cond_5c
    return-void

    .line 178
    :cond_5d
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->e:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    invoke-virtual {v0, p4}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->b(I)Z

    .line 179
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->f:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    invoke-virtual {v0, p4}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->b(I)Z

    .line 180
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->g:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    invoke-virtual {v0, p4}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->b(I)Z

    .line 181
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->e:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->f:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->g:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 182
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->a:Lcom/google/ads/interactivemedia/v3/a/c/m;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->e:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->f:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->g:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    invoke-static {v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->a(Lcom/google/ads/interactivemedia/v3/a/c/e/k;Lcom/google/ads/interactivemedia/v3/a/c/e/k;Lcom/google/ads/interactivemedia/v3/a/c/e/k;)Lcom/google/ads/interactivemedia/v3/a/p;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/p;)V

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->b:Z

    goto/16 :goto_a
.end method

.method private static b(Lcom/google/ads/interactivemedia/v3/a/f/l;)V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 344
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->d()I

    move-result v5

    move v4, v2

    move v0, v2

    move v1, v2

    .line 352
    :goto_9
    if-ge v4, v5, :cond_50

    .line 353
    if-eqz v4, :cond_51

    .line 354
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b()Z

    move-result v1

    move v3, v1

    .line 356
    :goto_12
    if-eqz v3, :cond_29

    .line 357
    invoke-virtual {p0, v8}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 358
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->d()I

    move v1, v2

    .line 359
    :goto_1b
    if-gt v1, v0, :cond_4b

    .line 360
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b()Z

    move-result v6

    if-eqz v6, :cond_26

    .line 361
    invoke-virtual {p0, v8}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 359
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 365
    :cond_29
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->d()I

    move-result v6

    .line 366
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->d()I

    move-result v7

    .line 367
    add-int v0, v6, v7

    move v1, v2

    .line 368
    :goto_34
    if-ge v1, v6, :cond_3f

    .line 369
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->d()I

    .line 370
    invoke-virtual {p0, v8}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 368
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    :cond_3f
    move v1, v2

    .line 372
    :goto_40
    if-ge v1, v7, :cond_4b

    .line 373
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/f/l;->d()I

    .line 374
    invoke-virtual {p0, v8}, Lcom/google/ads/interactivemedia/v3/a/f/l;->b(I)V

    .line 372
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 352
    :cond_4b
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v3

    goto :goto_9

    .line 378
    :cond_50
    return-void

    :cond_51
    move v3, v1

    goto :goto_12
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->d:[Z

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/k;->a([Z)V

    .line 85
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->e:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->a()V

    .line 86
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->f:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->a()V

    .line 87
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->g:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->a()V

    .line 88
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->h:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->a()V

    .line 89
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->i:Lcom/google/ads/interactivemedia/v3/a/c/e/k;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/e/k;->a()V

    .line 90
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->j:Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/e/h$a;->a()V

    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->k:J

    .line 92
    return-void
.end method

.method public a(JZ)V
    .registers 5

    .prologue
    .line 96
    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->l:J

    .line 97
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/f/m;)V
    .registers 14

    .prologue
    .line 101
    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v0

    if-lez v0, :cond_30

    .line 102
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d()I

    move-result v0

    .line 103
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c()I

    move-result v8

    .line 104
    iget-object v9, p1, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    .line 107
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->k:J

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->k:J

    .line 108
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->a:Lcom/google/ads/interactivemedia/v3/a/c/m;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;I)V

    .line 111
    :goto_23
    if-ge v0, v8, :cond_0

    .line 112
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->d:[Z

    invoke-static {v9, v0, v8, v1}, Lcom/google/ads/interactivemedia/v3/a/f/k;->a([BII[Z)I

    move-result v10

    .line 114
    if-ne v10, v8, :cond_31

    .line 116
    invoke-direct {p0, v9, v0, v8}, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->a([BII)V

    .line 143
    :cond_30
    return-void

    .line 121
    :cond_31
    invoke-static {v9, v10}, Lcom/google/ads/interactivemedia/v3/a/f/k;->c([BI)I

    move-result v11

    .line 125
    sub-int v1, v10, v0

    .line 126
    if-lez v1, :cond_3c

    .line 127
    invoke-direct {p0, v9, v0, v10}, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->a([BII)V

    .line 130
    :cond_3c
    sub-int v4, v8, v10

    .line 131
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->k:J

    int-to-long v6, v4

    sub-long/2addr v2, v6

    .line 135
    if-gez v1, :cond_55

    .line 136
    neg-int v5, v1

    :goto_45
    iget-wide v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->l:J

    move-object v1, p0

    .line 135
    invoke-direct/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->b(JIIJ)V

    .line 138
    iget-wide v6, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->l:J

    move-object v1, p0

    move v5, v11

    invoke-direct/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/a/c/e/h;->a(JIIJ)V

    .line 140
    add-int/lit8 v0, v10, 0x3

    .line 141
    goto :goto_23

    .line 136
    :cond_55
    const/4 v5, 0x0

    goto :goto_45
.end method

.method public b()V
    .registers 1

    .prologue
    .line 148
    return-void
.end method
