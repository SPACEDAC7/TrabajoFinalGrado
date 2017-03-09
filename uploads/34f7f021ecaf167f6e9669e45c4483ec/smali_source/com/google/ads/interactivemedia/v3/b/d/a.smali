.class public Lcom/google/ads/interactivemedia/v3/b/d/a;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final b:[C


# instance fields
.field a:I

.field private final c:Ljava/io/Reader;

.field private d:Z

.field private final e:[C

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:J

.field private k:I

.field private l:Ljava/lang/String;

.field private m:[I

.field private n:I

.field private o:[Ljava/lang/String;

.field private p:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 192
    const-string v0, ")]}\'\n"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/b/d/a;->b:[C

    .line 1585
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/d/a$1;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/b/d/a$1;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/b/b/e;->a:Lcom/google/ads/interactivemedia/v3/b/b/e;

    .line 1607
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 6

    .prologue
    const/16 v3, 0x20

    const/4 v1, 0x0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->d:Z

    .line 238
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->e:[C

    .line 239
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    .line 240
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->g:I

    .line 242
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->h:I

    .line 243
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->i:I

    .line 245
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    .line 269
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->m:[I

    .line 270
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->n:I

    .line 272
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->m:[I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->n:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->n:I

    const/4 v2, 0x6

    aput v2, v0, v1

    .line 283
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->o:[Ljava/lang/String;

    .line 284
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->p:[I

    .line 290
    if-nez p1, :cond_3b

    .line 291
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_3b
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->c:Ljava/io/Reader;

    .line 294
    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 1256
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->n:I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->m:[I

    array-length v1, v1

    if-ne v0, v1, :cond_35

    .line 1257
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->n:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 1258
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->n:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    .line 1259
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->n:I

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 1260
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->m:[I

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->n:I

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1261
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->p:[I

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->n:I

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1262
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->o:[Ljava/lang/String;

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->n:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1263
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->m:[I

    .line 1264
    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->p:[I

    .line 1265
    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->o:[Ljava/lang/String;

    .line 1267
    :cond_35
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->m:[I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->n:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->n:I

    aput p1, v0, v1

    .line 1268
    return-void
.end method

.method private a(C)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 745
    sparse-switch p1, :sswitch_data_a

    .line 765
    const/4 v0, 0x1

    :goto_4
    return v0

    .line 751
    :sswitch_5
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->v()V

    .line 763
    :sswitch_8
    const/4 v0, 0x0

    goto :goto_4

    .line 745
    :sswitch_data_a
    .sparse-switch
        0x9 -> :sswitch_8
        0xa -> :sswitch_8
        0xc -> :sswitch_8
        0xd -> :sswitch_8
        0x20 -> :sswitch_8
        0x23 -> :sswitch_5
        0x2c -> :sswitch_8
        0x2f -> :sswitch_5
        0x3a -> :sswitch_8
        0x3b -> :sswitch_5
        0x3d -> :sswitch_5
        0x5b -> :sswitch_8
        0x5c -> :sswitch_5
        0x5d -> :sswitch_8
        0x7b -> :sswitch_8
        0x7d -> :sswitch_8
    .end sparse-switch
.end method

.method private a(Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1428
    :goto_1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->g:I

    if-le v0, v2, :cond_16

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 1429
    :cond_16
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->e:[C

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    aget-char v0, v0, v2

    const/16 v2, 0xa

    if-ne v0, v2, :cond_33

    .line 1430
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->h:I

    .line 1431
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->i:I

    .line 1428
    :cond_2c
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    goto :goto_1

    :cond_33
    move v0, v1

    .line 1434
    :goto_34
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_4a

    .line 1435
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->e:[C

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    add-int/2addr v3, v0

    aget-char v2, v2, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_2c

    .line 1434
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 1439
    :cond_4a
    const/4 v1, 0x1

    .line 1441
    :cond_4b
    return v1
.end method

.method private b(Z)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1319
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->e:[C

    .line 1320
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    .line 1321
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->g:I

    .line 1323
    :goto_6
    if-ne v1, v0, :cond_34

    .line 1324
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    .line 1325
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_30

    .line 1392
    if-eqz p1, :cond_bf

    .line 1393
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End of input"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1328
    :cond_30
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    .line 1329
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->g:I

    .line 1332
    :cond_34
    add-int/lit8 v2, v1, 0x1

    aget-char v1, v3, v1

    .line 1333
    const/16 v4, 0xa

    if-ne v1, v4, :cond_46

    .line 1334
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->h:I

    .line 1335
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->i:I

    move v1, v2

    .line 1336
    goto :goto_6

    .line 1337
    :cond_46
    const/16 v4, 0x20

    if-eq v1, v4, :cond_c1

    const/16 v4, 0xd

    if-eq v1, v4, :cond_c1

    const/16 v4, 0x9

    if-ne v1, v4, :cond_54

    move v1, v2

    .line 1338
    goto :goto_6

    .line 1341
    :cond_54
    const/16 v4, 0x2f

    if-ne v1, v4, :cond_a9

    .line 1342
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    .line 1343
    if-ne v2, v0, :cond_71

    .line 1344
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    .line 1345
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b(I)Z

    move-result v0

    .line 1346
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    .line 1347
    if-nez v0, :cond_71

    move v0, v1

    .line 1395
    :goto_70
    return v0

    .line 1352
    :cond_71
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->v()V

    .line 1353
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    aget-char v0, v3, v0

    .line 1354
    sparse-switch v0, :sswitch_data_c4

    move v0, v1

    .line 1374
    goto :goto_70

    .line 1357
    :sswitch_7d
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    .line 1358
    const-string v0, "*/"

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_92

    .line 1359
    const-string v0, "Unterminated comment"

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1361
    :cond_92
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    add-int/lit8 v1, v0, 0x2

    .line 1362
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->g:I

    goto/16 :goto_6

    .line 1367
    :sswitch_9a
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    .line 1368
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->w()V

    .line 1369
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    .line 1370
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->g:I

    goto/16 :goto_6

    .line 1376
    :cond_a9
    const/16 v0, 0x23

    if-ne v1, v0, :cond_bb

    .line 1377
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    .line 1383
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->v()V

    .line 1384
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->w()V

    .line 1385
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    .line 1386
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->g:I

    goto/16 :goto_6

    .line 1388
    :cond_bb
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    move v0, v1

    .line 1389
    goto :goto_70

    .line 1395
    :cond_bf
    const/4 v0, -0x1

    goto :goto_70

    :cond_c1
    move v1, v2

    goto/16 :goto_6

    .line 1354
    :sswitch_data_c4
    .sparse-switch
        0x2a -> :sswitch_7d
        0x2f -> :sswitch_9a
    .end sparse-switch
.end method

.method private b(Ljava/lang/String;)Ljava/io/IOException;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1559
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/d/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/d/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(C)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 987
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->e:[C

    .line 988
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 990
    :cond_7
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    .line 991
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->g:I

    move v3, v0

    .line 994
    :goto_c
    if-ge v3, v1, :cond_4a

    .line 995
    add-int/lit8 v2, v3, 0x1

    aget-char v3, v4, v3

    .line 997
    if-ne v3, p1, :cond_22

    .line 998
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    .line 999
    sub-int v1, v2, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v5, v4, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1000
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1001
    :cond_22
    const/16 v6, 0x5c

    if-ne v3, v6, :cond_3d

    .line 1002
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    .line 1003
    sub-int v1, v2, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v5, v4, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1004
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->y()C

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1005
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    .line 1006
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->g:I

    move v2, v0

    :cond_3b
    :goto_3b
    move v3, v2

    .line 1012
    goto :goto_c

    .line 1008
    :cond_3d
    const/16 v6, 0xa

    if-ne v3, v6, :cond_3b

    .line 1009
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->h:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->h:I

    .line 1010
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->i:I

    goto :goto_3b

    .line 1014
    :cond_4a
    sub-int v1, v3, v0

    invoke-virtual {v5, v4, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1015
    iput v3, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    .line 1016
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1017
    const-string v0, "Unterminated string"

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private b(I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1276
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->e:[C

    .line 1277
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->i:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->i:I

    .line 1278
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->g:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    if-eq v2, v3, :cond_5b

    .line 1279
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->g:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->g:I

    .line 1280
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->g:I

    invoke-static {v1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1285
    :goto_1e
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    .line 1287
    :cond_20
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->c:Ljava/io/Reader;

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->g:I

    array-length v4, v1

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->g:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5a

    .line 1288
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->g:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->g:I

    .line 1291
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->h:I

    if-nez v2, :cond_55

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->i:I

    if-nez v2, :cond_55

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->g:I

    if-lez v2, :cond_55

    aget-char v2, v1, v0

    const v3, 0xfeff

    if-ne v2, v3, :cond_55

    .line 1292
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    .line 1293
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->i:I

    .line 1294
    add-int/lit8 p1, p1, 0x1

    .line 1297
    :cond_55
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->g:I

    if-lt v2, p1, :cond_20

    .line 1298
    const/4 v0, 0x1

    .line 1301
    :cond_5a
    return v0

    .line 1282
    :cond_5b
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->g:I

    goto :goto_1e
.end method

.method private c(C)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1089
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->e:[C

    .line 1091
    :cond_2
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    .line 1092
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->g:I

    move v2, v1

    .line 1094
    :goto_7
    if-ge v2, v0, :cond_2e

    .line 1095
    add-int/lit8 v1, v2, 0x1

    aget-char v2, v3, v2

    .line 1096
    if-ne v2, p1, :cond_12

    .line 1097
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    .line 1098
    return-void

    .line 1099
    :cond_12
    const/16 v4, 0x5c

    if-ne v2, v4, :cond_21

    .line 1100
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    .line 1101
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->y()C

    .line 1102
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    .line 1103
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->g:I

    :cond_1f
    :goto_1f
    move v2, v1

    .line 1108
    goto :goto_7

    .line 1104
    :cond_21
    const/16 v4, 0xa

    if-ne v2, v4, :cond_1f

    .line 1105
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->h:I

    .line 1106
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->i:I

    goto :goto_1f

    .line 1109
    :cond_2e
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    .line 1110
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1111
    const-string v0, "Unterminated string"

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private o()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 599
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->e:[C

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    aget-char v0, v0, v1

    .line 603
    const/16 v1, 0x74

    if-eq v0, v1, :cond_f

    const/16 v1, 0x54

    if-ne v0, v1, :cond_2d

    .line 604
    :cond_f
    const-string/jumbo v2, "true"

    .line 605
    const-string v1, "TRUE"

    .line 606
    const/4 v0, 0x5

    .line 620
    :goto_15
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    .line 621
    const/4 v4, 0x1

    :goto_1a
    if-ge v4, v5, :cond_63

    .line 622
    iget v6, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->g:I

    if-lt v6, v7, :cond_4b

    add-int/lit8 v6, v4, 0x1

    invoke-direct {p0, v6}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b(I)Z

    move-result v6

    if-nez v6, :cond_4b

    move v0, v3

    .line 638
    :goto_2c
    return v0

    .line 607
    :cond_2d
    const/16 v1, 0x66

    if-eq v0, v1, :cond_35

    const/16 v1, 0x46

    if-ne v0, v1, :cond_3b

    .line 608
    :cond_35
    const-string v2, "false"

    .line 609
    const-string v1, "FALSE"

    .line 610
    const/4 v0, 0x6

    goto :goto_15

    .line 611
    :cond_3b
    const/16 v1, 0x6e

    if-eq v0, v1, :cond_43

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_49

    .line 612
    :cond_43
    const-string v2, "null"

    .line 613
    const-string v1, "NULL"

    .line 614
    const/4 v0, 0x7

    goto :goto_15

    :cond_49
    move v0, v3

    .line 616
    goto :goto_2c

    .line 625
    :cond_4b
    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->e:[C

    iget v7, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    add-int/2addr v7, v4

    aget-char v6, v6, v7

    .line 626
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_60

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_60

    move v0, v3

    .line 627
    goto :goto_2c

    .line 621
    :cond_60
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 631
    :cond_63
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    add-int/2addr v1, v5

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->g:I

    if-lt v1, v2, :cond_72

    add-int/lit8 v1, v5, 0x1

    invoke-direct {p0, v1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b(I)Z

    move-result v1

    if-eqz v1, :cond_81

    :cond_72
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->e:[C

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    add-int/2addr v2, v5

    aget-char v1, v1, v2

    .line 632
    invoke-direct {p0, v1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->a(C)Z

    move-result v1

    if-eqz v1, :cond_81

    move v0, v3

    .line 633
    goto :goto_2c

    .line 637
    :cond_81
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    .line 638
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    goto :goto_2c
.end method

.method private s()I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 643
    iget-object v11, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->e:[C

    .line 644
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    .line 645
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->g:I

    .line 647
    const-wide/16 v6, 0x0

    .line 648
    const/4 v5, 0x0

    .line 649
    const/4 v4, 0x1

    .line 650
    const/4 v3, 0x0

    .line 652
    const/4 v0, 0x0

    move v10, v0

    move v0, v1

    move v1, v2

    .line 656
    :goto_f
    add-int v2, v1, v10

    if-ne v2, v0, :cond_3f

    .line 657
    array-length v0, v11

    if-ne v10, v0, :cond_18

    .line 660
    const/4 v0, 0x0

    .line 740
    :goto_17
    return v0

    .line 662
    :cond_18
    add-int/lit8 v0, v10, 0x1

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 731
    :cond_20
    const/4 v0, 0x2

    if-ne v3, v0, :cond_df

    if-eqz v4, :cond_df

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, v6, v0

    if-nez v0, :cond_2d

    if-eqz v5, :cond_df

    .line 732
    :cond_2d
    if-eqz v5, :cond_dc

    :goto_2f
    iput-wide v6, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->j:J

    .line 733
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    add-int/2addr v0, v10

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    .line 734
    const/16 v0, 0xf

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    goto :goto_17

    .line 665
    :cond_3b
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    .line 666
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->g:I

    .line 669
    :cond_3f
    add-int v2, v1, v10

    aget-char v2, v11, v2

    .line 670
    sparse-switch v2, :sswitch_data_f8

    .line 705
    const/16 v8, 0x30

    if-lt v2, v8, :cond_4e

    const/16 v8, 0x39

    if-le v2, v8, :cond_8b

    .line 706
    :cond_4e
    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/b/d/a;->a(C)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 709
    const/4 v0, 0x0

    goto :goto_17

    .line 672
    :sswitch_56
    if-nez v3, :cond_64

    .line 673
    const/4 v3, 0x1

    .line 674
    const/4 v2, 0x1

    move v14, v4

    move v4, v3

    move v3, v14

    .line 655
    :goto_5d
    add-int/lit8 v5, v10, 0x1

    move v10, v5

    move v5, v4

    move v4, v3

    move v3, v2

    goto :goto_f

    .line 676
    :cond_64
    const/4 v2, 0x5

    if-ne v3, v2, :cond_6b

    .line 677
    const/4 v2, 0x6

    move v3, v4

    move v4, v5

    .line 678
    goto :goto_5d

    .line 680
    :cond_6b
    const/4 v0, 0x0

    goto :goto_17

    .line 683
    :sswitch_6d
    const/4 v2, 0x5

    if-ne v3, v2, :cond_74

    .line 684
    const/4 v2, 0x6

    move v3, v4

    move v4, v5

    .line 685
    goto :goto_5d

    .line 687
    :cond_74
    const/4 v0, 0x0

    goto :goto_17

    .line 691
    :sswitch_76
    const/4 v2, 0x2

    if-eq v3, v2, :cond_7c

    const/4 v2, 0x4

    if-ne v3, v2, :cond_80

    .line 692
    :cond_7c
    const/4 v2, 0x5

    move v3, v4

    move v4, v5

    .line 693
    goto :goto_5d

    .line 695
    :cond_80
    const/4 v0, 0x0

    goto :goto_17

    .line 698
    :sswitch_82
    const/4 v2, 0x2

    if-ne v3, v2, :cond_89

    .line 699
    const/4 v2, 0x3

    move v3, v4

    move v4, v5

    .line 700
    goto :goto_5d

    .line 702
    :cond_89
    const/4 v0, 0x0

    goto :goto_17

    .line 711
    :cond_8b
    const/4 v8, 0x1

    if-eq v3, v8, :cond_90

    if-nez v3, :cond_98

    .line 712
    :cond_90
    add-int/lit8 v2, v2, -0x30

    neg-int v2, v2

    int-to-long v6, v2

    .line 713
    const/4 v2, 0x2

    move v3, v4

    move v4, v5

    goto :goto_5d

    .line 714
    :cond_98
    const/4 v8, 0x2

    if-ne v3, v8, :cond_cb

    .line 715
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-nez v8, :cond_a4

    .line 716
    const/4 v0, 0x0

    goto/16 :goto_17

    .line 718
    :cond_a4
    const-wide/16 v8, 0xa

    mul-long/2addr v8, v6

    add-int/lit8 v2, v2, -0x30

    int-to-long v12, v2

    sub-long/2addr v8, v12

    .line 719
    const-wide v12, -0xcccccccccccccccL

    cmp-long v2, v6, v12

    if-gtz v2, :cond_c1

    const-wide v12, -0xcccccccccccccccL

    cmp-long v2, v6, v12

    if-nez v2, :cond_c9

    cmp-long v2, v8, v6

    if-gez v2, :cond_c9

    :cond_c1
    const/4 v2, 0x1

    :goto_c2
    and-int/2addr v2, v4

    move v4, v5

    move-wide v6, v8

    move v14, v3

    move v3, v2

    move v2, v14

    .line 722
    goto :goto_5d

    .line 719
    :cond_c9
    const/4 v2, 0x0

    goto :goto_c2

    .line 722
    :cond_cb
    const/4 v2, 0x3

    if-ne v3, v2, :cond_d2

    .line 723
    const/4 v2, 0x4

    move v3, v4

    move v4, v5

    goto :goto_5d

    .line 724
    :cond_d2
    const/4 v2, 0x5

    if-eq v3, v2, :cond_d8

    const/4 v2, 0x6

    if-ne v3, v2, :cond_f3

    .line 725
    :cond_d8
    const/4 v2, 0x7

    move v3, v4

    move v4, v5

    goto :goto_5d

    .line 732
    :cond_dc
    neg-long v6, v6

    goto/16 :goto_2f

    .line 735
    :cond_df
    const/4 v0, 0x2

    if-eq v3, v0, :cond_e8

    const/4 v0, 0x4

    if-eq v3, v0, :cond_e8

    const/4 v0, 0x7

    if-ne v3, v0, :cond_f0

    .line 737
    :cond_e8
    iput v10, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->k:I

    .line 738
    const/16 v0, 0x10

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    goto/16 :goto_17

    .line 740
    :cond_f0
    const/4 v0, 0x0

    goto/16 :goto_17

    :cond_f3
    move v2, v3

    move v3, v4

    move v4, v5

    goto/16 :goto_5d

    .line 670
    :sswitch_data_f8
    .sparse-switch
        0x2b -> :sswitch_6d
        0x2d -> :sswitch_56
        0x2e -> :sswitch_82
        0x45 -> :sswitch_76
        0x65 -> :sswitch_76
    .end sparse-switch
.end method

.method private t()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1027
    const/4 v0, 0x0

    move v1, v2

    .line 1032
    :goto_3
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->g:I

    if-ge v3, v4, :cond_2b

    .line 1033
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->e:[C

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    add-int/2addr v4, v1

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_64

    .line 1032
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1039
    :sswitch_17
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->v()V

    .line 1077
    :cond_1a
    :goto_1a
    :sswitch_1a
    if-nez v0, :cond_55

    .line 1078
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->e:[C

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    invoke-direct {v0, v2, v3, v1}, Ljava/lang/String;-><init>([CII)V

    .line 1083
    :goto_25
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    .line 1084
    return-object v0

    .line 1056
    :cond_2b
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->e:[C

    array-length v3, v3

    if-ge v1, v3, :cond_39

    .line 1057
    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v3}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_3

    .line 1065
    :cond_39
    if-nez v0, :cond_40

    .line 1066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1068
    :cond_40
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->e:[C

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1069
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    .line 1071
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b(I)Z

    move-result v1

    if-nez v1, :cond_61

    move v1, v2

    .line 1072
    goto :goto_1a

    .line 1080
    :cond_55
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->e:[C

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1081
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    :cond_61
    move v1, v2

    goto :goto_3

    .line 1033
    nop

    :sswitch_data_64
    .sparse-switch
        0x9 -> :sswitch_1a
        0xa -> :sswitch_1a
        0xc -> :sswitch_1a
        0xd -> :sswitch_1a
        0x20 -> :sswitch_1a
        0x23 -> :sswitch_17
        0x2c -> :sswitch_1a
        0x2f -> :sswitch_17
        0x3a -> :sswitch_1a
        0x3b -> :sswitch_17
        0x3d -> :sswitch_17
        0x5b -> :sswitch_1a
        0x5c -> :sswitch_17
        0x5d -> :sswitch_1a
        0x7b -> :sswitch_1a
        0x7d -> :sswitch_1a
    .end sparse-switch
.end method

.method private u()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1116
    :cond_0
    const/4 v0, 0x0

    .line 1117
    :goto_1
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->g:I

    if-ge v1, v2, :cond_1e

    .line 1118
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->e:[C

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sparse-switch v1, :sswitch_data_2c

    .line 1117
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1124
    :sswitch_15
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->v()V

    .line 1136
    :sswitch_18
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    .line 1142
    :goto_1d
    return-void

    .line 1140
    :cond_1e
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    .line 1141
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1d

    .line 1118
    nop

    :sswitch_data_2c
    .sparse-switch
        0x9 -> :sswitch_18
        0xa -> :sswitch_18
        0xc -> :sswitch_18
        0xd -> :sswitch_18
        0x20 -> :sswitch_18
        0x23 -> :sswitch_15
        0x2c -> :sswitch_18
        0x2f -> :sswitch_15
        0x3a -> :sswitch_18
        0x3b -> :sswitch_15
        0x3d -> :sswitch_15
        0x5b -> :sswitch_18
        0x5c -> :sswitch_15
        0x5d -> :sswitch_18
        0x7b -> :sswitch_18
        0x7d -> :sswitch_18
    .end sparse-switch
.end method

.method private v()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1400
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->d:Z

    if-nez v0, :cond_b

    .line 1401
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1403
    :cond_b
    return-void
.end method

.method private w()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1411
    :cond_0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->g:I

    if-lt v0, v1, :cond_d

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1412
    :cond_d
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->e:[C

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    aget-char v0, v0, v1

    .line 1413
    const/16 v1, 0xa

    if-ne v0, v1, :cond_26

    .line 1414
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->h:I

    .line 1415
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->i:I

    .line 1421
    :cond_25
    :goto_25
    return-void

    .line 1417
    :cond_26
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    goto :goto_25
.end method

.method private x()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1449
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->h:I

    add-int/lit8 v0, v0, 0x1

    .line 1450
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->i:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 1451
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " column "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private y()C
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    .line 1495
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->g:I

    if-ne v0, v1, :cond_15

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1496
    const-string v0, "Unterminated escape sequence"

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1499
    :cond_15
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->e:[C

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    aget-char v0, v0, v1

    .line 1500
    sparse-switch v0, :sswitch_data_c0

    .line 1550
    const-string v0, "Invalid escape sequence"

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1502
    :sswitch_29
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->g:I

    if-le v0, v1, :cond_3e

    invoke-direct {p0, v5}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 1503
    const-string v0, "Unterminated escape sequence"

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1506
    :cond_3e
    const/4 v1, 0x0

    .line 1507
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    add-int/lit8 v2, v0, 0x4

    move v6, v0

    move v0, v1

    move v1, v6

    :goto_46
    if-ge v1, v2, :cond_9e

    .line 1508
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->e:[C

    aget-char v3, v3, v1

    .line 1509
    shl-int/lit8 v0, v0, 0x4

    int-to-char v0, v0

    .line 1510
    const/16 v4, 0x30

    if-lt v3, v4, :cond_5e

    const/16 v4, 0x39

    if-gt v3, v4, :cond_5e

    .line 1511
    add-int/lit8 v3, v3, -0x30

    add-int/2addr v0, v3

    int-to-char v0, v0

    .line 1507
    :goto_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    .line 1512
    :cond_5e
    const/16 v4, 0x61

    if-lt v3, v4, :cond_6d

    const/16 v4, 0x66

    if-gt v3, v4, :cond_6d

    .line 1513
    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    int-to-char v0, v0

    goto :goto_5b

    .line 1514
    :cond_6d
    const/16 v4, 0x41

    if-lt v3, v4, :cond_7c

    const/16 v4, 0x46

    if-gt v3, v4, :cond_7c

    .line 1515
    add-int/lit8 v3, v3, -0x41

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    int-to-char v0, v0

    goto :goto_5b

    .line 1517
    :cond_7c
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->e:[C

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1520
    :cond_9e
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    .line 1547
    :goto_a4
    :sswitch_a4
    return v0

    .line 1524
    :sswitch_a5
    const/16 v0, 0x9

    goto :goto_a4

    .line 1527
    :sswitch_a8
    const/16 v0, 0x8

    goto :goto_a4

    .line 1530
    :sswitch_ab
    const/16 v0, 0xa

    goto :goto_a4

    .line 1533
    :sswitch_ae
    const/16 v0, 0xd

    goto :goto_a4

    .line 1536
    :sswitch_b1
    const/16 v0, 0xc

    goto :goto_a4

    .line 1539
    :sswitch_b4
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->h:I

    .line 1540
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->i:I

    goto :goto_a4

    .line 1500
    nop

    :sswitch_data_c0
    .sparse-switch
        0xa -> :sswitch_b4
        0x22 -> :sswitch_a4
        0x27 -> :sswitch_a4
        0x2f -> :sswitch_a4
        0x5c -> :sswitch_a4
        0x62 -> :sswitch_a8
        0x66 -> :sswitch_b1
        0x6e -> :sswitch_ab
        0x72 -> :sswitch_ae
        0x74 -> :sswitch_a5
        0x75 -> :sswitch_29
    .end sparse-switch
.end method

.method private z()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1567
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b(Z)I

    .line 1568
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    .line 1570
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/b/d/a;->b:[C

    array-length v1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->g:I

    if-le v0, v1, :cond_1e

    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/d/a;->b:[C

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1582
    :cond_1d
    :goto_1d
    return-void

    .line 1574
    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    sget-object v1, Lcom/google/ads/interactivemedia/v3/b/d/a;->b:[C

    array-length v1, v1

    if-ge v0, v1, :cond_34

    .line 1575
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->e:[C

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/d/a;->b:[C

    aget-char v2, v2, v0

    if-ne v1, v2, :cond_1d

    .line 1574
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 1581
    :cond_34
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/b/d/a;->b:[C

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    goto :goto_1d
.end method


# virtual methods
.method public a()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 341
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    .line 342
    if-nez v0, :cond_9

    .line 343
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->r()I

    move-result v0

    .line 345
    :cond_9
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1b

    .line 346
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->a(I)V

    .line 347
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->p:[I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->n:I

    add-int/lit8 v1, v1, -0x1

    aput v2, v0, v1

    .line 348
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    .line 352
    return-void

    .line 350
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected BEGIN_ARRAY but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->f()Lcom/google/ads/interactivemedia/v3/b/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Z)V
    .registers 2

    .prologue
    .line 326
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->d:Z

    .line 327
    return-void
.end method

.method public b()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 359
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    .line 360
    if-nez v0, :cond_8

    .line 361
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->r()I

    move-result v0

    .line 363
    :cond_8
    const/4 v1, 0x4

    if-ne v0, v1, :cond_21

    .line 364
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->n:I

    .line 365
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->p:[I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->n:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 366
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    .line 370
    return-void

    .line 368
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected END_ARRAY but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->f()Lcom/google/ads/interactivemedia/v3/b/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 377
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    .line 378
    if-nez v0, :cond_8

    .line 379
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->r()I

    move-result v0

    .line 381
    :cond_8
    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 382
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->a(I)V

    .line 383
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    .line 387
    return-void

    .line 385
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected BEGIN_OBJECT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->f()Lcom/google/ads/interactivemedia/v3/b/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1208
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    .line 1209
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->m:[I

    const/16 v1, 0x8

    aput v1, v0, v2

    .line 1210
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->n:I

    .line 1211
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->c:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 1212
    return-void
.end method

.method public d()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 394
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    .line 395
    if-nez v0, :cond_8

    .line 396
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->r()I

    move-result v0

    .line 398
    :cond_8
    const/4 v1, 0x2

    if-ne v0, v1, :cond_28

    .line 399
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->n:I

    .line 400
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->o:[Ljava/lang/String;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->n:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 401
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->p:[I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->n:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 402
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    .line 406
    return-void

    .line 404
    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected END_OBJECT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->f()Lcom/google/ads/interactivemedia/v3/b/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 412
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    .line 413
    if-nez v0, :cond_8

    .line 414
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->r()I

    move-result v0

    .line 416
    :cond_8
    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public f()Lcom/google/ads/interactivemedia/v3/b/d/b;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 423
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    .line 424
    if-nez v0, :cond_8

    .line 425
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->r()I

    move-result v0

    .line 428
    :cond_8
    packed-switch v0, :pswitch_data_30

    .line 457
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 430
    :pswitch_11
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/d/b;->c:Lcom/google/ads/interactivemedia/v3/b/d/b;

    .line 455
    :goto_13
    return-object v0

    .line 432
    :pswitch_14
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/d/b;->d:Lcom/google/ads/interactivemedia/v3/b/d/b;

    goto :goto_13

    .line 434
    :pswitch_17
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/d/b;->a:Lcom/google/ads/interactivemedia/v3/b/d/b;

    goto :goto_13

    .line 436
    :pswitch_1a
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/d/b;->b:Lcom/google/ads/interactivemedia/v3/b/d/b;

    goto :goto_13

    .line 440
    :pswitch_1d
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/d/b;->e:Lcom/google/ads/interactivemedia/v3/b/d/b;

    goto :goto_13

    .line 443
    :pswitch_20
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/d/b;->h:Lcom/google/ads/interactivemedia/v3/b/d/b;

    goto :goto_13

    .line 445
    :pswitch_23
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/d/b;->i:Lcom/google/ads/interactivemedia/v3/b/d/b;

    goto :goto_13

    .line 450
    :pswitch_26
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/d/b;->f:Lcom/google/ads/interactivemedia/v3/b/d/b;

    goto :goto_13

    .line 453
    :pswitch_29
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/d/b;->g:Lcom/google/ads/interactivemedia/v3/b/d/b;

    goto :goto_13

    .line 455
    :pswitch_2c
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/d/b;->j:Lcom/google/ads/interactivemedia/v3/b/d/b;

    goto :goto_13

    .line 428
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_20
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_29
        :pswitch_29
        :pswitch_2c
    .end packed-switch
.end method

.method public g()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 777
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    .line 778
    if-nez v0, :cond_8

    .line 779
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->r()I

    move-result v0

    .line 782
    :cond_8
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1c

    .line 783
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->t()Ljava/lang/String;

    move-result-object v0

    .line 791
    :goto_10
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    .line 792
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->o:[Ljava/lang/String;

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->n:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    .line 793
    return-object v0

    .line 784
    :cond_1c
    const/16 v1, 0xc

    if-ne v0, v1, :cond_27

    .line 785
    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 786
    :cond_27
    const/16 v1, 0xd

    if-ne v0, v1, :cond_32

    .line 787
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 789
    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a name but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->f()Lcom/google/ads/interactivemedia/v3/b/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 805
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    .line 806
    if-nez v0, :cond_8

    .line 807
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->r()I

    move-result v0

    .line 810
    :cond_8
    const/16 v1, 0xa

    if-ne v0, v1, :cond_20

    .line 811
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->t()Ljava/lang/String;

    move-result-object v0

    .line 827
    :goto_10
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    .line 828
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->p:[I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->n:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 829
    return-object v0

    .line 812
    :cond_20
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2b

    .line 813
    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 814
    :cond_2b
    const/16 v1, 0x9

    if-ne v0, v1, :cond_36

    .line 815
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 816
    :cond_36
    const/16 v1, 0xb

    if-ne v0, v1, :cond_40

    .line 817
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->l:Ljava/lang/String;

    .line 818
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->l:Ljava/lang/String;

    goto :goto_10

    .line 819
    :cond_40
    const/16 v1, 0xf

    if-ne v0, v1, :cond_4b

    .line 820
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->j:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 821
    :cond_4b
    const/16 v1, 0x10

    if-ne v0, v1, :cond_62

    .line 822
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->e:[C

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->k:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 823
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->k:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    goto :goto_10

    .line 825
    :cond_62
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a string but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->f()Lcom/google/ads/interactivemedia/v3/b/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 840
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    .line 841
    if-nez v1, :cond_9

    .line 842
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->r()I

    move-result v1

    .line 844
    :cond_9
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1c

    .line 845
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    .line 846
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->p:[I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->n:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 847
    const/4 v0, 0x1

    .line 851
    :goto_1b
    return v0

    .line 848
    :cond_1c
    const/4 v2, 0x6

    if-ne v1, v2, :cond_2e

    .line 849
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    .line 850
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->p:[I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->n:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    goto :goto_1b

    .line 853
    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a boolean but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->f()Lcom/google/ads/interactivemedia/v3/b/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 864
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    .line 865
    if-nez v0, :cond_8

    .line 866
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->r()I

    move-result v0

    .line 868
    :cond_8
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1b

    .line 869
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    .line 870
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->p:[I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->n:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 874
    return-void

    .line 872
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected null but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->f()Lcom/google/ads/interactivemedia/v3/b/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k()D
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xb

    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 886
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    .line 887
    if-nez v0, :cond_d

    .line 888
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->r()I

    move-result v0

    .line 891
    :cond_d
    const/16 v1, 0xf

    if-ne v0, v1, :cond_23

    .line 892
    iput v4, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    .line 893
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->p:[I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->n:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 894
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->j:J

    long-to-double v0, v0

    .line 917
    :goto_22
    return-wide v0

    .line 897
    :cond_23
    const/16 v1, 0x10

    if-ne v0, v1, :cond_74

    .line 898
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->e:[C

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->k:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->l:Ljava/lang/String;

    .line 899
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    .line 908
    :cond_3b
    :goto_3b
    iput v5, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    .line 909
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 910
    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->d:Z

    if-nez v2, :cond_ba

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_53

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 911
    :cond_53
    new-instance v2, Lcom/google/ads/interactivemedia/v3/b/d/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 912
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/ads/interactivemedia/v3/b/d/d;-><init>(Ljava/lang/String;)V

    throw v2

    .line 900
    :cond_74
    if-eq v0, v2, :cond_7a

    const/16 v1, 0x9

    if-ne v0, v1, :cond_88

    .line 901
    :cond_7a
    if-ne v0, v2, :cond_85

    const/16 v0, 0x27

    :goto_7e
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->l:Ljava/lang/String;

    goto :goto_3b

    :cond_85
    const/16 v0, 0x22

    goto :goto_7e

    .line 902
    :cond_88
    const/16 v1, 0xa

    if-ne v0, v1, :cond_93

    .line 903
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->l:Ljava/lang/String;

    goto :goto_3b

    .line 904
    :cond_93
    if-eq v0, v5, :cond_3b

    .line 905
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a double but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->f()Lcom/google/ads/interactivemedia/v3/b/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 914
    :cond_ba
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->l:Ljava/lang/String;

    .line 915
    iput v4, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    .line 916
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->p:[I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->n:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    goto/16 :goto_22
.end method

.method public l()J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0xa

    const/16 v2, 0x8

    const/4 v6, 0x0

    .line 931
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    .line 932
    if-nez v0, :cond_d

    .line 933
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->r()I

    move-result v0

    .line 936
    :cond_d
    const/16 v1, 0xf

    if-ne v0, v1, :cond_22

    .line 937
    iput v6, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    .line 938
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->p:[I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->n:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 939
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->j:J

    .line 972
    :goto_21
    return-wide v0

    .line 942
    :cond_22
    const/16 v1, 0x10

    if-ne v0, v1, :cond_6d

    .line 943
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->e:[C

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->k:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->l:Ljava/lang/String;

    .line 944
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    .line 963
    :goto_3a
    const/16 v0, 0xb

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    .line 964
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 965
    double-to-long v0, v2

    .line 966
    long-to-double v4, v0

    cmpl-double v2, v4, v2

    if-eqz v2, :cond_c8

    .line 967
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a long but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 945
    :cond_6d
    if-eq v0, v2, :cond_75

    const/16 v1, 0x9

    if-eq v0, v1, :cond_75

    if-ne v0, v3, :cond_a3

    .line 946
    :cond_75
    if-ne v0, v3, :cond_95

    .line 947
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->l:Ljava/lang/String;

    .line 952
    :goto_7d
    :try_start_7d
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 953
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    .line 954
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->p:[I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->n:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3
    :try_end_92
    .catch Ljava/lang/NumberFormatException; {:try_start_7d .. :try_end_92} :catch_93

    goto :goto_21

    .line 956
    :catch_93
    move-exception v0

    goto :goto_3a

    .line 949
    :cond_95
    if-ne v0, v2, :cond_a0

    const/16 v0, 0x27

    :goto_99
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->l:Ljava/lang/String;

    goto :goto_7d

    :cond_a0
    const/16 v0, 0x22

    goto :goto_99

    .line 960
    :cond_a3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a long but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->f()Lcom/google/ads/interactivemedia/v3/b/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 969
    :cond_c8
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->l:Ljava/lang/String;

    .line 970
    iput v6, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    .line 971
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->p:[I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->n:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    goto/16 :goto_21
.end method

.method public m()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0xa

    const/16 v2, 0x8

    const/4 v6, 0x0

    .line 1155
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    .line 1156
    if-nez v0, :cond_d

    .line 1157
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->r()I

    move-result v0

    .line 1161
    :cond_d
    const/16 v1, 0xf

    if-ne v0, v1, :cond_4d

    .line 1162
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->j:J

    long-to-int v0, v0

    .line 1163
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->j:J

    int-to-long v4, v0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3e

    .line 1164
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected an int but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->j:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1166
    :cond_3e
    iput v6, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    .line 1167
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->p:[I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->n:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 1201
    :goto_4c
    return v0

    .line 1171
    :cond_4d
    const/16 v1, 0x10

    if-ne v0, v1, :cond_98

    .line 1172
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->e:[C

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->k:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->l:Ljava/lang/String;

    .line 1173
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    .line 1192
    :goto_65
    const/16 v0, 0xb

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    .line 1193
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 1194
    double-to-int v0, v2

    .line 1195
    int-to-double v4, v0

    cmpl-double v1, v4, v2

    if-eqz v1, :cond_f3

    .line 1196
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected an int but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1174
    :cond_98
    if-eq v0, v2, :cond_a0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_a0

    if-ne v0, v3, :cond_ce

    .line 1175
    :cond_a0
    if-ne v0, v3, :cond_c0

    .line 1176
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->l:Ljava/lang/String;

    .line 1181
    :goto_a8
    :try_start_a8
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1182
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    .line 1183
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->p:[I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->n:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2
    :try_end_bd
    .catch Ljava/lang/NumberFormatException; {:try_start_a8 .. :try_end_bd} :catch_be

    goto :goto_4c

    .line 1185
    :catch_be
    move-exception v0

    goto :goto_65

    .line 1178
    :cond_c0
    if-ne v0, v2, :cond_cb

    const/16 v0, 0x27

    :goto_c4
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->l:Ljava/lang/String;

    goto :goto_a8

    :cond_cb
    const/16 v0, 0x22

    goto :goto_c4

    .line 1189
    :cond_ce
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected an int but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->f()Lcom/google/ads/interactivemedia/v3/b/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1198
    :cond_f3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->l:Ljava/lang/String;

    .line 1199
    iput v6, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    .line 1200
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->p:[I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->n:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    goto/16 :goto_4c
.end method

.method public n()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1220
    move v0, v1

    .line 1222
    :cond_4
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    .line 1223
    if-nez v2, :cond_c

    .line 1224
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->r()I

    move-result v2

    .line 1227
    :cond_c
    if-ne v2, v5, :cond_2e

    .line 1228
    invoke-direct {p0, v4}, Lcom/google/ads/interactivemedia/v3/b/d/a;->a(I)V

    .line 1229
    add-int/lit8 v0, v0, 0x1

    .line 1248
    :cond_13
    :goto_13
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    .line 1249
    if-nez v0, :cond_4

    .line 1251
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->p:[I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->n:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 1252
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->o:[Ljava/lang/String;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->n:I

    add-int/lit8 v1, v1, -0x1

    const-string v2, "null"

    aput-object v2, v0, v1

    .line 1253
    return-void

    .line 1230
    :cond_2e
    if-ne v2, v4, :cond_36

    .line 1231
    invoke-direct {p0, v5}, Lcom/google/ads/interactivemedia/v3/b/d/a;->a(I)V

    .line 1232
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 1233
    :cond_36
    const/4 v3, 0x4

    if-ne v2, v3, :cond_42

    .line 1234
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->n:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->n:I

    .line 1235
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 1236
    :cond_42
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4e

    .line 1237
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->n:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->n:I

    .line 1238
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 1239
    :cond_4e
    const/16 v3, 0xe

    if-eq v2, v3, :cond_56

    const/16 v3, 0xa

    if-ne v2, v3, :cond_5a

    .line 1240
    :cond_56
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->u()V

    goto :goto_13

    .line 1241
    :cond_5a
    const/16 v3, 0x8

    if-eq v2, v3, :cond_62

    const/16 v3, 0xc

    if-ne v2, v3, :cond_68

    .line 1242
    :cond_62
    const/16 v2, 0x27

    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/b/d/a;->c(C)V

    goto :goto_13

    .line 1243
    :cond_68
    const/16 v3, 0x9

    if-eq v2, v3, :cond_70

    const/16 v3, 0xd

    if-ne v2, v3, :cond_76

    .line 1244
    :cond_70
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/b/d/a;->c(C)V

    goto :goto_13

    .line 1245
    :cond_76
    const/16 v3, 0x10

    if-ne v2, v3, :cond_13

    .line 1246
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->k:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    goto :goto_13
.end method

.method public p()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1460
    const/4 v0, 0x0

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->n:I

    :goto_e
    if-ge v0, v2, :cond_41

    .line 1461
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->m:[I

    aget v3, v3, v0

    packed-switch v3, :pswitch_data_46

    .line 1460
    :cond_17
    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 1464
    :pswitch_1a
    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->p:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 1470
    :pswitch_2e
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1471
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->o:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_17

    .line 1472
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->o:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 1482
    :cond_41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1461
    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_1a
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
    .end packed-switch
.end method

.method public final q()Z
    .registers 2

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->d:Z

    return v0
.end method

.method r()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x7

    const/4 v7, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 462
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->m:[I

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->n:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    .line 463
    if-ne v4, v2, :cond_2b

    .line 464
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->m:[I

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->n:I

    add-int/lit8 v6, v6, -0x1

    aput v1, v5, v6

    .line 549
    :cond_17
    :goto_17
    :pswitch_17
    :sswitch_17
    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b(Z)I

    move-result v5

    .line 550
    sparse-switch v5, :sswitch_data_172

    .line 576
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    .line 579
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->o()I

    move-result v0

    .line 580
    if-eqz v0, :cond_14f

    .line 594
    :cond_2a
    :goto_2a
    return v0

    .line 465
    :cond_2b
    if-ne v4, v1, :cond_42

    .line 467
    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b(Z)I

    move-result v5

    .line 468
    sparse-switch v5, :sswitch_data_190

    .line 476
    const-string v0, "Unterminated array"

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 470
    :sswitch_3b
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    goto :goto_2a

    .line 472
    :sswitch_3e
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->v()V

    goto :goto_17

    .line 478
    :cond_42
    const/4 v5, 0x3

    if-eq v4, v5, :cond_47

    if-ne v4, v7, :cond_a3

    .line 479
    :cond_47
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->m:[I

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->n:I

    add-int/lit8 v5, v5, -0x1

    aput v0, v3, v5

    .line 481
    if-ne v4, v7, :cond_66

    .line 482
    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b(Z)I

    move-result v0

    .line 483
    sparse-switch v0, :sswitch_data_19e

    .line 491
    const-string v0, "Unterminated object"

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 485
    :sswitch_5f
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    move v0, v1

    goto :goto_2a

    .line 487
    :sswitch_63
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->v()V

    .line 494
    :cond_66
    :sswitch_66
    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b(Z)I

    move-result v0

    .line 495
    sparse-switch v0, :sswitch_data_1ac

    .line 508
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->v()V

    .line 509
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    .line 510
    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->a(C)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 511
    const/16 v0, 0xe

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    goto :goto_2a

    .line 497
    :sswitch_82
    const/16 v0, 0xd

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    goto :goto_2a

    .line 499
    :sswitch_87
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->v()V

    .line 500
    const/16 v0, 0xc

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    goto :goto_2a

    .line 502
    :sswitch_8f
    if-eq v4, v7, :cond_95

    .line 503
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    move v0, v1

    goto :goto_2a

    .line 505
    :cond_95
    const-string v0, "Expected name"

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 513
    :cond_9c
    const-string v0, "Expected name"

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 516
    :cond_a3
    if-ne v4, v0, :cond_dc

    .line 517
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->m:[I

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->n:I

    add-int/lit8 v6, v6, -0x1

    aput v7, v5, v6

    .line 519
    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b(Z)I

    move-result v5

    .line 520
    packed-switch v5, :pswitch_data_1ba

    .line 530
    :pswitch_b4
    const-string v0, "Expected \':\'"

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 524
    :pswitch_bb
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->v()V

    .line 525
    iget v5, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->g:I

    if-lt v5, v6, :cond_ca

    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b(I)Z

    move-result v5

    if-eqz v5, :cond_17

    :cond_ca
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->e:[C

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    aget-char v5, v5, v6

    const/16 v6, 0x3e

    if-ne v5, v6, :cond_17

    .line 526
    iget v5, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    goto/16 :goto_17

    .line 532
    :cond_dc
    const/4 v5, 0x6

    if-ne v4, v5, :cond_f0

    .line 533
    iget-boolean v5, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->d:Z

    if-eqz v5, :cond_e6

    .line 534
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->z()V

    .line 536
    :cond_e6
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->m:[I

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->n:I

    add-int/lit8 v6, v6, -0x1

    aput v3, v5, v6

    goto/16 :goto_17

    .line 537
    :cond_f0
    if-ne v4, v3, :cond_10b

    .line 538
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b(Z)I

    move-result v5

    .line 539
    const/4 v6, -0x1

    if-ne v5, v6, :cond_100

    .line 540
    const/16 v0, 0x11

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    goto/16 :goto_2a

    .line 542
    :cond_100
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->v()V

    .line 543
    iget v5, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    goto/16 :goto_17

    .line 545
    :cond_10b
    const/16 v5, 0x8

    if-ne v4, v5, :cond_17

    .line 546
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :sswitch_117
    if-ne v4, v2, :cond_11d

    .line 553
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    goto/16 :goto_2a

    .line 559
    :cond_11d
    :sswitch_11d
    if-eq v4, v2, :cond_121

    if-ne v4, v1, :cond_12f

    .line 560
    :cond_121
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->v()V

    .line 561
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    .line 562
    iput v3, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    move v0, v3

    goto/16 :goto_2a

    .line 564
    :cond_12f
    const-string v0, "Unexpected value"

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 567
    :sswitch_136
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->v()V

    .line 568
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    goto/16 :goto_2a

    .line 570
    :sswitch_13f
    const/16 v0, 0x9

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    goto/16 :goto_2a

    .line 572
    :sswitch_145
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    goto/16 :goto_2a

    .line 574
    :sswitch_14a
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    move v0, v2

    goto/16 :goto_2a

    .line 584
    :cond_14f
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->s()I

    move-result v0

    .line 585
    if-nez v0, :cond_2a

    .line 589
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->e:[C

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->f:I

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->a(C)Z

    move-result v0

    if-nez v0, :cond_168

    .line 590
    const-string v0, "Expected value"

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 593
    :cond_168
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->v()V

    .line 594
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    goto/16 :goto_2a

    .line 550
    nop

    :sswitch_data_172
    .sparse-switch
        0x22 -> :sswitch_13f
        0x27 -> :sswitch_136
        0x2c -> :sswitch_11d
        0x3b -> :sswitch_11d
        0x5b -> :sswitch_145
        0x5d -> :sswitch_117
        0x7b -> :sswitch_14a
    .end sparse-switch

    .line 468
    :sswitch_data_190
    .sparse-switch
        0x2c -> :sswitch_17
        0x3b -> :sswitch_3e
        0x5d -> :sswitch_3b
    .end sparse-switch

    .line 483
    :sswitch_data_19e
    .sparse-switch
        0x2c -> :sswitch_66
        0x3b -> :sswitch_63
        0x7d -> :sswitch_5f
    .end sparse-switch

    .line 495
    :sswitch_data_1ac
    .sparse-switch
        0x22 -> :sswitch_82
        0x27 -> :sswitch_87
        0x7d -> :sswitch_8f
    .end sparse-switch

    .line 520
    :pswitch_data_1ba
    .packed-switch 0x3a
        :pswitch_17
        :pswitch_b4
        :pswitch_b4
        :pswitch_bb
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
