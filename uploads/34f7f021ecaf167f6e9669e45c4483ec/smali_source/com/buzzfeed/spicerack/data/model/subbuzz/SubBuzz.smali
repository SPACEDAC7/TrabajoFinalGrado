.class public Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;
.super Ljava/lang/Object;
.source "SubBuzz.java"

# interfaces
.implements Lcom/buzzfeed/spicerack/data/model/subbuzz/BreakingUpdateSpice;
.implements Lcom/buzzfeed/spicerack/data/model/subbuzz/CorrectionUpdateSpice;
.implements Lcom/buzzfeed/spicerack/data/model/subbuzz/EmbedSpice;
.implements Lcom/buzzfeed/spicerack/data/model/subbuzz/ImageGroupSpice;
.implements Lcom/buzzfeed/spicerack/data/model/subbuzz/ImageSpice;
.implements Lcom/buzzfeed/spicerack/data/model/subbuzz/LinkSpice;
.implements Lcom/buzzfeed/spicerack/data/model/subbuzz/TextSpice;
.implements Lcom/buzzfeed/spicerack/data/model/subbuzz/TweetSpice;
.implements Lcom/buzzfeed/spicerack/data/model/subbuzz/VideoSpice;
.implements Lcom/buzzfeed/spicerack/data/model/subbuzz/YoutubeSpice;
.implements Lcom/buzzfeed/toolkit/content/Content;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images;,
        Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$ImageRow;,
        Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata;
    }
.end annotation


# static fields
.field private static final INSTAGRAM_EMBED_DOMAIN_BASE:Ljava/lang/String; = "instagram.com/p/"

.field private static final YOUTUBE_QUALITY_REGEX:Ljava/lang/String; = "\\d.jpg"


# instance fields
.field attribution:Ljava/lang/String;

.field code:Ljava/lang/String;

.field contentOrder:Ljava/lang/String;

.field description:Ljava/lang/String;

.field form:Ljava/lang/String;

.field hasGif:Z

.field header:Ljava/lang/String;

.field id:Ljava/lang/String;

.field images:Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images;

.field link:Ljava/lang/String;

.field metadata:Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata;

.field mobileSafe:Z

.field number:I

.field originalUrl:Ljava/lang/String;

.field published:Ljava/lang/String;

.field publishedUnix:J

.field row:Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$ImageRow;

.field source:Ljava/lang/String;

.field sourceId:Ljava/lang/String;

.field sourceType:Ljava/lang/String;

.field thumb:Ljava/lang/String;

.field updated:Ljava/lang/String;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttribution()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->attribution:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getContentOrder()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->contentOrder:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFlowId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getForm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->form:Ljava/lang/String;

    return-object v0
.end method

.method public getHeader()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->header:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImageStack()Ljava/util/Stack;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack",
            "<",
            "Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images$Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 491
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 492
    .local v0, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images$Image;>;"
    iget-object v1, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->images:Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images;

    if-eqz v1, :cond_3c

    .line 493
    iget-object v1, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->images:Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images;

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images;->getOriginal()Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images$Image;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 494
    iget-object v1, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->images:Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images;

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images;->getOriginal()Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images$Image;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 496
    :cond_1a
    iget-object v1, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->images:Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images;

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images;->getStandard()Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images$Image;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 497
    iget-object v1, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->images:Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images;

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images;->getStandard()Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images$Image;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 499
    :cond_2b
    iget-object v1, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->images:Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images;

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images;->getMobile()Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images$Image;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 500
    iget-object v1, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->images:Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images;

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images;->getMobile()Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images$Image;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 503
    :cond_3c
    return-object v0
.end method

.method public getImages()Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->images:Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$Images;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getMetadata()Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->metadata:Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$TweetMetadata;

    return-object v0
.end method

.method public getNumber()I
    .registers 2

    .prologue
    .line 92
    iget v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->number:I

    return v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->originalUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishedDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->published:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishedTimestamp()J
    .registers 3

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->publishedUnix:J

    return-wide v0
.end method

.method public getRow()Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$ImageRow;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->row:Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz$ImageRow;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->sourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->sourceType:Ljava/lang/String;

    return-object v0
.end method

.method public getThumb()Ljava/lang/String;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->thumb:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdated()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->updated:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getYoutubeThumbnailUrls()Ljava/util/Stack;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->getThumb()Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "thumbnail":Ljava/lang/String;
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    .line 187
    .local v3, "thumbnails":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    invoke-virtual {v3, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 189
    const/4 v1, 0x3

    .local v1, "i":I
    :goto_d
    if-ltz v1, :cond_2e

    .line 190
    const-string v4, "\\d.jpg"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "formatted":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 189
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 194
    .end local v0    # "formatted":Ljava/lang/String;
    :cond_2e
    return-object v3
.end method

.method public hasGif()Z
    .registers 2

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->hasGif:Z

    return v0
.end method

.method public isInstagramEmbed()Z
    .registers 3

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->getForm()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->EMBED:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->getForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "instagram.com/p/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public isMobileSafe()Z
    .registers 2

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->mobileSafe:Z

    return v0
.end method

.method public isValid()Z
    .registers 3

    .prologue
    .line 64
    sget-object v0, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->LINK:Lcom/buzzfeed/spicerack/data/factory/SpiceType;

    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/data/factory/SpiceType;->getForm()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->form:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->link:Ljava/lang/String;

    if-nez v0, :cond_14

    .line 65
    const/4 v0, 0x0

    .line 68
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x1

    goto :goto_13
.end method

.method public isYoutube()Z
    .registers 3

    .prologue
    .line 176
    const-string/jumbo v0, "youtube"

    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public parse(Lorg/json/JSONObject;Lcom/buzzfeed/toolkit/content/ContentFactory;)V
    .registers 3
    .param p1, "jsonObj"    # Lorg/json/JSONObject;
    .param p2, "parser"    # Lcom/buzzfeed/toolkit/content/ContentFactory;

    .prologue
    .line 79
    return-void
.end method
