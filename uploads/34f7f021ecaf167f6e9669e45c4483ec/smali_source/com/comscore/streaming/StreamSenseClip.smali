.class public Lcom/comscore/streaming/StreamSenseClip;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/comscore/streaming/StreamSenseClip;->a:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/comscore/streaming/StreamSenseClip;->reset()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/comscore/streaming/StreamSenseClip;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-void
.end method


# virtual methods
.method protected a()I
    .registers 2

    iget v0, p0, Lcom/comscore/streaming/StreamSenseClip;->b:I

    return v0
.end method

.method protected a(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/comscore/streaming/StreamSenseEventType;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_5b

    :goto_2
    const-string v0, "ns_st_cn"

    invoke-virtual {p0}, Lcom/comscore/streaming/StreamSenseClip;->getClipId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ns_st_bt"

    invoke-virtual {p0}, Lcom/comscore/streaming/StreamSenseClip;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/comscore/streaming/StreamSenseEventType;->PLAY:Lcom/comscore/streaming/StreamSenseEventType;

    if-eq p1, v0, :cond_1e

    if-nez p1, :cond_29

    :cond_1e
    const-string v0, "ns_st_sq"

    iget v1, p0, Lcom/comscore/streaming/StreamSenseClip;->c:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    sget-object v0, Lcom/comscore/streaming/StreamSenseEventType;->PAUSE:Lcom/comscore/streaming/StreamSenseEventType;

    if-eq p1, v0, :cond_3b

    sget-object v0, Lcom/comscore/streaming/StreamSenseEventType;->END:Lcom/comscore/streaming/StreamSenseEventType;

    if-eq p1, v0, :cond_3b

    sget-object v0, Lcom/comscore/streaming/StreamSenseEventType;->KEEP_ALIVE:Lcom/comscore/streaming/StreamSenseEventType;

    if-eq p1, v0, :cond_3b

    sget-object v0, Lcom/comscore/streaming/StreamSenseEventType;->HEART_BEAT:Lcom/comscore/streaming/StreamSenseEventType;

    if-eq p1, v0, :cond_3b

    if-nez p1, :cond_53

    :cond_3b
    const-string v0, "ns_st_pt"

    invoke-virtual {p0}, Lcom/comscore/streaming/StreamSenseClip;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ns_st_pc"

    iget v1, p0, Lcom/comscore/streaming/StreamSenseClip;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_53
    invoke-virtual {p0}, Lcom/comscore/streaming/StreamSenseClip;->getLabels()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-object p2

    :cond_5b
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    goto :goto_2
.end method

.method protected a(I)V
    .registers 2

    iput p1, p0, Lcom/comscore/streaming/StreamSenseClip;->b:I

    return-void
.end method

.method protected a(J)V
    .registers 4

    iput-wide p1, p0, Lcom/comscore/streaming/StreamSenseClip;->d:J

    return-void
.end method

.method protected a(Ljava/util/HashMap;Lcom/comscore/streaming/StreamSenseState;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/comscore/streaming/StreamSenseState;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/comscore/streaming/StreamSenseClip;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_7
    iget-object v0, p0, Lcom/comscore/streaming/StreamSenseClip;->a:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p2}, Lcom/comscore/streaming/StreamSenseClip;->b(Ljava/util/HashMap;Lcom/comscore/streaming/StreamSenseState;)V

    return-void
.end method

.method protected b()V
    .registers 2

    iget v0, p0, Lcom/comscore/streaming/StreamSenseClip;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/comscore/streaming/StreamSenseClip;->b:I

    return-void
.end method

.method protected b(I)V
    .registers 2

    iput p1, p0, Lcom/comscore/streaming/StreamSenseClip;->c:I

    return-void
.end method

.method protected b(J)V
    .registers 4

    iput-wide p1, p0, Lcom/comscore/streaming/StreamSenseClip;->f:J

    return-void
.end method

.method protected b(Ljava/util/HashMap;Lcom/comscore/streaming/StreamSenseState;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/comscore/streaming/StreamSenseState;",
            ")V"
        }
    .end annotation

    const-string v0, "ns_st_cn"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_12

    invoke-virtual {p0, v0}, Lcom/comscore/streaming/StreamSenseClip;->setClipId(Ljava/lang/String;)V

    const-string v0, "ns_st_cn"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    const-string v0, "ns_st_bt"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_27

    :try_start_1c
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/streaming/StreamSenseClip;->d:J

    const-string v0, "ns_st_bt"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_27} :catch_9a

    :cond_27
    :goto_27
    const-string v0, "ns_st_cl"

    invoke-direct {p0, v0, p1}, Lcom/comscore/streaming/StreamSenseClip;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    const-string v0, "ns_st_pn"

    invoke-direct {p0, v0, p1}, Lcom/comscore/streaming/StreamSenseClip;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    const-string v0, "ns_st_tp"

    invoke-direct {p0, v0, p1}, Lcom/comscore/streaming/StreamSenseClip;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    const-string v0, "ns_st_ub"

    invoke-direct {p0, v0, p1}, Lcom/comscore/streaming/StreamSenseClip;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    const-string v0, "ns_st_br"

    invoke-direct {p0, v0, p1}, Lcom/comscore/streaming/StreamSenseClip;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    sget-object v0, Lcom/comscore/streaming/StreamSenseState;->PLAYING:Lcom/comscore/streaming/StreamSenseState;

    if-eq p2, v0, :cond_46

    if-nez p2, :cond_5b

    :cond_46
    const-string v0, "ns_st_sq"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5b

    :try_start_50
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/comscore/streaming/StreamSenseClip;->c:I

    const-string v0, "ns_st_sq"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5b
    .catch Ljava/lang/NumberFormatException; {:try_start_50 .. :try_end_5b} :catch_98

    :cond_5b
    :goto_5b
    sget-object v0, Lcom/comscore/streaming/StreamSenseState;->BUFFERING:Lcom/comscore/streaming/StreamSenseState;

    if-eq p2, v0, :cond_74

    const-string v0, "ns_st_pt"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_74

    :try_start_69
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/streaming/StreamSenseClip;->f:J

    const-string v0, "ns_st_pt"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_74
    .catch Ljava/lang/NumberFormatException; {:try_start_69 .. :try_end_74} :catch_96

    :cond_74
    :goto_74
    sget-object v0, Lcom/comscore/streaming/StreamSenseState;->PAUSED:Lcom/comscore/streaming/StreamSenseState;

    if-eq p2, v0, :cond_7e

    sget-object v0, Lcom/comscore/streaming/StreamSenseState;->IDLE:Lcom/comscore/streaming/StreamSenseState;

    if-eq p2, v0, :cond_7e

    if-nez p2, :cond_93

    :cond_7e
    const-string v0, "ns_st_pc"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_93

    :try_start_88
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/comscore/streaming/StreamSenseClip;->b:I

    const-string v0, "ns_st_pc"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_93
    .catch Ljava/lang/NumberFormatException; {:try_start_88 .. :try_end_93} :catch_94

    :cond_93
    :goto_93
    return-void

    :catch_94
    move-exception v0

    goto :goto_93

    :catch_96
    move-exception v0

    goto :goto_74

    :catch_98
    move-exception v0

    goto :goto_5b

    :catch_9a
    move-exception v0

    goto :goto_27
.end method

.method protected c()I
    .registers 2

    iget v0, p0, Lcom/comscore/streaming/StreamSenseClip;->c:I

    return v0
.end method

.method protected c(J)V
    .registers 4

    iput-wide p1, p0, Lcom/comscore/streaming/StreamSenseClip;->g:J

    return-void
.end method

.method protected d()V
    .registers 2

    iget v0, p0, Lcom/comscore/streaming/StreamSenseClip;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/comscore/streaming/StreamSenseClip;->c:I

    return-void
.end method

.method protected d(J)V
    .registers 4

    iput-wide p1, p0, Lcom/comscore/streaming/StreamSenseClip;->e:J

    return-void
.end method

.method protected e()J
    .registers 7

    iget-wide v0, p0, Lcom/comscore/streaming/StreamSenseClip;->d:J

    iget-wide v2, p0, Lcom/comscore/streaming/StreamSenseClip;->e:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/comscore/streaming/StreamSenseClip;->e:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    :cond_12
    return-wide v0
.end method

.method protected f()J
    .registers 7

    iget-wide v0, p0, Lcom/comscore/streaming/StreamSenseClip;->f:J

    iget-wide v2, p0, Lcom/comscore/streaming/StreamSenseClip;->g:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/comscore/streaming/StreamSenseClip;->g:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    :cond_12
    return-wide v0
.end method

.method protected g()J
    .registers 3

    iget-wide v0, p0, Lcom/comscore/streaming/StreamSenseClip;->e:J

    return-wide v0
.end method

.method public getClipId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/comscore/streaming/StreamSenseClip;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/comscore/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "1"

    invoke-virtual {p0, v0}, Lcom/comscore/streaming/StreamSenseClip;->setClipId(Ljava/lang/String;)V

    :cond_d
    iget-object v0, p0, Lcom/comscore/streaming/StreamSenseClip;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/comscore/streaming/StreamSenseClip;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLabels()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/comscore/streaming/StreamSenseClip;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method public getPlaybackTimestamp()J
    .registers 3

    iget-wide v0, p0, Lcom/comscore/streaming/StreamSenseClip;->g:J

    return-wide v0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/comscore/streaming/StreamSenseClip;->reset(Ljava/util/Set;)V

    return-void
.end method

.method public reset(Ljava/util/Set;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v6, 0x0

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_5e

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5e

    iget-object v0, p0, Lcom/comscore/streaming/StreamSenseClip;->a:Ljava/util/HashMap;

    invoke-static {v0, p1}, Lcom/comscore/streaming/StreamSenseUtils;->filterMap(Ljava/util/Map;Ljava/util/Set;)V

    :goto_12
    iget-object v0, p0, Lcom/comscore/streaming/StreamSenseClip;->a:Ljava/util/HashMap;

    const-string v1, "ns_st_cl"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/comscore/streaming/StreamSenseClip;->a:Ljava/util/HashMap;

    const-string v1, "ns_st_cl"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    iget-object v0, p0, Lcom/comscore/streaming/StreamSenseClip;->a:Ljava/util/HashMap;

    const-string v1, "ns_st_pn"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/comscore/streaming/StreamSenseClip;->a:Ljava/util/HashMap;

    const-string v1, "ns_st_pn"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38
    iget-object v0, p0, Lcom/comscore/streaming/StreamSenseClip;->a:Ljava/util/HashMap;

    const-string v1, "ns_st_tp"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/comscore/streaming/StreamSenseClip;->a:Ljava/util/HashMap;

    const-string v1, "ns_st_tp"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4b
    invoke-virtual {p0, v3}, Lcom/comscore/streaming/StreamSenseClip;->a(I)V

    invoke-virtual {p0, v3}, Lcom/comscore/streaming/StreamSenseClip;->b(I)V

    invoke-virtual {p0, v6, v7}, Lcom/comscore/streaming/StreamSenseClip;->a(J)V

    invoke-virtual {p0, v4, v5}, Lcom/comscore/streaming/StreamSenseClip;->d(J)V

    invoke-virtual {p0, v6, v7}, Lcom/comscore/streaming/StreamSenseClip;->b(J)V

    invoke-virtual {p0, v4, v5}, Lcom/comscore/streaming/StreamSenseClip;->c(J)V

    return-void

    :cond_5e
    iget-object v0, p0, Lcom/comscore/streaming/StreamSenseClip;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_12
.end method

.method public setClipId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/comscore/streaming/StreamSenseClip;->h:Ljava/lang/String;

    return-void
.end method

.method public setLabel(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/comscore/streaming/StreamSenseClip;->a(Ljava/util/HashMap;Lcom/comscore/streaming/StreamSenseState;)V

    return-void
.end method

.method public setLabels(Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/comscore/streaming/StreamSenseClip;->a(Ljava/util/HashMap;Lcom/comscore/streaming/StreamSenseState;)V

    return-void
.end method
