.class final Lcom/google/ads/interactivemedia/v3/impl/o;
.super Lcom/google/ads/interactivemedia/v3/impl/ak$a;
.source "IMASDK"


# instance fields
.field private final TXXX:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/ak$a;-><init>()V

    .line 13
    if-nez p1, :cond_d

    .line 14
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null TXXX"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_d
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/o;->TXXX:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method TXXX()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/o;->TXXX:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 33
    if-ne p1, p0, :cond_4

    .line 34
    const/4 v0, 0x1

    .line 40
    :goto_3
    return v0

    .line 36
    :cond_4
    instance-of v0, p1, Lcom/google/ads/interactivemedia/v3/impl/ak$a;

    if-eqz v0, :cond_15

    .line 37
    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/ak$a;

    .line 38
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/o;->TXXX:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/ak$a;->TXXX()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 40
    :cond_15
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 45
    .line 46
    const v0, 0xf4243

    .line 47
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/o;->TXXX:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 48
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/o;->TXXX:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "TimedMetadataWithKeys{TXXX="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
