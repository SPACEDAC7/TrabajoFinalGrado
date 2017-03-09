.class public Lcom/buzzfeed/ads/data/VideoResponse$Rendition;
.super Ljava/lang/Object;
.source "VideoResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/ads/data/VideoResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Rendition"
.end annotation


# instance fields
.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field final synthetic this$0:Lcom/buzzfeed/ads/data/VideoResponse;

.field public url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/buzzfeed/ads/data/VideoResponse;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/ads/data/VideoResponse;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/buzzfeed/ads/data/VideoResponse$Rendition;->this$0:Lcom/buzzfeed/ads/data/VideoResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
