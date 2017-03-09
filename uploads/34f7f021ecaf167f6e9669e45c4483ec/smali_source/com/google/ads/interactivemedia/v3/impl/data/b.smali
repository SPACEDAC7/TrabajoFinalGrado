.class public Lcom/google/ads/interactivemedia/v3/impl/data/b;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/Ad;


# instance fields
.field private adId:Ljava/lang/String;

.field private adPodInfo:Lcom/google/ads/interactivemedia/v3/impl/data/c;

.field private adSystem:Ljava/lang/String;

.field private adWrapperIds:[Ljava/lang/String;

.field private adWrapperSystems:[Ljava/lang/String;

.field private clickThroughUrl:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private duration:D

.field private height:I

.field private linear:Z

.field private skippable:Z

.field private title:Ljava/lang/String;

.field private traffickingParameters:Ljava/lang/String;

.field private uiElements:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/ads/interactivemedia/v3/api/UiElement;",
            ">;"
        }
    .end annotation
.end field

.field private width:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/c;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/c;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->adPodInfo:Lcom/google/ads/interactivemedia/v3/impl/data/c;

    .line 36
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 219
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, p1, v0}, La/a/a/a/a/b;->a(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAdId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->adId:Ljava/lang/String;

    return-object v0
.end method

.method public getAdPodInfo()Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->adPodInfo:Lcom/google/ads/interactivemedia/v3/impl/data/c;

    return-object v0
.end method

.method public getAdSystem()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->adSystem:Ljava/lang/String;

    return-object v0
.end method

.method public getAdWrapperIds()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->adWrapperIds:[Ljava/lang/String;

    return-object v0
.end method

.method public getAdWrapperSystems()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->adWrapperSystems:[Ljava/lang/String;

    return-object v0
.end method

.method public getClickThruUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->clickThroughUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()D
    .registers 3

    .prologue
    .line 187
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->duration:D

    return-wide v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 155
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->height:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTraffickingParameters()Ljava/lang/String;
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->traffickingParameters:Ljava/lang/String;

    return-object v0
.end method

.method public getUiElements()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/ads/interactivemedia/v3/api/UiElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->uiElements:Ljava/util/Set;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 143
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->width:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 214
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, La/a/a/a/a/c;->a(Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isLinear()Z
    .registers 2

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->linear:Z

    return v0
.end method

.method public isSkippable()Z
    .registers 2

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->skippable:Z

    return v0
.end method

.method public setAdId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->adId:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setAdPodInfo(Lcom/google/ads/interactivemedia/v3/impl/data/c;)V
    .registers 2

    .prologue
    .line 200
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->adPodInfo:Lcom/google/ads/interactivemedia/v3/impl/data/c;

    .line 201
    return-void
.end method

.method public setAdSystem(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->adSystem:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setAdWrapperIds([Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->adWrapperIds:[Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setAdWrapperSystems([Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->adWrapperSystems:[Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setClickThruUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 179
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->clickThroughUrl:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 135
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->contentType:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 126
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->description:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setDuration(D)V
    .registers 4

    .prologue
    .line 191
    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->duration:D

    .line 192
    return-void
.end method

.method public setHeight(I)V
    .registers 2

    .prologue
    .line 159
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->height:I

    .line 160
    return-void
.end method

.method public setLinear(Z)V
    .registers 2

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->linear:Z

    .line 97
    return-void
.end method

.method public setSkippable(Z)V
    .registers 2

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->skippable:Z

    .line 109
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 117
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->title:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setTraffickingParameters(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->traffickingParameters:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setUiElements(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/ads/interactivemedia/v3/api/UiElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 209
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->uiElements:Ljava/util/Set;

    .line 210
    return-void
.end method

.method public setWidth(I)V
    .registers 2

    .prologue
    .line 147
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->width:I

    .line 148
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 22

    .prologue
    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->adId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->description:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->contentType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->adWrapperIds:[Ljava/lang/String;

    .line 225
    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->adWrapperSystems:[Ljava/lang/String;

    .line 226
    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->adSystem:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->linear:Z

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->skippable:Z

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->width:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->height:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->traffickingParameters:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->clickThroughUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->duration:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->adPodInfo:Lcom/google/ads/interactivemedia/v3/impl/data/c;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/impl/data/b;->uiElements:Ljava/util/Set;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    add-int/lit16 v0, v0, 0x107

    move/from16 v19, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v19, "Ad [adId="

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v19, ", title="

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", description="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", contentType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", adWrapperIds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", adWrapperSystems="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", adSystem="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", linear="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", skippable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", traffickingParameters="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", clickThroughUrl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", adPodInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uiElements="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 224
    return-object v2
.end method
