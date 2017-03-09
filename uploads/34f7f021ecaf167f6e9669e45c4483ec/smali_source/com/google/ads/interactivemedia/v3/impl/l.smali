.class public Lcom/google/ads/interactivemedia/v3/impl/l;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;


# instance fields
.field private a:I
    .annotation runtime Lcom/google/ads/interactivemedia/v3/b/a/c;
        a = "bitrate"
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation runtime Lcom/google/ads/interactivemedia/v3/b/a/c;
        a = "mimeTypes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Set;
    .annotation runtime Lcom/google/ads/interactivemedia/v3/b/a/c;
        a = "uiElements"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/ads/interactivemedia/v3/api/UiElement;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z
    .annotation runtime Lcom/google/ads/interactivemedia/v3/b/a/c;
        a = "enablePreloading"
    .end annotation
.end field

.field private e:D
    .annotation runtime Lcom/google/ads/interactivemedia/v3/b/a/c;
        a = "playAdsAfterTime"
    .end annotation
.end field

.field private f:I
    .annotation runtime Lcom/google/ads/interactivemedia/v3/b/a/c;
        a = "loadVideoTimeout"
    .end annotation
.end field

.field private g:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->a:I

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->b:Ljava/util/List;

    .line 22
    const-wide/high16 v0, -0x4010000000000000L

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->e:D

    .line 25
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->f:I

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->g:Z

    return-void
.end method


# virtual methods
.method public getBitrateKbps()I
    .registers 2

    .prologue
    .line 33
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->a:I

    return v0
.end method

.method public getEnablePreloading()Z
    .registers 2

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->d:Z

    return v0
.end method

.method public getMimeTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->b:Ljava/util/List;

    return-object v0
.end method

.method public isRenderCompanions()Z
    .registers 2

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->g:Z

    return v0
.end method

.method public setBitrateKbps(I)V
    .registers 2

    .prologue
    .line 42
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->a:I

    .line 43
    return-void
.end method

.method public setEnablePreloading(Z)V
    .registers 2

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->d:Z

    .line 79
    return-void
.end method

.method public setMimeTypes(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->b:Ljava/util/List;

    .line 58
    return-void
.end method

.method public setPlayAdsAfterTime(D)V
    .registers 4

    .prologue
    .line 102
    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->e:D

    .line 103
    return-void
.end method

.method public setRenderCompanions(Z)V
    .registers 2

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->g:Z

    .line 98
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
    .line 68
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->c:Ljava/util/Set;

    .line 69
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .prologue
    .line 83
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->a:I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->c:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->d:Z

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->e:D

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit16 v6, v6, 0x86

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "AdsRenderingSettings [bitrate="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", mimeTypes="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uiElements="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enablePreloading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playAdsAfterTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
