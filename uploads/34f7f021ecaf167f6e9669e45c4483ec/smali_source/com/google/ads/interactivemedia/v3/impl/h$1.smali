.class Lcom/google/ads/interactivemedia/v3/impl/h$1;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/ab$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/impl/h;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/h;)V
    .registers 2

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/h$1;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;ILjava/lang/String;)V
    .registers 8

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h$1;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/h;->a(Lcom/google/ads/interactivemedia/v3/impl/h;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 128
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h$1;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/h;->a(Lcom/google/ads/interactivemedia/v3/impl/h;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getUserRequestContext()Ljava/lang/Object;

    move-result-object v0

    .line 132
    :goto_1c
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/c;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/api/AdError;

    invoke-direct {v2, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;ILjava/lang/String;)V

    invoke-direct {v1, v2, v0}, Lcom/google/ads/interactivemedia/v3/impl/c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;Ljava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h$1;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/h;->d(Lcom/google/ads/interactivemedia/v3/impl/h;)Lcom/google/ads/interactivemedia/v3/impl/w;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/w;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    .line 135
    return-void

    .line 130
    :cond_30
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h$1;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/h;->e(Lcom/google/ads/interactivemedia/v3/impl/h;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getUserRequestContext()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1c
.end method

.method public a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h$1;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/h;->a(Lcom/google/ads/interactivemedia/v3/impl/h;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 141
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h$1;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/h;->a(Lcom/google/ads/interactivemedia/v3/impl/h;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getUserRequestContext()Ljava/lang/Object;

    move-result-object v0

    .line 145
    :goto_1c
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/c;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/api/AdError;

    invoke-direct {v2, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {v1, v2, v0}, Lcom/google/ads/interactivemedia/v3/impl/c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h$1;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/h;->d(Lcom/google/ads/interactivemedia/v3/impl/h;)Lcom/google/ads/interactivemedia/v3/impl/w;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/w;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    .line 148
    return-void

    .line 143
    :cond_30
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h$1;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/h;->e(Lcom/google/ads/interactivemedia/v3/impl/h;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getUserRequestContext()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1c
.end method

.method public a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/ad;Ljava/lang/String;Z)V
    .registers 17

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h$1;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/h;->e(Lcom/google/ads/interactivemedia/v3/impl/h;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

    .line 110
    :try_start_d
    iget-object v10, p0, Lcom/google/ads/interactivemedia/v3/impl/h$1;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    new-instance v11, Lcom/google/ads/interactivemedia/v3/impl/j;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/ai;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/h$1;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    .line 112
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/h;->b(Lcom/google/ads/interactivemedia/v3/impl/h;)Lcom/google/ads/interactivemedia/v3/impl/ab;

    move-result-object v2

    .line 114
    invoke-interface {v9}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getStreamDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;

    move-result-object v4

    .line 115
    invoke-interface {v9}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getStreamDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;->getVideoStreamPlayer()Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    move-result-object v5

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/h$1;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    .line 116
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/h;->c(Lcom/google/ads/interactivemedia/v3/impl/h;)Landroid/content/Context;

    move-result-object v6

    move-object v1, p1

    move-object v3, p2

    move-object v7, p3

    move/from16 v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/ads/interactivemedia/v3/impl/ai;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/ab;Lcom/google/ads/interactivemedia/v3/impl/ad;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;Landroid/content/Context;Ljava/lang/String;Z)V

    .line 118
    invoke-interface {v9}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getUserRequestContext()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v11, v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/j;-><init>(Lcom/google/ads/interactivemedia/v3/api/StreamManager;Ljava/lang/Object;)V

    .line 110
    invoke-virtual {v10, v11}, Lcom/google/ads/interactivemedia/v3/impl/h;->a(Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;)V
    :try_end_3d
    .catch Lcom/google/ads/interactivemedia/v3/api/AdError; {:try_start_d .. :try_end_3d} :catch_3e

    .line 122
    :goto_3d
    return-void

    .line 119
    :catch_3e
    move-exception v0

    .line 120
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/h$1;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/h;->d(Lcom/google/ads/interactivemedia/v3/impl/h;)Lcom/google/ads/interactivemedia/v3/impl/w;

    move-result-object v1

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/c;

    invoke-interface {v9}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getUserRequestContext()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/ads/interactivemedia/v3/impl/c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/w;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    goto :goto_3d
.end method

.method public a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/ad;Ljava/util/List;Ljava/util/SortedSet;Z)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/impl/ad;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h$1;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/h;->a(Lcom/google/ads/interactivemedia/v3/impl/h;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

    .line 90
    :try_start_d
    iget-object v11, p0, Lcom/google/ads/interactivemedia/v3/impl/h$1;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    new-instance v12, Lcom/google/ads/interactivemedia/v3/impl/j;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/i;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/h$1;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    .line 92
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/h;->b(Lcom/google/ads/interactivemedia/v3/impl/h;)Lcom/google/ads/interactivemedia/v3/impl/ab;

    move-result-object v2

    .line 94
    invoke-interface {v10}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getAdDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    move-result-object v4

    .line 95
    invoke-interface {v10}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getContentProgressProvider()Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;

    move-result-object v5

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/h$1;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    .line 98
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/h;->c(Lcom/google/ads/interactivemedia/v3/impl/h;)Landroid/content/Context;

    move-result-object v8

    move-object v1, p1

    move-object v3, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/google/ads/interactivemedia/v3/impl/i;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/ab;Lcom/google/ads/interactivemedia/v3/impl/ad;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;Ljava/util/List;Ljava/util/SortedSet;Landroid/content/Context;Z)V

    .line 99
    invoke-interface {v10}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getUserRequestContext()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v12, v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/j;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdsManager;Ljava/lang/Object;)V

    .line 90
    invoke-virtual {v11, v12}, Lcom/google/ads/interactivemedia/v3/impl/h;->a(Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;)V
    :try_end_3c
    .catch Lcom/google/ads/interactivemedia/v3/api/AdError; {:try_start_d .. :try_end_3c} :catch_3d

    .line 103
    :goto_3c
    return-void

    .line 100
    :catch_3d
    move-exception v0

    .line 101
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/h$1;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/h;->d(Lcom/google/ads/interactivemedia/v3/impl/h;)Lcom/google/ads/interactivemedia/v3/impl/w;

    move-result-object v1

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/c;

    invoke-interface {v10}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getUserRequestContext()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/ads/interactivemedia/v3/impl/c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/w;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    goto :goto_3c
.end method
