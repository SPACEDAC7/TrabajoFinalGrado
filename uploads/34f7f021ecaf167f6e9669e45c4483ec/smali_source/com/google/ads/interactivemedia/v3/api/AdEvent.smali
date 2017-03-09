.class public interface abstract Lcom/google/ads/interactivemedia/v3/api/AdEvent;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;,
        Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;
    }
.end annotation


# virtual methods
.method public abstract getAd()Lcom/google/ads/interactivemedia/v3/api/Ad;
.end method

.method public abstract getAdData()Ljava/util/Map;
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

.method public abstract getType()Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;
.end method
