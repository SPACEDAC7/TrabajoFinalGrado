.class public interface abstract Lcom/google/ads/interactivemedia/v3/api/StreamRequest;
.super Ljava/lang/Object;
.source "IMASDK"


# virtual methods
.method public abstract getAdTagParameters()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getApiKey()Ljava/lang/String;
.end method

.method public abstract getAssetKey()Ljava/lang/String;
.end method

.method public abstract getContentSourceId()Ljava/lang/String;
.end method

.method public abstract getStreamDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;
.end method

.method public abstract getUserRequestContext()Ljava/lang/Object;
.end method

.method public abstract getVideoId()Ljava/lang/String;
.end method

.method public abstract isPrerollRequested()Z
.end method

.method public abstract setAdTagParameters(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setPrerollRequested(Z)V
.end method

.method public abstract setUserRequestContext(Ljava/lang/Object;)V
.end method
