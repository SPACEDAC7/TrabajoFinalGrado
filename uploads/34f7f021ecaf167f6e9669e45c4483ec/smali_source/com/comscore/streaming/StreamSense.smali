.class public Lcom/comscore/streaming/StreamSense;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/comscore/analytics/Core;

.field private b:Ljava/util/HashMap;
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

.field private c:Ljava/lang/String;

.field private d:J

.field private e:J

.field private f:Lcom/comscore/streaming/StreamSenseState;

.field private g:I

.field private h:Lcom/comscore/streaming/StreamSensePlaylist;

.field private i:Ljava/lang/Runnable;

.field private j:Z

.field private k:Ljava/lang/Runnable;

.field private l:Lcom/comscore/streaming/f;

.field private m:Ljava/lang/Runnable;

.field private n:J

.field private o:I

.field private p:J

.field private q:Z

.field private r:Lcom/comscore/streaming/StreamSenseState;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/util/HashMap;
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

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/comscore/streaming/StreamSenseListener;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/comscore/streaming/StreamSense;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/comscore/streaming/StreamSense;->f:Lcom/comscore/streaming/StreamSenseState;

    iput-object v1, p0, Lcom/comscore/streaming/StreamSense;->h:Lcom/comscore/streaming/StreamSensePlaylist;

    iput-object v1, p0, Lcom/comscore/streaming/StreamSense;->i:Ljava/lang/Runnable;

    iput-boolean v2, p0, Lcom/comscore/streaming/StreamSense;->j:Z

    iput-object v1, p0, Lcom/comscore/streaming/StreamSense;->l:Lcom/comscore/streaming/f;

    const-string v0, "StreamSense()"

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/comscore/analytics/comScore;->getCore()Lcom/comscore/analytics/Core;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/comscore/streaming/StreamSense;->b:Ljava/util/HashMap;

    iput v2, p0, Lcom/comscore/streaming/StreamSense;->g:I

    sget-object v0, Lcom/comscore/streaming/StreamSenseState;->IDLE:Lcom/comscore/streaming/StreamSenseState;

    iput-object v0, p0, Lcom/comscore/streaming/StreamSense;->f:Lcom/comscore/streaming/StreamSenseState;

    new-instance v0, Lcom/comscore/streaming/StreamSensePlaylist;

    invoke-direct {v0}, Lcom/comscore/streaming/StreamSensePlaylist;-><init>()V

    iput-object v0, p0, Lcom/comscore/streaming/StreamSense;->h:Lcom/comscore/streaming/StreamSensePlaylist;

    iput-object v1, p0, Lcom/comscore/streaming/StreamSense;->i:Ljava/lang/Runnable;

    iput-boolean v2, p0, Lcom/comscore/streaming/StreamSense;->j:Z

    iput-object v1, p0, Lcom/comscore/streaming/StreamSense;->m:Ljava/lang/Runnable;

    iput v3, p0, Lcom/comscore/streaming/StreamSense;->o:I

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSense;->f()V

    iput-object v1, p0, Lcom/comscore/streaming/StreamSense;->k:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/comscore/streaming/StreamSense;->l:Lcom/comscore/streaming/f;

    iput-boolean v3, p0, Lcom/comscore/streaming/StreamSense;->q:Z

    iput-object v1, p0, Lcom/comscore/streaming/StreamSense;->r:Lcom/comscore/streaming/StreamSenseState;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/comscore/streaming/StreamSense;->e:J

    const v0, 0x124f80

    iput v0, p0, Lcom/comscore/streaming/StreamSense;->x:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/comscore/streaming/StreamSense;->y:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/comscore/streaming/StreamSense;->v:Ljava/util/List;

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSense;->n()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/streaming/StreamSense;->w:Ljava/util/List;

    invoke-virtual {p0}, Lcom/comscore/streaming/StreamSense;->reset()V

    return-void
.end method

.method private a(J)J
    .registers 12

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "playingtime"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, p1, v6

    if-gez v1, :cond_8

    :cond_26
    const-string v1, "interval"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_32
    return-wide v0

    :cond_33
    move-wide v0, v2

    goto :goto_32
.end method

.method private a(Lcom/comscore/streaming/StreamSenseEventType;)Lcom/comscore/streaming/StreamSenseState;
    .registers 3

    sget-object v0, Lcom/comscore/streaming/StreamSenseEventType;->PLAY:Lcom/comscore/streaming/StreamSenseEventType;

    if-ne p1, v0, :cond_7

    sget-object v0, Lcom/comscore/streaming/StreamSenseState;->PLAYING:Lcom/comscore/streaming/StreamSenseState;

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/comscore/streaming/StreamSenseEventType;->PAUSE:Lcom/comscore/streaming/StreamSenseEventType;

    if-ne p1, v0, :cond_e

    sget-object v0, Lcom/comscore/streaming/StreamSenseState;->PAUSED:Lcom/comscore/streaming/StreamSenseState;

    goto :goto_6

    :cond_e
    sget-object v0, Lcom/comscore/streaming/StreamSenseEventType;->BUFFER:Lcom/comscore/streaming/StreamSenseEventType;

    if-ne p1, v0, :cond_15

    sget-object v0, Lcom/comscore/streaming/StreamSenseState;->BUFFERING:Lcom/comscore/streaming/StreamSenseState;

    goto :goto_6

    :cond_15
    sget-object v0, Lcom/comscore/streaming/StreamSenseEventType;->END:Lcom/comscore/streaming/StreamSenseEventType;

    if-ne p1, v0, :cond_1c

    sget-object v0, Lcom/comscore/streaming/StreamSenseState;->IDLE:Lcom/comscore/streaming/StreamSenseState;

    goto :goto_6

    :cond_1c
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private a(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;)Ljava/util/HashMap;
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

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createMeasurementLabels("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_33

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_33
    const-string v1, "ns_ts"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    const-string v1, "ns_ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_48
    if-eqz p1, :cond_5b

    const-string v1, "ns_st_ev"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    const-string v1, "ns_st_ev"

    invoke-virtual {p1}, Lcom/comscore/streaming/StreamSenseEventType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5b
    invoke-virtual {p0}, Lcom/comscore/streaming/StreamSense;->getLabels()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-direct {p0, p1, v0}, Lcom/comscore/streaming/StreamSense;->b(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;)Ljava/util/HashMap;

    iget-object v1, p0, Lcom/comscore/streaming/StreamSense;->h:Lcom/comscore/streaming/StreamSensePlaylist;

    invoke-virtual {v1, p1, v0}, Lcom/comscore/streaming/StreamSensePlaylist;->a(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;)Ljava/util/HashMap;

    iget-object v1, p0, Lcom/comscore/streaming/StreamSense;->h:Lcom/comscore/streaming/StreamSensePlaylist;

    invoke-virtual {v1}, Lcom/comscore/streaming/StreamSensePlaylist;->getClip()Lcom/comscore/streaming/StreamSenseClip;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/comscore/streaming/StreamSenseClip;->a(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;)Ljava/util/HashMap;

    const-string v1, "ns_st_mp"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_82

    const-string v1, "ns_st_mp"

    iget-object v2, p0, Lcom/comscore/streaming/StreamSense;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_82
    const-string v1, "ns_st_mv"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_91

    const-string v1, "ns_st_mv"

    iget-object v2, p0, Lcom/comscore/streaming/StreamSense;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_91
    const-string v1, "ns_st_ub"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a0

    const-string v1, "ns_st_ub"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a0
    const-string v1, "ns_st_br"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_af

    const-string v1, "ns_st_br"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_af
    const-string v1, "ns_st_pn"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_be

    const-string v1, "ns_st_pn"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_be
    const-string v1, "ns_st_tp"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cd

    const-string v1, "ns_st_tp"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_cd
    const-string v1, "ns_st_it"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_dc

    const-string v1, "ns_st_it"

    const-string v2, "c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_dc
    const-string v1, "ns_st_sv"

    const-string v2, "4.1508.28"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/comscore/streaming/StreamSense;)V
    .registers 1

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSense;->j()V

    return-void
.end method

.method static synthetic a(Lcom/comscore/streaming/StreamSense;Lcom/comscore/streaming/StreamSenseState;Ljava/util/HashMap;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/comscore/streaming/StreamSense;->a(Lcom/comscore/streaming/StreamSenseState;Ljava/util/HashMap;)V

    return-void
.end method

.method private a(Lcom/comscore/streaming/StreamSenseState;Ljava/util/HashMap;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/comscore/streaming/StreamSenseState;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "transitionTo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSense;->l()V

    invoke-direct {p0, p1}, Lcom/comscore/streaming/StreamSense;->c(Lcom/comscore/streaming/StreamSenseState;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/comscore/streaming/StreamSense;->getState()Lcom/comscore/streaming/StreamSenseState;

    move-result-object v1

    iget-wide v2, p0, Lcom/comscore/streaming/StreamSense;->d:J

    invoke-direct {p0, p2}, Lcom/comscore/streaming/StreamSense;->f(Ljava/util/HashMap;)J

    move-result-wide v6

    cmp-long v0, v2, v4

    if-ltz v0, :cond_4b

    sub-long v4, v6, v2

    :cond_4b
    invoke-virtual {p0}, Lcom/comscore/streaming/StreamSense;->getState()Lcom/comscore/streaming/StreamSenseState;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/comscore/streaming/StreamSense;->b(Lcom/comscore/streaming/StreamSenseState;Ljava/util/HashMap;)V

    invoke-direct {p0, p1, p2}, Lcom/comscore/streaming/StreamSense;->c(Lcom/comscore/streaming/StreamSenseState;Ljava/util/HashMap;)V

    invoke-direct {p0, p1}, Lcom/comscore/streaming/StreamSense;->d(Lcom/comscore/streaming/StreamSenseState;)V

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comscore/streaming/StreamSenseListener;

    move-object v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/comscore/streaming/StreamSenseListener;->onStateChange(Lcom/comscore/streaming/StreamSenseState;Lcom/comscore/streaming/StreamSenseState;Ljava/util/HashMap;J)V

    goto :goto_5e

    :cond_70
    invoke-direct {p0, p2}, Lcom/comscore/streaming/StreamSense;->c(Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->h:Lcom/comscore/streaming/StreamSensePlaylist;

    invoke-virtual {v0, p2, p1}, Lcom/comscore/streaming/StreamSensePlaylist;->b(Ljava/util/HashMap;Lcom/comscore/streaming/StreamSenseState;)V

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->h:Lcom/comscore/streaming/StreamSensePlaylist;

    invoke-virtual {v0}, Lcom/comscore/streaming/StreamSensePlaylist;->getClip()Lcom/comscore/streaming/StreamSenseClip;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/comscore/streaming/StreamSenseClip;->b(Ljava/util/HashMap;Lcom/comscore/streaming/StreamSenseState;)V

    invoke-virtual {p1}, Lcom/comscore/streaming/StreamSenseState;->toEventType()Lcom/comscore/streaming/StreamSenseEventType;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/comscore/streaming/StreamSense;->a(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/comscore/streaming/StreamSense;->f:Lcom/comscore/streaming/StreamSenseState;

    invoke-direct {p0, v1}, Lcom/comscore/streaming/StreamSense;->b(Lcom/comscore/streaming/StreamSenseState;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0, v0}, Lcom/comscore/streaming/StreamSense;->a(Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->f:Lcom/comscore/streaming/StreamSenseState;

    iput-object v0, p0, Lcom/comscore/streaming/StreamSense;->r:Lcom/comscore/streaming/StreamSenseState;

    iget v0, p0, Lcom/comscore/streaming/StreamSense;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/comscore/streaming/StreamSense;->g:I

    goto/16 :goto_a
.end method

.method private a(Lcom/comscore/streaming/StreamSenseState;Ljava/util/HashMap;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/comscore/streaming/StreamSenseState;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "transitionTo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSense;->l()V

    new-instance v0, Lcom/comscore/streaming/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/comscore/streaming/d;-><init>(Lcom/comscore/streaming/StreamSense;Lcom/comscore/streaming/StreamSenseState;Ljava/util/HashMap;)V

    iput-object v0, p0, Lcom/comscore/streaming/StreamSense;->l:Lcom/comscore/streaming/f;

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getTaskExecutor()Lcom/comscore/utils/task/TaskExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/streaming/StreamSense;->l:Lcom/comscore/streaming/f;

    invoke-virtual {v0, v1, p3, p4}, Lcom/comscore/utils/task/TaskExecutor;->execute(Ljava/lang/Runnable;J)Z

    goto :goto_8
.end method

.method private a(Lcom/comscore/streaming/StreamSenseState;)Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v1}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    sget-object v1, Lcom/comscore/streaming/StreamSenseState;->PLAYING:Lcom/comscore/streaming/StreamSenseState;

    if-eq p1, v1, :cond_12

    sget-object v1, Lcom/comscore/streaming/StreamSenseState;->PAUSED:Lcom/comscore/streaming/StreamSenseState;

    if-ne p1, v1, :cond_9

    :cond_12
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public static analyticsFor(Lcom/comscore/streaming/StreamSenseMediaPlayer;)Lcom/comscore/streaming/StreamSense;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/comscore/streaming/StreamSense;

    invoke-direct {v0}, Lcom/comscore/streaming/StreamSense;-><init>()V

    invoke-virtual {v0, p0}, Lcom/comscore/streaming/StreamSense;->engageTo(Lcom/comscore/streaming/StreamSenseMediaPlayer;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/comscore/streaming/StreamSense;->setPausePlaySwitchDelayEnabled(Z)V

    return-object v0
.end method

.method public static analyticsFor(Lcom/comscore/streaming/StreamSenseVideoView;)Lcom/comscore/streaming/StreamSense;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/comscore/streaming/StreamSense;

    invoke-direct {v0}, Lcom/comscore/streaming/StreamSense;-><init>()V

    invoke-virtual {v0, p0}, Lcom/comscore/streaming/StreamSense;->engageTo(Lcom/comscore/streaming/StreamSenseVideoView;)V

    return-object v0
.end method

.method private b(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 9
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

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_d
    :goto_d
    return-object p2

    :cond_e
    if-eqz p2, :cond_69

    :goto_10
    const-string v0, "ns_st_ec"

    iget v1, p0, Lcom/comscore/streaming/StreamSense;->g:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ns_st_po"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    iget-wide v0, p0, Lcom/comscore/streaming/StreamSense;->e:J

    invoke-direct {p0, p2}, Lcom/comscore/streaming/StreamSense;->f(Ljava/util/HashMap;)J

    move-result-wide v2

    sget-object v4, Lcom/comscore/streaming/StreamSenseEventType;->PLAY:Lcom/comscore/streaming/StreamSenseEventType;

    if-eq p1, v4, :cond_3d

    sget-object v4, Lcom/comscore/streaming/StreamSenseEventType;->KEEP_ALIVE:Lcom/comscore/streaming/StreamSenseEventType;

    if-eq p1, v4, :cond_3d

    sget-object v4, Lcom/comscore/streaming/StreamSenseEventType;->HEART_BEAT:Lcom/comscore/streaming/StreamSenseEventType;

    if-eq p1, v4, :cond_3d

    if-nez p1, :cond_49

    iget-object v4, p0, Lcom/comscore/streaming/StreamSense;->f:Lcom/comscore/streaming/StreamSenseState;

    sget-object v5, Lcom/comscore/streaming/StreamSenseState;->PLAYING:Lcom/comscore/streaming/StreamSenseState;

    if-ne v4, v5, :cond_49

    :cond_3d
    iget-object v4, p0, Lcom/comscore/streaming/StreamSense;->h:Lcom/comscore/streaming/StreamSensePlaylist;

    invoke-virtual {v4}, Lcom/comscore/streaming/StreamSensePlaylist;->getClip()Lcom/comscore/streaming/StreamSenseClip;

    move-result-object v4

    invoke-virtual {v4}, Lcom/comscore/streaming/StreamSenseClip;->getPlaybackTimestamp()J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    :cond_49
    const-string v2, "ns_st_po"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_52
    sget-object v0, Lcom/comscore/streaming/StreamSenseEventType;->HEART_BEAT:Lcom/comscore/streaming/StreamSenseEventType;

    if-ne p1, v0, :cond_d

    const-string v0, "ns_st_hc"

    iget v1, p0, Lcom/comscore/streaming/StreamSense;->o:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ns_st_pe"

    const-string v1, "1"

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_69
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    goto :goto_10
.end method

.method private b(Lcom/comscore/streaming/StreamSenseState;Ljava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/comscore/streaming/StreamSenseState;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onExit("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/comscore/streaming/StreamSense;->f(Ljava/util/HashMap;)J

    move-result-wide v0

    sget-object v2, Lcom/comscore/streaming/StreamSenseState;->PLAYING:Lcom/comscore/streaming/StreamSenseState;

    if-ne p1, v2, :cond_43

    iget-object v2, p0, Lcom/comscore/streaming/StreamSense;->h:Lcom/comscore/streaming/StreamSensePlaylist;

    invoke-virtual {v2, v0, v1}, Lcom/comscore/streaming/StreamSensePlaylist;->a(J)V

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSense;->e()V

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSense;->h()V

    goto :goto_8

    :cond_43
    sget-object v2, Lcom/comscore/streaming/StreamSenseState;->BUFFERING:Lcom/comscore/streaming/StreamSenseState;

    if-ne p1, v2, :cond_50

    iget-object v2, p0, Lcom/comscore/streaming/StreamSense;->h:Lcom/comscore/streaming/StreamSensePlaylist;

    invoke-virtual {v2, v0, v1}, Lcom/comscore/streaming/StreamSensePlaylist;->b(J)V

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSense;->k()V

    goto :goto_8

    :cond_50
    sget-object v0, Lcom/comscore/streaming/StreamSenseState;->IDLE:Lcom/comscore/streaming/StreamSenseState;

    if-ne p1, v0, :cond_8

    invoke-virtual {p0}, Lcom/comscore/streaming/StreamSense;->getClip()Lcom/comscore/streaming/StreamSenseClip;

    move-result-object v0

    invoke-virtual {p0}, Lcom/comscore/streaming/StreamSense;->getClip()Lcom/comscore/streaming/StreamSenseClip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comscore/streaming/StreamSenseClip;->getLabels()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/comscore/streaming/StreamSenseClip;->reset(Ljava/util/Set;)V

    goto :goto_8
.end method

.method private b(Ljava/util/HashMap;)V
    .registers 6
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

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-direct {p0, p1}, Lcom/comscore/streaming/StreamSense;->f(Ljava/util/HashMap;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_8

    const-string v0, "ns_ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8
.end method

.method private b(Lcom/comscore/streaming/StreamSenseState;)Z
    .registers 5

    const/4 v0, 0x0

    sget-object v1, Lcom/comscore/streaming/StreamSenseState;->PAUSED:Lcom/comscore/streaming/StreamSenseState;

    if-ne p1, v1, :cond_10

    iget-object v1, p0, Lcom/comscore/streaming/StreamSense;->r:Lcom/comscore/streaming/StreamSenseState;

    sget-object v2, Lcom/comscore/streaming/StreamSenseState;->IDLE:Lcom/comscore/streaming/StreamSenseState;

    if-eq v1, v2, :cond_f

    iget-object v1, p0, Lcom/comscore/streaming/StreamSense;->r:Lcom/comscore/streaming/StreamSenseState;

    if-nez v1, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    sget-object v1, Lcom/comscore/streaming/StreamSenseState;->BUFFERING:Lcom/comscore/streaming/StreamSenseState;

    if-eq p1, v1, :cond_f

    iget-object v1, p0, Lcom/comscore/streaming/StreamSense;->r:Lcom/comscore/streaming/StreamSenseState;

    if-eq v1, p1, :cond_f

    const/4 v0, 0x1

    goto :goto_f
.end method

.method private c()V
    .registers 5

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-direct {p0}, Lcom/comscore/streaming/StreamSense;->k()V

    invoke-virtual {p0}, Lcom/comscore/streaming/StreamSense;->isPauseOnBufferingEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/comscore/streaming/StreamSenseState;->PAUSED:Lcom/comscore/streaming/StreamSenseState;

    invoke-direct {p0, v0}, Lcom/comscore/streaming/StreamSense;->b(Lcom/comscore/streaming/StreamSenseState;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/comscore/streaming/a;

    invoke-direct {v0, p0}, Lcom/comscore/streaming/a;-><init>(Lcom/comscore/streaming/StreamSense;)V

    iput-object v0, p0, Lcom/comscore/streaming/StreamSense;->i:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getTaskExecutor()Lcom/comscore/utils/task/TaskExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/streaming/StreamSense;->i:Ljava/lang/Runnable;

    iget v2, p0, Lcom/comscore/streaming/StreamSense;->y:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/comscore/utils/task/TaskExecutor;->execute(Ljava/lang/Runnable;J)Z

    goto :goto_8
.end method

.method private c(Lcom/comscore/streaming/StreamSenseState;Ljava/util/HashMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/comscore/streaming/StreamSenseState;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEnter("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/comscore/streaming/StreamSense;->f(Ljava/util/HashMap;)J

    move-result-wide v0

    invoke-direct {p0, p2}, Lcom/comscore/streaming/StreamSense;->e(Ljava/util/HashMap;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/comscore/streaming/StreamSense;->e:J

    sget-object v2, Lcom/comscore/streaming/StreamSenseState;->PLAYING:Lcom/comscore/streaming/StreamSenseState;

    if-ne p1, v2, :cond_6a

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSense;->d()V

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSense;->g()V

    iget-object v2, p0, Lcom/comscore/streaming/StreamSense;->h:Lcom/comscore/streaming/StreamSensePlaylist;

    invoke-virtual {v2}, Lcom/comscore/streaming/StreamSensePlaylist;->getClip()Lcom/comscore/streaming/StreamSenseClip;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/comscore/streaming/StreamSenseClip;->c(J)V

    invoke-direct {p0, p1}, Lcom/comscore/streaming/StreamSense;->b(Lcom/comscore/streaming/StreamSenseState;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->h:Lcom/comscore/streaming/StreamSensePlaylist;

    invoke-virtual {v0}, Lcom/comscore/streaming/StreamSensePlaylist;->getClip()Lcom/comscore/streaming/StreamSenseClip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comscore/streaming/StreamSenseClip;->d()V

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->h:Lcom/comscore/streaming/StreamSensePlaylist;

    invoke-virtual {v0}, Lcom/comscore/streaming/StreamSensePlaylist;->a()I

    move-result v0

    if-ge v0, v4, :cond_9

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->h:Lcom/comscore/streaming/StreamSensePlaylist;

    invoke-virtual {v0, v4}, Lcom/comscore/streaming/StreamSensePlaylist;->a(I)V

    goto :goto_9

    :cond_6a
    sget-object v2, Lcom/comscore/streaming/StreamSenseState;->PAUSED:Lcom/comscore/streaming/StreamSenseState;

    if-ne p1, v2, :cond_7a

    invoke-direct {p0, p1}, Lcom/comscore/streaming/StreamSense;->b(Lcom/comscore/streaming/StreamSenseState;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->h:Lcom/comscore/streaming/StreamSensePlaylist;

    invoke-virtual {v0}, Lcom/comscore/streaming/StreamSensePlaylist;->f()V

    goto :goto_9

    :cond_7a
    sget-object v2, Lcom/comscore/streaming/StreamSenseState;->BUFFERING:Lcom/comscore/streaming/StreamSenseState;

    if-ne p1, v2, :cond_90

    iget-object v2, p0, Lcom/comscore/streaming/StreamSense;->h:Lcom/comscore/streaming/StreamSensePlaylist;

    invoke-virtual {v2}, Lcom/comscore/streaming/StreamSensePlaylist;->getClip()Lcom/comscore/streaming/StreamSenseClip;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/comscore/streaming/StreamSenseClip;->d(J)V

    iget-boolean v0, p0, Lcom/comscore/streaming/StreamSense;->j:Z

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSense;->c()V

    goto/16 :goto_9

    :cond_90
    sget-object v0, Lcom/comscore/streaming/StreamSenseState;->IDLE:Lcom/comscore/streaming/StreamSenseState;

    if-ne p1, v0, :cond_9

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSense;->f()V

    goto/16 :goto_9
.end method

.method private c(Ljava/util/HashMap;)V
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

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    const-string v0, "ns_st_mp"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1a

    iput-object v0, p0, Lcom/comscore/streaming/StreamSense;->s:Ljava/lang/String;

    const-string v0, "ns_st_mp"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    const-string v0, "ns_st_mv"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2b

    iput-object v0, p0, Lcom/comscore/streaming/StreamSense;->t:Ljava/lang/String;

    const-string v0, "ns_st_mv"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    const-string v0, "ns_st_ec"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_8

    :try_start_35
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/comscore/streaming/StreamSense;->g:I

    const-string v0, "ns_st_ec"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catch Ljava/lang/NumberFormatException; {:try_start_35 .. :try_end_40} :catch_41

    goto :goto_8

    :catch_41
    move-exception v0

    goto :goto_8
.end method

.method private c(Lcom/comscore/streaming/StreamSenseState;)Z
    .registers 3

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/comscore/streaming/StreamSense;->getState()Lcom/comscore/streaming/StreamSenseState;

    move-result-object v0

    if-eq v0, p1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private d()V
    .registers 7

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-direct {p0}, Lcom/comscore/streaming/StreamSense;->i()V

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->w:Ljava/util/List;

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lcom/comscore/streaming/StreamSense;->n:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_54

    iget-wide v0, p0, Lcom/comscore/streaming/StreamSense;->n:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resuming heart beat timer. Next event in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_36
    cmp-long v2, v0, v4

    if-lez v2, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/comscore/streaming/StreamSense;->p:J

    new-instance v2, Lcom/comscore/streaming/b;

    invoke-direct {v2, p0}, Lcom/comscore/streaming/b;-><init>(Lcom/comscore/streaming/StreamSense;)V

    iput-object v2, p0, Lcom/comscore/streaming/StreamSense;->m:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v2}, Lcom/comscore/analytics/Core;->getTaskExecutor()Lcom/comscore/utils/task/TaskExecutor;

    move-result-object v2

    iget-object v3, p0, Lcom/comscore/streaming/StreamSense;->m:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Lcom/comscore/utils/task/TaskExecutor;->execute(Ljava/lang/Runnable;J)Z

    goto :goto_a

    :cond_54
    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->h:Lcom/comscore/streaming/StreamSensePlaylist;

    invoke-virtual {v0}, Lcom/comscore/streaming/StreamSensePlaylist;->getClip()Lcom/comscore/streaming/StreamSenseClip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comscore/streaming/StreamSenseClip;->f()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/comscore/streaming/StreamSense;->a(J)J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting heart beat timer. Next event in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_36
.end method

.method private d(Lcom/comscore/streaming/StreamSenseState;)V
    .registers 4

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iput-object p1, p0, Lcom/comscore/streaming/StreamSense;->f:Lcom/comscore/streaming/StreamSenseState;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/streaming/StreamSense;->d:J

    goto :goto_8
.end method

.method private d(Ljava/util/HashMap;)V
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

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/comscore/streaming/StreamSense;->g(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/streaming/StreamSense;->u:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->u:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_8
.end method

.method private e(Ljava/util/HashMap;)J
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v2, -0x1

    const-string v0, "ns_st_po"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :try_start_a
    const-string v0, "ns_st_po"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_19} :catch_1b

    move-result-wide v0

    :goto_1a
    return-wide v0

    :catch_1b
    move-exception v0

    move-wide v0, v2

    goto :goto_1a

    :cond_1e
    move-wide v0, v2

    goto :goto_1a
.end method

.method private e()V
    .registers 5

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    const-string v0, "Pausing heartbeat timer."

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSense;->i()V

    iget-wide v0, p0, Lcom/comscore/streaming/StreamSense;->p:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/comscore/streaming/StreamSense;->n:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/comscore/streaming/StreamSense;->p:J

    goto :goto_8
.end method

.method private f(Ljava/util/HashMap;)J
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v2, -0x1

    const-string v0, "ns_ts"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :try_start_a
    const-string v0, "ns_ts"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_19} :catch_1b

    move-result-wide v0

    :goto_1a
    return-wide v0

    :catch_1b
    move-exception v0

    move-wide v0, v2

    goto :goto_1a

    :cond_1e
    move-wide v0, v2

    goto :goto_1a
.end method

.method private f()V
    .registers 5

    const-wide/16 v2, -0x1

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    const-string v0, "Resetting heartbeat timer."

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-wide v2, p0, Lcom/comscore/streaming/StreamSense;->n:J

    iput-wide v2, p0, Lcom/comscore/streaming/StreamSense;->p:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/comscore/streaming/StreamSense;->o:I

    goto :goto_a
.end method

.method private g(Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->f:Lcom/comscore/streaming/StreamSenseState;

    invoke-virtual {v0}, Lcom/comscore/streaming/StreamSenseState;->toEventType()Lcom/comscore/streaming/StreamSenseEventType;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/comscore/streaming/StreamSense;->a(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .registers 8

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    const-string v0, "Starting keep alive timer"

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSense;->h()V

    new-instance v0, Lcom/comscore/streaming/c;

    invoke-direct {v0, p0}, Lcom/comscore/streaming/c;-><init>(Lcom/comscore/streaming/StreamSense;)V

    iput-object v0, p0, Lcom/comscore/streaming/StreamSense;->k:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getTaskExecutor()Lcom/comscore/utils/task/TaskExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/streaming/StreamSense;->k:Ljava/lang/Runnable;

    iget v2, p0, Lcom/comscore/streaming/StreamSense;->x:I

    int-to-long v2, v2

    const/4 v4, 0x1

    iget v5, p0, Lcom/comscore/streaming/StreamSense;->x:I

    int-to-long v5, v5

    invoke-virtual/range {v0 .. v6}, Lcom/comscore/utils/task/TaskExecutor;->execute(Ljava/lang/Runnable;JZJ)Z

    goto :goto_8
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    const-string v0, "4.1508.28"

    return-object v0
.end method

.method private h()V
    .registers 3

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    const-string/jumbo v0, "stopKeepAliveTask()"

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->k:Ljava/lang/Runnable;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getTaskExecutor()Lcom/comscore/utils/task/TaskExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/streaming/StreamSense;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/comscore/utils/task/TaskExecutor;->removeEnqueuedTask(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/comscore/streaming/StreamSense;->k:Ljava/lang/Runnable;

    goto :goto_8
.end method

.method private i()V
    .registers 3

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    const-string v0, "releaseHeartBeatTask()"

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->m:Ljava/lang/Runnable;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getTaskExecutor()Lcom/comscore/utils/task/TaskExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/streaming/StreamSense;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/comscore/utils/task/TaskExecutor;->removeEnqueuedTask(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/comscore/streaming/StreamSense;->m:Ljava/lang/Runnable;

    goto :goto_8
.end method

.method private j()V
    .registers 3

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    const-string v0, "Firing paused on buffering event"

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->r:Lcom/comscore/streaming/StreamSenseState;

    sget-object v1, Lcom/comscore/streaming/StreamSenseState;->PLAYING:Lcom/comscore/streaming/StreamSenseState;

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->h:Lcom/comscore/streaming/StreamSensePlaylist;

    invoke-virtual {v0}, Lcom/comscore/streaming/StreamSensePlaylist;->h()V

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->h:Lcom/comscore/streaming/StreamSensePlaylist;

    invoke-virtual {v0}, Lcom/comscore/streaming/StreamSensePlaylist;->f()V

    sget-object v0, Lcom/comscore/streaming/StreamSenseEventType;->PAUSE:Lcom/comscore/streaming/StreamSenseEventType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/comscore/streaming/StreamSense;->a(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comscore/streaming/StreamSense;->a(Ljava/util/HashMap;)V

    iget v0, p0, Lcom/comscore/streaming/StreamSense;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/comscore/streaming/StreamSense;->g:I

    sget-object v0, Lcom/comscore/streaming/StreamSenseState;->PAUSED:Lcom/comscore/streaming/StreamSenseState;

    iput-object v0, p0, Lcom/comscore/streaming/StreamSense;->r:Lcom/comscore/streaming/StreamSenseState;

    goto :goto_8
.end method

.method private k()V
    .registers 3

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    const-string/jumbo v0, "stopPausedOnBufferingTask()"

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->i:Ljava/lang/Runnable;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getTaskExecutor()Lcom/comscore/utils/task/TaskExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/streaming/StreamSense;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/comscore/utils/task/TaskExecutor;->removeEnqueuedTask(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/comscore/streaming/StreamSense;->i:Ljava/lang/Runnable;

    goto :goto_8
.end method

.method private l()V
    .registers 3

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    const-string/jumbo v0, "stopDelayedTransitionTask()"

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->l:Lcom/comscore/streaming/f;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getTaskExecutor()Lcom/comscore/utils/task/TaskExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/streaming/StreamSense;->l:Lcom/comscore/streaming/f;

    invoke-virtual {v0, v1}, Lcom/comscore/utils/task/TaskExecutor;->removeEnqueuedTask(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/comscore/streaming/StreamSense;->l:Lcom/comscore/streaming/f;

    goto :goto_8
.end method

.method private m()Z
    .registers 4

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v1}, Lcom/comscore/analytics/Core;->getPublisherSecret()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v2}, Lcom/comscore/analytics/Core;->getPixelURL()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_24

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_24

    if-eqz v2, :cond_24

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_26

    :cond_24
    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method private n()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    const-wide/32 v6, 0xea60

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "playingtime"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "interval"

    const-wide/16 v4, 0x2710

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "playingtime"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "interval"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method protected a()V
    .registers 3

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    const-string v0, "Firing heart beat"

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/comscore/streaming/StreamSense;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/comscore/streaming/StreamSense;->o:I

    sget-object v0, Lcom/comscore/streaming/StreamSenseEventType;->HEART_BEAT:Lcom/comscore/streaming/StreamSenseEventType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/comscore/streaming/StreamSense;->a(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comscore/streaming/StreamSense;->a(Ljava/util/HashMap;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/comscore/streaming/StreamSense;->n:J

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSense;->d()V

    goto :goto_8
.end method

.method protected a(Ljava/util/HashMap;)V
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

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/comscore/streaming/StreamSense;->a(Ljava/util/HashMap;Z)V

    return-void
.end method

.method protected a(Ljava/util/HashMap;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatch("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_34

    invoke-direct {p0, p1}, Lcom/comscore/streaming/StreamSense;->d(Ljava/util/HashMap;)V

    :cond_34
    invoke-direct {p0}, Lcom/comscore/streaming/StreamSense;->m()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v1}, Lcom/comscore/analytics/Core;->getTaskExecutor()Lcom/comscore/utils/task/TaskExecutor;

    move-result-object v1

    new-instance v2, Lcom/comscore/streaming/e;

    invoke-direct {v2, p0, p1, v0}, Lcom/comscore/streaming/e;-><init>(Lcom/comscore/streaming/StreamSense;Ljava/util/HashMap;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/comscore/utils/task/TaskExecutor;->execute(Ljava/lang/Runnable;Z)Z

    goto :goto_8
.end method

.method public addListener(Lcom/comscore/streaming/StreamSenseListener;)V
    .registers 3

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8
.end method

.method protected b()V
    .registers 3

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    const-string v0, "Firing keep alive"

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/comscore/streaming/StreamSenseEventType;->KEEP_ALIVE:Lcom/comscore/streaming/StreamSenseEventType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/comscore/streaming/StreamSense;->a(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comscore/streaming/StreamSense;->a(Ljava/util/HashMap;)V

    iget v0, p0, Lcom/comscore/streaming/StreamSense;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/comscore/streaming/StreamSense;->g:I

    goto :goto_8
.end method

.method public engageTo(Lcom/comscore/streaming/StreamSenseMediaPlayer;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1, p0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->setStreamSense(Lcom/comscore/streaming/StreamSense;)V

    return-void
.end method

.method public engageTo(Lcom/comscore/streaming/StreamSenseVideoView;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1, p0}, Lcom/comscore/streaming/StreamSenseVideoView;->setStreamSense(Lcom/comscore/streaming/StreamSense;)V

    return-void
.end method

.method public exportState()Ljava/util/HashMap;
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

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->u:Ljava/util/HashMap;

    return-object v0
.end method

.method public getClip()Lcom/comscore/streaming/StreamSenseClip;
    .registers 2

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->h:Lcom/comscore/streaming/StreamSensePlaylist;

    invoke-virtual {v0}, Lcom/comscore/streaming/StreamSensePlaylist;->getClip()Lcom/comscore/streaming/StreamSenseClip;

    move-result-object v0

    return-object v0
.end method

.method public getKeepAliveInterval()I
    .registers 2

    iget v0, p0, Lcom/comscore/streaming/StreamSense;->x:I

    return v0
.end method

.method public getLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->b:Ljava/util/HashMap;

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

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public getPauseOnBufferingInterval()I
    .registers 2

    iget v0, p0, Lcom/comscore/streaming/StreamSense;->y:I

    return v0
.end method

.method public getPixelURL()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaylist()Lcom/comscore/streaming/StreamSensePlaylist;
    .registers 2

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->h:Lcom/comscore/streaming/StreamSensePlaylist;

    return-object v0
.end method

.method public getState()Lcom/comscore/streaming/StreamSenseState;
    .registers 2

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->f:Lcom/comscore/streaming/StreamSenseState;

    return-object v0
.end method

.method public importState(Ljava/util/HashMap;)V
    .registers 5
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

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0}, Lcom/comscore/streaming/StreamSense;->reset()V

    invoke-static {p1}, Lcom/comscore/utils/Utils;->mapOfStrings(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/streaming/StreamSense;->h:Lcom/comscore/streaming/StreamSensePlaylist;

    invoke-virtual {v1, v0, v2}, Lcom/comscore/streaming/StreamSensePlaylist;->b(Ljava/util/HashMap;Lcom/comscore/streaming/StreamSenseState;)V

    iget-object v1, p0, Lcom/comscore/streaming/StreamSense;->h:Lcom/comscore/streaming/StreamSensePlaylist;

    invoke-virtual {v1}, Lcom/comscore/streaming/StreamSensePlaylist;->getClip()Lcom/comscore/streaming/StreamSenseClip;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/comscore/streaming/StreamSenseClip;->b(Ljava/util/HashMap;Lcom/comscore/streaming/StreamSenseState;)V

    invoke-direct {p0, v0}, Lcom/comscore/streaming/StreamSense;->c(Ljava/util/HashMap;)V

    iget v0, p0, Lcom/comscore/streaming/StreamSense;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/comscore/streaming/StreamSense;->g:I

    goto :goto_9
.end method

.method public isPauseOnBufferingEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/comscore/streaming/StreamSense;->j:Z

    return v0
.end method

.method public isPausePlaySwitchDelayEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/comscore/streaming/StreamSense;->q:Z

    return v0
.end method

.method public notify(Lcom/comscore/streaming/StreamSenseEventType;J)V
    .registers 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/comscore/streaming/StreamSense;->notify(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;J)V

    return-void
.end method

.method public notify(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;J)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/comscore/streaming/StreamSenseEventType;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/comscore/streaming/StreamSense;->a(Lcom/comscore/streaming/StreamSenseEventType;)Lcom/comscore/streaming/StreamSenseState;

    move-result-object v0

    invoke-static {p2}, Lcom/comscore/utils/Utils;->mapOfStrings(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/comscore/streaming/StreamSense;->b(Ljava/util/HashMap;)V

    const-string v2, "ns_st_po"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4b

    const-string v2, "ns_st_po"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4b
    sget-object v2, Lcom/comscore/streaming/StreamSenseEventType;->PLAY:Lcom/comscore/streaming/StreamSenseEventType;

    if-eq p1, v2, :cond_5b

    sget-object v2, Lcom/comscore/streaming/StreamSenseEventType;->PAUSE:Lcom/comscore/streaming/StreamSenseEventType;

    if-eq p1, v2, :cond_5b

    sget-object v2, Lcom/comscore/streaming/StreamSenseEventType;->BUFFER:Lcom/comscore/streaming/StreamSenseEventType;

    if-eq p1, v2, :cond_5b

    sget-object v2, Lcom/comscore/streaming/StreamSenseEventType;->END:Lcom/comscore/streaming/StreamSenseEventType;

    if-ne p1, v2, :cond_87

    :cond_5b
    invoke-virtual {p0}, Lcom/comscore/streaming/StreamSense;->isPausePlaySwitchDelayEnabled()Z

    move-result v2

    if-eqz v2, :cond_83

    iget-object v2, p0, Lcom/comscore/streaming/StreamSense;->f:Lcom/comscore/streaming/StreamSenseState;

    invoke-direct {p0, v2}, Lcom/comscore/streaming/StreamSense;->a(Lcom/comscore/streaming/StreamSenseState;)Z

    move-result v2

    if-eqz v2, :cond_83

    invoke-direct {p0, v0}, Lcom/comscore/streaming/StreamSense;->a(Lcom/comscore/streaming/StreamSenseState;)Z

    move-result v2

    if-eqz v2, :cond_83

    iget-object v2, p0, Lcom/comscore/streaming/StreamSense;->f:Lcom/comscore/streaming/StreamSenseState;

    sget-object v3, Lcom/comscore/streaming/StreamSenseState;->PLAYING:Lcom/comscore/streaming/StreamSenseState;

    if-ne v2, v3, :cond_7d

    sget-object v2, Lcom/comscore/streaming/StreamSenseState;->PAUSED:Lcom/comscore/streaming/StreamSenseState;

    if-ne v0, v2, :cond_7d

    iget-object v2, p0, Lcom/comscore/streaming/StreamSense;->l:Lcom/comscore/streaming/f;

    if-eqz v2, :cond_83

    :cond_7d
    const-wide/16 v2, 0x1f4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/comscore/streaming/StreamSense;->a(Lcom/comscore/streaming/StreamSenseState;Ljava/util/HashMap;J)V

    goto :goto_8

    :cond_83
    invoke-direct {p0, v0, v1}, Lcom/comscore/streaming/StreamSense;->a(Lcom/comscore/streaming/StreamSenseState;Ljava/util/HashMap;)V

    goto :goto_8

    :cond_87
    invoke-direct {p0, p1, v1}, Lcom/comscore/streaming/StreamSense;->a(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/comscore/streaming/StreamSense;->a(Ljava/util/HashMap;Z)V

    iget v0, p0, Lcom/comscore/streaming/StreamSense;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/comscore/streaming/StreamSense;->g:I

    goto/16 :goto_8
.end method

.method public removeListener(Lcom/comscore/streaming/StreamSenseListener;)V
    .registers 3

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_8
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/comscore/streaming/StreamSense;->reset(Ljava/util/Set;)V

    return-void
.end method

.method public reset(Ljava/util/Set;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    const-string v0, "Reset()"

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->h:Lcom/comscore/streaming/StreamSensePlaylist;

    invoke-virtual {v0, p1}, Lcom/comscore/streaming/StreamSensePlaylist;->reset(Ljava/util/Set;)V

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->h:Lcom/comscore/streaming/StreamSensePlaylist;

    invoke-virtual {v0, v4}, Lcom/comscore/streaming/StreamSensePlaylist;->d(I)V

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->h:Lcom/comscore/streaming/StreamSensePlaylist;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/comscore/streaming/StreamSensePlaylist;->setPlaylistId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->h:Lcom/comscore/streaming/StreamSensePlaylist;

    invoke-virtual {v0}, Lcom/comscore/streaming/StreamSensePlaylist;->getClip()Lcom/comscore/streaming/StreamSenseClip;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/comscore/streaming/StreamSenseClip;->reset(Ljava/util/Set;)V

    if-eqz p1, :cond_75

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_75

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->b:Ljava/util/HashMap;

    invoke-static {v0, p1}, Lcom/comscore/streaming/StreamSenseUtils;->filterMap(Ljava/util/Map;Ljava/util/Set;)V

    :goto_4c
    const/4 v0, 0x1

    iput v0, p0, Lcom/comscore/streaming/StreamSense;->g:I

    iput v4, p0, Lcom/comscore/streaming/StreamSense;->o:I

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSense;->e()V

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSense;->f()V

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSense;->h()V

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSense;->k()V

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSense;->l()V

    sget-object v0, Lcom/comscore/streaming/StreamSenseState;->IDLE:Lcom/comscore/streaming/StreamSenseState;

    iput-object v0, p0, Lcom/comscore/streaming/StreamSense;->f:Lcom/comscore/streaming/StreamSenseState;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/comscore/streaming/StreamSense;->d:J

    iput-object v5, p0, Lcom/comscore/streaming/StreamSense;->r:Lcom/comscore/streaming/StreamSenseState;

    const-string v0, "android_puppet"

    iput-object v0, p0, Lcom/comscore/streaming/StreamSense;->s:Ljava/lang/String;

    const-string v0, "4.1508.28"

    iput-object v0, p0, Lcom/comscore/streaming/StreamSense;->t:Ljava/lang/String;

    iput-object v5, p0, Lcom/comscore/streaming/StreamSense;->u:Ljava/util/HashMap;

    goto :goto_a

    :cond_75
    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_4c
.end method

.method public setClip(Ljava/util/HashMap;)Ljava/lang/Boolean;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/comscore/streaming/StreamSense;->setClip(Ljava/util/HashMap;Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setClip(Ljava/util/HashMap;Z)Ljava/lang/Boolean;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/comscore/streaming/StreamSense;->f:Lcom/comscore/streaming/StreamSenseState;

    sget-object v2, Lcom/comscore/streaming/StreamSenseState;->IDLE:Lcom/comscore/streaming/StreamSenseState;

    if-ne v1, v2, :cond_a

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->h:Lcom/comscore/streaming/StreamSensePlaylist;

    invoke-virtual {v0}, Lcom/comscore/streaming/StreamSensePlaylist;->getClip()Lcom/comscore/streaming/StreamSenseClip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comscore/streaming/StreamSenseClip;->reset()V

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->h:Lcom/comscore/streaming/StreamSensePlaylist;

    invoke-virtual {v0}, Lcom/comscore/streaming/StreamSensePlaylist;->getClip()Lcom/comscore/streaming/StreamSenseClip;

    move-result-object v0

    invoke-static {p1}, Lcom/comscore/utils/Utils;->mapOfStrings(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/comscore/streaming/StreamSenseClip;->a(Ljava/util/HashMap;Lcom/comscore/streaming/StreamSenseState;)V

    if-eqz p2, :cond_31

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->h:Lcom/comscore/streaming/StreamSensePlaylist;

    invoke-virtual {v0}, Lcom/comscore/streaming/StreamSensePlaylist;->b()V

    :cond_31
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_a
.end method

.method public setHeartbeatIntervals(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iput-object p1, p0, Lcom/comscore/streaming/StreamSense;->w:Ljava/util/List;

    goto :goto_8
.end method

.method public setKeepAliveInterval(I)V
    .registers 3

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iput p1, p0, Lcom/comscore/streaming/StreamSense;->x:I

    goto :goto_8
.end method

.method public setLabel(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    if-nez p2, :cond_11

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_11
    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8
.end method

.method public setLabels(Ljava/util/HashMap;)V
    .registers 4
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

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->b:Ljava/util/HashMap;

    if-nez v0, :cond_16

    invoke-static {p1}, Lcom/comscore/utils/Utils;->mapOfStrings(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/streaming/StreamSense;->b:Ljava/util/HashMap;

    goto :goto_8

    :cond_16
    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->b:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/comscore/utils/Utils;->mapOfStrings(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_8
.end method

.method public setPauseOnBufferingEnabled(Z)V
    .registers 3

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iput-boolean p1, p0, Lcom/comscore/streaming/StreamSense;->j:Z

    goto :goto_8
.end method

.method public setPauseOnBufferingInterval(I)V
    .registers 3

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iput p1, p0, Lcom/comscore/streaming/StreamSense;->y:I

    goto :goto_8
.end method

.method public setPausePlaySwitchDelayEnabled(Z)V
    .registers 3

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iput-boolean p1, p0, Lcom/comscore/streaming/StreamSense;->q:Z

    goto :goto_8
.end method

.method public setPixelURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/16 v3, 0x3f

    const/4 v8, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->c:Ljava/lang/String;

    :goto_e
    return-object v0

    :cond_f
    if-eqz p1, :cond_17

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_e

    :cond_19
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_63

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_5e

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_35
    if-ge v0, v4, :cond_58

    aget-object v5, v3, v0

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4d

    aget-object v6, v5, v1

    aget-object v5, v5, v8

    invoke-virtual {p0, v6, v5}, Lcom/comscore/streaming/StreamSense;->setLabel(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4a
    :goto_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    :cond_4d
    array-length v6, v5

    if-ne v6, v8, :cond_4a

    const-string v6, "name"

    aget-object v5, v5, v1

    invoke-virtual {p0, v6, v5}, Lcom/comscore/streaming/StreamSense;->setLabel(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a

    :cond_58
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_5e
    :goto_5e
    iput-object p1, p0, Lcom/comscore/streaming/StreamSense;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->c:Ljava/lang/String;

    goto :goto_e

    :cond_63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5e
.end method

.method public setPlaylist(Ljava/util/HashMap;)Ljava/lang/Boolean;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/comscore/streaming/StreamSense;->f:Lcom/comscore/streaming/StreamSenseState;

    sget-object v2, Lcom/comscore/streaming/StreamSenseState;->IDLE:Lcom/comscore/streaming/StreamSenseState;

    if-ne v1, v2, :cond_a

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->h:Lcom/comscore/streaming/StreamSensePlaylist;

    invoke-virtual {v0}, Lcom/comscore/streaming/StreamSensePlaylist;->i()V

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->h:Lcom/comscore/streaming/StreamSensePlaylist;

    invoke-virtual {v0}, Lcom/comscore/streaming/StreamSensePlaylist;->reset()V

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->h:Lcom/comscore/streaming/StreamSensePlaylist;

    invoke-virtual {v0}, Lcom/comscore/streaming/StreamSensePlaylist;->getClip()Lcom/comscore/streaming/StreamSenseClip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comscore/streaming/StreamSenseClip;->reset()V

    iget-object v0, p0, Lcom/comscore/streaming/StreamSense;->h:Lcom/comscore/streaming/StreamSensePlaylist;

    invoke-static {p1}, Lcom/comscore/utils/Utils;->mapOfStrings(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/comscore/streaming/StreamSensePlaylist;->a(Ljava/util/HashMap;Lcom/comscore/streaming/StreamSenseState;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_a
.end method
