.class public Lcom/buzzfeed/ads/data/VideoResponse$Brand;
.super Ljava/lang/Object;
.source "VideoResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/ads/data/VideoResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Brand"
.end annotation


# instance fields
.field public id:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public imageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image_url"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field final synthetic this$0:Lcom/buzzfeed/ads/data/VideoResponse;


# direct methods
.method public constructor <init>(Lcom/buzzfeed/ads/data/VideoResponse;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/ads/data/VideoResponse;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/buzzfeed/ads/data/VideoResponse$Brand;->this$0:Lcom/buzzfeed/ads/data/VideoResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
