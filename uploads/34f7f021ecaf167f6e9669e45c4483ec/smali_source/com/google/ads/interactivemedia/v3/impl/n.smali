.class final Lcom/google/ads/interactivemedia/v3/impl/n;
.super Lcom/google/ads/interactivemedia/v3/impl/h$b;
.source "IMASDK"


# instance fields
.field private final appVersion:I

.field private final packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/h$b;-><init>()V

    .line 15
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/impl/n;->appVersion:I

    .line 16
    if-nez p2, :cond_f

    .line 17
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null packageName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_f
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/n;->packageName:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public appVersion()I
    .registers 2

    .prologue
    .line 24
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/n;->appVersion:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 42
    if-ne p1, p0, :cond_5

    .line 50
    :cond_4
    :goto_4
    return v0

    .line 45
    :cond_5
    instance-of v2, p1, Lcom/google/ads/interactivemedia/v3/impl/h$b;

    if-eqz v2, :cond_21

    .line 46
    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/h$b;

    .line 47
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/impl/n;->appVersion:I

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/h$b;->appVersion()I

    move-result v3

    if-ne v2, v3, :cond_1f

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/n;->packageName:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/h$b;->packageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_1f
    move v0, v1

    goto :goto_4

    :cond_21
    move v0, v1

    .line 50
    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    .prologue
    const v1, 0xf4243

    .line 55
    .line 57
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/n;->appVersion:I

    xor-int/2addr v0, v1

    .line 58
    mul-int/2addr v0, v1

    .line 59
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/n;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 60
    return v0
.end method

.method public packageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/n;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 34
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/n;->appVersion:I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/n;->packageName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x33

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "MarketAppInfo{appVersion="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", packageName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
