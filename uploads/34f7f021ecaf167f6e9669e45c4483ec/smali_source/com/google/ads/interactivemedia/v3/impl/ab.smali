.class public Lcom/google/ads/interactivemedia/v3/impl/ab;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/ac$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/ab$e;,
        Lcom/google/ads/interactivemedia/v3/impl/ab$b;,
        Lcom/google/ads/interactivemedia/v3/impl/ab$a;,
        Lcom/google/ads/interactivemedia/v3/impl/ab$d;,
        Lcom/google/ads/interactivemedia/v3/impl/ab$c;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/impl/ab$d;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/impl/ab$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/impl/ab$b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/impl/ab$e;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/impl/al;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroid/content/Context;

.field private final i:Lcom/google/ads/interactivemedia/v3/impl/ac;

.field private j:Lcom/google/ads/interactivemedia/v3/impl/ad;

.field private k:Z

.field private l:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/ads/interactivemedia/v3/impl/aa;",
            ">;"
        }
    .end annotation
.end field

.field private m:J

.field private n:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

.field private o:Ljava/lang/String;

.field private p:Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)V
    .registers 6

    .prologue
    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->a:Ljava/util/Map;

    .line 230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->b:Ljava/util/Map;

    .line 233
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->c:Ljava/util/Set;

    .line 240
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->d:Ljava/util/Map;

    .line 245
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->e:Ljava/util/Map;

    .line 250
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->f:Ljava/util/Map;

    .line 255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->g:Ljava/util/Map;

    .line 261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->k:Z

    .line 262
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->l:Ljava/util/Queue;

    .line 275
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->h:Landroid/content/Context;

    .line 276
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->n:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    .line 277
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/ac;

    invoke-direct {v0, p1, p0}, Lcom/google/ads/interactivemedia/v3/impl/ac;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/ac$a;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->i:Lcom/google/ads/interactivemedia/v3/impl/ac;

    .line 278
    invoke-virtual {p0, p2, p3}, Lcom/google/ads/interactivemedia/v3/impl/ab;->a(Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->o:Ljava/lang/String;

    .line 279
    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/impl/ab;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->h:Landroid/content/Context;

    return-object v0
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/impl/p;Ljava/util/Set;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/impl/p;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 481
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 482
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 483
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/p;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;

    .line 484
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;->getContainer()Landroid/view/ViewGroup;

    move-result-object v4

    if-nez v4, :cond_2b

    .line 485
    const/4 v0, 0x0

    .line 489
    :goto_2a
    return-object v0

    .line 487
    :cond_2b
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;->getContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_33
    move-object v0, v2

    .line 489
    goto :goto_2a
.end method

.method private a(JLjava/lang/String;)V
    .registers 9

    .prologue
    .line 424
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 425
    const-string/jumbo v1, "webViewLoadingTime"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/aa;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->webViewLoaded:Lcom/google/ads/interactivemedia/v3/impl/aa$b;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->csi:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-direct {v1, v2, v3, p3, v0}, Lcom/google/ads/interactivemedia/v3/impl/aa;-><init>(Lcom/google/ads/interactivemedia/v3/impl/aa$b;Lcom/google/ads/interactivemedia/v3/impl/aa$c;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab;->b(Lcom/google/ads/interactivemedia/v3/impl/aa;)V

    .line 427
    return-void
.end method

.method private a(Landroid/view/ViewGroup;Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;)V
    .registers 9

    .prologue
    .line 760
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 761
    const/4 v0, 0x0

    .line 762
    check-cast p4, Lcom/google/ads/interactivemedia/v3/impl/r;

    .line 763
    invoke-virtual {p4}, Lcom/google/ads/interactivemedia/v3/impl/r;->a()Ljava/util/List;

    move-result-object v1

    .line 764
    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->c:[I

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;->type()Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_36

    .line 776
    :goto_19
    invoke-virtual {v0, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 777
    invoke-virtual {p4, p3}, Lcom/google/ads/interactivemedia/v3/impl/r;->a(Ljava/lang/String;)V

    .line 779
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 780
    return-void

    .line 767
    :pswitch_23
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p2, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab;->a(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;Ljava/util/List;)Landroid/view/View;

    move-result-object v0

    goto :goto_19

    .line 770
    :pswitch_2c
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab;->a(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;Ljava/lang/String;Ljava/util/List;)Landroid/view/View;

    move-result-object v0

    goto :goto_19

    .line 764
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_23
        :pswitch_23
        :pswitch_2c
    .end packed-switch
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/impl/aa$c;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/l;)V
    .registers 9

    .prologue
    .line 372
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->b:[I

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_d6

    .line 419
    const-string v0, "other"

    invoke-direct {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/ab;->a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/aa$c;)V

    .line 421
    :goto_10
    return-void

    .line 375
    :pswitch_11
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/aa$a;->a:Lcom/google/ads/interactivemedia/v3/impl/aa$a;

    .line 377
    :try_start_13
    iget-object v1, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->adUiStyle:Ljava/lang/String;

    if-eqz v1, :cond_1d

    .line 378
    iget-object v1, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->adUiStyle:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$a;->valueOf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/aa$a;
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_1c} :catch_d3

    move-result-object v0

    .line 383
    :cond_1d
    :goto_1d
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/ad;

    iget-wide v2, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->adTimeUpdateMs:J

    invoke-direct {v1, v2, v3, v0}, Lcom/google/ads/interactivemedia/v3/impl/ad;-><init>(JLcom/google/ads/interactivemedia/v3/impl/aa$a;)V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->j:Lcom/google/ads/interactivemedia/v3/impl/ad;

    .line 384
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->k:Z

    .line 385
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->m:J

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1, p2}, Lcom/google/ads/interactivemedia/v3/impl/ab;->a(JLjava/lang/String;)V

    .line 388
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/ab;->d()V

    goto :goto_10

    .line 391
    :pswitch_37
    iget-object v0, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->ln:Ljava/lang/String;

    if-eqz v0, :cond_43

    iget-object v0, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->n:Ljava/lang/String;

    if-eqz v0, :cond_43

    iget-object v0, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->m:Ljava/lang/String;

    if-nez v0, :cond_6a

    .line 392
    :cond_43
    const-string v0, "IMASDK"

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid logging message data: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 395
    :cond_6a
    const-string v1, "SDK_LOG:"

    iget-object v0, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->n:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_a4

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 396
    :goto_7c
    iget-object v1, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->ln:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_de

    .line 414
    const-string v2, "IMASDK"

    const-string v3, "Unrecognized log level: "

    iget-object v1, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->ln:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_cd

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_9a
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v1, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 395
    :cond_a4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_7c

    .line 398
    :sswitch_aa
    iget-object v1, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 402
    :sswitch_b1
    iget-object v1, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 405
    :sswitch_b8
    iget-object v1, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 408
    :sswitch_bf
    iget-object v1, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 411
    :sswitch_c6
    iget-object v1, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 414
    :cond_cd
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_9a

    .line 380
    :catch_d3
    move-exception v1

    goto/16 :goto_1d

    .line 372
    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_11
        :pswitch_37
    .end packed-switch

    .line 396
    :sswitch_data_de
    .sparse-switch
        0x44 -> :sswitch_aa
        0x45 -> :sswitch_b1
        0x49 -> :sswitch_b8
        0x53 -> :sswitch_b1
        0x56 -> :sswitch_bf
        0x57 -> :sswitch_c6
    .end sparse-switch
.end method

.method private a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/aa$c;)V
    .registers 7

    .prologue
    .line 678
    const-string v0, "IMASDK"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2b

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Illegal message type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " received for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " channel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 682
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 685
    :cond_8
    :goto_8
    return-object p1

    :cond_9
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Caused by: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_8
.end method

.method private b(Lcom/google/ads/interactivemedia/v3/impl/aa$c;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/l;)V
    .registers 11

    .prologue
    .line 430
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->g:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/p;

    .line 431
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->a:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/impl/ab$d;

    .line 432
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->f:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/impl/al;

    .line 434
    if-eqz v0, :cond_1e

    if-eqz v1, :cond_1e

    if-nez v2, :cond_58

    .line 435
    :cond_1e
    const-string v0, "IMASDK"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3c

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Received displayContainer message: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for invalid session id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_57
    :goto_57
    return-void

    .line 440
    :cond_58
    invoke-interface {v2, p1, p3}, Lcom/google/ads/interactivemedia/v3/impl/al;->b(Lcom/google/ads/interactivemedia/v3/impl/aa$c;Lcom/google/ads/interactivemedia/v3/impl/data/l;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 441
    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->b:[I

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_da

    .line 467
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->displayContainer:Lcom/google/ads/interactivemedia/v3/impl/aa$b;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/ab;->a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/aa$c;)V

    goto :goto_57

    .line 443
    :pswitch_73
    if-eqz p3, :cond_79

    iget-object v2, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->companions:Ljava/util/Map;

    if-nez v2, :cond_83

    .line 444
    :cond_79
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v3, "Display companions message requires companions in data."

    invoke-interface {v1, v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/ab$d;->a(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    goto :goto_57

    .line 449
    :cond_83
    iget-object v2, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->companions:Ljava/util/Map;

    .line 450
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/google/ads/interactivemedia/v3/impl/ab;->a(Lcom/google/ads/interactivemedia/v3/impl/p;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v4

    .line 452
    iget-object v2, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->companions:Ljava/util/Map;

    invoke-interface {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/ab$d;->a(Ljava/util/Map;)V

    .line 454
    if-nez v4, :cond_9e

    .line 455
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v3, "Display requested for invalid companion slot."

    invoke-interface {v1, v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/ab$d;->a(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    goto :goto_57

    .line 457
    :cond_9e
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->p:Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    if-eqz v1, :cond_aa

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->p:Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;->isRenderCompanions()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 458
    :cond_aa
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 459
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->companions:Ljava/util/Map;

    .line 460
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;

    .line 462
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/p;->a()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;

    .line 459
    invoke-direct {p0, v2, v3, p2, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab;->a(Landroid/view/ViewGroup;Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;)V

    goto :goto_b2

    .line 441
    :pswitch_data_da
    .packed-switch 0x3
        :pswitch_73
    .end packed-switch
.end method

.method private c(Lcom/google/ads/interactivemedia/v3/impl/aa$c;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/l;)V
    .registers 6

    .prologue
    .line 473
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->e:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/ab$e;

    .line 474
    if-eqz v0, :cond_f

    .line 475
    iget-object v1, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->translation:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab$e;->a(Lcom/google/ads/interactivemedia/v3/impl/aa$c;Ljava/lang/String;)V

    .line 477
    :cond_f
    return-void
.end method

.method private d()V
    .registers 3

    .prologue
    .line 735
    :goto_0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->k:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 736
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->i:Lcom/google/ads/interactivemedia/v3/impl/ac;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/aa;

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/ac;->a(Lcom/google/ads/interactivemedia/v3/impl/aa;)V

    goto :goto_0

    .line 738
    :cond_1a
    return-void
.end method

.method private d(Lcom/google/ads/interactivemedia/v3/impl/aa$c;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/l;)V
    .registers 10

    .prologue
    .line 493
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->d:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/ab$b;

    .line 494
    if-nez v0, :cond_44

    .line 495
    const-string v0, "IMASDK"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x33

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Received request message: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for invalid session id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :goto_43
    return-void

    .line 498
    :cond_44
    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->b:[I

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_aa

    .line 518
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->adsLoader:Lcom/google/ads/interactivemedia/v3/impl/aa$b;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/ab;->a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/aa$c;)V

    goto :goto_43

    .line 500
    :pswitch_59
    if-nez p3, :cond_65

    .line 501
    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v3, "adsLoaded message did not contain cue points."

    invoke-interface {v0, p2, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/ab$b;->a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    goto :goto_43

    .line 504
    :cond_65
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->j:Lcom/google/ads/interactivemedia/v3/impl/ad;

    iget-object v3, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->adCuePoints:Ljava/util/List;

    iget-object v4, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->internalCuePoints:Ljava/util/SortedSet;

    iget-boolean v5, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->monitorAppLifecycle:Z

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/impl/ab$b;->a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/ad;Ljava/util/List;Ljava/util/SortedSet;Z)V

    goto :goto_43

    .line 509
    :pswitch_72
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->j:Lcom/google/ads/interactivemedia/v3/impl/ad;

    iget-object v2, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->streamId:Ljava/lang/String;

    iget-boolean v3, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->monitorAppLifecycle:Z

    invoke-interface {v0, p2, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/ab$b;->a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/ad;Ljava/lang/String;Z)V

    .line 511
    const-string v1, "IMASDK"

    const-string v2, "Stream initialized with streamId: "

    iget-object v0, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->streamId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_93

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_8f
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    :cond_93
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_8f

    .line 514
    :pswitch_99
    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    iget v2, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->errorCode:I

    iget-object v3, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->errorMessage:Ljava/lang/String;

    iget-object v4, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->innerError:Ljava/lang/String;

    .line 515
    invoke-direct {p0, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/ab;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 514
    invoke-interface {v0, p2, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/ab$b;->a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;ILjava/lang/String;)V

    goto :goto_43

    .line 498
    nop

    :pswitch_data_aa
    .packed-switch 0x4
        :pswitch_59
        :pswitch_72
        :pswitch_99
    .end packed-switch
.end method

.method private e(Lcom/google/ads/interactivemedia/v3/impl/aa$c;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/l;)V
    .registers 8

    .prologue
    .line 523
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->f:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/al;

    .line 524
    if-nez v0, :cond_44

    .line 525
    const-string v0, "IMASDK"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x38

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Received videoDisplay message: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for invalid session id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :goto_43
    return-void

    .line 528
    :cond_44
    invoke-interface {v0, p1, p3}, Lcom/google/ads/interactivemedia/v3/impl/al;->a(Lcom/google/ads/interactivemedia/v3/impl/aa$c;Lcom/google/ads/interactivemedia/v3/impl/data/l;)Z

    goto :goto_43
.end method

.method private f(Lcom/google/ads/interactivemedia/v3/impl/aa$c;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/l;)V
    .registers 15

    .prologue
    const/4 v2, 0x0

    .line 532
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/ab$d;

    .line 533
    if-nez v0, :cond_45

    .line 534
    const-string v0, "IMASDK"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x33

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Received manager message: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for invalid session id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :goto_44
    :pswitch_44
    return-void

    .line 539
    :cond_45
    if-eqz p3, :cond_1dc

    iget-object v1, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->adData:Lcom/google/ads/interactivemedia/v3/impl/data/b;

    if-eqz v1, :cond_1dc

    .line 540
    iget-object v1, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->adData:Lcom/google/ads/interactivemedia/v3/impl/data/b;

    .line 543
    :goto_4d
    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->b:[I

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1e0

    .line 646
    :pswitch_58
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->adsManager:Lcom/google/ads/interactivemedia/v3/impl/aa$b;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/ab;->a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/aa$c;)V

    goto :goto_44

    .line 549
    :pswitch_62
    if-eqz v1, :cond_6f

    .line 550
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/ab$c;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->LOADED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {v2, v3, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab$c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    invoke-interface {v0, v2}, Lcom/google/ads/interactivemedia/v3/impl/ab$d;->a(Lcom/google/ads/interactivemedia/v3/impl/ab$c;)V

    goto :goto_44

    .line 552
    :cond_6f
    const-string v1, "IMASDK"

    const-string v2, "Ad loaded message requires adData"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v3, "Ad loaded message did not contain adData."

    invoke-interface {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/ab$d;->a(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    goto :goto_44

    .line 558
    :pswitch_80
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/ab$c;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->CONTENT_PAUSE_REQUESTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {v1, v3, v2}, Lcom/google/ads/interactivemedia/v3/impl/ab$c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab$d;->a(Lcom/google/ads/interactivemedia/v3/impl/ab$c;)V

    goto :goto_44

    .line 561
    :pswitch_8b
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/ab$c;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->CONTENT_RESUME_REQUESTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {v1, v3, v2}, Lcom/google/ads/interactivemedia/v3/impl/ab$c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab$d;->a(Lcom/google/ads/interactivemedia/v3/impl/ab$c;)V

    goto :goto_44

    .line 564
    :pswitch_96
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/ab$c;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {v2, v3, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab$c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    invoke-interface {v0, v2}, Lcom/google/ads/interactivemedia/v3/impl/ab$d;->a(Lcom/google/ads/interactivemedia/v3/impl/ab$c;)V

    goto :goto_44

    .line 567
    :pswitch_a1
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/ab$c;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ALL_ADS_COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {v1, v3, v2}, Lcom/google/ads/interactivemedia/v3/impl/ab$c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab$d;->a(Lcom/google/ads/interactivemedia/v3/impl/ab$c;)V

    goto :goto_44

    .line 570
    :pswitch_ac
    new-instance v7, Lcom/google/ads/interactivemedia/v3/impl/ab$c;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->CUEPOINTS_CHANGED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {v7, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/ab$c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    .line 572
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Lcom/google/ads/interactivemedia/v3/impl/ab$c;->d:Ljava/util/List;

    .line 573
    iget-object v1, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->cuepoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_c0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/google/ads/interactivemedia/v3/impl/data/j;

    .line 574
    iget-object v9, v7, Lcom/google/ads/interactivemedia/v3/impl/ab$c;->d:Ljava/util/List;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/v;

    .line 575
    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/impl/data/j;->start()D

    move-result-wide v2

    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/impl/data/j;->end()D

    move-result-wide v4

    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/impl/data/j;->played()Z

    move-result v6

    invoke-direct/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/impl/v;-><init>(DDZ)V

    .line 574
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c0

    .line 577
    :cond_e4
    invoke-interface {v0, v7}, Lcom/google/ads/interactivemedia/v3/impl/ab$d;->a(Lcom/google/ads/interactivemedia/v3/impl/ab$c;)V

    goto/16 :goto_44

    .line 581
    :pswitch_e9
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/ab$c;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->SKIPPED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {v2, v3, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab$c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    invoke-interface {v0, v2}, Lcom/google/ads/interactivemedia/v3/impl/ab$d;->a(Lcom/google/ads/interactivemedia/v3/impl/ab$c;)V

    goto/16 :goto_44

    .line 584
    :pswitch_f5
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/ab$c;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->STARTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {v2, v3, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab$c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    invoke-interface {v0, v2}, Lcom/google/ads/interactivemedia/v3/impl/ab$d;->a(Lcom/google/ads/interactivemedia/v3/impl/ab$c;)V

    goto/16 :goto_44

    .line 587
    :pswitch_101
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/ab$c;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->PAUSED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {v2, v3, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab$c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    invoke-interface {v0, v2}, Lcom/google/ads/interactivemedia/v3/impl/ab$d;->a(Lcom/google/ads/interactivemedia/v3/impl/ab$c;)V

    goto/16 :goto_44

    .line 590
    :pswitch_10d
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/ab$c;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->RESUMED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {v2, v3, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab$c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    invoke-interface {v0, v2}, Lcom/google/ads/interactivemedia/v3/impl/ab$d;->a(Lcom/google/ads/interactivemedia/v3/impl/ab$c;)V

    goto/16 :goto_44

    .line 593
    :pswitch_119
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/ab$c;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->FIRST_QUARTILE:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {v2, v3, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab$c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    invoke-interface {v0, v2}, Lcom/google/ads/interactivemedia/v3/impl/ab$d;->a(Lcom/google/ads/interactivemedia/v3/impl/ab$c;)V

    goto/16 :goto_44

    .line 596
    :pswitch_125
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/ab$c;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->MIDPOINT:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {v2, v3, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab$c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    invoke-interface {v0, v2}, Lcom/google/ads/interactivemedia/v3/impl/ab$d;->a(Lcom/google/ads/interactivemedia/v3/impl/ab$c;)V

    goto/16 :goto_44

    .line 599
    :pswitch_131
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/ab$c;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->THIRD_QUARTILE:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {v2, v3, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab$c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    invoke-interface {v0, v2}, Lcom/google/ads/interactivemedia/v3/impl/ab$d;->a(Lcom/google/ads/interactivemedia/v3/impl/ab$c;)V

    goto/16 :goto_44

    .line 602
    :pswitch_13d
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/ab$c;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->CLICKED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {v2, v3, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab$c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    invoke-interface {v0, v2}, Lcom/google/ads/interactivemedia/v3/impl/ab$d;->a(Lcom/google/ads/interactivemedia/v3/impl/ab$c;)V

    goto/16 :goto_44

    .line 605
    :pswitch_149
    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->PLAY:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    iget v2, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->errorCode:I

    iget-object v3, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->errorMessage:Ljava/lang/String;

    iget-object v4, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->innerError:Ljava/lang/String;

    .line 606
    invoke-direct {p0, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/ab;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 605
    invoke-interface {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/ab$d;->a(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;ILjava/lang/String;)V

    goto/16 :goto_44

    .line 609
    :pswitch_15a
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/ab$c;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->LOG:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {v2, v3, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab$c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    .line 610
    iget-object v1, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->logData:Lcom/google/ads/interactivemedia/v3/impl/data/l$a;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/data/l$a;->constructMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v2, Lcom/google/ads/interactivemedia/v3/impl/ab$c;->c:Ljava/util/Map;

    .line 611
    invoke-interface {v0, v2}, Lcom/google/ads/interactivemedia/v3/impl/ab$d;->a(Lcom/google/ads/interactivemedia/v3/impl/ab$c;)V

    goto/16 :goto_44

    .line 618
    :pswitch_16e
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/ab$c;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->TAPPED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {v2, v3, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab$c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    invoke-interface {v0, v2}, Lcom/google/ads/interactivemedia/v3/impl/ab$d;->a(Lcom/google/ads/interactivemedia/v3/impl/ab$c;)V

    goto/16 :goto_44

    .line 621
    :pswitch_17a
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/ab$c;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ICON_TAPPED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {v1, v3, v2}, Lcom/google/ads/interactivemedia/v3/impl/ab$c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    .line 622
    iget-object v2, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->clickThroughUrl:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/ads/interactivemedia/v3/impl/ab$c;->f:Ljava/lang/String;

    .line 623
    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab$d;->a(Lcom/google/ads/interactivemedia/v3/impl/ab$c;)V

    goto/16 :goto_44

    .line 626
    :pswitch_18a
    new-instance v10, Lcom/google/ads/interactivemedia/v3/impl/ab$c;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_PROGRESS:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {v10, v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab$c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    .line 628
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/f;

    iget-wide v2, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->currentTime:D

    iget-wide v4, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->duration:D

    iget v6, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->adPosition:I

    iget v7, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->totalAds:I

    iget-wide v8, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->adBreakDuration:D

    invoke-direct/range {v1 .. v9}, Lcom/google/ads/interactivemedia/v3/impl/f;-><init>(DDIID)V

    iput-object v1, v10, Lcom/google/ads/interactivemedia/v3/impl/ab$c;->e:Lcom/google/ads/interactivemedia/v3/api/AdProgressInfo;

    .line 630
    invoke-interface {v0, v10}, Lcom/google/ads/interactivemedia/v3/impl/ab$d;->a(Lcom/google/ads/interactivemedia/v3/impl/ab$c;)V

    goto/16 :goto_44

    .line 633
    :pswitch_1a7
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/ab$c;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_BREAK_READY:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {v1, v3, v2}, Lcom/google/ads/interactivemedia/v3/impl/ab$c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    .line 635
    new-instance v2, Landroid/support/v4/util/ArrayMap;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    iput-object v2, v1, Lcom/google/ads/interactivemedia/v3/impl/ab$c;->c:Ljava/util/Map;

    .line 636
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/impl/ab$c;->c:Ljava/util/Map;

    const-string v3, "adBreakTime"

    iget-object v4, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->adBreakTime:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab$d;->a(Lcom/google/ads/interactivemedia/v3/impl/ab$c;)V

    goto/16 :goto_44

    .line 640
    :pswitch_1c4
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/ab$c;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_BREAK_STARTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {v2, v3, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab$c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    invoke-interface {v0, v2}, Lcom/google/ads/interactivemedia/v3/impl/ab$d;->a(Lcom/google/ads/interactivemedia/v3/impl/ab$c;)V

    goto/16 :goto_44

    .line 643
    :pswitch_1d0
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/ab$c;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_BREAK_ENDED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {v2, v3, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab$c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    invoke-interface {v0, v2}, Lcom/google/ads/interactivemedia/v3/impl/ab$d;->a(Lcom/google/ads/interactivemedia/v3/impl/ab$c;)V

    goto/16 :goto_44

    :cond_1dc
    move-object v1, v2

    goto/16 :goto_4d

    .line 543
    nop

    :pswitch_data_1e0
    .packed-switch 0x2
        :pswitch_15a
        :pswitch_58
        :pswitch_58
        :pswitch_58
        :pswitch_149
        :pswitch_44
        :pswitch_62
        :pswitch_80
        :pswitch_8b
        :pswitch_96
        :pswitch_a1
        :pswitch_ac
        :pswitch_e9
        :pswitch_f5
        :pswitch_101
        :pswitch_10d
        :pswitch_119
        :pswitch_125
        :pswitch_131
        :pswitch_13d
        :pswitch_44
        :pswitch_44
        :pswitch_16e
        :pswitch_17a
        :pswitch_18a
        :pswitch_1a7
        :pswitch_1c4
        :pswitch_1d0
    .end packed-switch
.end method

.method private g(Lcom/google/ads/interactivemedia/v3/impl/aa$c;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/l;)V
    .registers 8

    .prologue
    .line 651
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->c:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 675
    :goto_8
    return-void

    .line 655
    :cond_9
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/ab$a;

    .line 656
    if-nez v0, :cond_4d

    .line 657
    const-string v0, "IMASDK"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x33

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Received monitor message: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for invalid session id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 660
    :cond_4d
    if-nez p3, :cond_90

    .line 661
    const-string v0, "IMASDK"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x38

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Received monitor message: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for session id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with no data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 665
    :cond_90
    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->b:[I

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_ba

    .line 673
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->activityMonitor:Lcom/google/ads/interactivemedia/v3/impl/aa$b;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/ab;->a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/aa$c;)V

    goto/16 :goto_8

    .line 667
    :pswitch_a6
    iget-object v1, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->queryId:Ljava/lang/String;

    iget-object v2, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->eventId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/ab$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 670
    :pswitch_af
    iget-object v1, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->queryId:Ljava/lang/String;

    iget-object v2, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->eventId:Ljava/lang/String;

    iget-object v3, p3, Lcom/google/ads/interactivemedia/v3/impl/data/l;->vastEvent:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/ab$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 665
    :pswitch_data_ba
    .packed-switch 0x1e
        :pswitch_a6
        :pswitch_af
    .end packed-switch
.end method


# virtual methods
.method protected a(Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;)Landroid/net/Uri;
    .registers 7

    .prologue
    .line 170
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "sdk_version"

    const-string v2, "a.3.5.2"

    .line 171
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "hl"

    .line 172
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "wvr"

    const-string v2, "2"

    .line 174
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "app"

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->h:Landroid/content/Context;

    .line 176
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->n:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    if-eqz v1, :cond_5a

    .line 180
    new-instance v1, Lcom/google/ads/interactivemedia/v3/b/g;

    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/b/g;-><init>()V

    new-instance v2, Lcom/google/b/c;

    invoke-direct {v2}, Lcom/google/b/c;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/b/g;->a(Lcom/google/ads/interactivemedia/v3/b/w;)Lcom/google/ads/interactivemedia/v3/b/g;

    move-result-object v1

    new-instance v2, Lcom/google/b/b;

    invoke-direct {v2}, Lcom/google/b/b;-><init>()V

    .line 181
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/b/g;->a(Lcom/google/ads/interactivemedia/v3/b/b;)Lcom/google/ads/interactivemedia/v3/b/g;

    move-result-object v1

    .line 182
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/b/g;->a()Lcom/google/ads/interactivemedia/v3/b/f;

    move-result-object v1

    .line 183
    const-string/jumbo v2, "tcnfp"

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->n:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    .line 184
    invoke-virtual {v1, v3}, Lcom/google/ads/interactivemedia/v3/b/f;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 186
    :cond_5a
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;Ljava/lang/String;Ljava/util/List;)Landroid/view/View;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot$ClickListener;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 804
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/z;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/impl/z;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/ab;Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;Ljava/lang/String;Ljava/util/List;)V

    .line 806
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/z;->a()V

    .line 807
    return-object v0
.end method

.method protected a(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;Ljava/util/List;)Landroid/view/View;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;",
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot$ClickListener;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 796
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/s;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/google/ads/interactivemedia/v3/impl/s;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/ab;Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;Ljava/util/List;)V

    return-object v0
.end method

.method public a()V
    .registers 3

    .prologue
    .line 303
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->m:J

    .line 304
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->i:Lcom/google/ads/interactivemedia/v3/impl/ac;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/ac;->a(Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)V
    .registers 2

    .prologue
    .line 309
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->p:Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    .line 310
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 720
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->g:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/impl/aa;)V
    .registers 7

    .prologue
    .line 338
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/aa;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/data/l;

    .line 340
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/aa;->d()Ljava/lang/String;

    move-result-object v1

    .line 341
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/aa;->b()Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    move-result-object v2

    .line 342
    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->a:[I

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/aa;->a()Lcom/google/ads/interactivemedia/v3/impl/aa$b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_64

    .line 366
    const-string v0, "IMASDK"

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/aa;->a()Lcom/google/ads/interactivemedia/v3/impl/aa$b;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x19

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown message channel: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :goto_47
    return-void

    .line 344
    :pswitch_48
    invoke-direct {p0, v2, v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/ab;->f(Lcom/google/ads/interactivemedia/v3/impl/aa$c;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/l;)V

    goto :goto_47

    .line 347
    :pswitch_4c
    invoke-direct {p0, v2, v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/ab;->g(Lcom/google/ads/interactivemedia/v3/impl/aa$c;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/l;)V

    goto :goto_47

    .line 350
    :pswitch_50
    invoke-direct {p0, v2, v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/ab;->e(Lcom/google/ads/interactivemedia/v3/impl/aa$c;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/l;)V

    goto :goto_47

    .line 353
    :pswitch_54
    invoke-direct {p0, v2, v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/ab;->d(Lcom/google/ads/interactivemedia/v3/impl/aa$c;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/l;)V

    goto :goto_47

    .line 356
    :pswitch_58
    invoke-direct {p0, v2, v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/ab;->b(Lcom/google/ads/interactivemedia/v3/impl/aa$c;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/l;)V

    goto :goto_47

    .line 359
    :pswitch_5c
    invoke-direct {p0, v2, v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/ab;->c(Lcom/google/ads/interactivemedia/v3/impl/aa$c;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/l;)V

    goto :goto_47

    .line 363
    :pswitch_60
    invoke-direct {p0, v2, v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/ab;->a(Lcom/google/ads/interactivemedia/v3/impl/aa$c;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/l;)V

    goto :goto_47

    .line 342
    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_48
        :pswitch_4c
        :pswitch_50
        :pswitch_54
        :pswitch_58
        :pswitch_5c
        :pswitch_60
        :pswitch_60
    .end packed-switch
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/impl/ab$a;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 707
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->b:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/impl/ab$b;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 689
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->d:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/impl/ab$d;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 703
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->a:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/impl/ab$e;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 693
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->e:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/impl/al;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 716
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->f:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 699
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 785
    invoke-static {p1}, Lcom/google/c/a/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-static {p2}, Lcom/google/c/a/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 786
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 787
    const-string v1, "companionId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/aa;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->displayContainer:Lcom/google/ads/interactivemedia/v3/impl/aa$b;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->companionView:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-direct {v1, v2, v3, p2, v0}, Lcom/google/ads/interactivemedia/v3/impl/aa;-><init>(Lcom/google/ads/interactivemedia/v3/impl/aa$b;Lcom/google/ads/interactivemedia/v3/impl/aa$c;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab;->b(Lcom/google/ads/interactivemedia/v3/impl/aa;)V

    .line 792
    :cond_22
    return-void
.end method

.method public b()Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->i:Lcom/google/ads/interactivemedia/v3/impl/ac;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/ac;->a()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/ads/interactivemedia/v3/impl/aa;)V
    .registers 3

    .prologue
    .line 730
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->l:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 731
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/ab;->d()V

    .line 732
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 711
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 713
    return-void
.end method

.method public c()Lcom/google/ads/interactivemedia/v3/impl/ad;
    .registers 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->j:Lcom/google/ads/interactivemedia/v3/impl/ad;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 724
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 741
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_13

    .line 744
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/ab$1;

    invoke-direct {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/ab$1;-><init>(Lcom/google/ads/interactivemedia/v3/impl/ab;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 754
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 756
    :cond_13
    return-void
.end method
