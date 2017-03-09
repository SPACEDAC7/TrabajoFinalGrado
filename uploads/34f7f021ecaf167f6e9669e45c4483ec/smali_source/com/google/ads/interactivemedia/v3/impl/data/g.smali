.class final Lcom/google/ads/interactivemedia/v3/impl/data/g;
.super Lcom/google/ads/interactivemedia/v3/impl/data/j;
.source "IMASDK"


# instance fields
.field private final end:D

.field private final played:Z

.field private final start:D


# direct methods
.method constructor <init>(DDZ)V
    .registers 7

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/j;-><init>()V

    .line 17
    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->start:D

    .line 18
    iput-wide p3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->end:D

    .line 19
    iput-boolean p5, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->played:Z

    .line 20
    return-void
.end method


# virtual methods
.method public end()D
    .registers 3

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->end:D

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 48
    if-ne p1, p0, :cond_5

    .line 57
    :cond_4
    :goto_4
    return v0

    .line 51
    :cond_5
    instance-of v2, p1, Lcom/google/ads/interactivemedia/v3/impl/data/j;

    if-eqz v2, :cond_39

    .line 52
    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/data/j;

    .line 53
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->start:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/j;->start()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_37

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->end:D

    .line 54
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/j;->end()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_37

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->played:Z

    .line 55
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/j;->played()Z

    move-result v3

    if-eq v2, v3, :cond_4

    :cond_37
    move v0, v1

    goto :goto_4

    :cond_39
    move v0, v1

    .line 57
    goto :goto_4
.end method

.method public hashCode()I
    .registers 9

    .prologue
    const/16 v7, 0x20

    const v6, 0xf4243

    .line 62
    .line 64
    int-to-long v0, v6

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->start:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    ushr-long/2addr v2, v7

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->start:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    xor-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 65
    mul-int/2addr v0, v6

    .line 66
    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->end:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    ushr-long/2addr v2, v7

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->end:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    xor-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 67
    mul-int v1, v0, v6

    .line 68
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->played:Z

    if-eqz v0, :cond_32

    const/16 v0, 0x4cf

    :goto_30
    xor-int/2addr v0, v1

    .line 69
    return v0

    .line 68
    :cond_32
    const/16 v0, 0x4d5

    goto :goto_30
.end method

.method public played()Z
    .registers 2

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->played:Z

    return v0
.end method

.method public start()D
    .registers 3

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->start:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->start:D

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->end:D

    iget-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->played:Z

    const/16 v5, 0x58

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "CuePointData{start="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", played="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
