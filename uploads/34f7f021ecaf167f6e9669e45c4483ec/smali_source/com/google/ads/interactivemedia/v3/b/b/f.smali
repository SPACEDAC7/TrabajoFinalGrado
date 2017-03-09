.class public final Lcom/google/ads/interactivemedia/v3/b/b/f;
.super Ljava/lang/Number;
.source "IMASDK"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/b/f;->a:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public doubleValue()D
    .registers 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/f;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 87
    if-ne p0, p1, :cond_6

    move v0, v1

    .line 94
    :cond_5
    :goto_5
    return v0

    .line 90
    :cond_6
    instance-of v2, p1, Lcom/google/ads/interactivemedia/v3/b/b/f;

    if-eqz v2, :cond_5

    .line 91
    check-cast p1, Lcom/google/ads/interactivemedia/v3/b/b/f;

    .line 92
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/b/f;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/b/b/f;->a:Ljava/lang/String;

    if-eq v2, v3, :cond_1c

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/b/f;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/b/b/f;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_1c
    move v0, v1

    goto :goto_5
.end method

.method public floatValue()F
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/f;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/f;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public intValue()I
    .registers 3

    .prologue
    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/f;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    .line 42
    :goto_6
    return v0

    .line 38
    :catch_7
    move-exception v0

    .line 40
    :try_start_8
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/f;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_d} :catch_10

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_6

    .line 41
    :catch_10
    move-exception v0

    .line 42
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/f;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    goto :goto_6
.end method

.method public longValue()J
    .registers 3

    .prologue
    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/f;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-wide v0

    .line 52
    :goto_6
    return-wide v0

    .line 51
    :catch_7
    move-exception v0

    .line 52
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/f;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/f;->a:Ljava/lang/String;

    return-object v0
.end method
