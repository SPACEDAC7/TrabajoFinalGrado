.class public interface abstract Lcom/google/ads/interactivemedia/v3/api/StreamManager;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/BaseManager;


# virtual methods
.method public abstract getAdProgressInfo()Lcom/google/ads/interactivemedia/v3/api/AdProgressInfo;
.end method

.method public abstract getContentTimeForStreamTime(D)D
.end method

.method public abstract getCuePoints()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/api/CuePoint;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPreviousCuePointForStreamTime(D)Lcom/google/ads/interactivemedia/v3/api/CuePoint;
.end method

.method public abstract getStreamId()Ljava/lang/String;
.end method

.method public abstract getStreamTimeForContentTime(D)D
.end method
