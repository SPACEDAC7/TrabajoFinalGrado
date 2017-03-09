.class public Lcom/buzzfeed/ads/model/VideoAd;
.super Ljava/lang/Object;
.source "VideoAd.java"

# interfaces
.implements Lcom/buzzfeed/toolkit/content/VideoAdContent;


# instance fields
.field private mTraffickingParameters:Lcom/buzzfeed/ads/video/TraffickingParameters;

.field private mVideo:Lcom/buzzfeed/ads/data/VideoResponse;

.field private mVideoUrl:Ljava/lang/String;

.field private uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/ads/model/VideoAd;->uuid:Ljava/util/UUID;

    return-void
.end method


# virtual methods
.method public getAspectRatio()F
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/buzzfeed/ads/model/VideoAd;->mVideo:Lcom/buzzfeed/ads/data/VideoResponse;

    iget-object v0, v0, Lcom/buzzfeed/ads/data/VideoResponse;->data:Lcom/buzzfeed/ads/data/VideoResponse$Data;

    iget-object v0, v0, Lcom/buzzfeed/ads/data/VideoResponse$Data;->video:Lcom/buzzfeed/ads/data/VideoResponse$Video;

    iget-object v0, v0, Lcom/buzzfeed/ads/data/VideoResponse$Video;->aspectRatio:Ljava/lang/String;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->getAspectRatioFromString(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getBuzzId()I
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/buzzfeed/ads/model/VideoAd;->mTraffickingParameters:Lcom/buzzfeed/ads/video/TraffickingParameters;

    invoke-virtual {v0}, Lcom/buzzfeed/ads/video/TraffickingParameters;->getBuzzId()I

    move-result v0

    return v0
.end method

.method public getBylinePrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    const-string v0, ""

    return-object v0
.end method

.method public getContentUri()Ljava/lang/String;
    .registers 6

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/buzzfeed/ads/model/VideoAd;->isValid()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "highUrl":Ljava/lang/String;
    iget-object v2, p0, Lcom/buzzfeed/ads/model/VideoAd;->mVideo:Lcom/buzzfeed/ads/data/VideoResponse;

    iget-object v2, v2, Lcom/buzzfeed/ads/data/VideoResponse;->data:Lcom/buzzfeed/ads/data/VideoResponse$Data;

    iget-object v2, v2, Lcom/buzzfeed/ads/data/VideoResponse$Data;->video:Lcom/buzzfeed/ads/data/VideoResponse$Video;

    iget-object v2, v2, Lcom/buzzfeed/ads/data/VideoResponse$Video;->renditions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/ads/data/VideoResponse$Rendition;

    .line 109
    .local v1, "rendition":Lcom/buzzfeed/ads/data/VideoResponse$Rendition;
    iget-object v3, v1, Lcom/buzzfeed/ads/data/VideoResponse$Rendition;->name:Ljava/lang/String;

    const-string v4, "low"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    iget-object v3, v1, Lcom/buzzfeed/ads/data/VideoResponse$Rendition;->url:Ljava/lang/String;

    iput-object v3, p0, Lcom/buzzfeed/ads/model/VideoAd;->mVideoUrl:Ljava/lang/String;

    .line 110
    :cond_2d
    iget-object v3, v1, Lcom/buzzfeed/ads/data/VideoResponse$Rendition;->name:Ljava/lang/String;

    const-string v4, "high"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v0, v1, Lcom/buzzfeed/ads/data/VideoResponse$Rendition;->url:Ljava/lang/String;

    goto :goto_13

    .line 112
    .end local v1    # "rendition":Lcom/buzzfeed/ads/data/VideoResponse$Rendition;
    :cond_3a
    iget-object v2, p0, Lcom/buzzfeed/ads/model/VideoAd;->mVideoUrl:Ljava/lang/String;

    if-nez v2, :cond_40

    iput-object v0, p0, Lcom/buzzfeed/ads/model/VideoAd;->mVideoUrl:Ljava/lang/String;

    .line 114
    .end local v0    # "highUrl":Ljava/lang/String;
    :cond_40
    iget-object v2, p0, Lcom/buzzfeed/ads/model/VideoAd;->mVideoUrl:Ljava/lang/String;

    return-object v2
.end method

.method public getCoverImage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/buzzfeed/ads/model/VideoAd;->mVideo:Lcom/buzzfeed/ads/data/VideoResponse;

    iget-object v0, v0, Lcom/buzzfeed/ads/data/VideoResponse;->data:Lcom/buzzfeed/ads/data/VideoResponse$Data;

    iget-object v0, v0, Lcom/buzzfeed/ads/data/VideoResponse$Data;->video:Lcom/buzzfeed/ads/data/VideoResponse$Video;

    iget-object v0, v0, Lcom/buzzfeed/ads/data/VideoResponse$Video;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .registers 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/buzzfeed/ads/model/VideoAd;->mVideo:Lcom/buzzfeed/ads/data/VideoResponse;

    iget-object v0, v0, Lcom/buzzfeed/ads/data/VideoResponse;->data:Lcom/buzzfeed/ads/data/VideoResponse$Data;

    iget-object v0, v0, Lcom/buzzfeed/ads/data/VideoResponse$Data;->video:Lcom/buzzfeed/ads/data/VideoResponse$Video;

    iget v0, v0, Lcom/buzzfeed/ads/data/VideoResponse$Video;->duration:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFlowId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/buzzfeed/ads/model/VideoAd;->uuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/buzzfeed/ads/model/VideoAd;->mTraffickingParameters:Lcom/buzzfeed/ads/video/TraffickingParameters;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/buzzfeed/ads/model/VideoAd;->mTraffickingParameters:Lcom/buzzfeed/ads/video/TraffickingParameters;

    invoke-virtual {v0}, Lcom/buzzfeed/ads/video/TraffickingParameters;->getVideoId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getShareUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/buzzfeed/ads/model/VideoAd;->mVideo:Lcom/buzzfeed/ads/data/VideoResponse;

    iget-object v0, v0, Lcom/buzzfeed/ads/data/VideoResponse;->data:Lcom/buzzfeed/ads/data/VideoResponse$Data;

    iget-object v0, v0, Lcom/buzzfeed/ads/data/VideoResponse$Data;->video:Lcom/buzzfeed/ads/data/VideoResponse$Video;

    iget-object v0, v0, Lcom/buzzfeed/ads/data/VideoResponse$Video;->buzzfeedVideoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getShowAvatar()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/buzzfeed/ads/model/VideoAd;->mVideo:Lcom/buzzfeed/ads/data/VideoResponse;

    iget-object v0, v0, Lcom/buzzfeed/ads/data/VideoResponse;->data:Lcom/buzzfeed/ads/data/VideoResponse$Data;

    iget-object v0, v0, Lcom/buzzfeed/ads/data/VideoResponse$Data;->video:Lcom/buzzfeed/ads/data/VideoResponse$Video;

    iget-object v0, v0, Lcom/buzzfeed/ads/data/VideoResponse$Video;->show:Lcom/buzzfeed/ads/data/VideoResponse$Show;

    iget-object v0, v0, Lcom/buzzfeed/ads/data/VideoResponse$Show;->avatarImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSponsorDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/buzzfeed/ads/model/VideoAd;->mVideo:Lcom/buzzfeed/ads/data/VideoResponse;

    iget-object v0, v0, Lcom/buzzfeed/ads/data/VideoResponse;->data:Lcom/buzzfeed/ads/data/VideoResponse$Data;

    iget-object v0, v0, Lcom/buzzfeed/ads/data/VideoResponse$Data;->video:Lcom/buzzfeed/ads/data/VideoResponse$Video;

    iget-object v0, v0, Lcom/buzzfeed/ads/data/VideoResponse$Video;->brand:Lcom/buzzfeed/ads/data/VideoResponse$Brand;

    iget-object v0, v0, Lcom/buzzfeed/ads/data/VideoResponse$Brand;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSponsorUserImageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/buzzfeed/ads/model/VideoAd;->mVideo:Lcom/buzzfeed/ads/data/VideoResponse;

    iget-object v0, v0, Lcom/buzzfeed/ads/data/VideoResponse;->data:Lcom/buzzfeed/ads/data/VideoResponse$Data;

    iget-object v0, v0, Lcom/buzzfeed/ads/data/VideoResponse$Data;->video:Lcom/buzzfeed/ads/data/VideoResponse$Video;

    iget-object v0, v0, Lcom/buzzfeed/ads/data/VideoResponse$Video;->brand:Lcom/buzzfeed/ads/data/VideoResponse$Brand;

    iget-object v0, v0, Lcom/buzzfeed/ads/data/VideoResponse$Brand;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/buzzfeed/ads/model/VideoAd;->mVideo:Lcom/buzzfeed/ads/data/VideoResponse;

    iget-object v0, v0, Lcom/buzzfeed/ads/data/VideoResponse;->data:Lcom/buzzfeed/ads/data/VideoResponse$Data;

    iget-object v0, v0, Lcom/buzzfeed/ads/data/VideoResponse$Data;->video:Lcom/buzzfeed/ads/data/VideoResponse$Video;

    iget-object v0, v0, Lcom/buzzfeed/ads/data/VideoResponse$Video;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoId()I
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/buzzfeed/ads/model/VideoAd;->mTraffickingParameters:Lcom/buzzfeed/ads/video/TraffickingParameters;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/buzzfeed/ads/model/VideoAd;->mTraffickingParameters:Lcom/buzzfeed/ads/video/TraffickingParameters;

    invoke-virtual {v0}, Lcom/buzzfeed/ads/video/TraffickingParameters;->getVideoId()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isBackfillAd()Z
    .registers 2

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/buzzfeed/ads/model/VideoAd;->mVideo:Lcom/buzzfeed/ads/data/VideoResponse;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/buzzfeed/ads/model/VideoAd;->mVideo:Lcom/buzzfeed/ads/data/VideoResponse;

    iget-object v0, v0, Lcom/buzzfeed/ads/data/VideoResponse;->data:Lcom/buzzfeed/ads/data/VideoResponse$Data;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/buzzfeed/ads/model/VideoAd;->mVideo:Lcom/buzzfeed/ads/data/VideoResponse;

    iget-object v0, v0, Lcom/buzzfeed/ads/data/VideoResponse;->data:Lcom/buzzfeed/ads/data/VideoResponse$Data;

    iget-object v0, v0, Lcom/buzzfeed/ads/data/VideoResponse$Data;->video:Lcom/buzzfeed/ads/data/VideoResponse$Video;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/buzzfeed/ads/model/VideoAd;->mVideo:Lcom/buzzfeed/ads/data/VideoResponse;

    iget-object v0, v0, Lcom/buzzfeed/ads/data/VideoResponse;->data:Lcom/buzzfeed/ads/data/VideoResponse$Data;

    iget-object v0, v0, Lcom/buzzfeed/ads/data/VideoResponse$Data;->video:Lcom/buzzfeed/ads/data/VideoResponse$Video;

    iget-object v0, v0, Lcom/buzzfeed/ads/data/VideoResponse$Video;->brand:Lcom/buzzfeed/ads/data/VideoResponse$Brand;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/buzzfeed/ads/model/VideoAd;->mTraffickingParameters:Lcom/buzzfeed/ads/video/TraffickingParameters;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/buzzfeed/ads/model/VideoAd;->mVideo:Lcom/buzzfeed/ads/data/VideoResponse;

    iget-object v0, v0, Lcom/buzzfeed/ads/data/VideoResponse;->data:Lcom/buzzfeed/ads/data/VideoResponse$Data;

    iget-object v0, v0, Lcom/buzzfeed/ads/data/VideoResponse$Data;->video:Lcom/buzzfeed/ads/data/VideoResponse$Video;

    iget-object v0, v0, Lcom/buzzfeed/ads/data/VideoResponse$Video;->renditions:Ljava/util/List;

    .line 123
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 124
    :cond_2e
    const/4 v0, 0x0

    .line 125
    :goto_2f
    return v0

    :cond_30
    const/4 v0, 0x1

    goto :goto_2f
.end method

.method public parse(Lorg/json/JSONObject;Lcom/buzzfeed/toolkit/content/ContentFactory;)V
    .registers 3
    .param p1, "jsonObj"    # Lorg/json/JSONObject;
    .param p2, "parser"    # Lcom/buzzfeed/toolkit/content/ContentFactory;

    .prologue
    .line 67
    return-void
.end method

.method public promotionType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/buzzfeed/ads/model/VideoAd;->mVideo:Lcom/buzzfeed/ads/data/VideoResponse;

    iget-object v0, v0, Lcom/buzzfeed/ads/data/VideoResponse;->data:Lcom/buzzfeed/ads/data/VideoResponse$Data;

    iget-object v0, v0, Lcom/buzzfeed/ads/data/VideoResponse$Data;->video:Lcom/buzzfeed/ads/data/VideoResponse$Video;

    iget-object v0, v0, Lcom/buzzfeed/ads/data/VideoResponse$Video;->promotionType:Ljava/lang/String;

    return-object v0
.end method

.method public setTraffickingParameters(Lcom/buzzfeed/ads/video/TraffickingParameters;)V
    .registers 2
    .param p1, "traffickingParameters"    # Lcom/buzzfeed/ads/video/TraffickingParameters;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/buzzfeed/ads/model/VideoAd;->mTraffickingParameters:Lcom/buzzfeed/ads/video/TraffickingParameters;

    .line 21
    return-void
.end method

.method public setVideo(Lcom/buzzfeed/ads/data/VideoResponse;)V
    .registers 2
    .param p1, "video"    # Lcom/buzzfeed/ads/data/VideoResponse;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/buzzfeed/ads/model/VideoAd;->mVideo:Lcom/buzzfeed/ads/data/VideoResponse;

    .line 33
    return-void
.end method
