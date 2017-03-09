.class final Lcom/buzzfeed/android/data/ads/VideoAdABTest$2;
.super Ljava/util/HashMap;
.source "VideoAdABTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/data/ads/VideoAdABTest;->shouldShowVideoAds(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$TAG:Ljava/lang/String;

.field final synthetic val$abVariantBlockFallback:Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;Ljava/lang/String;Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 56
    iput-object p1, p0, Lcom/buzzfeed/android/data/ads/VideoAdABTest$2;->val$abVariantBlockFallback:Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;

    iput-object p2, p0, Lcom/buzzfeed/android/data/ads/VideoAdABTest$2;->val$TAG:Ljava/lang/String;

    iput-object p3, p0, Lcom/buzzfeed/android/data/ads/VideoAdABTest$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 58
    const-string v0, "control"

    iget-object v1, p0, Lcom/buzzfeed/android/data/ads/VideoAdABTest$2;->val$abVariantBlockFallback:Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;

    invoke-virtual {p0, v0, v1}, Lcom/buzzfeed/android/data/ads/VideoAdABTest$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string/jumbo v0, "turn_on"

    new-instance v1, Lcom/buzzfeed/android/data/ads/VideoAdABTest$2$1;

    invoke-direct {v1, p0}, Lcom/buzzfeed/android/data/ads/VideoAdABTest$2$1;-><init>(Lcom/buzzfeed/android/data/ads/VideoAdABTest$2;)V

    invoke-virtual {p0, v0, v1}, Lcom/buzzfeed/android/data/ads/VideoAdABTest$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-void
.end method
