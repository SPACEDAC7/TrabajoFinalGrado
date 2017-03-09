.class public Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;
.super Ljava/lang/Object;
.source "SpiceItem.java"

# interfaces
.implements Lcom/buzzfeed/toolkit/content/Content;
.implements Lcom/buzzfeed/toolkit/content/PostContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Images;,
        Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Format;,
        Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Flags;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field bylines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/spicerack/data/model/subbuzz/Byline;",
            ">;"
        }
    .end annotation
.end field

.field category:Ljava/lang/String;

.field categoryId:Ljava/lang/String;

.field commentStats:Ljava/lang/String;

.field countryCode:Ljava/lang/String;

.field description:Ljava/lang/String;

.field disclaimerBottom:Ljava/lang/String;

.field disclaimerTop:Ljava/lang/String;

.field editUpdated:J

.field flags:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Flags;

.field format:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Format;

.field id:Ljava/lang/String;

.field images:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Images;

.field impressions:J

.field isBookmarked:Z

.field language:Ljava/lang/String;

.field lastUpdated:J

.field loginType:Ljava/lang/String;

.field published:J

.field publishedDate:Ljava/lang/String;

.field shortDescription:Ljava/lang/String;

.field status:Ljava/lang/String;

.field subBuzzes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;",
            ">;"
        }
    .end annotation
.end field

.field tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field title:Ljava/lang/String;

.field uri:Ljava/lang/String;

.field userId:Ljava/lang/String;

.field username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-class v0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;
    .registers 5
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 57
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 58
    .local v1, "gsonBuilder":Lcom/google/gson/GsonBuilder;
    const-class v2, Ljava/lang/Boolean;

    sget-object v3, Lcom/buzzfeed/toolkit/util/GsonUtils;->safeBooleanAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 59
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v3, Lcom/buzzfeed/toolkit/util/GsonUtils;->safeBooleanAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 60
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v3, Lcom/buzzfeed/toolkit/util/GsonUtils;->safeLongAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 61
    const-class v2, Ljava/lang/Long;

    sget-object v3, Lcom/buzzfeed/toolkit/util/GsonUtils;->safeLongAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 62
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v3, Lcom/buzzfeed/toolkit/util/GsonUtils;->safeIntegerAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 63
    const-class v2, Ljava/lang/Integer;

    sget-object v3, Lcom/buzzfeed/toolkit/util/GsonUtils;->safeIntegerAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 64
    sget-object v2, Lcom/google/gson/FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcom/google/gson/FieldNamingPolicy;

    invoke-virtual {v1, v2}, Lcom/google/gson/GsonBuilder;->setFieldNamingPolicy(Lcom/google/gson/FieldNamingPolicy;)Lcom/google/gson/GsonBuilder;

    .line 65
    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 66
    .local v0, "gson":Lcom/google/gson/Gson;
    const-class v2, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    invoke-virtual {v0, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    return-object v2
.end method


# virtual methods
.method public getAuthorContents()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/AuthorContent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->bylines:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 188
    .local v0, "authors":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/toolkit/content/AuthorContent;>;"
    return-object v0
.end method

.method public getAuthorDisplayName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 357
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->bylines:Ljava/util/List;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->bylines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->bylines:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/spicerack/data/model/subbuzz/Byline;

    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/data/model/subbuzz/Byline;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 360
    :goto_2c
    return-object v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method public getAuthorId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 341
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->bylines:Ljava/util/List;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->bylines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 342
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->bylines:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/spicerack/data/model/subbuzz/Byline;

    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/data/model/subbuzz/Byline;->getId()Ljava/lang/String;

    move-result-object v0

    .line 344
    :goto_19
    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public getAuthorUserPage()Ljava/lang/String;
    .registers 4

    .prologue
    .line 349
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->bylines:Ljava/util/List;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->bylines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->bylines:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/spicerack/data/model/subbuzz/Byline;

    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/data/model/subbuzz/Byline;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 352
    :goto_2c
    return-object v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method public getBylines()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/spicerack/data/model/subbuzz/Byline;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->bylines:Ljava/util/List;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->categoryId:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentStats()Ljava/lang/String;
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->commentStats:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDataSource()Ljava/lang/String;
    .registers 2

    .prologue
    .line 405
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDisclaimerBottom()Ljava/lang/String;
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->disclaimerBottom:Ljava/lang/String;

    return-object v0
.end method

.method public getDisclaimerTop()Ljava/lang/String;
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->disclaimerTop:Ljava/lang/String;

    return-object v0
.end method

.method public getEditUpdated()Ljava/util/Date;
    .registers 7

    .prologue
    .line 305
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->editUpdated:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getFlags()Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Flags;
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->flags:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Flags;

    return-object v0
.end method

.method public getFlowId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getFormat()Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Format;
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->format:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Format;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImageStack(F)Ljava/util/Stack;
    .registers 4
    .param p1, "screenDensityDpi"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 410
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 411
    .local v0, "imageStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->images:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Images;

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Images;->getStandard()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 412
    iget-object v1, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->images:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Images;

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Images;->getStandard()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 414
    :cond_16
    iget-object v1, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->images:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Images;

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Images;->getBig()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 415
    iget-object v1, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->images:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Images;

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Images;->getBig()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 417
    :cond_27
    iget-object v1, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->images:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Images;

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Images;->getDblbig()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 418
    iget-object v1, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->images:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Images;

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Images;->getDblbig()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 420
    :cond_38
    return-object v0
.end method

.method public getImages()Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Images;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->images:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Images;

    return-object v0
.end method

.method public getImpressions()J
    .registers 3

    .prologue
    .line 249
    iget-wide v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->impressions:J

    return-wide v0
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpdated()Ljava/util/Date;
    .registers 7

    .prologue
    .line 258
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->lastUpdated:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getLoginType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->loginType:Ljava/lang/String;

    return-object v0
.end method

.method public getPublished()Ljava/util/Date;
    .registers 7

    .prologue
    .line 267
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->published:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getShareUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->getUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShortDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->shortDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getSubBuzzes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->subBuzzes:Ljava/util/List;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailStack()Ljava/util/Stack;
    .registers 3
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
    .line 377
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 378
    .local v0, "thumbStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->images:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Images;

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Images;->getSmall()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 379
    iget-object v1, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->images:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Images;

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Images;->getSmall()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 381
    :cond_16
    iget-object v1, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->images:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Images;

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Images;->getStandard()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 382
    iget-object v1, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->images:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Images;

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Images;->getStandard()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 384
    :cond_27
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .registers 3

    .prologue
    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .registers 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getViewCount()J
    .registers 3

    .prologue
    .line 330
    iget-wide v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->impressions:J

    return-wide v0
.end method

.method public getWideStack()Ljava/util/Stack;
    .registers 3
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
    .line 365
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 366
    .local v0, "wideStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->images:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Images;

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Images;->getWide()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 367
    iget-object v1, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->images:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Images;

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Images;->getWide()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 369
    :cond_16
    iget-object v1, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->images:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Images;

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Images;->getDblwide()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 370
    iget-object v1, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->images:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Images;

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Images;->getDblwide()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 372
    :cond_27
    return-object v0
.end method

.method public hasEditUpdated()Z
    .registers 5

    .prologue
    .line 310
    iget-wide v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->editUpdated:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isAd()Z
    .registers 3

    .prologue
    .line 70
    const-string v0, "Advertiser"

    iget-object v1, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isAllowContributions()Z
    .registers 2

    .prologue
    .line 315
    const/4 v0, 0x1

    return v0
.end method

.method public isBookmarked()Z
    .registers 2

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->isBookmarked:Z

    return v0
.end method

.method public isBreaking()Z
    .registers 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->format:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Format;

    if-eqz v0, :cond_12

    const-string v0, "breaking"

    iget-object v1, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->format:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Format;

    iget-object v1, v1, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Format;->pageType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isCommentsEnabled()Z
    .registers 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->flags:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Flags;

    if-eqz v0, :cond_b

    .line 390
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->flags:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Flags;

    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Flags;->getCommentsEnabled()Z

    move-result v0

    .line 392
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isReactionsEnabled()Z
    .registers 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->flags:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Flags;

    if-eqz v0, :cond_b

    .line 398
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->flags:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Flags;

    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem$Flags;->getReactionsEnabled()Z

    move-result v0

    .line 400
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 230
    const/4 v0, 0x1

    return v0
.end method

.method public parse(Lorg/json/JSONObject;Lcom/buzzfeed/toolkit/content/ContentFactory;)V
    .registers 3
    .param p1, "jsonObj"    # Lorg/json/JSONObject;
    .param p2, "parser"    # Lcom/buzzfeed/toolkit/content/ContentFactory;

    .prologue
    .line 241
    return-void
.end method

.method public setBookmarked(J)V
    .registers 6
    .param p1, "bookmarked"    # J

    .prologue
    .line 320
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_7
    iput-boolean v0, p0, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->isBookmarked:Z

    .line 321
    return-void

    .line 320
    :cond_a
    const/4 v0, 0x0

    goto :goto_7
.end method
