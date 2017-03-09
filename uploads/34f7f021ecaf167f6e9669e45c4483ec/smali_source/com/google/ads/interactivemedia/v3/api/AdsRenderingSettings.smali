.class public interface abstract Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;
.super Ljava/lang/Object;
.source "IMASDK"


# virtual methods
.method public abstract getBitrateKbps()I
.end method

.method public abstract getEnablePreloading()Z
.end method

.method public abstract getMimeTypes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isRenderCompanions()Z
.end method

.method public abstract setBitrateKbps(I)V
.end method

.method public abstract setEnablePreloading(Z)V
.end method

.method public abstract setMimeTypes(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setPlayAdsAfterTime(D)V
.end method

.method public abstract setRenderCompanions(Z)V
.end method

.method public abstract setUiElements(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/ads/interactivemedia/v3/api/UiElement;",
            ">;)V"
        }
    .end annotation
.end method
