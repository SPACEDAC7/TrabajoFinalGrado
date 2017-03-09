.class final Lcom/google/ads/interactivemedia/v3/impl/data/d;
.super Lcom/google/ads/interactivemedia/v3/impl/data/a;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/data/d$a;
    }
.end annotation


# instance fields
.field private final appState:Ljava/lang/String;

.field private final eventId:Ljava/lang/String;

.field private final nativeTime:J

.field private final nativeViewBounds:Lcom/google/ads/interactivemedia/v3/impl/data/a$a;

.field private final nativeViewHidden:Z

.field private final nativeViewVisibleBounds:Lcom/google/ads/interactivemedia/v3/impl/data/a$a;

.field private final nativeVolume:D

.field private final queryId:Ljava/lang/String;

.field private final vastEvent:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JDZLcom/google/ads/interactivemedia/v3/impl/data/a$a;Lcom/google/ads/interactivemedia/v3/impl/data/a$a;)V
    .registers 13

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/a;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d;->queryId:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d;->eventId:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d;->vastEvent:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d;->appState:Ljava/lang/String;

    .line 33
    iput-wide p5, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d;->nativeTime:J

    .line 34
    iput-wide p7, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d;->nativeVolume:D

    .line 35
    iput-boolean p9, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d;->nativeViewHidden:Z

    .line 36
    iput-object p10, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d;->nativeViewBounds:Lcom/google/ads/interactivemedia/v3/impl/data/a$a;

    .line 37
    iput-object p11, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d;->nativeViewVisibleBounds:Lcom/google/ads/interactivemedia/v3/impl/data/a$a;

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JDZLcom/google/ads/interactivemedia/v3/impl/data/a$a;Lcom/google/ads/interactivemedia/v3/impl/data/a$a;Lcom/google/ads/interactivemedia/v3/impl/data/d$1;)V
    .registers 14

    .prologue
    .line 7
    invoke-direct/range {p0 .. p11}, Lcom/google/ads/interactivemedia/v3/impl/data/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JDZLcom/google/ads/interactivemedia/v3/impl/data/a$a;Lcom/google/ads/interactivemedia/v3/impl/data/a$a;)V

    return-void
.end method


# virtual methods
.method public appState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d;->appState:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 102
    if-ne p1, p0, :cond_5

    .line 117
    :cond_4
    :goto_4
    return v0

    .line 105
    :cond_5
    instance-of v2, p1, Lcom/google/ads/interactivemedia/v3/impl/data/a;

    if-eqz v2, :cond_79

    .line 106
    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/data/a;

    .line 107
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d;->queryId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/a;->queryId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d;->eventId:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/a;->eventId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d;->vastEvent:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/a;->vastEvent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d;->appState:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/a;->appState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d;->nativeTime:J

    .line 111
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/a;->nativeTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_77

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d;->nativeVolume:D

    .line 112
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/a;->nativeVolume()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_77

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d;->nativeViewHidden:Z

    .line 113
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/a;->nativeViewHidden()Z

    move-result v3

    if-ne v2, v3, :cond_77

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d;->nativeViewBounds:Lcom/google/ads/interactivemedia/v3/impl/data/a$a;

    .line 114
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/a;->nativeViewBounds()Lcom/google/ads/interactivemedia/v3/impl/data/a$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d;->nativeViewVisibleBounds:Lcom/google/ads/interactivemedia/v3/impl/data/a$a;

    .line 115
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/a;->nativeViewVisibleBounds()Lcom/google/ads/interactivemedia/v3/impl/data/a$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_77
    move v0, v1

    goto :goto_4

    :cond_79
    move v0, v1

    .line 117
    goto :goto_4
.end method

.method public eventId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d;->eventId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 9

    .prologue
    const/16 v7, 0x20

    const v6, 0xf4243

    .line 122
    .line 124
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d;->queryId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    xor-int/2addr v0, v6

    .line 125
    mul-int/2addr v0, v6

    .line 126
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d;->eventId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 127
    mul-int/2addr v0, v6

    .line 128
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d;->vastEvent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 129
    mul-int/2addr v0, v6

    .line 130
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d;->appState:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 131
    mul-int/2addr v0, v6

    .line 132
    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d;->nativeTime:J

    ushr-long/2addr v2, v7

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d;->nativeTime:J

    xor-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 133
    mul-int/2addr v0, v6

    .line 134
    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d;->nativeVolume:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    ushr-long/2addr v2, v7

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d;->nativeVolume:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    xor-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 135
    mul-int v1, v0, v6

    .line 136
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d;->nativeViewHidden:Z

    if-eqz v0, :cond_5a

    const/16 v0, 0x4cf

    :goto_48
    xor-int/2addr v0, v1

    .line 137
    mul-int/2addr v0, v6

    .line 138
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d;->nativeViewBounds:Lcom/google/ads/interactivemedia/v3/impl/data/a$a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 139
    mul-int/2addr v0, v6

    .line 140
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d;->nativeViewVisibleBounds:Lcom/google/ads/interactivemedia/v3/impl/data/a$a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 141
    return v0

    .line 136
    :cond_5a
    const/16 v0, 0x4d5

    goto :goto_48
.end method

.method public nativeTime()J
    .registers 3

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d;->nativeTime:J

    return-wide v0
.end method

.method public nativeViewBounds()Lcom/google/ads/interactivemedia/v3/impl/data/a$a;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d;->nativeViewBounds:Lcom/google/ads/interactivemedia/v3/impl/data/a$a;

    return-object v0
.end method

.method public nativeViewHidden()Z
    .registers 2

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d;->nativeViewHidden:Z

    return v0
.end method

.method public nativeViewVisibleBounds()Lcom/google/ads/interactivemedia/v3/impl/data/a$a;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d;->nativeViewVisibleBounds:Lcom/google/ads/interactivemedia/v3/impl/data/a$a;

    return-object v0
.end method

.method public nativeVolume()D
    .registers 3

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d;->nativeVolume:D

    return-wide v0
.end method

.method public queryId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d;->queryId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 14

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d;->queryId:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d;->eventId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d;->vastEvent:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d;->appState:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d;->nativeTime:J

    iget-wide v6, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d;->nativeVolume:D

    iget-boolean v8, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d;->nativeViewHidden:Z

    iget-object v9, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d;->nativeViewBounds:Lcom/google/ads/interactivemedia/v3/impl/data/a$a;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d;->nativeViewVisibleBounds:Lcom/google/ads/interactivemedia/v3/impl/data/a$a;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit16 v11, v11, 0xcb

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v11, "ActivityMonitorData{queryId="

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", eventId="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vastEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nativeTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nativeVolume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nativeViewHidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nativeViewBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nativeViewVisibleBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public vastEvent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/d;->vastEvent:Ljava/lang/String;

    return-object v0
.end method
