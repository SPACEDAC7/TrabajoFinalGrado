.class public Lcom/buzzfeed/ads/data/VideoResponse$Video;
.super Ljava/lang/Object;
.source "VideoResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/ads/data/VideoResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Video"
.end annotation


# instance fields
.field public aspectRatio:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "aspect_ratio"
    .end annotation
.end field

.field public brand:Lcom/buzzfeed/ads/data/VideoResponse$Brand;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "brand"
    .end annotation
.end field

.field public buzzId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "buzz_id"
    .end annotation
.end field

.field public buzzfeedVideoUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "buzzfeed_video_url"
    .end annotation
.end field

.field public defaultThumbnailUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "default_thumbnail_url"
    .end annotation
.end field

.field public description:Ljava/lang/String;

.field public duration:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "duration"
    .end annotation
.end field

.field public height:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "height"
    .end annotation
.end field

.field public id:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public inputUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "input_url"
    .end annotation
.end field

.field public isPromoted:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_promoted"
    .end annotation
.end field

.field public promotionType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "promotion_type"
    .end annotation
.end field

.field public renditions:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "renditions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/ads/data/VideoResponse$Rendition;",
            ">;"
        }
    .end annotation
.end field

.field public show:Lcom/buzzfeed/ads/data/VideoResponse$Show;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "show"
    .end annotation
.end field

.field final synthetic this$0:Lcom/buzzfeed/ads/data/VideoResponse;

.field public thumbnailUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "thumbnail_url"
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field public width:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "width"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/buzzfeed/ads/data/VideoResponse;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/ads/data/VideoResponse;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/buzzfeed/ads/data/VideoResponse$Video;->this$0:Lcom/buzzfeed/ads/data/VideoResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
