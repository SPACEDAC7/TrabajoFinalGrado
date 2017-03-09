.class public Lcom/google/ads/interactivemedia/v3/impl/i;
.super Lcom/google/ads/interactivemedia/v3/impl/q;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdsManager;


# instance fields
.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/ab;Lcom/google/ads/interactivemedia/v3/impl/ad;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;Ljava/util/List;Ljava/util/SortedSet;Landroid/content/Context;Z)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/impl/ab;",
            "Lcom/google/ads/interactivemedia/v3/impl/ad;",
            "Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;",
            "Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/content/Context;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/api/AdError;
        }
    .end annotation

    .prologue
    .line 42
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    invoke-direct/range {v0 .. v12}, Lcom/google/ads/interactivemedia/v3/impl/i;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/ab;Lcom/google/ads/interactivemedia/v3/impl/ad;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;Ljava/util/List;Ljava/util/SortedSet;Lcom/google/ads/interactivemedia/v3/impl/al;Lcom/google/ads/interactivemedia/v3/impl/u;Lcom/google/ads/interactivemedia/v3/impl/a;Landroid/content/Context;Z)V

    .line 45
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/ab;Lcom/google/ads/interactivemedia/v3/impl/ad;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;Ljava/util/List;Ljava/util/SortedSet;Lcom/google/ads/interactivemedia/v3/impl/al;Lcom/google/ads/interactivemedia/v3/impl/u;Lcom/google/ads/interactivemedia/v3/impl/a;Landroid/content/Context;Z)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/impl/ab;",
            "Lcom/google/ads/interactivemedia/v3/impl/ad;",
            "Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;",
            "Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/google/ads/interactivemedia/v3/impl/al;",
            "Lcom/google/ads/interactivemedia/v3/impl/u;",
            "Lcom/google/ads/interactivemedia/v3/impl/a;",
            "Landroid/content/Context;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/api/AdError;
        }
    .end annotation

    .prologue
    .line 67
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move/from16 v9, p12

    invoke-direct/range {v2 .. v9}, Lcom/google/ads/interactivemedia/v3/impl/q;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/ab;Lcom/google/ads/interactivemedia/v3/impl/ad;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Lcom/google/ads/interactivemedia/v3/impl/a;Landroid/content/Context;Z)V

    .line 70
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/i;->h:Ljava/util/List;

    .line 71
    if-eqz p7, :cond_43

    invoke-interface/range {p7 .. p7}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_43

    .line 72
    if-nez p5, :cond_28

    .line 73
    new-instance v2, Lcom/google/ads/interactivemedia/v3/api/AdError;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->PLAY:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->PLAYLIST_NO_CONTENT_TRACKING:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v5, "Unable to handle cue points, no content progress provider configured."

    invoke-direct {v2, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_28
    if-eqz p9, :cond_54

    .line 77
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/i;->e:Lcom/google/ads/interactivemedia/v3/impl/u;

    .line 82
    :goto_2e
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/t;

    move-object/from16 v0, p7

    invoke-direct {v2, p2, v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/t;-><init>(Lcom/google/ads/interactivemedia/v3/impl/ab;Ljava/util/SortedSet;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/i;->d:Lcom/google/ads/interactivemedia/v3/impl/t;

    .line 83
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/i;->e:Lcom/google/ads/interactivemedia/v3/impl/u;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/i;->d:Lcom/google/ads/interactivemedia/v3/impl/t;

    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/u;->a(Lcom/google/ads/interactivemedia/v3/impl/af$b;)V

    .line 84
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/i;->e:Lcom/google/ads/interactivemedia/v3/impl/u;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/impl/u;->b()V

    .line 87
    :cond_43
    if-eqz p8, :cond_60

    .line 88
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/i;->c:Lcom/google/ads/interactivemedia/v3/impl/al;

    .line 107
    :goto_49
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/i;->c:Lcom/google/ads/interactivemedia/v3/impl/al;

    invoke-virtual {p0, v2}, Lcom/google/ads/interactivemedia/v3/impl/i;->addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 108
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/i;->c:Lcom/google/ads/interactivemedia/v3/impl/al;

    invoke-virtual {p2, v2, p1}, Lcom/google/ads/interactivemedia/v3/impl/ab;->a(Lcom/google/ads/interactivemedia/v3/impl/al;Ljava/lang/String;)V

    .line 109
    return-void

    .line 79
    :cond_54
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/u;

    .line 80
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/impl/ad;->a()J

    move-result-wide v4

    invoke-direct {v2, p5, v4, v5}, Lcom/google/ads/interactivemedia/v3/impl/u;-><init>(Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;J)V

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/i;->e:Lcom/google/ads/interactivemedia/v3/impl/u;

    goto :goto_2e

    .line 90
    :cond_60
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/impl/ad;->b()Lcom/google/ads/interactivemedia/v3/impl/aa$a;

    move-result-object v2

    .line 91
    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/i$1;->a:[I

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/impl/aa$a;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_a4

    .line 103
    new-instance v3, Lcom/google/ads/interactivemedia/v3/api/AdError;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->PLAY:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v5, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v6, "UI style not supported: "

    .line 104
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/impl/aa$a;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_9e

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_89
    invoke-direct {v3, v4, v5, v2}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    throw v3

    .line 95
    :pswitch_8d
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/ae;

    move-object v7, p4

    check-cast v7, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move-object v6, p0

    move-object/from16 v8, p11

    invoke-direct/range {v2 .. v8}, Lcom/google/ads/interactivemedia/v3/impl/ae;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/ad;Lcom/google/ads/interactivemedia/v3/impl/ab;Lcom/google/ads/interactivemedia/v3/impl/i;Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/i;->c:Lcom/google/ads/interactivemedia/v3/impl/al;

    goto :goto_49

    .line 104
    :cond_9e
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_89

    .line 91
    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_8d
        :pswitch_8d
    .end packed-switch
.end method

.method private b(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    if-eqz p1, :cond_d

    .line 173
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/b/m;->a(Ljava/util/Collection;)Lcom/google/c/b/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/i;->g:Ljava/util/List;

    .line 177
    :goto_c
    return-void

    .line 175
    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/i;->g:Ljava/util/List;

    goto :goto_c
.end method

.method private getCurrentCompanions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/i;->g:Ljava/util/List;

    return-object v0
.end method

.method private onCompanionRendered(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/i;->a:Lcom/google/ads/interactivemedia/v3/impl/ab;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/i;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 2

    .prologue
    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/i;->g:Ljava/util/List;

    .line 114
    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/impl/q;->a()V

    .line 115
    return-void
.end method

.method public bridge synthetic a(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 26
    invoke-super {p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/impl/q;->a(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 26
    invoke-super {p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/impl/q;->a(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/impl/ab$c;)V
    .registers 5

    .prologue
    .line 184
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/impl/ab$c;->a:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 185
    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/i$1;->b:[I

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2a

    .line 196
    :cond_d
    :goto_d
    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    if-eq v0, v1, :cond_15

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->SKIPPED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    if-ne v0, v1, :cond_19

    .line 197
    :cond_15
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/i;->b(Ljava/util/Map;)V

    .line 202
    :cond_19
    invoke-super {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/q;->a(Lcom/google/ads/interactivemedia/v3/impl/ab$c;)V

    .line 203
    return-void

    .line 187
    :pswitch_1d
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/i;->a()V

    .line 188
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/impl/i;->f:Z

    if-nez v1, :cond_d

    .line 189
    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->destroy:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/impl/i;->a(Lcom/google/ads/interactivemedia/v3/impl/aa$c;)V

    goto :goto_d

    .line 185
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_1d
    .end packed-switch
.end method

.method public a(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/i;->b(Ljava/util/Map;)V

    .line 214
    return-void
.end method

.method public bridge synthetic addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V
    .registers 2

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/q;->addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    return-void
.end method

.method public bridge synthetic addAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V
    .registers 2

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/q;->addAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V

    return-void
.end method

.method public bridge synthetic destroy()V
    .registers 1

    .prologue
    .line 26
    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/impl/q;->destroy()V

    return-void
.end method

.method public discardAdBreak()V
    .registers 2

    .prologue
    .line 119
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->discardAdBreak:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/i;->a(Lcom/google/ads/interactivemedia/v3/impl/aa$c;)V

    .line 120
    return-void
.end method

.method public getAdCuePoints()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/i;->h:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getAdProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;
    .registers 2

    .prologue
    .line 26
    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/impl/q;->getAdProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCurrentAd()Lcom/google/ads/interactivemedia/v3/api/Ad;
    .registers 2

    .prologue
    .line 26
    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/impl/q;->getCurrentAd()Lcom/google/ads/interactivemedia/v3/api/Ad;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic init()V
    .registers 1

    .prologue
    .line 26
    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/impl/q;->init()V

    return-void
.end method

.method public bridge synthetic init(Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)V
    .registers 2

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/q;->init(Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)V

    return-void
.end method

.method public isCustomPlaybackUsed()Z
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/i;->c:Lcom/google/ads/interactivemedia/v3/impl/al;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/impl/al;->f()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 136
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->pause:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/i;->a(Lcom/google/ads/interactivemedia/v3/impl/aa$c;)V

    .line 137
    return-void
.end method

.method public bridge synthetic removeAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V
    .registers 2

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/q;->removeAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    return-void
.end method

.method public bridge synthetic removeAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V
    .registers 2

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/q;->removeAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V

    return-void
.end method

.method public resume()V
    .registers 2

    .prologue
    .line 144
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->resume:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/i;->a(Lcom/google/ads/interactivemedia/v3/impl/aa$c;)V

    .line 145
    return-void
.end method

.method public skip()V
    .registers 2

    .prologue
    .line 149
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->skip:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/i;->a(Lcom/google/ads/interactivemedia/v3/impl/aa$c;)V

    .line 150
    return-void
.end method

.method public start()V
    .registers 2

    .prologue
    .line 128
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->start:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/i;->a(Lcom/google/ads/interactivemedia/v3/impl/aa$c;)V

    .line 129
    return-void
.end method
