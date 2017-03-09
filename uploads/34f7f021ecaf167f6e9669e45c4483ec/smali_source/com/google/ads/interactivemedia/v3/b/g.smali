.class public final Lcom/google/ads/interactivemedia/v3/b/g;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private a:Lcom/google/ads/interactivemedia/v3/b/b/d;

.field private b:Lcom/google/ads/interactivemedia/v3/b/u;

.field private c:Lcom/google/ads/interactivemedia/v3/b/e;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/ads/interactivemedia/v3/b/h",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/b/w;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/b/w;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/b/d;->a:Lcom/google/ads/interactivemedia/v3/b/b/d;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/g;->a:Lcom/google/ads/interactivemedia/v3/b/b/d;

    .line 80
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/u;->a:Lcom/google/ads/interactivemedia/v3/b/u;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/g;->b:Lcom/google/ads/interactivemedia/v3/b/u;

    .line 81
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/d;->a:Lcom/google/ads/interactivemedia/v3/b/d;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/g;->c:Lcom/google/ads/interactivemedia/v3/b/e;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/g;->d:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/g;->e:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/g;->f:Ljava/util/List;

    .line 87
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/b/g;->g:Z

    .line 89
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/b/g;->i:I

    .line 90
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/b/g;->j:I

    .line 91
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/b/g;->k:Z

    .line 92
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/b/g;->l:Z

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/b/g;->m:Z

    .line 94
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/b/g;->n:Z

    .line 95
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/b/g;->o:Z

    .line 96
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/b/g;->p:Z

    .line 105
    return-void
.end method

.method private a(Ljava/lang/String;IILjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/b/w;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 578
    if-eqz p1, :cond_3c

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 579
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/a;

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/b/a;-><init>(Ljava/lang/String;)V

    .line 586
    :goto_14
    const-class v1, Ljava/util/Date;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/b/c/a;->b(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/b/c/a;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/ads/interactivemedia/v3/b/b/a/l;->a(Lcom/google/ads/interactivemedia/v3/b/c/a;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/b/w;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 587
    const-class v1, Ljava/sql/Timestamp;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/b/c/a;->b(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/b/c/a;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/ads/interactivemedia/v3/b/b/a/l;->a(Lcom/google/ads/interactivemedia/v3/b/c/a;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/b/w;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    const-class v1, Ljava/sql/Date;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/b/c/a;->b(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/b/c/a;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/ads/interactivemedia/v3/b/b/a/l;->a(Lcom/google/ads/interactivemedia/v3/b/c/a;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/b/w;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    :cond_3b
    return-void

    .line 580
    :cond_3c
    if-eq p2, v2, :cond_3b

    if-eq p3, v2, :cond_3b

    .line 581
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/a;

    invoke-direct {v0, p2, p3}, Lcom/google/ads/interactivemedia/v3/b/a;-><init>(II)V

    goto :goto_14
.end method


# virtual methods
.method public a()Lcom/google/ads/interactivemedia/v3/b/f;
    .registers 14

    .prologue
    .line 563
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 564
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/g;->e:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 565
    invoke-static {v12}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 566
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/g;->f:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 567
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/g;->h:Ljava/lang/String;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/g;->i:I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/g;->j:I

    invoke-direct {p0, v0, v1, v2, v12}, Lcom/google/ads/interactivemedia/v3/b/g;->a(Ljava/lang/String;IILjava/util/List;)V

    .line 569
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/f;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/g;->a:Lcom/google/ads/interactivemedia/v3/b/b/d;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/g;->c:Lcom/google/ads/interactivemedia/v3/b/e;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/b/g;->d:Ljava/util/Map;

    iget-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/b/g;->g:Z

    iget-boolean v5, p0, Lcom/google/ads/interactivemedia/v3/b/g;->k:Z

    iget-boolean v6, p0, Lcom/google/ads/interactivemedia/v3/b/g;->o:Z

    iget-boolean v7, p0, Lcom/google/ads/interactivemedia/v3/b/g;->m:Z

    iget-boolean v8, p0, Lcom/google/ads/interactivemedia/v3/b/g;->n:Z

    iget-boolean v9, p0, Lcom/google/ads/interactivemedia/v3/b/g;->p:Z

    iget-boolean v10, p0, Lcom/google/ads/interactivemedia/v3/b/g;->l:Z

    iget-object v11, p0, Lcom/google/ads/interactivemedia/v3/b/g;->b:Lcom/google/ads/interactivemedia/v3/b/u;

    invoke-direct/range {v0 .. v12}, Lcom/google/ads/interactivemedia/v3/b/f;-><init>(Lcom/google/ads/interactivemedia/v3/b/b/d;Lcom/google/ads/interactivemedia/v3/b/e;Ljava/util/Map;ZZZZZZZLcom/google/ads/interactivemedia/v3/b/u;Ljava/util/List;)V

    return-object v0
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/b/b;)Lcom/google/ads/interactivemedia/v3/b/g;
    .registers 5

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/g;->a:Lcom/google/ads/interactivemedia/v3/b/b/d;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/ads/interactivemedia/v3/b/b/d;->a(Lcom/google/ads/interactivemedia/v3/b/b;ZZ)Lcom/google/ads/interactivemedia/v3/b/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/g;->a:Lcom/google/ads/interactivemedia/v3/b/b/d;

    .line 334
    return-object p0
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/b/w;)Lcom/google/ads/interactivemedia/v3/b/g;
    .registers 3

    .prologue
    .line 498
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/g;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    return-object p0
.end method

.method public a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/b/g;
    .registers 5

    .prologue
    .line 472
    instance-of v0, p2, Lcom/google/ads/interactivemedia/v3/b/s;

    if-nez v0, :cond_10

    instance-of v0, p2, Lcom/google/ads/interactivemedia/v3/b/k;

    if-nez v0, :cond_10

    instance-of v0, p2, Lcom/google/ads/interactivemedia/v3/b/h;

    if-nez v0, :cond_10

    instance-of v0, p2, Lcom/google/ads/interactivemedia/v3/b/v;

    if-eqz v0, :cond_49

    :cond_10
    const/4 v0, 0x1

    :goto_11
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/b/b/a;->a(Z)V

    .line 476
    instance-of v0, p2, Lcom/google/ads/interactivemedia/v3/b/h;

    if-eqz v0, :cond_20

    .line 477
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/g;->d:Ljava/util/Map;

    move-object v0, p2

    check-cast v0, Lcom/google/ads/interactivemedia/v3/b/h;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    :cond_20
    instance-of v0, p2, Lcom/google/ads/interactivemedia/v3/b/s;

    if-nez v0, :cond_28

    instance-of v0, p2, Lcom/google/ads/interactivemedia/v3/b/k;

    if-eqz v0, :cond_35

    .line 480
    :cond_28
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/b/c/a;->a(Ljava/lang/reflect/Type;)Lcom/google/ads/interactivemedia/v3/b/c/a;

    move-result-object v0

    .line 481
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/g;->e:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/google/ads/interactivemedia/v3/b/b/a/l;->b(Lcom/google/ads/interactivemedia/v3/b/c/a;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/b/w;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    :cond_35
    instance-of v0, p2, Lcom/google/ads/interactivemedia/v3/b/v;

    if-eqz v0, :cond_48

    .line 484
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/g;->e:Ljava/util/List;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/b/c/a;->a(Ljava/lang/reflect/Type;)Lcom/google/ads/interactivemedia/v3/b/c/a;

    move-result-object v1

    check-cast p2, Lcom/google/ads/interactivemedia/v3/b/v;

    invoke-static {v1, p2}, Lcom/google/ads/interactivemedia/v3/b/b/a/n;->a(Lcom/google/ads/interactivemedia/v3/b/c/a;Lcom/google/ads/interactivemedia/v3/b/v;)Lcom/google/ads/interactivemedia/v3/b/w;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    :cond_48
    return-object p0

    .line 472
    :cond_49
    const/4 v0, 0x0

    goto :goto_11
.end method
