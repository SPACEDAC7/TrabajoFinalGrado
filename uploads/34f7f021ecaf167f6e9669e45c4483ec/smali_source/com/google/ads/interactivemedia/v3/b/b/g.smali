.class public final Lcom/google/ads/interactivemedia/v3/b/b/g;
.super Ljava/util/AbstractMap;
.source "IMASDK"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/b/b/g$b;,
        Lcom/google/ads/interactivemedia/v3/b/b/g$a;,
        Lcom/google/ads/interactivemedia/v3/b/b/g$c;,
        Lcom/google/ads/interactivemedia/v3/b/b/g$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic f:Z

.field private static final g:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field b:Lcom/google/ads/interactivemedia/v3/b/b/g$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/b/b/g$d",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field c:I

.field d:I

.field final e:Lcom/google/ads/interactivemedia/v3/b/b/g$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/b/b/g$d",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private h:Lcom/google/ads/interactivemedia/v3/b/b/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/b/b/g$a;"
        }
    .end annotation
.end field

.field private i:Lcom/google/ads/interactivemedia/v3/b/b/g$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/b/b/g$b;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-class v0, Lcom/google/ads/interactivemedia/v3/b/b/g;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/ads/interactivemedia/v3/b/b/g;->f:Z

    .line 40
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/b/g$1;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/b/b/g$1;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/b/b/g;->g:Ljava/util/Comparator;

    return-void

    .line 38
    :cond_13
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 60
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/b/g;->g:Ljava/util/Comparator;

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/b/g;-><init>(Ljava/util/Comparator;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 48
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/g;->c:I

    .line 49
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/g;->d:I

    .line 52
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/b/b/g$d;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/g;->e:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 72
    if-eqz p1, :cond_14

    :goto_11
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/b/g;->a:Ljava/util/Comparator;

    .line 75
    return-void

    .line 72
    :cond_14
    sget-object p1, Lcom/google/ads/interactivemedia/v3/b/b/g;->g:Ljava/util/Comparator;

    goto :goto_11
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/b/b/g$d;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/b/b/g$d",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 374
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->b:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 375
    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->c:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 376
    iget-object v4, v3, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->b:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 377
    iget-object v5, v3, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->c:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 380
    iput-object v4, p1, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->c:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 381
    if-eqz v4, :cond_f

    .line 382
    iput-object p1, v4, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->a:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 385
    :cond_f
    invoke-direct {p0, p1, v3}, Lcom/google/ads/interactivemedia/v3/b/b/g;->a(Lcom/google/ads/interactivemedia/v3/b/b/g$d;Lcom/google/ads/interactivemedia/v3/b/b/g$d;)V

    .line 388
    iput-object p1, v3, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->b:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 389
    iput-object v3, p1, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->a:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 392
    if-eqz v0, :cond_36

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->h:I

    move v2, v0

    :goto_1b
    if-eqz v4, :cond_38

    iget v0, v4, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->h:I

    :goto_1f
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->h:I

    .line 394
    iget v0, p1, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->h:I

    if-eqz v5, :cond_2d

    iget v1, v5, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->h:I

    :cond_2d
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->h:I

    .line 396
    return-void

    :cond_36
    move v2, v1

    .line 392
    goto :goto_1b

    :cond_38
    move v0, v1

    goto :goto_1f
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/b/b/g$d;Lcom/google/ads/interactivemedia/v3/b/b/g$d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/b/b/g$d",
            "<TK;TV;>;",
            "Lcom/google/ads/interactivemedia/v3/b/b/g$d",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 285
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->a:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 286
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->a:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 287
    if-eqz p2, :cond_9

    .line 288
    iput-object v0, p2, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->a:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 291
    :cond_9
    if-eqz v0, :cond_23

    .line 292
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->b:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    if-ne v1, p1, :cond_12

    .line 293
    iput-object p2, v0, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->b:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 301
    :goto_11
    return-void

    .line 295
    :cond_12
    sget-boolean v1, Lcom/google/ads/interactivemedia/v3/b/b/g;->f:Z

    if-nez v1, :cond_20

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->c:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    if-eq v1, p1, :cond_20

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 296
    :cond_20
    iput-object p2, v0, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->c:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    goto :goto_11

    .line 299
    :cond_23
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/b/b/g;->b:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    goto :goto_11
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 208
    if-eq p1, p2, :cond_a

    if-eqz p1, :cond_c

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private b(Lcom/google/ads/interactivemedia/v3/b/b/g$d;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/b/b/g$d",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 402
    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->b:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 403
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->c:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 404
    iget-object v4, v3, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->b:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 405
    iget-object v5, v3, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->c:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 408
    iput-object v5, p1, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->b:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 409
    if-eqz v5, :cond_f

    .line 410
    iput-object p1, v5, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->a:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 413
    :cond_f
    invoke-direct {p0, p1, v3}, Lcom/google/ads/interactivemedia/v3/b/b/g;->a(Lcom/google/ads/interactivemedia/v3/b/b/g$d;Lcom/google/ads/interactivemedia/v3/b/b/g$d;)V

    .line 416
    iput-object p1, v3, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->c:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 417
    iput-object v3, p1, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->a:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 420
    if-eqz v0, :cond_36

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->h:I

    move v2, v0

    :goto_1b
    if-eqz v5, :cond_38

    iget v0, v5, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->h:I

    :goto_1f
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->h:I

    .line 422
    iget v0, p1, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->h:I

    if-eqz v4, :cond_2d

    iget v1, v4, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->h:I

    :cond_2d
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->h:I

    .line 424
    return-void

    :cond_36
    move v2, v1

    .line 420
    goto :goto_1b

    :cond_38
    move v0, v1

    goto :goto_1f
.end method

.method private b(Lcom/google/ads/interactivemedia/v3/b/b/g$d;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/b/b/g$d",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v1, 0x0

    .line 311
    :goto_3
    if-eqz p1, :cond_30

    .line 312
    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->b:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 313
    iget-object v4, p1, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->c:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 314
    if-eqz v3, :cond_31

    iget v0, v3, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->h:I

    move v2, v0

    .line 315
    :goto_e
    if-eqz v4, :cond_33

    iget v0, v4, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->h:I

    .line 317
    :goto_12
    sub-int v5, v2, v0

    .line 318
    const/4 v6, -0x2

    if-ne v5, v6, :cond_4c

    .line 319
    iget-object v3, v4, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->b:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 320
    iget-object v0, v4, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->c:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 321
    if-eqz v0, :cond_35

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->h:I

    move v2, v0

    .line 322
    :goto_20
    if-eqz v3, :cond_37

    iget v0, v3, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->h:I

    .line 324
    :goto_24
    sub-int/2addr v0, v2

    .line 325
    if-eq v0, v7, :cond_2b

    if-nez v0, :cond_39

    if-nez p2, :cond_39

    .line 326
    :cond_2b
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/b/b/g;->a(Lcom/google/ads/interactivemedia/v3/b/b/g$d;)V

    .line 332
    :goto_2e
    if-eqz p2, :cond_68

    .line 368
    :cond_30
    :goto_30
    return-void

    :cond_31
    move v2, v1

    .line 314
    goto :goto_e

    :cond_33
    move v0, v1

    .line 315
    goto :goto_12

    :cond_35
    move v2, v1

    .line 321
    goto :goto_20

    :cond_37
    move v0, v1

    .line 322
    goto :goto_24

    .line 328
    :cond_39
    sget-boolean v2, Lcom/google/ads/interactivemedia/v3/b/b/g;->f:Z

    if-nez v2, :cond_45

    if-eq v0, v8, :cond_45

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 329
    :cond_45
    invoke-direct {p0, v4}, Lcom/google/ads/interactivemedia/v3/b/b/g;->b(Lcom/google/ads/interactivemedia/v3/b/b/g$d;)V

    .line 330
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/b/b/g;->a(Lcom/google/ads/interactivemedia/v3/b/b/g$d;)V

    goto :goto_2e

    .line 336
    :cond_4c
    const/4 v4, 0x2

    if-ne v5, v4, :cond_82

    .line 337
    iget-object v4, v3, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->b:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 338
    iget-object v0, v3, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->c:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 339
    if-eqz v0, :cond_6b

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->h:I

    move v2, v0

    .line 340
    :goto_58
    if-eqz v4, :cond_6d

    iget v0, v4, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->h:I

    .line 342
    :goto_5c
    sub-int/2addr v0, v2

    .line 343
    if-eq v0, v8, :cond_63

    if-nez v0, :cond_6f

    if-nez p2, :cond_6f

    .line 344
    :cond_63
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/b/b/g;->b(Lcom/google/ads/interactivemedia/v3/b/b/g$d;)V

    .line 350
    :goto_66
    if-nez p2, :cond_30

    .line 311
    :cond_68
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->a:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    goto :goto_3

    :cond_6b
    move v2, v1

    .line 339
    goto :goto_58

    :cond_6d
    move v0, v1

    .line 340
    goto :goto_5c

    .line 346
    :cond_6f
    sget-boolean v2, Lcom/google/ads/interactivemedia/v3/b/b/g;->f:Z

    if-nez v2, :cond_7b

    if-eq v0, v7, :cond_7b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 347
    :cond_7b
    invoke-direct {p0, v3}, Lcom/google/ads/interactivemedia/v3/b/b/g;->a(Lcom/google/ads/interactivemedia/v3/b/b/g$d;)V

    .line 348
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/b/b/g;->b(Lcom/google/ads/interactivemedia/v3/b/b/g$d;)V

    goto :goto_66

    .line 354
    :cond_82
    if-nez v5, :cond_8b

    .line 355
    add-int/lit8 v0, v2, 0x1

    iput v0, p1, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->h:I

    .line 356
    if-eqz p2, :cond_68

    goto :goto_30

    .line 361
    :cond_8b
    sget-boolean v3, Lcom/google/ads/interactivemedia/v3/b/b/g;->f:Z

    if-nez v3, :cond_99

    if-eq v5, v7, :cond_99

    if-eq v5, v8, :cond_99

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 362
    :cond_99
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->h:I

    .line 363
    if-nez p2, :cond_68

    goto :goto_30
.end method


# virtual methods
.method a(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/b/b/g$d;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/ads/interactivemedia/v3/b/b/g$d",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 186
    if-eqz p1, :cond_8

    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v1}, Lcom/google/ads/interactivemedia/v3/b/b/g;->a(Ljava/lang/Object;Z)Lcom/google/ads/interactivemedia/v3/b/b/g$d;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v0

    .line 188
    :cond_8
    :goto_8
    return-object v0

    .line 187
    :catch_9
    move-exception v1

    goto :goto_8
.end method

.method a(Ljava/lang/Object;Z)Lcom/google/ads/interactivemedia/v3/b/b/g$d;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/google/ads/interactivemedia/v3/b/b/g$d",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 122
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/b/b/g;->a:Ljava/util/Comparator;

    .line 123
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/b/g;->b:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 124
    const/4 v0, 0x0

    .line 126
    if-eqz v2, :cond_8b

    .line 129
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/b/g;->g:Ljava/util/Comparator;

    if-ne v5, v0, :cond_1b

    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    .line 134
    :goto_f
    if-eqz v0, :cond_1d

    iget-object v3, v2, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->f:Ljava/lang/Object;

    .line 135
    invoke-interface {v0, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    .line 139
    :goto_17
    if-nez v3, :cond_24

    move-object v1, v2

    .line 180
    :cond_1a
    :goto_1a
    return-object v1

    :cond_1b
    move-object v0, v1

    .line 129
    goto :goto_f

    .line 135
    :cond_1d
    iget-object v3, v2, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->f:Ljava/lang/Object;

    .line 136
    invoke-interface {v5, p1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto :goto_17

    .line 144
    :cond_24
    if-gez v3, :cond_5c

    iget-object v4, v2, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->b:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 145
    :goto_28
    if-nez v4, :cond_5f

    move v6, v3

    move-object v3, v2

    move v2, v6

    .line 154
    :goto_2d
    if-eqz p2, :cond_1a

    .line 159
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/g;->e:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 161
    if-nez v3, :cond_78

    .line 163
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/b/g;->g:Ljava/util/Comparator;

    if-ne v5, v0, :cond_61

    instance-of v0, p1, Ljava/lang/Comparable;

    if-nez v0, :cond_61

    .line 164
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not Comparable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_5c
    iget-object v4, v2, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->c:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    goto :goto_28

    :cond_5f
    move-object v2, v4

    .line 150
    goto :goto_f

    .line 166
    :cond_61
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->e:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    invoke-direct {v0, v3, p1, v1, v2}, Lcom/google/ads/interactivemedia/v3/b/b/g$d;-><init>(Lcom/google/ads/interactivemedia/v3/b/b/g$d;Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/b/b/g$d;Lcom/google/ads/interactivemedia/v3/b/b/g$d;)V

    .line 167
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/g;->b:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 177
    :goto_6a
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/g;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/g;->c:I

    .line 178
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/g;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/g;->d:I

    move-object v1, v0

    .line 180
    goto :goto_1a

    .line 169
    :cond_78
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    iget-object v4, v1, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->e:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    invoke-direct {v0, v3, p1, v1, v4}, Lcom/google/ads/interactivemedia/v3/b/b/g$d;-><init>(Lcom/google/ads/interactivemedia/v3/b/b/g$d;Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/b/b/g$d;Lcom/google/ads/interactivemedia/v3/b/b/g$d;)V

    .line 170
    if-gez v2, :cond_88

    .line 171
    iput-object v0, v3, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->b:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 175
    :goto_83
    const/4 v1, 0x1

    invoke-direct {p0, v3, v1}, Lcom/google/ads/interactivemedia/v3/b/b/g;->b(Lcom/google/ads/interactivemedia/v3/b/b/g$d;Z)V

    goto :goto_6a

    .line 173
    :cond_88
    iput-object v0, v3, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->c:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    goto :goto_83

    :cond_8b
    move-object v3, v2

    move v2, v0

    goto :goto_2d
.end method

.method a(Ljava/util/Map$Entry;)Lcom/google/ads/interactivemedia/v3/b/b/g$d;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<**>;)",
            "Lcom/google/ads/interactivemedia/v3/b/b/g$d",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 202
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/b/g;->a(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_1a

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->g:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/ads/interactivemedia/v3/b/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    .line 204
    :goto_17
    if-eqz v1, :cond_1c

    :goto_19
    return-object v0

    .line 203
    :cond_1a
    const/4 v1, 0x0

    goto :goto_17

    .line 204
    :cond_1c
    const/4 v0, 0x0

    goto :goto_19
.end method

.method a(Lcom/google/ads/interactivemedia/v3/b/b/g$d;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/b/b/g$d",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 218
    if-eqz p2, :cond_10

    .line 219
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->e:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->d:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->d:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 220
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->d:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->e:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->e:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 223
    :cond_10
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->b:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 224
    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->c:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 225
    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->a:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 226
    if-eqz v0, :cond_50

    if-eqz v1, :cond_50

    .line 237
    iget v3, v0, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->h:I

    iget v4, v1, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->h:I

    if-le v3, v4, :cond_4b

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->b()Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    move-result-object v0

    .line 238
    :goto_24
    invoke-virtual {p0, v0, v2}, Lcom/google/ads/interactivemedia/v3/b/b/g;->a(Lcom/google/ads/interactivemedia/v3/b/b/g$d;Z)V

    .line 241
    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->b:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 242
    if-eqz v3, :cond_73

    .line 243
    iget v1, v3, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->h:I

    .line 244
    iput-object v3, v0, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->b:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 245
    iput-object v0, v3, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->a:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 246
    iput-object v5, p1, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->b:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 250
    :goto_33
    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->c:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 251
    if-eqz v3, :cond_3f

    .line 252
    iget v2, v3, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->h:I

    .line 253
    iput-object v3, v0, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->c:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 254
    iput-object v0, v3, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->a:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 255
    iput-object v5, p1, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->c:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 258
    :cond_3f
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->h:I

    .line 259
    invoke-direct {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/b/b/g;->a(Lcom/google/ads/interactivemedia/v3/b/b/g$d;Lcom/google/ads/interactivemedia/v3/b/b/g$d;)V

    .line 274
    :goto_4a
    return-void

    .line 237
    :cond_4b
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->a()Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    move-result-object v0

    goto :goto_24

    .line 261
    :cond_50
    if-eqz v0, :cond_67

    .line 262
    invoke-direct {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/b/b/g;->a(Lcom/google/ads/interactivemedia/v3/b/b/g$d;Lcom/google/ads/interactivemedia/v3/b/b/g$d;)V

    .line 263
    iput-object v5, p1, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->b:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 271
    :goto_57
    invoke-direct {p0, v3, v2}, Lcom/google/ads/interactivemedia/v3/b/b/g;->b(Lcom/google/ads/interactivemedia/v3/b/b/g$d;Z)V

    .line 272
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/g;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/g;->c:I

    .line 273
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/g;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/g;->d:I

    goto :goto_4a

    .line 264
    :cond_67
    if-eqz v1, :cond_6f

    .line 265
    invoke-direct {p0, p1, v1}, Lcom/google/ads/interactivemedia/v3/b/b/g;->a(Lcom/google/ads/interactivemedia/v3/b/b/g$d;Lcom/google/ads/interactivemedia/v3/b/b/g$d;)V

    .line 266
    iput-object v5, p1, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->c:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    goto :goto_57

    .line 268
    :cond_6f
    invoke-direct {p0, p1, v5}, Lcom/google/ads/interactivemedia/v3/b/b/g;->a(Lcom/google/ads/interactivemedia/v3/b/b/g$d;Lcom/google/ads/interactivemedia/v3/b/b/g$d;)V

    goto :goto_57

    :cond_73
    move v1, v2

    goto :goto_33
.end method

.method b(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/b/b/g$d;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/ads/interactivemedia/v3/b/b/g$d",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/b/b/g;->a(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    move-result-object v0

    .line 278
    if-eqz v0, :cond_a

    .line 279
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/b/b/g;->a(Lcom/google/ads/interactivemedia/v3/b/b/g$d;Z)V

    .line 281
    :cond_a
    return-object v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/g;->b:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/g;->c:I

    .line 103
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/g;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/g;->d:I

    .line 106
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/g;->e:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 107
    iput-object v0, v0, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->e:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    iput-object v0, v0, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->d:Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    .line 108
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/b/b/g;->a(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 430
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/g;->h:Lcom/google/ads/interactivemedia/v3/b/b/g$a;

    .line 431
    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/b/g$a;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/b/b/g$a;-><init>(Lcom/google/ads/interactivemedia/v3/b/b/g;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/g;->h:Lcom/google/ads/interactivemedia/v3/b/b/g$a;

    goto :goto_4
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/b/b/g;->a(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->g:Ljava/lang/Object;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 435
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/g;->i:Lcom/google/ads/interactivemedia/v3/b/b/g$b;

    .line 436
    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/b/g$b;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/b/b/g$b;-><init>(Lcom/google/ads/interactivemedia/v3/b/b/g;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/g;->i:Lcom/google/ads/interactivemedia/v3/b/b/g$b;

    goto :goto_4
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 91
    if-nez p1, :cond_a

    .line 92
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_a
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/b/b/g;->a(Ljava/lang/Object;Z)Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    move-result-object v0

    .line 95
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->g:Ljava/lang/Object;

    .line 96
    iput-object p2, v0, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->g:Ljava/lang/Object;

    .line 97
    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/b/b/g;->b(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/b/b/g$d;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/b/b/g$d;->g:Ljava/lang/Object;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public size()I
    .registers 2

    .prologue
    .line 78
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/g;->c:I

    return v0
.end method
