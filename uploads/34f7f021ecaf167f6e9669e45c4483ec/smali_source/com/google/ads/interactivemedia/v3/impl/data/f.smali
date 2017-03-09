.class final Lcom/google/ads/interactivemedia/v3/impl/data/f;
.super Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;
.source "IMASDK"


# instance fields
.field private final clickThroughUrl:Ljava/lang/String;

.field private final size:Ljava/lang/String;

.field private final src:Ljava/lang/String;

.field private final type:Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;)V
    .registers 7

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;-><init>()V

    .line 19
    if-nez p1, :cond_d

    .line 20
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null size"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_d
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/f;->size:Ljava/lang/String;

    .line 23
    if-nez p2, :cond_19

    .line 24
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null src"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_19
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/f;->src:Ljava/lang/String;

    .line 27
    if-nez p3, :cond_25

    .line 28
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null clickThroughUrl"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_25
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/f;->clickThroughUrl:Ljava/lang/String;

    .line 31
    if-nez p4, :cond_31

    .line 32
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null type"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_31
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/f;->type:Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;

    .line 35
    return-void
.end method


# virtual methods
.method public clickThroughUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/f;->clickThroughUrl:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 59
    if-ne p1, p0, :cond_5

    .line 69
    :cond_4
    :goto_4
    return v0

    .line 62
    :cond_5
    instance-of v2, p1, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;

    if-eqz v2, :cond_3d

    .line 63
    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;

    .line 64
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/f;->size:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;->size()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/f;->src:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;->src()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/f;->clickThroughUrl:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;->clickThroughUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/f;->type:Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;

    .line 67
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;->type()Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3b
    move v0, v1

    goto :goto_4

    :cond_3d
    move v0, v1

    .line 69
    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    .prologue
    const v2, 0xf4243

    .line 74
    .line 76
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/f;->size:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    xor-int/2addr v0, v2

    .line 77
    mul-int/2addr v0, v2

    .line 78
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/f;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 79
    mul-int/2addr v0, v2

    .line 80
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/f;->clickThroughUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 81
    mul-int/2addr v0, v2

    .line 82
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/f;->type:Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 83
    return v0
.end method

.method public size()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/f;->size:Ljava/lang/String;

    return-object v0
.end method

.method public src()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/f;->src:Ljava/lang/String;

    return-object v0
.end method

.method public type()Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/f;->type:Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;

    return-object v0
.end method
