.class public interface abstract Lcom/buzzfeed/showx/showpage/ShowPageContract$Tracker;
.super Ljava/lang/Object;
.source "ShowPageContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/showx/showpage/ShowPageContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Tracker"
.end annotation


# virtual methods
.method public abstract trackEnableNotificationCanceled(Ljava/lang/String;)V
.end method

.method public abstract trackOpenShareSheet()V
.end method

.method public abstract trackPageView(I)V
.end method

.method public abstract trackTapSubscribeButton(Ljava/lang/String;Z)V
.end method

.method public abstract trackUnitImpressions(Ljava/lang/String;Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/buzzfeed/analytics/model/UnitImpression;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract trackUnsubscribeNotificationCanceled(Ljava/lang/String;)V
.end method

.method public abstract trackVideoCellClicked(Lcom/buzzfeed/toolkit/content/VideoContent;IJZ)V
    .param p1    # Lcom/buzzfeed/toolkit/content/VideoContent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract trackVideoShareAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
