.class public Lcom/comscore/streaming/StreamingTag;
.super Ljava/lang/Object;


# instance fields
.field private a:[Ljava/lang/String;

.field private b:Lcom/comscore/streaming/StreamSense;

.field private c:J

.field private d:J

.field private e:I

.field private f:Ljava/util/HashMap;
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

.field private g:Lcom/comscore/streaming/p;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .registers 7

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ns_st_ci"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "c3"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "c4"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "c6"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ns_st_st"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ns_st_pu"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ns_st_pr"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ns_st_ep"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ns_st_sn"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ns_st_en"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ns_st_ct"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/comscore/streaming/StreamingTag;->a:[Ljava/lang/String;

    iput v3, p0, Lcom/comscore/streaming/StreamingTag;->e:I

    iput-wide v4, p0, Lcom/comscore/streaming/StreamingTag;->c:J

    iput-wide v4, p0, Lcom/comscore/streaming/StreamingTag;->d:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/comscore/streaming/StreamingTag;->f:Ljava/util/HashMap;

    iput-boolean v3, p0, Lcom/comscore/streaming/StreamingTag;->h:Z

    sget-object v0, Lcom/comscore/streaming/p;->None:Lcom/comscore/streaming/p;

    iput-object v0, p0, Lcom/comscore/streaming/StreamingTag;->g:Lcom/comscore/streaming/p;

    new-instance v0, Lcom/comscore/streaming/StreamSense;

    invoke-direct {v0}, Lcom/comscore/streaming/StreamSense;-><init>()V

    iput-object v0, p0, Lcom/comscore/streaming/StreamingTag;->b:Lcom/comscore/streaming/StreamSense;

    iget-object v0, p0, Lcom/comscore/streaming/StreamingTag;->b:Lcom/comscore/streaming/StreamSense;

    const-string v1, "ns_st_it"

    const-string v2, "r"

    invoke-virtual {v0, v1, v2}, Lcom/comscore/streaming/StreamSense;->setLabel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 8
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

    invoke-static {p1}, Lcom/comscore/utils/Utils;->mapOfStrings(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/comscore/streaming/StreamingTag;->a:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v3, :cond_24

    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    const-string v5, "ns_st_ci"

    if-ne v4, v5, :cond_1e

    const-string v5, "0"

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    :goto_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1e
    const-string v5, "*null"

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    :cond_24
    return-object v1
.end method

.method private a(J)V
    .registers 8

    iget-object v0, p0, Lcom/comscore/streaming/StreamingTag;->b:Lcom/comscore/streaming/StreamSense;

    invoke-virtual {v0}, Lcom/comscore/streaming/StreamSense;->getState()Lcom/comscore/streaming/StreamSenseState;

    move-result-object v0

    sget-object v1, Lcom/comscore/streaming/StreamSenseState;->IDLE:Lcom/comscore/streaming/StreamSenseState;

    if-eq v0, v1, :cond_20

    iget-object v0, p0, Lcom/comscore/streaming/StreamingTag;->b:Lcom/comscore/streaming/StreamSense;

    invoke-virtual {v0}, Lcom/comscore/streaming/StreamSense;->getState()Lcom/comscore/streaming/StreamSenseState;

    move-result-object v0

    sget-object v1, Lcom/comscore/streaming/StreamSenseState;->PAUSED:Lcom/comscore/streaming/StreamSenseState;

    if-eq v0, v1, :cond_20

    iget-object v0, p0, Lcom/comscore/streaming/StreamingTag;->b:Lcom/comscore/streaming/StreamSense;

    sget-object v1, Lcom/comscore/streaming/StreamSenseEventType;->END:Lcom/comscore/streaming/StreamSenseEventType;

    invoke-direct {p0, p1, p2}, Lcom/comscore/streaming/StreamingTag;->b(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/comscore/streaming/StreamSense;->notify(Lcom/comscore/streaming/StreamSenseEventType;J)V

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    iget-object v0, p0, Lcom/comscore/streaming/StreamingTag;->b:Lcom/comscore/streaming/StreamSense;

    invoke-virtual {v0}, Lcom/comscore/streaming/StreamSense;->getState()Lcom/comscore/streaming/StreamSenseState;

    move-result-object v0

    sget-object v1, Lcom/comscore/streaming/StreamSenseState;->PAUSED:Lcom/comscore/streaming/StreamSenseState;

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/comscore/streaming/StreamingTag;->b:Lcom/comscore/streaming/StreamSense;

    sget-object v1, Lcom/comscore/streaming/StreamSenseEventType;->END:Lcom/comscore/streaming/StreamSenseEventType;

    iget-wide v2, p0, Lcom/comscore/streaming/StreamingTag;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/comscore/streaming/StreamSense;->notify(Lcom/comscore/streaming/StreamSenseEventType;J)V

    goto :goto_1f
.end method

.method private a(JLjava/util/HashMap;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/comscore/streaming/StreamingTag;->a(J)V

    iget v0, p0, Lcom/comscore/streaming/StreamingTag;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/comscore/streaming/StreamingTag;->e:I

    const-string v0, "ns_st_cn"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "ns_st_cn"

    iget v1, p0, Lcom/comscore/streaming/StreamingTag;->e:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    const-string v0, "ns_st_pn"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "ns_st_pn"

    const-string v1, "1"

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    const-string v0, "ns_st_tp"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "ns_st_tp"

    const-string v1, "0"

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3a
    iget-object v0, p0, Lcom/comscore/streaming/StreamingTag;->b:Lcom/comscore/streaming/StreamSense;

    invoke-virtual {v0, p3}, Lcom/comscore/streaming/StreamSense;->setClip(Ljava/util/HashMap;)Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/comscore/streaming/StreamingTag;->f:Ljava/util/HashMap;

    iput-wide p1, p0, Lcom/comscore/streaming/StreamingTag;->c:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/comscore/streaming/StreamingTag;->d:J

    iget-object v0, p0, Lcom/comscore/streaming/StreamingTag;->b:Lcom/comscore/streaming/StreamSense;

    sget-object v1, Lcom/comscore/streaming/StreamSenseEventType;->PLAY:Lcom/comscore/streaming/StreamSenseEventType;

    iget-wide v2, p0, Lcom/comscore/streaming/StreamingTag;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/comscore/streaming/StreamSense;->notify(Lcom/comscore/streaming/StreamSenseEventType;J)V

    return-void
.end method

.method private a(Ljava/util/HashMap;Lcom/comscore/streaming/p;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/comscore/streaming/p;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/comscore/utils/Date;->unixTime()J

    move-result-wide v0

    invoke-static {p1}, Lcom/comscore/utils/Utils;->mapOfStrings(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/comscore/streaming/StreamingTag;->a(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/comscore/streaming/StreamingTag;->g:Lcom/comscore/streaming/p;

    sget-object v4, Lcom/comscore/streaming/p;->None:Lcom/comscore/streaming/p;

    if-ne v3, v4, :cond_14

    iput-object p2, p0, Lcom/comscore/streaming/StreamingTag;->g:Lcom/comscore/streaming/p;

    :cond_14
    iget-boolean v3, p0, Lcom/comscore/streaming/StreamingTag;->h:Z

    if-eqz v3, :cond_4a

    iget-object v3, p0, Lcom/comscore/streaming/StreamingTag;->g:Lcom/comscore/streaming/p;

    if-ne v3, p2, :cond_4a

    invoke-direct {p0, v2}, Lcom/comscore/streaming/StreamingTag;->c(Ljava/util/HashMap;)Z

    move-result v3

    if-nez v3, :cond_2b

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/streaming/StreamingTag;->a(JLjava/util/HashMap;)V

    :cond_25
    :goto_25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/comscore/streaming/StreamingTag;->h:Z

    iput-object p2, p0, Lcom/comscore/streaming/StreamingTag;->g:Lcom/comscore/streaming/p;

    return-void

    :cond_2b
    iget-object v3, p0, Lcom/comscore/streaming/StreamingTag;->b:Lcom/comscore/streaming/StreamSense;

    invoke-virtual {v3}, Lcom/comscore/streaming/StreamSense;->getClip()Lcom/comscore/streaming/StreamSenseClip;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/comscore/streaming/StreamSenseClip;->setLabels(Ljava/util/HashMap;)V

    iget-object v2, p0, Lcom/comscore/streaming/StreamingTag;->b:Lcom/comscore/streaming/StreamSense;

    invoke-virtual {v2}, Lcom/comscore/streaming/StreamSense;->getState()Lcom/comscore/streaming/StreamSenseState;

    move-result-object v2

    sget-object v3, Lcom/comscore/streaming/StreamSenseState;->PLAYING:Lcom/comscore/streaming/StreamSenseState;

    if-eq v2, v3, :cond_25

    iput-wide v0, p0, Lcom/comscore/streaming/StreamingTag;->c:J

    iget-object v0, p0, Lcom/comscore/streaming/StreamingTag;->b:Lcom/comscore/streaming/StreamSense;

    sget-object v1, Lcom/comscore/streaming/StreamSenseEventType;->PLAY:Lcom/comscore/streaming/StreamSenseEventType;

    iget-wide v2, p0, Lcom/comscore/streaming/StreamingTag;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/comscore/streaming/StreamSense;->notify(Lcom/comscore/streaming/StreamSenseEventType;J)V

    goto :goto_25

    :cond_4a
    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/streaming/StreamingTag;->a(JLjava/util/HashMap;)V

    goto :goto_25
.end method

.method private a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_25

    if-eqz p2, :cond_21

    move v1, v0

    :goto_7
    if-eqz p3, :cond_23

    :goto_9
    and-int/2addr v0, v1

    if-eqz v0, :cond_25

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_25

    if-eqz v1, :cond_25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_20
    return v0

    :cond_21
    move v1, v2

    goto :goto_7

    :cond_23
    move v0, v2

    goto :goto_9

    :cond_25
    move v0, v2

    goto :goto_20
.end method

.method private b(J)J
    .registers 8

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/comscore/streaming/StreamingTag;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1a

    iget-wide v0, p0, Lcom/comscore/streaming/StreamingTag;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1a

    iget-wide v0, p0, Lcom/comscore/streaming/StreamingTag;->d:J

    iget-wide v2, p0, Lcom/comscore/streaming/StreamingTag;->c:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/comscore/streaming/StreamingTag;->d:J

    :goto_17
    iget-wide v0, p0, Lcom/comscore/streaming/StreamingTag;->d:J

    return-wide v0

    :cond_1a
    iput-wide v2, p0, Lcom/comscore/streaming/StreamingTag;->d:J

    goto :goto_17
.end method

.method private b(Ljava/util/HashMap;)V
    .registers 8
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

    invoke-static {}, Lcom/comscore/utils/Date;->unixTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/comscore/streaming/StreamingTag;->a(J)V

    iget v2, p0, Lcom/comscore/streaming/StreamingTag;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/comscore/streaming/StreamingTag;->e:I

    invoke-static {p1}, Lcom/comscore/utils/Utils;->mapOfStrings(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/comscore/streaming/StreamingTag;->a(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "ns_st_cn"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    const-string v3, "ns_st_cn"

    iget v4, p0, Lcom/comscore/streaming/StreamingTag;->e:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    const-string v3, "ns_st_pn"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    const-string v3, "ns_st_pn"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_37
    const-string v3, "ns_st_tp"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    const-string v3, "ns_st_tp"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_46
    const-string v3, "ns_st_ad"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_55

    const-string v3, "ns_st_ad"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_55
    iget-object v3, p0, Lcom/comscore/streaming/StreamingTag;->b:Lcom/comscore/streaming/StreamSense;

    invoke-virtual {v3, v2}, Lcom/comscore/streaming/StreamSense;->setClip(Ljava/util/HashMap;)Ljava/lang/Boolean;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/comscore/streaming/StreamingTag;->d:J

    iget-object v2, p0, Lcom/comscore/streaming/StreamingTag;->b:Lcom/comscore/streaming/StreamSense;

    sget-object v3, Lcom/comscore/streaming/StreamSenseEventType;->PLAY:Lcom/comscore/streaming/StreamSenseEventType;

    iget-wide v4, p0, Lcom/comscore/streaming/StreamingTag;->d:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/comscore/streaming/StreamSense;->notify(Lcom/comscore/streaming/StreamSenseEventType;J)V

    iput-wide v0, p0, Lcom/comscore/streaming/StreamingTag;->c:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/comscore/streaming/StreamingTag;->h:Z

    return-void
.end method

.method private c(Ljava/util/HashMap;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/comscore/utils/Utils;->mapOfStrings(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/comscore/streaming/StreamingTag;->a(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/comscore/streaming/StreamingTag;->a:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_d
    if-ge v1, v4, :cond_1d

    aget-object v5, v3, v1

    iget-object v6, p0, Lcom/comscore/streaming/StreamingTag;->f:Ljava/util/HashMap;

    invoke-direct {p0, v5, v6, v2}, Lcom/comscore/streaming/StreamingTag;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Z

    move-result v5

    if-nez v5, :cond_1a

    :goto_19
    return v0

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1d
    const/4 v0, 0x1

    goto :goto_19
.end method


# virtual methods
.method public playAdvertisement()V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ns_st_ct"

    const-string/jumbo v2, "va"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/comscore/streaming/StreamingTag;->b(Ljava/util/HashMap;)V

    return-void
.end method

.method public playAudioAdvertisement()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0}, Lcom/comscore/streaming/StreamingTag;->playAudioAdvertisement(Ljava/util/HashMap;)V

    return-void
.end method

.method public playAudioAdvertisement(Ljava/util/HashMap;)V
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/comscore/streaming/StreamingTag;->playAudioAdvertisement(Ljava/util/HashMap;Lcom/comscore/streaming/AdType;)V

    return-void
.end method

.method public playAudioAdvertisement(Ljava/util/HashMap;Lcom/comscore/streaming/AdType;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/comscore/streaming/AdType;",
            ")V"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_a

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_a
    const-string v0, "ns_st_ct"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "a"

    if-nez p2, :cond_32

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_29
    const-string v2, "ns_st_ct"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    invoke-direct {p0, v1}, Lcom/comscore/streaming/StreamingTag;->b(Ljava/util/HashMap;)V

    return-void

    :cond_32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/comscore/streaming/AdType;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_29
.end method

.method public playAudioContentPart(Ljava/util/HashMap;)V
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/comscore/streaming/StreamingTag;->playAudioContentPart(Ljava/util/HashMap;Lcom/comscore/streaming/ContentType;)V

    return-void
.end method

.method public playAudioContentPart(Ljava/util/HashMap;Lcom/comscore/streaming/ContentType;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/comscore/streaming/ContentType;",
            ")V"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_a

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_a
    const-string v0, "ns_st_ct"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "a"

    if-nez p2, :cond_34

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "c"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_29
    const-string v2, "ns_st_ct"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    sget-object v0, Lcom/comscore/streaming/p;->AudioContent:Lcom/comscore/streaming/p;

    invoke-direct {p0, v1, v0}, Lcom/comscore/streaming/StreamingTag;->a(Ljava/util/HashMap;Lcom/comscore/streaming/p;)V

    return-void

    :cond_34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/comscore/streaming/ContentType;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_29
.end method

.method public playContentPart(Ljava/util/HashMap;)V
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_a

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_a
    const-string v1, "ns_st_ct"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "ns_st_ct"

    const-string/jumbo v2, "vc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    sget-object v1, Lcom/comscore/streaming/p;->VideoContent:Lcom/comscore/streaming/p;

    invoke-direct {p0, v0, v1}, Lcom/comscore/streaming/StreamingTag;->a(Ljava/util/HashMap;Lcom/comscore/streaming/p;)V

    return-void
.end method

.method public playVideoAdvertisement()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0}, Lcom/comscore/streaming/StreamingTag;->playVideoAdvertisement(Ljava/util/HashMap;)V

    return-void
.end method

.method public playVideoAdvertisement(Ljava/util/HashMap;)V
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/comscore/streaming/StreamingTag;->playVideoAdvertisement(Ljava/util/HashMap;Lcom/comscore/streaming/AdType;)V

    return-void
.end method

.method public playVideoAdvertisement(Ljava/util/HashMap;Lcom/comscore/streaming/AdType;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/comscore/streaming/AdType;",
            ")V"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_a

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_a
    const-string v0, "ns_st_ct"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string/jumbo v0, "v"

    if-nez p2, :cond_33

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2a
    const-string v2, "ns_st_ct"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    invoke-direct {p0, v1}, Lcom/comscore/streaming/StreamingTag;->b(Ljava/util/HashMap;)V

    return-void

    :cond_33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/comscore/streaming/AdType;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2a
.end method

.method public playVideoContentPart(Ljava/util/HashMap;)V
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/comscore/streaming/StreamingTag;->playVideoContentPart(Ljava/util/HashMap;Lcom/comscore/streaming/ContentType;)V

    return-void
.end method

.method public playVideoContentPart(Ljava/util/HashMap;Lcom/comscore/streaming/ContentType;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/comscore/streaming/ContentType;",
            ")V"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_a

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_a
    const-string v0, "ns_st_ct"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string/jumbo v0, "v"

    if-nez p2, :cond_35

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "c"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2a
    const-string v2, "ns_st_ct"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    sget-object v0, Lcom/comscore/streaming/p;->VideoContent:Lcom/comscore/streaming/p;

    invoke-direct {p0, v1, v0}, Lcom/comscore/streaming/StreamingTag;->a(Ljava/util/HashMap;Lcom/comscore/streaming/p;)V

    return-void

    :cond_35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/comscore/streaming/ContentType;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2a
.end method

.method public stop()V
    .registers 5

    invoke-static {}, Lcom/comscore/utils/Date;->unixTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/comscore/streaming/StreamingTag;->b:Lcom/comscore/streaming/StreamSense;

    sget-object v3, Lcom/comscore/streaming/StreamSenseEventType;->PAUSE:Lcom/comscore/streaming/StreamSenseEventType;

    invoke-direct {p0, v0, v1}, Lcom/comscore/streaming/StreamingTag;->b(J)J

    move-result-wide v0

    invoke-virtual {v2, v3, v0, v1}, Lcom/comscore/streaming/StreamSense;->notify(Lcom/comscore/streaming/StreamSenseEventType;J)V

    return-void
.end method
