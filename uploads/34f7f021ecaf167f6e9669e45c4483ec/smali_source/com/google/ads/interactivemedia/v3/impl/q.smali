.class abstract Lcom/google/ads/interactivemedia/v3/impl/q;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/BaseManager;
.implements Lcom/google/ads/interactivemedia/v3/impl/ab$d;


# instance fields
.field protected final a:Lcom/google/ads/interactivemedia/v3/impl/ab;

.field protected final b:Ljava/lang/String;

.field protected c:Lcom/google/ads/interactivemedia/v3/impl/al;

.field protected d:Lcom/google/ads/interactivemedia/v3/impl/t;

.field protected e:Lcom/google/ads/interactivemedia/v3/impl/u;

.field protected f:Z

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/ads/interactivemedia/v3/impl/w;

.field private i:Lcom/google/ads/interactivemedia/v3/impl/data/b;

.field private j:Lcom/google/ads/interactivemedia/v3/impl/a;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/ab;Lcom/google/ads/interactivemedia/v3/impl/ad;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Lcom/google/ads/interactivemedia/v3/impl/a;Landroid/content/Context;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/api/AdError;
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/q;->f:Z

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/q;->g:Ljava/util/List;

    .line 46
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/w;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/w;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/q;->h:Lcom/google/ads/interactivemedia/v3/impl/w;

    .line 70
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/q;->b:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/q;->a:Lcom/google/ads/interactivemedia/v3/impl/ab;

    .line 72
    if-eqz p5, :cond_2b

    .line 73
    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/impl/q;->j:Lcom/google/ads/interactivemedia/v3/impl/a;

    .line 77
    :goto_1d
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/q;->j:Lcom/google/ads/interactivemedia/v3/impl/a;

    invoke-virtual {v0, p7}, Lcom/google/ads/interactivemedia/v3/impl/a;->a(Z)V

    .line 79
    invoke-virtual {p2, p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/ab;->a(Lcom/google/ads/interactivemedia/v3/impl/ab$d;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/q;->j:Lcom/google/ads/interactivemedia/v3/impl/a;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/a;->a()V

    .line 81
    return-void

    .line 75
    :cond_2b
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/a;

    invoke-interface {p4}, Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;->getAdContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/google/ads/interactivemedia/v3/impl/a;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/ab;Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/q;->j:Lcom/google/ads/interactivemedia/v3/impl/a;

    goto :goto_1d
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;)V
    .registers 3

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/q;->a(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Ljava/util/Map;)V

    .line 198
    return-void
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/d;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/q;->i:Lcom/google/ads/interactivemedia/v3/impl/data/b;

    invoke-direct {v1, p1, v0, p2}, Lcom/google/ads/interactivemedia/v3/impl/d;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/api/Ad;Ljava/util/Map;)V

    .line 203
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/q;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;

    .line 204
    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;->onAdEvent(Lcom/google/ads/interactivemedia/v3/api/AdEvent;)V

    goto :goto_d

    .line 206
    :cond_1d
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/q;->c:Lcom/google/ads/interactivemedia/v3/impl/al;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/impl/al;->e()V

    .line 181
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/q;->e:Lcom/google/ads/interactivemedia/v3/impl/u;

    if-eqz v0, :cond_e

    .line 182
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/q;->e:Lcom/google/ads/interactivemedia/v3/impl/u;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/u;->c()V

    .line 186
    :cond_e
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/q;->j:Lcom/google/ads/interactivemedia/v3/impl/a;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/a;->b()V

    .line 187
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/q;->a:Lcom/google/ads/interactivemedia/v3/impl/ab;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/q;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab;->c(Ljava/lang/String;)V

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/q;->i:Lcom/google/ads/interactivemedia/v3/impl/data/b;

    .line 189
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 283
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/c;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/api/AdError;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    .line 284
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/q;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    .line 285
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 289
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/c;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/api/AdError;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    .line 290
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/q;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    .line 291
    return-void
.end method

.method a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V
    .registers 3

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/q;->h:Lcom/google/ads/interactivemedia/v3/impl/w;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/w;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    .line 211
    return-void
.end method

.method protected a(Lcom/google/ads/interactivemedia/v3/impl/aa$c;)V
    .registers 6

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/q;->a:Lcom/google/ads/interactivemedia/v3/impl/ab;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/aa;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->adsManager:Lcom/google/ads/interactivemedia/v3/impl/aa$b;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/q;->b:Ljava/lang/String;

    invoke-direct {v1, v2, p1, v3}, Lcom/google/ads/interactivemedia/v3/impl/aa;-><init>(Lcom/google/ads/interactivemedia/v3/impl/aa$b;Lcom/google/ads/interactivemedia/v3/impl/aa$c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab;->b(Lcom/google/ads/interactivemedia/v3/impl/aa;)V

    .line 193
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/impl/ab$c;)V
    .registers 6

    .prologue
    .line 225
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/impl/ab$c;->a:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 226
    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/impl/ab$c;->b:Lcom/google/ads/interactivemedia/v3/impl/data/b;

    .line 228
    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/q$1;->a:[I

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_7c

    .line 270
    :cond_f
    :goto_f
    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/impl/ab$c;->c:Ljava/util/Map;

    if-eqz v1, :cond_78

    .line 271
    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/impl/ab$c;->c:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/q;->a(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Ljava/util/Map;)V

    .line 276
    :goto_18
    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    if-eq v0, v1, :cond_20

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->SKIPPED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    if-ne v0, v1, :cond_24

    .line 277
    :cond_20
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/q;->a(Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    .line 279
    :cond_24
    return-void

    .line 230
    :pswitch_25
    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/impl/q;->a(Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    goto :goto_f

    .line 233
    :pswitch_29
    if-eqz v1, :cond_2e

    .line 234
    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/impl/q;->a(Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    .line 236
    :cond_2e
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/q;->c:Lcom/google/ads/interactivemedia/v3/impl/al;

    invoke-interface {v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/al;->a(Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    goto :goto_f

    .line 241
    :pswitch_34
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/q;->c:Lcom/google/ads/interactivemedia/v3/impl/al;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/impl/al;->b()V

    goto :goto_f

    .line 244
    :pswitch_3a
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/q;->e:Lcom/google/ads/interactivemedia/v3/impl/u;

    if-eqz v1, :cond_43

    .line 245
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/q;->e:Lcom/google/ads/interactivemedia/v3/impl/u;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/u;->c()V

    .line 247
    :cond_43
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/q;->j:Lcom/google/ads/interactivemedia/v3/impl/a;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/a;->c()V

    goto :goto_f

    .line 250
    :pswitch_49
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/q;->e:Lcom/google/ads/interactivemedia/v3/impl/u;

    if-eqz v1, :cond_52

    .line 251
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/q;->e:Lcom/google/ads/interactivemedia/v3/impl/u;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/u;->b()V

    .line 253
    :cond_52
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/q;->j:Lcom/google/ads/interactivemedia/v3/impl/a;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/a;->d()V

    goto :goto_f

    .line 256
    :pswitch_58
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/data/b;->getClickThruUrl()Ljava/lang/String;

    move-result-object v1

    .line 257
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/c/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 258
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/q;->a:Lcom/google/ads/interactivemedia/v3/impl/ab;

    invoke-virtual {v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab;->d(Ljava/lang/String;)V

    goto :goto_f

    .line 262
    :pswitch_68
    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/impl/ab$c;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/c/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 263
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/q;->a:Lcom/google/ads/interactivemedia/v3/impl/ab;

    iget-object v2, p1, Lcom/google/ads/interactivemedia/v3/impl/ab$c;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/ab;->d(Ljava/lang/String;)V

    goto :goto_f

    .line 273
    :cond_78
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/q;->a(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;)V

    goto :goto_18

    .line 228
    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_25
        :pswitch_29
        :pswitch_34
        :pswitch_34
        :pswitch_3a
        :pswitch_49
        :pswitch_58
        :pswitch_68
    .end packed-switch
.end method

.method a(Lcom/google/ads/interactivemedia/v3/impl/data/b;)V
    .registers 2

    .prologue
    .line 214
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/q;->i:Lcom/google/ads/interactivemedia/v3/impl/data/b;

    .line 215
    return-void
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
    .line 296
    return-void
.end method

.method public addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V
    .registers 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/q;->h:Lcom/google/ads/interactivemedia/v3/impl/w;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/w;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 150
    return-void
.end method

.method public addAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V
    .registers 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/q;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    return-void
.end method

.method public destroy()V
    .registers 2

    .prologue
    .line 132
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->destroy:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/q;->a(Lcom/google/ads/interactivemedia/v3/impl/aa$c;)V

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/q;->f:Z

    .line 134
    return-void
.end method

.method public getAdProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;
    .registers 2

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/q;->f:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->VIDEO_TIME_NOT_READY:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    :goto_6
    return-object v0

    .line 124
    :cond_7
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/q;->c:Lcom/google/ads/interactivemedia/v3/impl/al;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/impl/al;->getAdProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    move-result-object v0

    goto :goto_6
.end method

.method public getCurrentAd()Lcom/google/ads/interactivemedia/v3/api/Ad;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/q;->i:Lcom/google/ads/interactivemedia/v3/impl/data/b;

    return-object v0
.end method

.method public init()V
    .registers 2

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/q;->init(Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)V

    .line 89
    return-void
.end method

.method public init(Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)V
    .registers 8

    .prologue
    .line 96
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 97
    const-string v2, "adsRenderingSettings"

    if-nez p1, :cond_76

    .line 98
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/l;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/l;-><init>()V

    .line 97
    :goto_e
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/q;->e:Lcom/google/ads/interactivemedia/v3/impl/u;

    if-eqz v0, :cond_4b

    .line 101
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/q;->e:Lcom/google/ads/interactivemedia/v3/impl/u;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/u;->a()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    move-result-object v0

    .line 102
    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->VIDEO_TIME_NOT_READY:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4b

    .line 103
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->getCurrentTime()F

    move-result v0

    float-to-double v2, v0

    .line 104
    const-string v0, "IMASDK"

    const/16 v4, 0x44

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "AdsManager.init -> Setting contentStartTime "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v0, "contentStartTime"

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_4b
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/q;->isCustomPlaybackUsed()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 110
    const-string v0, "sdkOwnedPlayer"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_5b
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/q;->c:Lcom/google/ads/interactivemedia/v3/impl/al;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/impl/al;->a()V

    .line 114
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/q;->a:Lcom/google/ads/interactivemedia/v3/impl/ab;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/ab;->a(Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)V

    .line 115
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/q;->a:Lcom/google/ads/interactivemedia/v3/impl/ab;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/aa;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->adsManager:Lcom/google/ads/interactivemedia/v3/impl/aa$b;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->init:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/impl/q;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/google/ads/interactivemedia/v3/impl/aa;-><init>(Lcom/google/ads/interactivemedia/v3/impl/aa$b;Lcom/google/ads/interactivemedia/v3/impl/aa$c;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/impl/ab;->b(Lcom/google/ads/interactivemedia/v3/impl/aa;)V

    .line 116
    return-void

    :cond_76
    move-object v0, p1

    .line 98
    goto :goto_e
.end method

.method public abstract isCustomPlaybackUsed()Z
.end method

.method public removeAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V
    .registers 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/q;->h:Lcom/google/ads/interactivemedia/v3/impl/w;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/w;->b(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 158
    return-void
.end method

.method public removeAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V
    .registers 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/q;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 174
    return-void
.end method
