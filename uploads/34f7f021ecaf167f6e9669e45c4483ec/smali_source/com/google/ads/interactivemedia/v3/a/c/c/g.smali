.class public final Lcom/google/ads/interactivemedia/v3/a/c/c/g;
.super Ljava/lang/Object;
.source "IMASDK"


# direct methods
.method public static a([B)Ljava/util/UUID;
    .registers 2

    .prologue
    .line 63
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/a/c/c/g;->b([B)Landroid/util/Pair;

    move-result-object v0

    .line 64
    if-nez v0, :cond_8

    .line 65
    const/4 v0, 0x0

    .line 67
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/UUID;

    goto :goto_7
.end method

.method private static b([B)Landroid/util/Pair;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/UUID;",
            "[B>;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    .line 102
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-direct {v1, p0}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>([B)V

    .line 103
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c()I

    move-result v2

    const/16 v3, 0x20

    if-ge v2, v3, :cond_11

    .line 135
    :cond_10
    :goto_10
    return-object v0

    .line 107
    :cond_11
    invoke-virtual {v1, v8}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 108
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v2

    .line 109
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    if-ne v2, v3, :cond_10

    .line 113
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v2

    .line 114
    sget v3, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->T:I

    if-ne v2, v3, :cond_10

    .line 118
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v2

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/a/c/c/a;->a(I)I

    move-result v2

    .line 119
    if-le v2, v9, :cond_4d

    .line 120
    const-string v1, "PsshAtomUtil"

    const/16 v3, 0x25

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unsupported pssh version: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 123
    :cond_4d
    new-instance v3, Ljava/util/UUID;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->o()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->o()J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    .line 124
    if-ne v2, v9, :cond_65

    .line 125
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v2

    .line 126
    mul-int/lit8 v2, v2, 0x10

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    .line 128
    :cond_65
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v2

    .line 129
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v4

    if-ne v2, v4, :cond_10

    .line 133
    new-array v0, v2, [B

    .line 134
    invoke-virtual {v1, v0, v8, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a([BII)V

    .line 135
    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_10
.end method
