.class public Lcom/google/ads/interactivemedia/v3/impl/h;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdsLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/h$c;,
        Lcom/google/ads/interactivemedia/v3/impl/h$a;,
        Lcom/google/ads/interactivemedia/v3/impl/h$b;
    }
.end annotation


# instance fields
.field a:Lcom/google/ads/interactivemedia/v3/impl/ab$b;

.field private final b:Lcom/google/ads/interactivemedia/v3/impl/ab;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/ads/interactivemedia/v3/impl/w;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/api/AdsRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/api/StreamRequest;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/google/a/a/g;

.field private final i:Ljava/lang/Object;

.field private j:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

.field private k:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;)V
    .registers 5

    .prologue
    .line 282
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/ads/interactivemedia/v3/impl/h;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)V

    .line 283
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->b:Lcom/google/ads/interactivemedia/v3/impl/ab;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/ab;->a()V

    .line 284
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)V
    .registers 6

    .prologue
    .line 288
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/ab;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/impl/ab;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)V

    invoke-direct {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/h;-><init>(Lcom/google/ads/interactivemedia/v3/impl/ab;Landroid/content/Context;)V

    .line 290
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->j:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    .line 291
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->k:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    .line 292
    return-void
.end method

.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/ab;Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/h$1;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/impl/h$1;-><init>(Lcom/google/ads/interactivemedia/v3/impl/h;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->a:Lcom/google/ads/interactivemedia/v3/impl/ab$b;

    .line 154
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/w;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/w;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->d:Lcom/google/ads/interactivemedia/v3/impl/w;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->e:Ljava/util/List;

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->f:Ljava/util/Map;

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->g:Ljava/util/Map;

    .line 160
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->i:Ljava/lang/Object;

    .line 161
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->j:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    .line 295
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->b:Lcom/google/ads/interactivemedia/v3/impl/ab;

    .line 296
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->c:Landroid/content/Context;

    .line 297
    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/impl/h;Lcom/google/a/a/g;)Lcom/google/a/a/g;
    .registers 2

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->h:Lcom/google/a/a/g;

    return-object p1
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/impl/h;)Ljava/util/Map;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->f:Ljava/util/Map;

    return-object v0
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/api/AdsRequest;)Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 386
    if-nez p1, :cond_19

    .line 387
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->d:Lcom/google/ads/interactivemedia/v3/impl/w;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/c;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/api/AdError;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v5, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INVALID_ARGUMENTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v6, "AdsRequest cannot be null."

    invoke-direct {v3, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/w;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    .line 424
    :goto_18
    return v0

    .line 391
    :cond_19
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getAdDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    move-result-object v1

    .line 392
    if-nez v1, :cond_35

    .line 393
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->d:Lcom/google/ads/interactivemedia/v3/impl/w;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/c;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/api/AdError;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v5, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INVALID_ARGUMENTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v6, "Ad display container must be provided in the AdsRequest."

    invoke-direct {v3, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/w;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    goto :goto_18

    .line 399
    :cond_35
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->getAdContainer()Landroid/view/ViewGroup;

    move-result-object v2

    if-nez v2, :cond_51

    .line 400
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->d:Lcom/google/ads/interactivemedia/v3/impl/w;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/c;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/api/AdError;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v5, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INVALID_ARGUMENTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v6, "Ad display container must have a UI container."

    invoke-direct {v3, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/w;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    goto :goto_18

    .line 410
    :cond_51
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->b:Lcom/google/ads/interactivemedia/v3/impl/ab;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/impl/ab;->c()Lcom/google/ads/interactivemedia/v3/impl/ad;

    move-result-object v2

    if-eqz v2, :cond_83

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->b:Lcom/google/ads/interactivemedia/v3/impl/ab;

    .line 411
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/impl/ab;->c()Lcom/google/ads/interactivemedia/v3/impl/ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/impl/ad;->b()Lcom/google/ads/interactivemedia/v3/impl/aa$a;

    move-result-object v2

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/aa$a;->a:Lcom/google/ads/interactivemedia/v3/impl/aa$a;

    if-ne v2, v3, :cond_83

    .line 412
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->getPlayer()Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    move-result-object v1

    if-nez v1, :cond_83

    .line 413
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->d:Lcom/google/ads/interactivemedia/v3/impl/w;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/c;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/api/AdError;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v5, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INVALID_ARGUMENTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v6, "Ad Player was not provided."

    invoke-direct {v3, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/w;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    goto :goto_18

    .line 417
    :cond_83
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getAdTagUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/c/a/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 418
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getAdsResponse()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/c/a/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 419
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->d:Lcom/google/ads/interactivemedia/v3/impl/w;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/c;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/api/AdError;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v5, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INVALID_ARGUMENTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v6, "Ad tag url must non-null and non empty."

    invoke-direct {v3, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/w;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    goto/16 :goto_18

    .line 424
    :cond_ae
    const/4 v0, 0x1

    goto/16 :goto_18
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/api/StreamRequest;)Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 431
    if-nez p1, :cond_19

    .line 432
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->d:Lcom/google/ads/interactivemedia/v3/impl/w;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/c;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/api/AdError;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v5, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INVALID_ARGUMENTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v6, "StreamRequest cannot be null."

    invoke-direct {v3, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/w;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    .line 451
    :goto_18
    return v0

    .line 437
    :cond_19
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getStreamDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;

    move-result-object v1

    .line 438
    if-nez v1, :cond_35

    .line 439
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->d:Lcom/google/ads/interactivemedia/v3/impl/w;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/c;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/api/AdError;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v5, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INVALID_ARGUMENTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v6, "Ad display container must be provided in the StreamRequest."

    invoke-direct {v3, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/w;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    goto :goto_18

    .line 444
    :cond_35
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;->getVideoStreamPlayer()Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    move-result-object v1

    if-nez v1, :cond_51

    .line 445
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->d:Lcom/google/ads/interactivemedia/v3/impl/w;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/c;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/api/AdError;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v5, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INVALID_ARGUMENTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v6, "Stream requests must specify a player."

    invoke-direct {v3, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/w;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    goto :goto_18

    .line 451
    :cond_51
    const/4 v0, 0x1

    goto :goto_18
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/impl/h;)Lcom/google/ads/interactivemedia/v3/impl/ab;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->b:Lcom/google/ads/interactivemedia/v3/impl/ab;

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .registers 3

    .prologue
    .line 369
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->k:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->k:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;->ignoreStrictModeFalsePositives()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 370
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 372
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0, v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 373
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 374
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 372
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 375
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 379
    :goto_2b
    return-object v0

    :cond_2c
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b
.end method

.method static synthetic c(Lcom/google/ads/interactivemedia/v3/impl/h;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->c:Landroid/content/Context;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .registers 5

    .prologue
    .line 508
    const-string v0, "android%s:%s:%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "3.5.2"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->c:Landroid/content/Context;

    .line 509
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 508
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/google/ads/interactivemedia/v3/impl/h;)Lcom/google/ads/interactivemedia/v3/impl/w;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->d:Lcom/google/ads/interactivemedia/v3/impl/w;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .registers 7

    .prologue
    .line 522
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->c:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_14

    .line 524
    const-string v0, "IMASDK"

    const-string v1, "Host application doesn\'t have ACCESS_NETWORK_STATE permission"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const-string v0, "android:0"

    .line 535
    :goto_13
    return-object v0

    .line 528
    :cond_14
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->c:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 529
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 530
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 531
    if-nez v0, :cond_27

    .line 532
    const-string v0, "android:0"

    goto :goto_13

    .line 535
    :cond_27
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "android:%d:%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

.method private e()Lcom/google/ads/interactivemedia/v3/impl/h$b;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 546
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 547
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "market://details?id=com.google.ads.interactivemedia.v3"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 548
    const/high16 v3, 0x10000

    .line 549
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 550
    if-nez v2, :cond_1d

    .line 571
    :cond_1c
    :goto_1c
    return-object v0

    .line 555
    :cond_1d
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 556
    if-eqz v2, :cond_1c

    .line 563
    :try_start_21
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_21 .. :try_end_27} :catch_33

    move-result-object v1

    .line 564
    if-eqz v1, :cond_1c

    .line 571
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/h$b;->create(ILjava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/h$b;

    move-result-object v0

    goto :goto_1c

    .line 567
    :catch_33
    move-exception v1

    goto :goto_1c
.end method

.method static synthetic e(Lcom/google/ads/interactivemedia/v3/impl/h;)Ljava/util/Map;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->g:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic f(Lcom/google/ads/interactivemedia/v3/impl/h;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->i:Ljava/lang/Object;

    return-object v0
.end method

.method private f()Z
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 579
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->k:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->k:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;->forceTvMode()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 587
    :goto_e
    return v1

    .line 583
    :cond_f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xc

    if-gt v0, v3, :cond_17

    move v1, v2

    .line 584
    goto :goto_e

    .line 586
    :cond_17
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->c:Landroid/content/Context;

    const-string/jumbo v3, "uimode"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 587
    if-eqz v0, :cond_2e

    .line 588
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2e

    move v0, v1

    :goto_2c
    move v1, v0

    .line 587
    goto :goto_e

    :cond_2e
    move v0, v2

    .line 588
    goto :goto_2c
.end method

.method static synthetic g(Lcom/google/ads/interactivemedia/v3/impl/h;)Lcom/google/a/a/g;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->h:Lcom/google/a/a/g;

    return-object v0
.end method

.method static synthetic h(Lcom/google/ads/interactivemedia/v3/impl/h;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/h;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcom/google/ads/interactivemedia/v3/impl/h;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/h;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Lcom/google/ads/interactivemedia/v3/impl/h;)Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->j:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    return-object v0
.end method

.method static synthetic k(Lcom/google/ads/interactivemedia/v3/impl/h;)Lcom/google/ads/interactivemedia/v3/impl/h$b;
    .registers 2

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/h;->e()Lcom/google/ads/interactivemedia/v3/impl/h$b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic l(Lcom/google/ads/interactivemedia/v3/impl/h;)Z
    .registers 2

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/h;->f()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->b:Lcom/google/ads/interactivemedia/v3/impl/ab;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/ab;->a()V

    .line 314
    return-void
.end method

.method a(Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;)V
    .registers 4

    .prologue
    .line 492
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;

    .line 493
    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;->onAdsManagerLoaded(Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;)V

    goto :goto_6

    .line 495
    :cond_16
    return-void
.end method

.method a(Lcom/google/ads/interactivemedia/v3/api/AdsRequest;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 346
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/h;->a(Lcom/google/ads/interactivemedia/v3/api/AdsRequest;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 354
    :goto_6
    return-void

    .line 350
    :cond_7
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->f:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->b:Lcom/google/ads/interactivemedia/v3/impl/ab;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->a:Lcom/google/ads/interactivemedia/v3/impl/ab$b;

    invoke-virtual {v0, v1, p2}, Lcom/google/ads/interactivemedia/v3/impl/ab;->a(Lcom/google/ads/interactivemedia/v3/impl/ab$b;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->b:Lcom/google/ads/interactivemedia/v3/impl/ab;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getAdDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/ads/interactivemedia/v3/impl/ab;->a(Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Ljava/lang/String;)V

    .line 353
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/h$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/impl/h$a;-><init>(Lcom/google/ads/interactivemedia/v3/impl/h;Lcom/google/ads/interactivemedia/v3/api/AdsRequest;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getAdTagUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/h$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_6
.end method

.method a(Lcom/google/ads/interactivemedia/v3/api/StreamRequest;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 357
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/h;->a(Lcom/google/ads/interactivemedia/v3/api/StreamRequest;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 365
    :goto_6
    return-void

    .line 361
    :cond_7
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->g:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->b:Lcom/google/ads/interactivemedia/v3/impl/ab;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->a:Lcom/google/ads/interactivemedia/v3/impl/ab$b;

    invoke-virtual {v0, v1, p2}, Lcom/google/ads/interactivemedia/v3/impl/ab;->a(Lcom/google/ads/interactivemedia/v3/impl/ab$b;Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->b:Lcom/google/ads/interactivemedia/v3/impl/ab;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getStreamDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/ads/interactivemedia/v3/impl/ab;->a(Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Ljava/lang/String;)V

    .line 364
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/h$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/impl/h$c;-><init>(Lcom/google/ads/interactivemedia/v3/impl/h;Lcom/google/ads/interactivemedia/v3/api/StreamRequest;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/h$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_6
.end method

.method public addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V
    .registers 3

    .prologue
    .line 480
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->d:Lcom/google/ads/interactivemedia/v3/impl/w;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/w;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 481
    return-void
.end method

.method public addAdsLoadedListener(Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;)V
    .registers 3

    .prologue
    .line 464
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    return-void
.end method

.method public contentComplete()V
    .registers 6

    .prologue
    .line 322
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->b:Lcom/google/ads/interactivemedia/v3/impl/ab;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/aa;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->adsLoader:Lcom/google/ads/interactivemedia/v3/impl/aa$b;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->contentComplete:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    const-string v4, "*"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/aa;-><init>(Lcom/google/ads/interactivemedia/v3/impl/aa$b;Lcom/google/ads/interactivemedia/v3/impl/aa$c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab;->b(Lcom/google/ads/interactivemedia/v3/impl/aa;)V

    .line 324
    return-void
.end method

.method public getSettings()Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;
    .registers 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->j:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    return-object v0
.end method

.method public removeAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V
    .registers 3

    .prologue
    .line 488
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->d:Lcom/google/ads/interactivemedia/v3/impl/w;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/w;->b(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 489
    return-void
.end method

.method public removeAdsLoadedListener(Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;)V
    .registers 3

    .prologue
    .line 472
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 473
    return-void
.end method

.method public requestAds(Lcom/google/ads/interactivemedia/v3/api/AdsRequest;)V
    .registers 3

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/h;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/h;->a(Lcom/google/ads/interactivemedia/v3/api/AdsRequest;Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method public requestStream(Lcom/google/ads/interactivemedia/v3/api/StreamRequest;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/h;->b()Ljava/lang/String;

    move-result-object v0

    .line 341
    invoke-virtual {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/h;->a(Lcom/google/ads/interactivemedia/v3/api/StreamRequest;Ljava/lang/String;)V

    .line 342
    return-object v0
.end method
