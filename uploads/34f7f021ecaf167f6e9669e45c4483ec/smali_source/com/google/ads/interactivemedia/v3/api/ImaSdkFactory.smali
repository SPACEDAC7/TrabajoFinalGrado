.class public Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;
.super Ljava/lang/Object;
.source "IMASDK"


# static fields
.field private static instance:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createAdsLoader(Landroid/content/Context;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;
    .registers 6

    .prologue
    .line 72
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/impl/h;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)V

    .line 73
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/h;->a()V

    .line 74
    return-object v0
.end method

.method private createAdsLoader(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;
    .registers 5

    .prologue
    .line 62
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/y;->b:Landroid/net/Uri;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createAdsLoader(Landroid/content/Context;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->instance:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    if-nez v0, :cond_b

    .line 29
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->instance:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    .line 31
    :cond_b
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->instance:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    return-object v0
.end method


# virtual methods
.method public createAdDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;
    .registers 2

    .prologue
    .line 82
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/b;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/b;-><init>()V

    return-object v0
.end method

.method public createAdsLoader(Landroid/content/Context;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;
    .registers 3

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createImaSdkSettings()Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createAdsLoader(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    move-result-object v0

    return-object v0
.end method

.method public createAdsLoader(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;
    .registers 5

    .prologue
    .line 53
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/h;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/y;->b:Landroid/net/Uri;

    invoke-direct {v0, p1, v1, p2}, Lcom/google/ads/interactivemedia/v3/impl/h;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;)V

    return-object v0
.end method

.method public createAdsRenderingSettings()Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;
    .registers 2

    .prologue
    .line 98
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/l;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/l;-><init>()V

    return-object v0
.end method

.method public createAdsRequest()Lcom/google/ads/interactivemedia/v3/api/AdsRequest;
    .registers 2

    .prologue
    .line 105
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/m;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/m;-><init>()V

    return-object v0
.end method

.method public createCompanionAdSlot()Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;
    .registers 2

    .prologue
    .line 139
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/r;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/r;-><init>()V

    return-object v0
.end method

.method public createImaSdkSettings()Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;
    .registers 2

    .prologue
    .line 38
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;-><init>()V

    return-object v0
.end method

.method public createLiveStreamRequest(Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;)Lcom/google/ads/interactivemedia/v3/api/StreamRequest;
    .registers 5

    .prologue
    .line 114
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/aj;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/aj;-><init>()V

    .line 115
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/aj;->a(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/impl/aj;->d(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0, p3}, Lcom/google/ads/interactivemedia/v3/impl/aj;->a(Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;)V

    .line 118
    return-object v0
.end method

.method public createStreamDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;
    .registers 2

    .prologue
    .line 90
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/ah;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/ah;-><init>()V

    return-object v0
.end method

.method public createVodStreamRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;)Lcom/google/ads/interactivemedia/v3/api/StreamRequest;
    .registers 6

    .prologue
    .line 127
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/aj;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/aj;-><init>()V

    .line 128
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/aj;->b(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/impl/aj;->c(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0, p3}, Lcom/google/ads/interactivemedia/v3/impl/aj;->d(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0, p4}, Lcom/google/ads/interactivemedia/v3/impl/aj;->a(Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;)V

    .line 132
    return-object v0
.end method
