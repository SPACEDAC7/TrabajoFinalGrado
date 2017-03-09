.class public interface abstract Lcom/google/ads/interactivemedia/v3/api/Ad;
.super Ljava/lang/Object;
.source "IMASDK"


# virtual methods
.method public abstract getAdId()Ljava/lang/String;
.end method

.method public abstract getAdPodInfo()Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;
.end method

.method public abstract getAdSystem()Ljava/lang/String;
.end method

.method public abstract getAdWrapperIds()[Ljava/lang/String;
.end method

.method public abstract getAdWrapperSystems()[Ljava/lang/String;
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getDuration()D
.end method

.method public abstract getHeight()I
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getTraffickingParameters()Ljava/lang/String;
.end method

.method public abstract getUiElements()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/ads/interactivemedia/v3/api/UiElement;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWidth()I
.end method

.method public abstract isLinear()Z
.end method

.method public abstract isSkippable()Z
.end method
