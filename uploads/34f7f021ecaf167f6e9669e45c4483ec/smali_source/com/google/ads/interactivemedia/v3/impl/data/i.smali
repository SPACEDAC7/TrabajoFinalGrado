.class final Lcom/google/ads/interactivemedia/v3/impl/data/i;
.super Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/data/i$a;
    }
.end annotation


# instance fields
.field private final disableExperiments:Z

.field private final enableMonitorAppLifecycle:Z

.field private final extraParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final forceExperimentIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final forceTvMode:Z

.field private final ignoreStrictModeFalsePositives:Z

.field private final useTestStreamManager:Z

.field private final useVideoElementMock:Z

.field private final videoElementMockDuration:F


# direct methods
.method private constructor <init>(ZZFZZLjava/util/List;ZZLjava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZFZZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;ZZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;-><init>()V

    .line 32
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->disableExperiments:Z

    .line 33
    iput-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->useVideoElementMock:Z

    .line 34
    iput p3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->videoElementMockDuration:F

    .line 35
    iput-boolean p4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->useTestStreamManager:Z

    .line 36
    iput-boolean p5, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->enableMonitorAppLifecycle:Z

    .line 37
    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->forceExperimentIds:Ljava/util/List;

    .line 38
    iput-boolean p7, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->forceTvMode:Z

    .line 39
    iput-boolean p8, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->ignoreStrictModeFalsePositives:Z

    .line 40
    iput-object p9, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->extraParams:Ljava/util/Map;

    .line 41
    return-void
.end method

.method synthetic constructor <init>(ZZFZZLjava/util/List;ZZLjava/util/Map;Lcom/google/ads/interactivemedia/v3/impl/data/i$1;)V
    .registers 11

    .prologue
    .line 10
    invoke-direct/range {p0 .. p9}, Lcom/google/ads/interactivemedia/v3/impl/data/i;-><init>(ZZFZZLjava/util/List;ZZLjava/util/Map;)V

    return-void
.end method


# virtual methods
.method public disableExperiments()Z
    .registers 2

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->disableExperiments:Z

    return v0
.end method

.method public enableMonitorAppLifecycle()Z
    .registers 2

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->enableMonitorAppLifecycle:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 107
    if-ne p1, p0, :cond_5

    .line 122
    :cond_4
    :goto_4
    return v0

    .line 110
    :cond_5
    instance-of v2, p1, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    if-eqz v2, :cond_7b

    .line 111
    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    .line 112
    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->disableExperiments:Z

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;->disableExperiments()Z

    move-result v3

    if-ne v2, v3, :cond_5f

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->useVideoElementMock:Z

    .line 113
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;->useVideoElementMock()Z

    move-result v3

    if-ne v2, v3, :cond_5f

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->videoElementMockDuration:F

    .line 114
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;->videoElementMockDuration()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_5f

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->useTestStreamManager:Z

    .line 115
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;->useTestStreamManager()Z

    move-result v3

    if-ne v2, v3, :cond_5f

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->enableMonitorAppLifecycle:Z

    .line 116
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;->enableMonitorAppLifecycle()Z

    move-result v3

    if-ne v2, v3, :cond_5f

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->forceExperimentIds:Ljava/util/List;

    if-nez v2, :cond_61

    .line 117
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;->forceExperimentIds()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_5f

    :goto_45
    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->forceTvMode:Z

    .line 118
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;->forceTvMode()Z

    move-result v3

    if-ne v2, v3, :cond_5f

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->ignoreStrictModeFalsePositives:Z

    .line 119
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;->ignoreStrictModeFalsePositives()Z

    move-result v3

    if-ne v2, v3, :cond_5f

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->extraParams:Ljava/util/Map;

    if-nez v2, :cond_6e

    .line 120
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;->extraParams()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_4

    :cond_5f
    move v0, v1

    goto :goto_4

    .line 117
    :cond_61
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->forceExperimentIds:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;->forceExperimentIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    goto :goto_45

    .line 120
    :cond_6e
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->extraParams:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;->extraParams()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    goto :goto_4

    :cond_7b
    move v0, v1

    .line 122
    goto :goto_4
.end method

.method public extraParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->extraParams:Ljava/util/Map;

    return-object v0
.end method

.method public forceExperimentIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->forceExperimentIds:Ljava/util/List;

    return-object v0
.end method

.method public forceTvMode()Z
    .registers 2

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->forceTvMode:Z

    return v0
.end method

.method public hashCode()I
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x4d5

    const/16 v1, 0x4cf

    const v5, 0xf4243

    .line 127
    .line 129
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->disableExperiments:Z

    if-eqz v0, :cond_4b

    move v0, v1

    :goto_d
    xor-int/2addr v0, v5

    .line 130
    mul-int v4, v0, v5

    .line 131
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->useVideoElementMock:Z

    if-eqz v0, :cond_4d

    move v0, v1

    :goto_15
    xor-int/2addr v0, v4

    .line 132
    mul-int/2addr v0, v5

    .line 133
    iget v4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->videoElementMockDuration:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    xor-int/2addr v0, v4

    .line 134
    mul-int v4, v0, v5

    .line 135
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->useTestStreamManager:Z

    if-eqz v0, :cond_4f

    move v0, v1

    :goto_25
    xor-int/2addr v0, v4

    .line 136
    mul-int v4, v0, v5

    .line 137
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->enableMonitorAppLifecycle:Z

    if-eqz v0, :cond_51

    move v0, v1

    :goto_2d
    xor-int/2addr v0, v4

    .line 138
    mul-int v4, v0, v5

    .line 139
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->forceExperimentIds:Ljava/util/List;

    if-nez v0, :cond_53

    move v0, v3

    :goto_35
    xor-int/2addr v0, v4

    .line 140
    mul-int v4, v0, v5

    .line 141
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->forceTvMode:Z

    if-eqz v0, :cond_5a

    move v0, v1

    :goto_3d
    xor-int/2addr v0, v4

    .line 142
    mul-int/2addr v0, v5

    .line 143
    iget-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->ignoreStrictModeFalsePositives:Z

    if-eqz v4, :cond_5c

    :goto_43
    xor-int/2addr v0, v1

    .line 144
    mul-int/2addr v0, v5

    .line 145
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->extraParams:Ljava/util/Map;

    if-nez v1, :cond_5e

    :goto_49
    xor-int/2addr v0, v3

    .line 146
    return v0

    :cond_4b
    move v0, v2

    .line 129
    goto :goto_d

    :cond_4d
    move v0, v2

    .line 131
    goto :goto_15

    :cond_4f
    move v0, v2

    .line 135
    goto :goto_25

    :cond_51
    move v0, v2

    .line 137
    goto :goto_2d

    .line 139
    :cond_53
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->forceExperimentIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_35

    :cond_5a
    move v0, v2

    .line 141
    goto :goto_3d

    :cond_5c
    move v1, v2

    .line 143
    goto :goto_43

    .line 145
    :cond_5e
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->extraParams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v3

    goto :goto_49
.end method

.method public ignoreStrictModeFalsePositives()Z
    .registers 2

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->ignoreStrictModeFalsePositives:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->disableExperiments:Z

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->useVideoElementMock:Z

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->videoElementMockDuration:F

    iget-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->useTestStreamManager:Z

    iget-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->enableMonitorAppLifecycle:Z

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->forceExperimentIds:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->forceTvMode:Z

    iget-boolean v7, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->ignoreStrictModeFalsePositives:Z

    iget-object v8, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->extraParams:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit16 v9, v9, 0x10c

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "TestingConfiguration{disableExperiments="

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ", useVideoElementMock="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoElementMockDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", useTestStreamManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enableMonitorAppLifecycle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", forceExperimentIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", forceTvMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ignoreStrictModeFalsePositives="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extraParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useTestStreamManager()Z
    .registers 2

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->useTestStreamManager:Z

    return v0
.end method

.method public useVideoElementMock()Z
    .registers 2

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->useVideoElementMock:Z

    return v0
.end method

.method public videoElementMockDuration()F
    .registers 2

    .prologue
    .line 55
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/i;->videoElementMockDuration:F

    return v0
.end method
