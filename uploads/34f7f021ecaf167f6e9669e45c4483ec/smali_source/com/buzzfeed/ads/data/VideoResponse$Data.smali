.class public Lcom/buzzfeed/ads/data/VideoResponse$Data;
.super Ljava/lang/Object;
.source "VideoResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/ads/data/VideoResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/ads/data/VideoResponse;

.field public video:Lcom/buzzfeed/ads/data/VideoResponse$Video;


# direct methods
.method public constructor <init>(Lcom/buzzfeed/ads/data/VideoResponse;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/ads/data/VideoResponse;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/buzzfeed/ads/data/VideoResponse$Data;->this$0:Lcom/buzzfeed/ads/data/VideoResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
