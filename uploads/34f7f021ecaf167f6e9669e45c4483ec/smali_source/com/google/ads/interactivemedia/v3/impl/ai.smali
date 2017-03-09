.class public Lcom/google/ads/interactivemedia/v3/impl/ai;
.super Lcom/google/ads/interactivemedia/v3/impl/q;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/StreamManager;


# instance fields
.field private final g:Ljava/lang/String;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/api/CuePoint;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/google/ads/interactivemedia/v3/api/AdProgressInfo;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/ab;Lcom/google/ads/interactivemedia/v3/impl/ad;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/api/AdError;
        }
    .end annotation

    .prologue
    .line 33
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lcom/google/ads/interactivemedia/v3/impl/ai;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/ab;Lcom/google/ads/interactivemedia/v3/impl/ad;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;Lcom/google/ads/interactivemedia/v3/impl/al;Lcom/google/ads/interactivemedia/v3/impl/u;Lcom/google/ads/interactivemedia/v3/impl/a;Landroid/content/Context;Ljava/lang/String;Z)V

    .line 36
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/ab;Lcom/google/ads/interactivemedia/v3/impl/ad;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;Lcom/google/ads/interactivemedia/v3/impl/al;Lcom/google/ads/interactivemedia/v3/impl/u;Lcom/google/ads/interactivemedia/v3/impl/a;Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/api/AdError;
        }
    .end annotation

    .prologue
    .line 52
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move/from16 v8, p11

    invoke-direct/range {v1 .. v8}, Lcom/google/ads/interactivemedia/v3/impl/q;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/ab;Lcom/google/ads/interactivemedia/v3/impl/ad;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Lcom/google/ads/interactivemedia/v3/impl/a;Landroid/content/Context;Z)V

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/ai;->h:Ljava/util/List;

    .line 58
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ai;->g:Ljava/lang/String;

    .line 59
    if-eqz p6, :cond_28

    .line 60
    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/impl/ai;->c:Lcom/google/ads/interactivemedia/v3/impl/al;

    .line 66
    :goto_1d
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/ai;->c:Lcom/google/ads/interactivemedia/v3/impl/al;

    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/impl/ai;->addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 67
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/ai;->c:Lcom/google/ads/interactivemedia/v3/impl/al;

    invoke-virtual {p2, v1, p1}, Lcom/google/ads/interactivemedia/v3/impl/ab;->a(Lcom/google/ads/interactivemedia/v3/impl/al;Ljava/lang/String;)V

    .line 68
    return-void

    .line 62
    :cond_28
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/ak;

    move-object v6, p4

    check-cast v6, Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p0

    move-object/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/impl/ak;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/ad;Lcom/google/ads/interactivemedia/v3/impl/ab;Lcom/google/ads/interactivemedia/v3/impl/ai;Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/ai;->c:Lcom/google/ads/interactivemedia/v3/impl/al;

    .line 64
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/ai;->c:Lcom/google/ads/interactivemedia/v3/impl/al;

    check-cast v1, Lcom/google/ads/interactivemedia/v3/impl/ak;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/ak;->g()V

    goto :goto_1d
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 19
    invoke-super {p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/impl/q;->a(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 19
    invoke-super {p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/impl/q;->a(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/impl/ab$c;)V
    .registers 4

    .prologue
    .line 72
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ai$1;->a:[I

    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/impl/ab$c;->a:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2a

    .line 92
    :goto_d
    invoke-super {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/q;->a(Lcom/google/ads/interactivemedia/v3/impl/ab$c;)V

    .line 93
    return-void

    .line 74
    :pswitch_11
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ai;->c:Lcom/google/ads/interactivemedia/v3/impl/al;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/impl/al;->c()V

    goto :goto_d

    .line 77
    :pswitch_17
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ai;->c:Lcom/google/ads/interactivemedia/v3/impl/al;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/impl/al;->d()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ai;->i:Lcom/google/ads/interactivemedia/v3/api/AdProgressInfo;

    goto :goto_d

    .line 81
    :pswitch_20
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/impl/ab$c;->d:Ljava/util/List;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ai;->h:Ljava/util/List;

    goto :goto_d

    .line 84
    :pswitch_25
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/impl/ab$c;->e:Lcom/google/ads/interactivemedia/v3/api/AdProgressInfo;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ai;->i:Lcom/google/ads/interactivemedia/v3/api/AdProgressInfo;

    goto :goto_d

    .line 72
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_11
        :pswitch_17
        :pswitch_20
        :pswitch_25
    .end packed-switch
.end method

.method public bridge synthetic a(Ljava/util/Map;)V
    .registers 2

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/q;->a(Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V
    .registers 2

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/q;->addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    return-void
.end method

.method public bridge synthetic addAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V
    .registers 2

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/q;->addAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V

    return-void
.end method

.method public bridge synthetic destroy()V
    .registers 1

    .prologue
    .line 19
    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/impl/q;->destroy()V

    return-void
.end method

.method public bridge synthetic getAdProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;
    .registers 2

    .prologue
    .line 19
    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/impl/q;->getAdProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    move-result-object v0

    return-object v0
.end method

.method public getAdProgressInfo()Lcom/google/ads/interactivemedia/v3/api/AdProgressInfo;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ai;->i:Lcom/google/ads/interactivemedia/v3/api/AdProgressInfo;

    return-object v0
.end method

.method public getContentTimeForStreamTime(D)D
    .registers 16

    .prologue
    const-wide/16 v4, 0x0

    .line 143
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ai;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    move-wide v2, v4

    .line 164
    :cond_b
    :goto_b
    return-wide v2

    .line 153
    :cond_c
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ai;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v2, p1

    :goto_13
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/CuePoint;

    .line 154
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/CuePoint;->getStartTime()D

    move-result-wide v8

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/CuePoint;->getEndTime()D

    move-result-wide v10

    cmpl-double v1, v8, v10

    if-lez v1, :cond_2d

    move-wide v2, v4

    .line 156
    goto :goto_b

    .line 158
    :cond_2d
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/CuePoint;->getEndTime()D

    move-result-wide v8

    cmpl-double v1, p1, v8

    if-ltz v1, :cond_43

    .line 159
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/CuePoint;->getEndTime()D

    move-result-wide v8

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/CuePoint;->getStartTime()D

    move-result-wide v0

    sub-double v0, v8, v0

    sub-double/2addr v2, v0

    move-wide v0, v2

    :goto_41
    move-wide v2, v0

    .line 163
    goto :goto_13

    .line 160
    :cond_43
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/CuePoint;->getEndTime()D

    move-result-wide v8

    cmpg-double v1, p1, v8

    if-gez v1, :cond_5c

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/CuePoint;->getStartTime()D

    move-result-wide v8

    cmpl-double v1, p1, v8

    if-lez v1, :cond_5c

    .line 161
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/CuePoint;->getStartTime()D

    move-result-wide v0

    sub-double v0, p1, v0

    sub-double/2addr v2, v0

    move-wide v0, v2

    goto :goto_41

    :cond_5c
    move-wide v0, v2

    goto :goto_41
.end method

.method public getCuePoints()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/api/CuePoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ai;->h:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getCurrentAd()Lcom/google/ads/interactivemedia/v3/api/Ad;
    .registers 2

    .prologue
    .line 19
    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/impl/q;->getCurrentAd()Lcom/google/ads/interactivemedia/v3/api/Ad;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousCuePointForStreamTime(D)Lcom/google/ads/interactivemedia/v3/api/CuePoint;
    .registers 10

    .prologue
    .line 169
    const/4 v1, 0x0

    .line 171
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ai;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/CuePoint;

    .line 172
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/CuePoint;->getStartTime()D

    move-result-wide v4

    cmpg-double v3, v4, p1

    if-gez v3, :cond_1e

    :goto_1b
    move-object v1, v0

    .line 175
    goto :goto_7

    .line 176
    :cond_1d
    return-object v1

    :cond_1e
    move-object v0, v1

    goto :goto_1b
.end method

.method public getStreamId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ai;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamTimeForContentTime(D)D
    .registers 18

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ai;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 119
    const-wide/16 v6, 0x0

    .line 138
    :cond_a
    :goto_a
    return-wide v6

    .line 123
    :cond_b
    const-wide/16 v2, 0x0

    .line 124
    const-wide/16 v0, 0x0

    .line 125
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/ai;->h:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v4, v2

    move-wide/from16 v6, p1

    move-wide v2, v0

    :goto_19
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/CuePoint;

    .line 126
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/CuePoint;->getStartTime()D

    move-result-wide v10

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/CuePoint;->getEndTime()D

    move-result-wide v12

    cmpl-double v1, v10, v12

    if-lez v1, :cond_34

    .line 128
    const-wide/16 v6, 0x0

    goto :goto_a

    .line 130
    :cond_34
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/CuePoint;->getStartTime()D

    move-result-wide v10

    sub-double v2, v10, v2

    add-double/2addr v2, v4

    .line 131
    cmpl-double v1, v2, p1

    if-gtz v1, :cond_a

    .line 134
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/CuePoint;->getEndTime()D

    move-result-wide v4

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/CuePoint;->getStartTime()D

    move-result-wide v10

    sub-double/2addr v4, v10

    add-double/2addr v4, v6

    .line 136
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/CuePoint;->getEndTime()D

    move-result-wide v0

    move-wide v6, v4

    move-wide v4, v2

    move-wide v2, v0

    .line 137
    goto :goto_19
.end method

.method public bridge synthetic init()V
    .registers 1

    .prologue
    .line 19
    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/impl/q;->init()V

    return-void
.end method

.method public bridge synthetic init(Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)V
    .registers 2

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/q;->init(Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)V

    return-void
.end method

.method public isCustomPlaybackUsed()Z
    .registers 2

    .prologue
    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic removeAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V
    .registers 2

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/q;->removeAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    return-void
.end method

.method public bridge synthetic removeAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V
    .registers 2

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/q;->removeAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V

    return-void
.end method
