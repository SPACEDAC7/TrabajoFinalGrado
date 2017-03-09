.class public Lcom/google/ads/interactivemedia/v3/impl/d;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdEvent;


# instance fields
.field private a:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field private b:Lcom/google/ads/interactivemedia/v3/api/Ad;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/api/Ad;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;",
            "Lcom/google/ads/interactivemedia/v3/api/Ad;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/d;->a:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 28
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/d;->b:Lcom/google/ads/interactivemedia/v3/api/Ad;

    .line 29
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/d;->c:Ljava/util/Map;

    .line 30
    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 5

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/d;->c:Ljava/util/Map;

    if-nez v0, :cond_7

    .line 103
    const-string v0, ""

    .line 117
    :goto_6
    return-object v0

    .line 105
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "{"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/d;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 107
    :cond_19
    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 108
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 109
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, ": "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 113
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 116
    :cond_48
    const-string/jumbo v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 70
    if-ne p0, p1, :cond_5

    .line 86
    :cond_4
    :goto_4
    return v0

    .line 73
    :cond_5
    instance-of v2, p1, Lcom/google/ads/interactivemedia/v3/impl/d;

    if-nez v2, :cond_b

    move v0, v1

    .line 74
    goto :goto_4

    .line 76
    :cond_b
    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/d;

    .line 77
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/d;->a:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/impl/d;->a:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    if-eq v2, v3, :cond_15

    move v0, v1

    .line 78
    goto :goto_4

    .line 80
    :cond_15
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/d;->b:Lcom/google/ads/interactivemedia/v3/api/Ad;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/impl/d;->b:Lcom/google/ads/interactivemedia/v3/api/Ad;

    invoke-static {v2, v3}, Lcom/google/c/a/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    move v0, v1

    .line 81
    goto :goto_4

    .line 83
    :cond_21
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/d;->c:Ljava/util/Map;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/impl/d;->c:Ljava/util/Map;

    invoke-static {v2, v3}, Lcom/google/c/a/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 84
    goto :goto_4
.end method

.method public getAd()Lcom/google/ads/interactivemedia/v3/api/Ad;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/d;->b:Lcom/google/ads/interactivemedia/v3/api/Ad;

    return-object v0
.end method

.method public getAdData()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/d;->c:Ljava/util/Map;

    return-object v0
.end method

.method public getType()Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/d;->a:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 91
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/d;->a:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/d;->b:Lcom/google/ads/interactivemedia/v3/api/Ad;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/d;->c:Ljava/util/Map;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/c/a/e;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 96
    const-string v0, "AdEvent[type=%s, ad=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/d;->a:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/d;->b:Lcom/google/ads/interactivemedia/v3/api/Ad;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/d;->c:Ljava/util/Map;

    if-nez v0, :cond_2c

    const-string v0, "]"

    :goto_1d
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3b

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2b
    return-object v0

    :cond_2c
    const-string v0, ", adData=%s]"

    new-array v2, v3, [Ljava/lang/Object;

    .line 98
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/d;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 97
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    :cond_3b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2b
.end method
