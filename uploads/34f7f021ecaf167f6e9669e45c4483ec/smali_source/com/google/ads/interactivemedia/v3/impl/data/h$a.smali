.class final Lcom/google/ads/interactivemedia/v3/impl/data/h$a;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/data/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/data/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private adTagParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private adTagUrl:Ljava/lang/String;

.field private adsResponse:Ljava/lang/String;

.field private apiKey:Ljava/lang/String;

.field private assetKey:Ljava/lang/String;

.field private attemptPreroll:Ljava/lang/Boolean;

.field private companionSlots:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private contentSourceId:Ljava/lang/String;

.field private env:Ljava/lang/String;

.field private extraParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isTv:Ljava/lang/Boolean;

.field private marketAppInfo:Lcom/google/ads/interactivemedia/v3/impl/h$b;

.field private msParameter:Ljava/lang/String;

.field private network:Ljava/lang/String;

.field private settings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

.field private videoId:Ljava/lang/String;

.field private videoPlayActivation:Lcom/google/ads/interactivemedia/v3/impl/m$a;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    return-void
.end method

.method constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/data/k;)V
    .registers 3

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->adsResponse()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->adsResponse:Ljava/lang/String;

    .line 284
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->adTagUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->adTagUrl:Ljava/lang/String;

    .line 285
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->assetKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->assetKey:Ljava/lang/String;

    .line 286
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->contentSourceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->contentSourceId:Ljava/lang/String;

    .line 287
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->videoId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->videoId:Ljava/lang/String;

    .line 288
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->apiKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->apiKey:Ljava/lang/String;

    .line 289
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->attemptPreroll()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->attemptPreroll:Ljava/lang/Boolean;

    .line 290
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->adTagParameters()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->adTagParameters:Ljava/util/Map;

    .line 291
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->env()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->env:Ljava/lang/String;

    .line 292
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->network()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->network:Ljava/lang/String;

    .line 293
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->videoPlayActivation()Lcom/google/ads/interactivemedia/v3/impl/m$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->videoPlayActivation:Lcom/google/ads/interactivemedia/v3/impl/m$a;

    .line 294
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->companionSlots()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->companionSlots:Ljava/util/Map;

    .line 295
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->extraParameters()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->extraParameters:Ljava/util/Map;

    .line 296
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->settings()Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->settings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    .line 297
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->marketAppInfo()Lcom/google/ads/interactivemedia/v3/impl/h$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->marketAppInfo:Lcom/google/ads/interactivemedia/v3/impl/h$b;

    .line 298
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->isTv()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->isTv:Ljava/lang/Boolean;

    .line 299
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->msParameter()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->msParameter:Ljava/lang/String;

    .line 300
    return-void
.end method


# virtual methods
.method public adTagParameters(Ljava/util/Map;)Lcom/google/ads/interactivemedia/v3/impl/data/k$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/ads/interactivemedia/v3/impl/data/k$a;"
        }
    .end annotation

    .prologue
    .line 338
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->adTagParameters:Ljava/util/Map;

    .line 339
    return-object p0
.end method

.method public adTagUrl(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/k$a;
    .registers 2

    .prologue
    .line 308
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->adTagUrl:Ljava/lang/String;

    .line 309
    return-object p0
.end method

.method public adsResponse(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/k$a;
    .registers 2

    .prologue
    .line 303
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->adsResponse:Ljava/lang/String;

    .line 304
    return-object p0
.end method

.method public apiKey(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/k$a;
    .registers 2

    .prologue
    .line 328
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->apiKey:Ljava/lang/String;

    .line 329
    return-object p0
.end method

.method public assetKey(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/k$a;
    .registers 2

    .prologue
    .line 313
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->assetKey:Ljava/lang/String;

    .line 314
    return-object p0
.end method

.method public attemptPreroll(Ljava/lang/Boolean;)Lcom/google/ads/interactivemedia/v3/impl/data/k$a;
    .registers 2

    .prologue
    .line 333
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->attemptPreroll:Ljava/lang/Boolean;

    .line 334
    return-object p0
.end method

.method public build()Lcom/google/ads/interactivemedia/v3/impl/data/k;
    .registers 21

    .prologue
    .line 388
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/data/h;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->adsResponse:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->adTagUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->assetKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->contentSourceId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->videoId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->apiKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->attemptPreroll:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->adTagParameters:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->env:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->network:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->videoPlayActivation:Lcom/google/ads/interactivemedia/v3/impl/m$a;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->companionSlots:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->extraParameters:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->settings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->marketAppInfo:Lcom/google/ads/interactivemedia/v3/impl/h$b;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->isTv:Ljava/lang/Boolean;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->msParameter:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-direct/range {v1 .. v19}, Lcom/google/ads/interactivemedia/v3/impl/data/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/m$a;Ljava/util/Map;Ljava/util/Map;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/impl/h$b;Ljava/lang/Boolean;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/h$1;)V

    return-object v1
.end method

.method public companionSlots(Ljava/util/Map;)Lcom/google/ads/interactivemedia/v3/impl/data/k$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/ads/interactivemedia/v3/impl/data/k$a;"
        }
    .end annotation

    .prologue
    .line 358
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->companionSlots:Ljava/util/Map;

    .line 359
    return-object p0
.end method

.method public contentSourceId(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/k$a;
    .registers 2

    .prologue
    .line 318
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->contentSourceId:Ljava/lang/String;

    .line 319
    return-object p0
.end method

.method public env(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/k$a;
    .registers 2

    .prologue
    .line 343
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->env:Ljava/lang/String;

    .line 344
    return-object p0
.end method

.method public extraParameters(Ljava/util/Map;)Lcom/google/ads/interactivemedia/v3/impl/data/k$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/ads/interactivemedia/v3/impl/data/k$a;"
        }
    .end annotation

    .prologue
    .line 363
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->extraParameters:Ljava/util/Map;

    .line 364
    return-object p0
.end method

.method public isTv(Ljava/lang/Boolean;)Lcom/google/ads/interactivemedia/v3/impl/data/k$a;
    .registers 2

    .prologue
    .line 378
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->isTv:Ljava/lang/Boolean;

    .line 379
    return-object p0
.end method

.method public marketAppInfo(Lcom/google/ads/interactivemedia/v3/impl/h$b;)Lcom/google/ads/interactivemedia/v3/impl/data/k$a;
    .registers 2

    .prologue
    .line 373
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->marketAppInfo:Lcom/google/ads/interactivemedia/v3/impl/h$b;

    .line 374
    return-object p0
.end method

.method public msParameter(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/k$a;
    .registers 2

    .prologue
    .line 383
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->msParameter:Ljava/lang/String;

    .line 384
    return-object p0
.end method

.method public network(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/k$a;
    .registers 2

    .prologue
    .line 348
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->network:Ljava/lang/String;

    .line 349
    return-object p0
.end method

.method public settings(Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;)Lcom/google/ads/interactivemedia/v3/impl/data/k$a;
    .registers 2

    .prologue
    .line 368
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->settings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    .line 369
    return-object p0
.end method

.method public videoId(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/k$a;
    .registers 2

    .prologue
    .line 323
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->videoId:Ljava/lang/String;

    .line 324
    return-object p0
.end method

.method public videoPlayActivation(Lcom/google/ads/interactivemedia/v3/impl/m$a;)Lcom/google/ads/interactivemedia/v3/impl/data/k$a;
    .registers 2

    .prologue
    .line 353
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;->videoPlayActivation:Lcom/google/ads/interactivemedia/v3/impl/m$a;

    .line 354
    return-object p0
.end method
