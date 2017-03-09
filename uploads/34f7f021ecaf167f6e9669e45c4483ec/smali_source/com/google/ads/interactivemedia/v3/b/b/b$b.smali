.class final Lcom/google/ads/interactivemedia/v3/b/b/b$b;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/reflect/ParameterizedType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/b/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/reflect/Type;

.field private final b:Ljava/lang/reflect/Type;

.field private final c:[Ljava/lang/reflect/Type;


# direct methods
.method public varargs constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    instance-of v0, p2, Ljava/lang/Class;

    if-eqz v0, :cond_25

    move-object v0, p2

    .line 445
    check-cast v0, Ljava/lang/Class;

    .line 446
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 447
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_5a

    :cond_1c
    move v0, v2

    .line 448
    :goto_1d
    if-nez p1, :cond_21

    if-eqz v0, :cond_5c

    :cond_21
    move v0, v2

    :goto_22
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/b/b/a;->a(Z)V

    .line 451
    :cond_25
    if-nez p1, :cond_5e

    const/4 v0, 0x0

    :goto_28
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/b$b;->a:Ljava/lang/reflect/Type;

    .line 452
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/b/b/b;->d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/b$b;->b:Ljava/lang/reflect/Type;

    .line 453
    invoke-virtual {p3}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/b$b;->c:[Ljava/lang/reflect/Type;

    .line 454
    :goto_38
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/b$b;->c:[Ljava/lang/reflect/Type;

    array-length v0, v0

    if-ge v1, v0, :cond_63

    .line 455
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/b$b;->c:[Ljava/lang/reflect/Type;

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/b/b/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/b$b;->c:[Ljava/lang/reflect/Type;

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/b/b/b;->h(Ljava/lang/reflect/Type;)V

    .line 457
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/b$b;->c:[Ljava/lang/reflect/Type;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/b/b$b;->c:[Ljava/lang/reflect/Type;

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/b/b/b;->d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    aput-object v2, v0, v1

    .line 454
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    :cond_5a
    move v0, v1

    .line 447
    goto :goto_1d

    :cond_5c
    move v0, v1

    .line 448
    goto :goto_22

    .line 451
    :cond_5e
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/b/b/b;->d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_28

    .line 459
    :cond_63
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 474
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_e

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 475
    invoke-static {p0, p1}, Lcom/google/ads/interactivemedia/v3/b/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getActualTypeArguments()[Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/b$b;->c:[Ljava/lang/reflect/Type;

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getOwnerType()Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/b$b;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getRawType()Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/b$b;->b:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 479
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/b$b;->c:[Ljava/lang/reflect/Type;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/b$b;->b:Ljava/lang/reflect/Type;

    .line 480
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/b$b;->a:Ljava/lang/reflect/Type;

    .line 481
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/b/b/b;->a(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/b$b;->c:[Ljava/lang/reflect/Type;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x1e

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 486
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/b$b;->b:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/b/b/b;->f(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/b$b;->c:[Ljava/lang/reflect/Type;

    array-length v0, v0

    if-nez v0, :cond_1f

    .line 489
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 496
    :goto_1e
    return-object v0

    .line 492
    :cond_1f
    const-string v0, "<"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/b/b$b;->c:[Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/b/b/b;->f(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    const/4 v0, 0x1

    :goto_32
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/b/b$b;->c:[Ljava/lang/reflect/Type;

    array-length v2, v2

    if-ge v0, v2, :cond_4b

    .line 494
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/b/b/b$b;->c:[Ljava/lang/reflect/Type;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/b/b/b;->f(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 496
    :cond_4b
    const-string v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1e
.end method
