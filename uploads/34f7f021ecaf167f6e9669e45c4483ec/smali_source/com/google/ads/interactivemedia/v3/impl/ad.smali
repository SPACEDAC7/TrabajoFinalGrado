.class public Lcom/google/ads/interactivemedia/v3/impl/ad;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:J

.field private final b:Lcom/google/ads/interactivemedia/v3/impl/aa$a;


# direct methods
.method constructor <init>(JLcom/google/ads/interactivemedia/v3/impl/aa$a;)V
    .registers 5

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->a:J

    .line 17
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->b:Lcom/google/ads/interactivemedia/v3/impl/aa$a;

    .line 18
    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->a:J

    return-wide v0
.end method

.method public b()Lcom/google/ads/interactivemedia/v3/impl/aa$a;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->b:Lcom/google/ads/interactivemedia/v3/impl/aa$a;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 42
    if-ne p0, p1, :cond_5

    .line 58
    :cond_4
    :goto_4
    return v0

    .line 45
    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    .line 46
    goto :goto_4

    .line 48
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    .line 49
    goto :goto_4

    .line 51
    :cond_15
    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/ad;

    .line 52
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->a:J

    iget-wide v4, p1, Lcom/google/ads/interactivemedia/v3/impl/ad;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_21

    move v0, v1

    .line 53
    goto :goto_4

    .line 55
    :cond_21
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->b:Lcom/google/ads/interactivemedia/v3/impl/aa$a;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/impl/ad;->b:Lcom/google/ads/interactivemedia/v3/impl/aa$a;

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 56
    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 36
    .line 37
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->a:J

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->b:Lcom/google/ads/interactivemedia/v3/impl/aa$a;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$a;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->a:J

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->b:Lcom/google/ads/interactivemedia/v3/impl/aa$a;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x44

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "NativeBridgeConfig [adTimeUpdateMs="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adUiStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
