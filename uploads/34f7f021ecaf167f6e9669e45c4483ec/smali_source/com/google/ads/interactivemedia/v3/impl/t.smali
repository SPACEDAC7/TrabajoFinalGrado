.class public Lcom/google/ads/interactivemedia/v3/impl/t;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/af$b;


# instance fields
.field private final a:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/google/ads/interactivemedia/v3/impl/ab;

.field private c:Ljava/lang/String;

.field private d:F


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/ab;Ljava/util/SortedSet;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/impl/ab;",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/impl/t;->d:F

    .line 22
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/t;->b:Lcom/google/ads/interactivemedia/v3/impl/ab;

    .line 23
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/t;->c:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/t;->a:Ljava/util/SortedSet;

    .line 25
    return-void
.end method

.method private a(F)Ljava/util/SortedSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/t;->d:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_17

    .line 43
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/t;->a:Ljava/util/SortedSet;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/impl/t;->d:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 45
    :goto_16
    return-object v0

    :cond_17
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/t;->a:Ljava/util/SortedSet;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/impl/t;->d:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    goto :goto_16
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)V
    .registers 7

    .prologue
    .line 29
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->getDuration()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_c

    .line 39
    :cond_b
    :goto_b
    return-void

    .line 33
    :cond_c
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->getCurrentTime()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/t;->a(F)Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    const/4 v0, 0x1

    .line 34
    :goto_1b
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->getCurrentTime()F

    move-result v1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/impl/t;->d:F

    .line 35
    if-eqz v0, :cond_b

    .line 36
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/t;->b:Lcom/google/ads/interactivemedia/v3/impl/ab;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/aa;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->contentTimeUpdate:Lcom/google/ads/interactivemedia/v3/impl/aa$b;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->contentTimeUpdate:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/t;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/google/ads/interactivemedia/v3/impl/aa;-><init>(Lcom/google/ads/interactivemedia/v3/impl/aa$b;Lcom/google/ads/interactivemedia/v3/impl/aa$c;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab;->b(Lcom/google/ads/interactivemedia/v3/impl/aa;)V

    goto :goto_b

    .line 33
    :cond_34
    const/4 v0, 0x0

    goto :goto_1b
.end method
