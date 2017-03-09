.class public Lcom/comscore/streaming/plugin/StreamSensePlugin;
.super Lcom/comscore/streaming/StreamSense;


# static fields
.field private static final e:[[F


# instance fields
.field private A:Ljava/util/HashMap;
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

.field private B:Z

.field private C:Z

.field private D:Z

.field private final E:Ljava/lang/String;

.field private F:[Ljava/lang/String;

.field private G:I

.field private H:[Ljava/lang/String;

.field private I:I

.field private J:Ljava/util/HashMap;
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

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private f:F

.field private g:I

.field private h:I

.field private i:I

.field private j:Ljava/lang/Runnable;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private m:J

.field private n:Z

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/comscore/streaming/plugin/StreamSensePluginListener;",
            ">;"
        }
    .end annotation
.end field

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Lcom/comscore/streaming/plugin/StreamSensePlayer;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Ljava/util/HashMap;
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

.field private z:Ljava/util/HashMap;
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


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/16 v0, 0xc

    new-array v0, v0, [[F

    const/4 v1, 0x0

    new-array v2, v3, [F

    fill-array-data v2, :array_78

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v4, [F

    fill-array-data v2, :array_80

    aput-object v2, v0, v1

    new-array v1, v5, [F

    fill-array-data v1, :array_8a

    aput-object v1, v0, v3

    new-array v1, v6, [F

    fill-array-data v1, :array_96

    aput-object v1, v0, v4

    new-array v1, v7, [F

    fill-array-data v1, :array_a4

    aput-object v1, v0, v5

    const/4 v1, 0x7

    new-array v1, v1, [F

    fill-array-data v1, :array_b4

    aput-object v1, v0, v6

    const/16 v1, 0x8

    new-array v1, v1, [F

    fill-array-data v1, :array_c6

    aput-object v1, v0, v7

    const/4 v1, 0x7

    const/16 v2, 0x9

    new-array v2, v2, [F

    fill-array-data v2, :array_da

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0xa

    new-array v2, v2, [F

    fill-array-data v2, :array_f0

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0xb

    new-array v2, v2, [F

    fill-array-data v2, :array_108

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xc

    new-array v2, v2, [F

    fill-array-data v2, :array_122

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xd

    new-array v2, v2, [F

    fill-array-data v2, :array_13e

    aput-object v2, v0, v1

    sput-object v0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->e:[[F

    return-void

    :array_78
    .array-data 4
        -0x40800000
        0x3f800000
    .end array-data

    :array_80
    .array-data 4
        -0x41000000
        0x0
        0x3f000000
    .end array-data

    :array_8a
    .array-data 4
        -0x41666666
        -0x42333333
        0x3dcccccd
        0x3e99999a
    .end array-data

    :array_96
    .array-data 4
        -0x41b33333
        -0x42333333
        0x0
        0x3dcccccd
        0x3e4ccccd
    .end array-data

    :array_a4
    .array-data 4
        -0x41edb61c
        -0x42507747
        -0x4315f45e
        0x3cea0ba2
        0x3daf88b9
        0x3e1249e4
    .end array-data

    :array_b4
    .array-data 4
        -0x422493c9
        -0x426db61c
        -0x42edbb5a
        0x0
        0x3d1244a6
        0x3d9249e4
        0x3ddb6c37
    .end array-data

    :array_c6
    .array-data 4
        -0x42555715
        -0x428c34c2
        -0x42edbb5a
        -0x43bd07c8
        0x3c42f838
        0x3d1244a6
        0x3d73cb3e
        0x3daaa8eb
    .end array-data

    :array_da
    .array-data 4
        -0x427775b8
        -0x42b33333
        -0x42f77af6
        -0x4377707a
        0x0
        0x3c888f86
        0x3d08850a
        0x3d4ccccd
        0x3d888a48
    .end array-data

    :array_f0
    .array-data 4
        -0x42a0902e
        -0x42d23f68
        -0x4307c84b
        -0x436b11c7
        -0x44396d09
        0x3bc692f7
        0x3c94ee39
        0x3cf837b5
        0x3d2dc098
        0x3d5f6fd2
    .end array-data

    :array_108
    .array-data 4
        -0x42c5d639
        -0x42eb11c7
        -0x43209aaa
        -0x436b11c7
        -0x43eb11c7
        0x0
        0x3c14ee39
        0x3c94ee39
        0x3cdf6556
        0x3d14ee39
        0x3d3a29c7
    .end array-data

    :array_122
    .array-data 4
        -0x42e277c4
        -0x42ff1950
        -0x433775b8
        -0x4370cdc8
        -0x43d421c0
        -0x449a9fbe
        0x3b656042
        0x3c2bde40
        0x3c8f3238
        0x3cc88a48
        0x3d00e6b0
        0x3d1d883c
    .end array-data

    :array_13e
    .array-data 4
        -0x42f8f473
        -0x431ef73c
        -0x434bf099
        -0x4378feef
        -0x43cbf099
        -0x444c1a8b
        0x0
        0x3bb3e575
        0x3c340f67
        0x3c870111
        0x3cb40f67
        0x3ce108c4
        0x3d070b8d
    .end array-data
.end method

.method public constructor <init>(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/comscore/streaming/StreamSense;-><init>()V

    const-string v0, "1.0.1"

    iput-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->b:Ljava/lang/String;

    const/16 v0, 0xa

    iput v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->c:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->d:I

    const/high16 v0, 0x3fa00000

    iput v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->f:F

    const/4 v0, 0x2

    iput v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->g:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->h:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->i:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->k:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->l:Ljava/util/List;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->m:J

    iput-boolean v2, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->n:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->o:Ljava/util/List;

    iput-boolean v2, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->p:Z

    iput-boolean v2, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->q:Z

    iput-boolean v2, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->r:Z

    iput-boolean v2, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->s:Z

    iput-boolean v2, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->t:Z

    iput-boolean v2, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->v:Z

    iput-boolean v2, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->w:Z

    iput-boolean v2, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->x:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->y:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->z:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->A:Ljava/util/HashMap;

    iput-boolean v2, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->B:Z

    iput-boolean v2, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->C:Z

    iput-boolean v2, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->D:Z

    const-string v0, "_all_"

    iput-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->E:Ljava/lang/String;

    iput-object v5, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->F:[Ljava/lang/String;

    iput v4, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->G:I

    iput-object v5, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->H:[Ljava/lang/String;

    iput v4, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->I:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->J:Ljava/util/HashMap;

    if-eqz p1, :cond_85

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_85

    invoke-direct {p0, p1}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->b(Ljava/util/HashMap;)V

    :cond_85
    const-string v0, "ns_st_mp"

    invoke-virtual {p0, v0, p2, v3}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->setLabel(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ns_st_pv"

    invoke-virtual {p0, v0, p3, v3}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->setLabel(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ns_st_mv"

    invoke-virtual {p0, v0, p4, v3}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->setLabel(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private a(I)J
    .registers 4

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->k:Ljava/util/List;

    iget-object v1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lcom/comscore/streaming/plugin/StreamSensePlugin;I)J
    .registers 4

    invoke-direct {p0, p1}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->a(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private a(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
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

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_a9

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_a9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v1, v0

    :goto_15
    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->H:[Ljava/lang/String;

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->H:[Ljava/lang/String;

    array-length v0, v0

    if-ne v0, v2, :cond_a7

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->H:[Ljava/lang/String;

    aget-object v0, v0, v3

    const-string v4, "_all_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a7

    move v0, v2

    :goto_2b
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_a3

    if-nez v0, :cond_a5

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_95

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->c(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    move-object v2, v1

    :goto_49
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_59
    :goto_59
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "^([Cc][A-Da-d]_)?ns_st_.+"

    const-string v4, "^[Cc][A-Da-d]?([1-9]|1[0-9]|20)$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v1, :cond_85

    if-eqz v4, :cond_59

    :cond_85
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_59

    :cond_95
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->c(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    move-object v2, v1

    goto :goto_49

    :cond_a3
    move-object v2, v1

    :cond_a4
    return-object v2

    :cond_a5
    move-object v2, v1

    goto :goto_49

    :cond_a7
    move v0, v3

    goto :goto_2b

    :cond_a9
    move-object v1, v0

    goto/16 :goto_15
.end method

.method private a(Ljava/lang/String;)V
    .registers 8

    const/4 v5, 0x2

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    return-void

    :cond_a
    const-string v0, "([^=, ]+)\\s*=(\\s*(\'([^\']+?)\'|[a-z0-9\\._-]+)\\s*\\+?)+\\s*"

    invoke-static {v0, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    :cond_14
    :goto_14
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    array-length v2, v1

    if-ne v2, v5, :cond_14

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_14

    iget-object v3, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->J:Ljava/util/HashMap;

    const/4 v4, 0x1

    aget-object v1, v1, v4

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14
.end method

.method private a(J)Z
    .registers 8

    invoke-virtual {p0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->getClip()Lcom/comscore/streaming/StreamSenseClip;

    move-result-object v0

    const-string v1, "ns_st_cl"

    invoke-virtual {v0, v1}, Lcom/comscore/streaming/StreamSenseClip;->getLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_43

    invoke-virtual {p0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->getClip()Lcom/comscore/streaming/StreamSenseClip;

    move-result-object v0

    const-string v1, "ns_st_cl"

    invoke-virtual {v0, v1}, Lcom/comscore/streaming/StreamSenseClip;->getLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_41

    invoke-virtual {p0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->getClip()Lcom/comscore/streaming/StreamSenseClip;

    move-result-object v0

    const-string v1, "ns_st_cl"

    invoke-virtual {v0, v1}, Lcom/comscore/streaming/StreamSenseClip;->getLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sub-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iget v2, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->d:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_43

    :cond_41
    const/4 v0, 0x1

    :goto_42
    return v0

    :cond_43
    const/4 v0, 0x0

    goto :goto_42
.end method

.method static synthetic a(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->t:Z

    return v0
.end method

.method static synthetic a(Lcom/comscore/streaming/plugin/StreamSensePlugin;J)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->a(J)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/comscore/streaming/plugin/StreamSensePlugin;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->w:Z

    return p1
.end method

.method private b(I)J
    .registers 4

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->l:Ljava/util/List;

    iget-object v1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic b(Lcom/comscore/streaming/plugin/StreamSensePlugin;I)J
    .registers 4

    invoke-direct {p0, p1}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->b(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic b(Lcom/comscore/streaming/plugin/StreamSensePlugin;J)J
    .registers 4

    iput-wide p1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->m:J

    return-wide p1
.end method

.method static synthetic b(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Lcom/comscore/streaming/plugin/StreamSensePlayer;
    .registers 2

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->u:Lcom/comscore/streaming/plugin/StreamSensePlayer;

    return-object v0
.end method

.method private b(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
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

    const/4 v11, 0x2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_e4

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_e4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v3, v0

    :goto_14
    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->J:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, ""

    const-string v8, "^\'([^\']+)\'$"

    const-string v1, "\'([^\']+?)\'|[a-z0-9\\._-]+\\s*"

    invoke-static {v1, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->J:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    :goto_40
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->J:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v5, ""

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_85

    const-string v1, "^\'+"

    const-string v4, ""

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\'+$"

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_80
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v1

    goto :goto_40

    :cond_85
    :try_start_85
    const-string v1, ""

    const/16 v5, 0x2e

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/4 v6, 0x1

    if-lt v5, v6, :cond_e1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_e1

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v5, v1

    move-object v6, v2

    :goto_a9
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_b1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_de

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    if-eqz v2, :cond_de

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_de

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_d7} :catch_d8

    goto :goto_80

    :catch_d8
    move-exception v1

    const-string v1, "Exception occurred while processing mapped labels"

    invoke-virtual {p0, v1}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->log(Ljava/lang/String;)V

    :cond_de
    move-object v1, v4

    goto :goto_80

    :cond_e0
    return-object v3

    :cond_e1
    move-object v5, v1

    move-object v6, v2

    goto :goto_a9

    :cond_e4
    move-object v3, v0

    goto/16 :goto_14
.end method

.method private b(Ljava/lang/String;)V
    .registers 11

    const/4 v8, 0x2

    const/4 v1, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    return-void

    :cond_b
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_13
    if-ge v0, v3, :cond_a

    aget-object v4, v2, v0

    const-string v5, "="

    invoke-virtual {v4, v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    if-ne v5, v8, :cond_4d

    aget-object v5, v4, v1

    const-string v6, " "

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4d

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4d

    const/4 v6, 0x1

    aget-object v4, v4, v6

    const-string v6, "^\'+"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "\'+$"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v5, v4}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->setLabel(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->A:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method

.method private b(Ljava/util/HashMap;)V
    .registers 7
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

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "debug"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->D:Z

    const-string v0, "labelmapping"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, "labelmapping"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->a(Ljava/lang/String;)V

    :cond_27
    const-string v0, "persistentlabels"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string v0, "persistentlabels"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->b(Ljava/lang/String;)V

    :cond_3a
    const-string/jumbo v0, "throttling"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c5

    const-string/jumbo v0, "throttling"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c5

    invoke-virtual {p0, v4}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->setPausePlaySwitchDelayEnabled(Z)V

    :goto_59
    const-string v0, "include"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    const-string v0, "include"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "_all_"

    if-ne v0, v1, :cond_c9

    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->F:[Ljava/lang/String;

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->F:[Ljava/lang/String;

    const-string v1, "_all_"

    aput-object v1, v0, v3

    :cond_77
    :goto_77
    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->F:[Ljava/lang/String;

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->F:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->F:[Ljava/lang/String;

    aget-object v0, v0, v3

    const-string v1, "_all_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    :cond_8c
    const-string v0, "include_prefixes"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6

    const-string v0, "include_prefixes"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_b6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b6

    const-string v1, "_all_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d8

    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->F:[Ljava/lang/String;

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->F:[Ljava/lang/String;

    const-string v1, "_all_"

    aput-object v1, v0, v3

    :cond_b6
    :goto_b6
    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->F:[Ljava/lang/String;

    if-nez v0, :cond_110

    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->H:[Ljava/lang/String;

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->H:[Ljava/lang/String;

    const-string v1, "_all_"

    aput-object v1, v0, v3

    :cond_c4
    :goto_c4
    return-void

    :cond_c5
    invoke-virtual {p0, v3}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->setPausePlaySwitchDelayEnabled(Z)V

    goto :goto_59

    :cond_c9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_77

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->F:[Ljava/lang/String;

    goto :goto_77

    :cond_d8
    iget-object v1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->F:[Ljava/lang/String;

    if-nez v1, :cond_e0

    new-array v1, v3, [Ljava/lang/String;

    iput-object v1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->F:[Ljava/lang/String;

    :cond_e0
    iget-object v1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->F:[Ljava/lang/String;

    array-length v1, v1

    iput v1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->G:I

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->F:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->F:[Ljava/lang/String;

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->F:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->F:[Ljava/lang/String;

    goto :goto_b6

    :cond_110
    const-string v0, "exclude"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_132

    const-string v0, "exclude"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "_all_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16b

    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->H:[Ljava/lang/String;

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->H:[Ljava/lang/String;

    const-string v1, "_all_"

    aput-object v1, v0, v3

    :cond_132
    :goto_132
    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->H:[Ljava/lang/String;

    if-eqz v0, :cond_147

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->H:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_147

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->H:[Ljava/lang/String;

    aget-object v0, v0, v3

    const-string v1, "_all_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c4

    :cond_147
    const-string v0, "exclude_prefixes"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    const-string v0, "exclude_prefixes"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "_all_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17a

    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->H:[Ljava/lang/String;

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->H:[Ljava/lang/String;

    const-string v1, "_all_"

    aput-object v1, v0, v3

    goto/16 :goto_c4

    :cond_16b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_132

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->H:[Ljava/lang/String;

    goto :goto_132

    :cond_17a
    iget-object v1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->H:[Ljava/lang/String;

    if-nez v1, :cond_182

    new-array v1, v3, [Ljava/lang/String;

    iput-object v1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->H:[Ljava/lang/String;

    :cond_182
    iget-object v1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->H:[Ljava/lang/String;

    array-length v1, v1

    iput v1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->I:I

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->H:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->H:[Ljava/lang/String;

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->H:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->H:[Ljava/lang/String;

    goto/16 :goto_c4
.end method

.method static synthetic b(Lcom/comscore/streaming/plugin/StreamSensePlugin;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->n:Z

    return p1
.end method

.method private c(Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 13
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

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_139

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_139

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v2, v0

    :goto_1a
    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->H:[Ljava/lang/String;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->H:[Ljava/lang/String;

    array-length v0, v0

    if-ne v0, v3, :cond_35

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->H:[Ljava/lang/String;

    aget-object v0, v0, v4

    const-string v1, "_all_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :cond_34
    return-object v2

    :cond_35
    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->F:[Ljava/lang/String;

    if-eqz v0, :cond_137

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->F:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_137

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->F:[Ljava/lang/String;

    aget-object v0, v0, v4

    const-string v1, "_all_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_137

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->F:[Ljava/lang/String;

    array-length v8, v0

    move v7, v4

    :goto_4e
    if-ge v7, v8, :cond_96

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->F:[Ljava/lang/String;

    aget-object v9, v0, v7

    iget v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->G:I

    if-ltz v0, :cond_88

    iget v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->G:I

    if-lt v7, v0, :cond_88

    move v1, v3

    :goto_5d
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_65
    :goto_65
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_92

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_65

    if-eqz v1, :cond_8a

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_90

    :cond_7f
    move v5, v4

    :goto_80
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v6, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_65

    :cond_88
    move v1, v4

    goto :goto_5d

    :cond_8a
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7f

    :cond_90
    move v5, v3

    goto :goto_80

    :cond_92
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_4e

    :cond_96
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9e
    :goto_9e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ba

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_9e

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9e

    :cond_ba
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_bf
    iget-object v1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->H:[Ljava/lang/String;

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->H:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_34

    iget-object v1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->H:[Ljava/lang/String;

    array-length v7, v1

    move v5, v4

    move-object v6, v0

    :goto_cd
    if-ge v5, v7, :cond_34

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->H:[Ljava/lang/String;

    aget-object v8, v0, v5

    iget v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->I:I

    if-ltz v0, :cond_100

    iget v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->I:I

    if-lt v5, v0, :cond_100

    move v1, v3

    :goto_dc
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_e4
    :goto_e4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_109

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v1, :cond_102

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_e4

    :goto_f8
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v6, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e4

    :cond_100
    move v1, v4

    goto :goto_dc

    :cond_102
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e4

    goto :goto_f8

    :cond_109
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_111
    :goto_111
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_111

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_111

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_111

    :cond_12d
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move-object v6, v1

    goto :goto_cd

    :cond_137
    move-object v0, v6

    goto :goto_bf

    :cond_139
    move-object v2, v0

    goto/16 :goto_1a
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->j:Ljava/lang/Runnable;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getTaskExecutor()Lcom/comscore/utils/task/TaskExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/comscore/utils/task/TaskExecutor;->removeEnqueuedTask(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->j:Ljava/lang/Runnable;

    :cond_12
    return-void
.end method

.method static synthetic c(Lcom/comscore/streaming/plugin/StreamSensePlugin;)V
    .registers 1

    invoke-direct {p0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->c()V

    return-void
.end method

.method static synthetic c(Lcom/comscore/streaming/plugin/StreamSensePlugin;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->v:Z

    return p1
.end method

.method private d()V
    .registers 8

    invoke-direct {p0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->c()V

    iget-boolean v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->t:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->u:Lcom/comscore/streaming/plugin/StreamSensePlayer;

    if-eqz v0, :cond_22

    invoke-direct {p0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->e()Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->j:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getTaskExecutor()Lcom/comscore/utils/task/TaskExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->j:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    iget v5, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->h:I

    int-to-long v5, v5

    invoke-virtual/range {v0 .. v6}, Lcom/comscore/utils/task/TaskExecutor;->execute(Ljava/lang/Runnable;JZJ)Z

    :cond_22
    return-void
.end method

.method static synthetic d(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->w:Z

    return v0
.end method

.method private e()Ljava/lang/Runnable;
    .registers 2

    new-instance v0, Lcom/comscore/streaming/plugin/a;

    invoke-direct {v0, p0}, Lcom/comscore/streaming/plugin/a;-><init>(Lcom/comscore/streaming/plugin/StreamSensePlugin;)V

    return-object v0
.end method

.method static synthetic e(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->k:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->l:Ljava/util/List;

    return-object v0
.end method

.method private f()Z
    .registers 11

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->a(I)J

    move-result-wide v0

    invoke-direct {p0, v4}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->a(I)J

    move-result-wide v6

    cmp-long v0, v0, v6

    if-gez v0, :cond_f

    :goto_e
    return v4

    :cond_f
    iget v5, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->h:I

    const/4 v0, 0x0

    move v1, v2

    move v3, v0

    :goto_14
    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3d

    sget-object v0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->e:[[F

    iget-object v6, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->k:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    aget-object v0, v0, v6

    aget v6, v0, v1

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    long-to-float v0, v8

    mul-float/2addr v0, v6

    add-float/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    :cond_3d
    int-to-float v0, v5

    div-float v0, v3, v0

    iget v1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->f:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_47

    move v2, v4

    :cond_47
    move v4, v2

    goto :goto_e
.end method

.method static synthetic g(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->p:Z

    return v0
.end method

.method static synthetic h(Lcom/comscore/streaming/plugin/StreamSensePlugin;)I
    .registers 2

    iget v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->g:I

    return v0
.end method

.method static synthetic i(Lcom/comscore/streaming/plugin/StreamSensePlugin;)I
    .registers 2

    iget v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->i:I

    return v0
.end method

.method static synthetic j(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Z
    .registers 2

    invoke-direct {p0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->f()Z

    move-result v0

    return v0
.end method

.method static synthetic k(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->r:Z

    return v0
.end method

.method static synthetic l(Lcom/comscore/streaming/plugin/StreamSensePlugin;)J
    .registers 3

    iget-wide v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->m:J

    return-wide v0
.end method

.method static synthetic m(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->o:Ljava/util/List;

    return-object v0
.end method

.method static synthetic n(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->n:Z

    return v0
.end method

.method static synthetic o(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->v:Z

    return v0
.end method

.method static synthetic p(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->s:Z

    return v0
.end method

.method static synthetic q(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->q:Z

    return v0
.end method

.method static synthetic r(Lcom/comscore/streaming/plugin/StreamSensePlugin;)I
    .registers 2

    iget v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->c:I

    return v0
.end method


# virtual methods
.method public addListener(Lcom/comscore/streaming/plugin/StreamSensePluginListener;)V
    .registers 3

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearAllListeners()V
    .registers 2

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clearListener(Lcom/comscore/streaming/plugin/StreamSensePluginListener;)V
    .registers 3

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public getGenericPluginVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayer()Lcom/comscore/streaming/plugin/StreamSensePlayer;
    .registers 2

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->u:Lcom/comscore/streaming/plugin/StreamSensePlayer;

    return-object v0
.end method

.method public log(Ljava/lang/String;)V
    .registers 3

    iget-boolean v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->D:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void
.end method

.method public notify(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;J)V
    .registers 12
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

    const/4 v5, 0x1

    const-wide/16 v2, 0x0

    iget-boolean v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->B:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->C:Z

    if-eqz v0, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    if-nez p2, :cond_13

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_13
    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comscore/streaming/plugin/StreamSensePluginListener;

    invoke-interface {v0, p1, p2}, Lcom/comscore/streaming/plugin/StreamSensePluginListener;->onGetLabels(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;)V

    goto :goto_19

    :cond_29
    cmp-long v0, p3, v2

    if-lez v0, :cond_54

    move-wide v0, p3

    :goto_2e
    cmp-long v4, v0, v2

    if-gez v4, :cond_33

    move-wide v0, v2

    :cond_33
    sget-object v2, Lcom/comscore/streaming/StreamSenseEventType;->END:Lcom/comscore/streaming/StreamSenseEventType;

    if-ne p1, v2, :cond_5f

    iget-boolean v2, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->t:Z

    if-eqz v2, :cond_5f

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->k:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->l:Ljava/util/List;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->n:Z

    iput-boolean v5, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->v:Z

    iput-boolean v5, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->w:Z

    :cond_50
    :goto_50
    invoke-super {p0, p1, p2, v0, v1}, Lcom/comscore/streaming/StreamSense;->notify(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;J)V

    goto :goto_b

    :cond_54
    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->u:Lcom/comscore/streaming/plugin/StreamSensePlayer;

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->u:Lcom/comscore/streaming/plugin/StreamSensePlayer;

    invoke-interface {v0}, Lcom/comscore/streaming/plugin/StreamSensePlayer;->getPosition()J

    move-result-wide v0

    goto :goto_2e

    :cond_5f
    sget-object v2, Lcom/comscore/streaming/StreamSenseEventType;->PLAY:Lcom/comscore/streaming/StreamSenseEventType;

    if-ne p1, v2, :cond_50

    iput-boolean v5, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->x:Z

    goto :goto_50

    :cond_66
    move-wide v0, v2

    goto :goto_2e
.end method

.method public setBitRate(J)V
    .registers 8

    const-string v1, "ns_st_br"

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_10

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_c
    invoke-virtual {p0, v1, v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->setLabel(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    const-string v0, "0"

    goto :goto_c
.end method

.method public setClip(Ljava/util/HashMap;ZLjava/util/HashMap;)Ljava/lang/Boolean;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->setClip(Ljava/util/HashMap;ZLjava/util/HashMap;Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setClip(Ljava/util/HashMap;ZLjava/util/HashMap;Z)Ljava/lang/Boolean;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;Z)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->x:Z

    if-eqz v0, :cond_26

    if-eqz p1, :cond_26

    const-string v0, "ns_st_ci"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->getClip()Lcom/comscore/streaming/StreamSenseClip;

    move-result-object v1

    const-string v2, "ns_st_ci"

    invoke-virtual {v1, v2}, Lcom/comscore/streaming/StreamSenseClip;->getLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eq v0, v1, :cond_26

    sget-object v0, Lcom/comscore/streaming/StreamSenseEventType;->END:Lcom/comscore/streaming/StreamSenseEventType;

    iget-object v1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->u:Lcom/comscore/streaming/plugin/StreamSensePlayer;

    invoke-interface {v1}, Lcom/comscore/streaming/plugin/StreamSensePlayer;->getPosition()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->notify(Lcom/comscore/streaming/StreamSenseEventType;J)V

    iput-boolean v4, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->x:Z

    :cond_26
    if-eqz p3, :cond_40

    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_40

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, p3, v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->a(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, p3, v1}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->b(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1

    :cond_40
    if-eqz p4, :cond_6e

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->z:Ljava/util/HashMap;

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->z:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_9b

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->z:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_58
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->z:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_58

    :cond_6e
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->z:Ljava/util/HashMap;

    if-eqz p1, :cond_9b

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_9b

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_85
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->z:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_85

    :cond_9b
    if-eqz p1, :cond_bb

    const-string v0, "ns_st_skip"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_bb

    const-string v0, "ns_st_skip"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bb

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->B:Z

    :goto_b6
    invoke-super {p0, p1, p2}, Lcom/comscore/streaming/StreamSense;->setClip(Ljava/util/HashMap;Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_bb
    iput-boolean v4, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->B:Z

    goto :goto_b6
.end method

.method public setClipLabel(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->setClipLabel(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setClipLabel(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    if-eqz p3, :cond_1a

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->z:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->A:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->getClip()Lcom/comscore/streaming/StreamSenseClip;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/comscore/streaming/StreamSenseClip;->setLabel(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->z:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->getClip()Lcom/comscore/streaming/StreamSenseClip;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/comscore/streaming/StreamSenseClip;->setLabel(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19
.end method

.method public setDetectEnd(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->s:Z

    return-void
.end method

.method public setDetectPause(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->q:Z

    return-void
.end method

.method public setDetectPlay(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->r:Z

    return-void
.end method

.method public setDetectSeek(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->p:Z

    return-void
.end method

.method public setDuration(J)V
    .registers 10

    invoke-virtual {p0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->getClip()Lcom/comscore/streaming/StreamSenseClip;

    move-result-object v1

    const-string v2, "ns_st_cl"

    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-ltz v0, :cond_14

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_10
    invoke-virtual {v1, v2, v0}, Lcom/comscore/streaming/StreamSenseClip;->setLabel(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14
    const-string v0, "0"

    goto :goto_10
.end method

.method public setEndDetectionErrorMargin(I)V
    .registers 2

    iput p1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->d:I

    return-void
.end method

.method public setIsFullScreen(Z)V
    .registers 4

    const-string v1, "ns_st_ws"

    if-eqz p1, :cond_a

    const-string v0, "full"

    :goto_6
    invoke-virtual {p0, v1, v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->setLabel(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    const-string v0, "norm"

    goto :goto_6
.end method

.method public setLabel(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->setLabel(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setLabel(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0, p3}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->setLabels(Ljava/util/HashMap;Z)V

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

    invoke-virtual {p0, p1, v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->setLabels(Ljava/util/HashMap;Z)V

    return-void
.end method

.method public setLabels(Ljava/util/HashMap;Z)V
    .registers 7
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

    if-eqz p2, :cond_2e

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->A:Ljava/util/HashMap;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->A:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_5b

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->A:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->A:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    :cond_2e
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->A:Ljava/util/HashMap;

    if-eqz p1, :cond_5b

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_5b

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_45
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->A:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_45

    :cond_5b
    invoke-super {p0, p1}, Lcom/comscore/streaming/StreamSense;->setLabels(Ljava/util/HashMap;)V

    return-void
.end method

.method public setMaximumNumberOfEntriesInHistory(I)V
    .registers 3

    const/4 v0, 0x2

    if-lt p1, v0, :cond_9

    const/16 v0, 0xd

    if-gt p1, v0, :cond_9

    iput p1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->i:I

    :cond_9
    return-void
.end method

.method public setMinimumNumberOfTimeUpdateEventsBeforeSensingAnything(I)V
    .registers 3

    const/4 v0, 0x2

    if-lt p1, v0, :cond_9

    const/16 v0, 0xd

    if-gt p1, v0, :cond_9

    iput p1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->g:I

    :cond_9
    return-void
.end method

.method public setPauseDetectionErrorMargin(I)V
    .registers 2

    iput p1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->c:I

    return-void
.end method

.method public setPlayer(Lcom/comscore/streaming/plugin/StreamSensePlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->u:Lcom/comscore/streaming/plugin/StreamSensePlayer;

    return-void
.end method

.method public setPlaylist(Ljava/util/HashMap;)Ljava/lang/Boolean;
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

    invoke-virtual {p0, p1, v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->setPlaylist(Ljava/util/HashMap;Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setPlaylist(Ljava/util/HashMap;Z)Ljava/lang/Boolean;
    .registers 7
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

    if-eqz p2, :cond_2e

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->y:Ljava/util/HashMap;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->y:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_5b

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->y:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->y:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    :cond_2e
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->y:Ljava/util/HashMap;

    if-eqz p1, :cond_5b

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_5b

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_45
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->y:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_45

    :cond_5b
    if-eqz p1, :cond_7b

    const-string v0, "ns_st_skip"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7b

    const-string v0, "ns_st_skip"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->C:Z

    :goto_76
    invoke-super {p0, p1}, Lcom/comscore/streaming/StreamSense;->setPlaylist(Ljava/util/HashMap;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_7b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->C:Z

    goto :goto_76
.end method

.method public setPlaylistLabel(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->setPlaylistLabel(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setPlaylistLabel(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    if-eqz p3, :cond_1d

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1d

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->y:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->A:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->getPlaylist()Lcom/comscore/streaming/StreamSensePlaylist;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/comscore/streaming/StreamSensePlaylist;->setLabel(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    iget-object v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->y:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->getPlaylist()Lcom/comscore/streaming/StreamSensePlaylist;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/comscore/streaming/StreamSensePlaylist;->setLabel(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c
.end method

.method public setPulseSamplingInterval(I)V
    .registers 2

    if-lez p1, :cond_4

    iput p1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->h:I

    :cond_4
    return-void
.end method

.method public setSeekDetectionMinQuotient(F)V
    .registers 3

    const/high16 v0, 0x3f800000

    cmpl-float v0, p1, v0

    if-lez v0, :cond_8

    iput p1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->f:F

    :cond_8
    return-void
.end method

.method public setSmartStateDetection(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->t:Z

    iput-boolean p1, p0, Lcom/comscore/streaming/plugin/StreamSensePlugin;->t:Z

    if-nez v0, :cond_c

    if-eqz p1, :cond_c

    invoke-direct {p0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->d()V

    :cond_b
    :goto_b
    return-void

    :cond_c
    if-eqz v0, :cond_b

    if-nez p1, :cond_b

    invoke-direct {p0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->c()V

    goto :goto_b
.end method

.method public setVideoSize(Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->getClip()Lcom/comscore/streaming/StreamSenseClip;

    move-result-object v0

    const-string v1, "ns_st_cs"

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_12

    :goto_e
    invoke-virtual {v0, v1, p1}, Lcom/comscore/streaming/StreamSenseClip;->setLabel(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    const-string p1, "0"

    goto :goto_e
.end method

.method public setVolume(I)V
    .registers 4

    const-string v1, "ns_st_vo"

    if-ltz p1, :cond_10

    const/16 v0, 0x64

    if-gt p1, v0, :cond_10

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_c
    invoke-virtual {p0, v1, v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->setLabel(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    const-string v0, "100"

    goto :goto_c
.end method
