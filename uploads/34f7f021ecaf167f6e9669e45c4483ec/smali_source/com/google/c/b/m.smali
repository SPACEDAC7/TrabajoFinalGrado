.class public abstract Lcom/google/c/b/m;
.super Lcom/google/c/b/k;
.source "IMASDK"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/c/b/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/c/b/k",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/google/c/b/k;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/c/b/m;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/google/c/b/m",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lcom/google/c/b/ag;

    invoke-direct {v0, p0}, Lcom/google/c/b/ag;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/util/Collection;)Lcom/google/c/b/m;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TE;>;)",
            "Lcom/google/c/b/m",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 236
    instance-of v0, p0, Lcom/google/c/b/k;

    if-eqz v0, :cond_19

    .line 238
    check-cast p0, Lcom/google/c/b/k;

    invoke-virtual {p0}, Lcom/google/c/b/k;->d()Lcom/google/c/b/m;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lcom/google/c/b/m;->b()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Lcom/google/c/b/m;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/b/m;->a([Ljava/lang/Object;)Lcom/google/c/b/m;

    move-result-object v0

    .line 241
    :cond_18
    :goto_18
    return-object v0

    :cond_19
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/b/m;->b([Ljava/lang/Object;)Lcom/google/c/b/m;

    move-result-object v0

    goto :goto_18
.end method

.method static a([Ljava/lang/Object;)Lcom/google/c/b/m;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/c/b/m",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 340
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/google/c/b/m;->b([Ljava/lang/Object;I)Lcom/google/c/b/m;

    move-result-object v0

    return-object v0
.end method

.method private static varargs b([Ljava/lang/Object;)Lcom/google/c/b/m;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/c/b/m",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 331
    invoke-static {p0}, Lcom/google/c/b/w;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/b/m;->a([Ljava/lang/Object;)Lcom/google/c/b/m;

    move-result-object v0

    return-object v0
.end method

.method static b([Ljava/lang/Object;I)Lcom/google/c/b/m;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/c/b/m",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 348
    packed-switch p1, :pswitch_data_1e

    .line 356
    array-length v0, p0

    if-ge p1, v0, :cond_a

    .line 357
    invoke-static {p0, p1}, Lcom/google/c/b/w;->b([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    .line 359
    :cond_a
    new-instance v0, Lcom/google/c/b/ab;

    invoke-direct {v0, p0}, Lcom/google/c/b/ab;-><init>([Ljava/lang/Object;)V

    :goto_f
    return-object v0

    .line 350
    :pswitch_10
    invoke-static {}, Lcom/google/c/b/m;->e()Lcom/google/c/b/m;

    move-result-object v0

    goto :goto_f

    .line 353
    :pswitch_15
    new-instance v0, Lcom/google/c/b/ag;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Lcom/google/c/b/ag;-><init>(Ljava/lang/Object;)V

    goto :goto_f

    .line 348
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_10
        :pswitch_15
    .end packed-switch
.end method

.method public static e()Lcom/google/c/b/m;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/c/b/m",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 65
    sget-object v0, Lcom/google/c/b/ab;->a:Lcom/google/c/b/m;

    return-object v0
.end method


# virtual methods
.method a([Ljava/lang/Object;I)I
    .registers 7

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/google/c/b/m;->size()I

    move-result v1

    .line 533
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_12

    .line 534
    add-int v2, p2, v0

    invoke-virtual {p0, v0}, Lcom/google/c/b/m;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v2

    .line 533
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 536
    :cond_12
    add-int v0, p2, v1

    return v0
.end method

.method public a(I)Lcom/google/c/b/ak;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/c/b/ak",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 379
    new-instance v0, Lcom/google/c/b/m$1;

    invoke-virtual {p0}, Lcom/google/c/b/m;->size()I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/c/b/m$1;-><init>(Lcom/google/c/b/m;II)V

    return-object v0
.end method

.method public a(II)Lcom/google/c/b/m;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/c/b/m",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/google/c/b/m;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/c/a/h;->a(III)V

    .line 413
    sub-int v0, p2, p1

    .line 414
    invoke-virtual {p0}, Lcom/google/c/b/m;->size()I

    move-result v1

    if-ne v0, v1, :cond_10

    .line 423
    :goto_f
    return-object p0

    .line 417
    :cond_10
    packed-switch v0, :pswitch_data_26

    .line 423
    invoke-virtual {p0, p1, p2}, Lcom/google/c/b/m;->b(II)Lcom/google/c/b/m;

    move-result-object p0

    goto :goto_f

    .line 419
    :pswitch_18
    invoke-static {}, Lcom/google/c/b/m;->e()Lcom/google/c/b/m;

    move-result-object p0

    goto :goto_f

    .line 421
    :pswitch_1d
    invoke-virtual {p0, p1}, Lcom/google/c/b/m;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/b/m;->a(Ljava/lang/Object;)Lcom/google/c/b/m;

    move-result-object p0

    goto :goto_f

    .line 417
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_18
        :pswitch_1d
    .end packed-switch
.end method

.method public final add(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 503
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 478
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method b(II)Lcom/google/c/b/m;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/c/b/m",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 433
    new-instance v0, Lcom/google/c/b/m$a;

    sub-int v1, p2, p1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/c/b/m$a;-><init>(Lcom/google/c/b/m;II)V

    return-object v0
.end method

.method public c()Lcom/google/c/b/aj;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/aj",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/google/c/b/m;->f()Lcom/google/c/b/ak;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 399
    invoke-virtual {p0, p1}, Lcom/google/c/b/m;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final d()Lcom/google/c/b/m;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/m",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 526
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 613
    invoke-static {p0, p1}, Lcom/google/c/b/u;->a(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f()Lcom/google/c/b/ak;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/ak",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 374
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/c/b/m;->a(I)Lcom/google/c/b/ak;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 618
    const/4 v1, 0x1

    .line 619
    invoke-virtual {p0}, Lcom/google/c/b/m;->size()I

    move-result v2

    .line 620
    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_1a

    .line 621
    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0, v0}, Lcom/google/c/b/m;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    .line 623
    xor-int/lit8 v1, v1, -0x1

    xor-int/lit8 v1, v1, -0x1

    .line 620
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 626
    :cond_1a
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 389
    if-nez p1, :cond_4

    const/4 v0, -0x1

    :goto_3
    return v0

    :cond_4
    invoke-static {p0, p1}, Lcom/google/c/b/u;->b(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    goto :goto_3
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/google/c/b/m;->c()Lcom/google/c/b/aj;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 394
    if-nez p1, :cond_4

    const/4 v0, -0x1

    :goto_3
    return v0

    :cond_4
    invoke-static {p0, p1}, Lcom/google/c/b/u;->c(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    goto :goto_3
.end method

.method public synthetic listIterator()Ljava/util/ListIterator;
    .registers 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/google/c/b/m;->f()Lcom/google/c/b/ak;

    move-result-object v0

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .registers 3

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/google/c/b/m;->a(I)Lcom/google/c/b/ak;

    move-result-object v0

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 516
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 491
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public synthetic subList(II)Ljava/util/List;
    .registers 4

    .prologue
    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/google/c/b/m;->a(II)Lcom/google/c/b/m;

    move-result-object v0

    return-object v0
.end method
