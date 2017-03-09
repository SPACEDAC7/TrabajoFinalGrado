.class public interface abstract Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;
.super Ljava/lang/Object;
.source "IMASDK"


# virtual methods
.method public abstract getAdContainer()Landroid/view/ViewGroup;
.end method

.method public abstract getCompanionSlots()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setAdContainer(Landroid/view/ViewGroup;)V
.end method

.method public abstract setCompanionSlots(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;",
            ">;)V"
        }
    .end annotation
.end method
