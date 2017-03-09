.class public Lcom/google/ads/interactivemedia/v3/impl/ae;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/al;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

.field private final b:Lcom/google/ads/interactivemedia/v3/impl/g;

.field private final c:Lcom/google/ads/interactivemedia/v3/impl/i;

.field private final d:Lcom/google/ads/interactivemedia/v3/impl/k;

.field private final e:Lcom/google/ads/interactivemedia/v3/impl/e;

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/ad;Lcom/google/ads/interactivemedia/v3/impl/ab;Lcom/google/ads/interactivemedia/v3/impl/i;Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;Landroid/content/Context;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/api/AdError;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 36
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, v6

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/ads/interactivemedia/v3/impl/ae;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/ad;Lcom/google/ads/interactivemedia/v3/impl/ab;Lcom/google/ads/interactivemedia/v3/impl/i;Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;Lcom/google/ads/interactivemedia/v3/impl/g;Lcom/google/ads/interactivemedia/v3/impl/k;Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/ad;Lcom/google/ads/interactivemedia/v3/impl/ab;Lcom/google/ads/interactivemedia/v3/impl/i;Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;Lcom/google/ads/interactivemedia/v3/impl/g;Lcom/google/ads/interactivemedia/v3/impl/k;Landroid/content/Context;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/api/AdError;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-interface {p5}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->getPlayer()Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 55
    invoke-interface {p5}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->getPlayer()Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->f:Z

    .line 66
    :goto_12
    if-eqz p6, :cond_47

    .line 67
    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->b:Lcom/google/ads/interactivemedia/v3/impl/g;

    .line 73
    :goto_16
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->c:Lcom/google/ads/interactivemedia/v3/impl/i;

    .line 74
    if-eqz p7, :cond_55

    .line 75
    iput-object p7, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->d:Lcom/google/ads/interactivemedia/v3/impl/k;

    .line 80
    :goto_1c
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/e;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->b:Lcom/google/ads/interactivemedia/v3/impl/g;

    invoke-direct {v0, p3, p1, v1}, Lcom/google/ads/interactivemedia/v3/impl/e;-><init>(Lcom/google/ads/interactivemedia/v3/impl/ab;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/g;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->e:Lcom/google/ads/interactivemedia/v3/impl/e;

    .line 81
    return-void

    .line 57
    :cond_26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3b

    .line 58
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/x;

    .line 59
    invoke-interface {p5}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->getAdContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-direct {v0, p8, v1}, Lcom/google/ads/interactivemedia/v3/impl/x;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->f:Z

    goto :goto_12

    .line 62
    :cond_3b
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/AdError;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INVALID_ARGUMENTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v3, "Ad Player was not provided. SDK-owned ad playback requires API 16+"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_47
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/g;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    .line 71
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/impl/ad;->a()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/g;-><init>(Lcom/google/ads/interactivemedia/v3/api/player/AdProgressProvider;J)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->b:Lcom/google/ads/interactivemedia/v3/impl/g;

    goto :goto_16

    .line 77
    :cond_55
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/k;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/impl/k;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/ad;Lcom/google/ads/interactivemedia/v3/impl/ab;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->d:Lcom/google/ads/interactivemedia/v3/impl/k;

    goto :goto_1c
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->b:Lcom/google/ads/interactivemedia/v3/impl/g;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->d:Lcom/google/ads/interactivemedia/v3/impl/k;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/g;->a(Lcom/google/ads/interactivemedia/v3/impl/af$b;)V

    .line 86
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->b:Lcom/google/ads/interactivemedia/v3/impl/g;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->e:Lcom/google/ads/interactivemedia/v3/impl/e;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/g;->a(Lcom/google/ads/interactivemedia/v3/impl/af$b;)V

    .line 87
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/impl/data/b;)V
    .registers 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->d:Lcom/google/ads/interactivemedia/v3/impl/k;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/k;->a(Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    .line 152
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/impl/aa$c;Lcom/google/ads/interactivemedia/v3/impl/data/l;)Z
    .registers 9

    .prologue
    .line 96
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ae$1;->a:[I

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_50

    .line 123
    const/4 v0, 0x0

    .line 125
    :goto_c
    return v0

    .line 98
    :pswitch_d
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;->playAd()V

    .line 125
    :goto_12
    const/4 v0, 0x1

    goto :goto_c

    .line 101
    :pswitch_14
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;->pauseAd()V

    goto :goto_12

    .line 104
    :pswitch_1a
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;->resumeAd()V

    goto :goto_12

    .line 107
    :pswitch_20
    if-eqz p2, :cond_2e

    iget-object v0, p2, Lcom/google/ads/interactivemedia/v3/impl/data/l;->videoUrl:Ljava/lang/String;

    if-eqz v0, :cond_2e

    .line 108
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    iget-object v1, p2, Lcom/google/ads/interactivemedia/v3/impl/data/l;->videoUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;->loadAd(Ljava/lang/String;)V

    goto :goto_12

    .line 110
    :cond_2e
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->c:Lcom/google/ads/interactivemedia/v3/impl/i;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/c;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/api/AdError;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v5, "Load message must contain video url."

    invoke-direct {v2, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/i;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    goto :goto_12

    .line 116
    :pswitch_44
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->b:Lcom/google/ads/interactivemedia/v3/impl/g;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/g;->b()V

    goto :goto_12

    .line 119
    :pswitch_4a
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->b:Lcom/google/ads/interactivemedia/v3/impl/g;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/g;->c()V

    goto :goto_12

    .line 96
    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_d
        :pswitch_14
        :pswitch_1a
        :pswitch_20
        :pswitch_44
        :pswitch_4a
    .end packed-switch
.end method

.method public b()V
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;->stopAd()V

    .line 157
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->d:Lcom/google/ads/interactivemedia/v3/impl/k;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/k;->a()V

    .line 158
    return-void
.end method

.method public b(Lcom/google/ads/interactivemedia/v3/impl/aa$c;Lcom/google/ads/interactivemedia/v3/impl/data/l;)Z
    .registers 5

    .prologue
    .line 130
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ae$1;->a:[I

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_34

    .line 144
    const/4 v0, 0x0

    .line 146
    :goto_c
    return v0

    .line 132
    :pswitch_d
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->f:Z

    if-nez v0, :cond_18

    .line 133
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/ag;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/impl/ag;->a()V

    .line 135
    :cond_18
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->e:Lcom/google/ads/interactivemedia/v3/impl/e;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;->addCallback(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;)V

    .line 146
    :goto_1f
    const/4 v0, 0x1

    goto :goto_c

    .line 138
    :pswitch_21
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->f:Z

    if-nez v0, :cond_2c

    .line 139
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/ag;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/impl/ag;->b()V

    .line 141
    :cond_2c
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->e:Lcom/google/ads/interactivemedia/v3/impl/e;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;->removeCallback(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;)V

    goto :goto_1f

    .line 130
    :pswitch_data_34
    .packed-switch 0x7
        :pswitch_d
        :pswitch_21
    .end packed-switch
.end method

.method public c()V
    .registers 1

    .prologue
    .line 163
    return-void
.end method

.method public d()V
    .registers 1

    .prologue
    .line 168
    return-void
.end method

.method public e()V
    .registers 3

    .prologue
    .line 177
    const-string v0, "SDK_DEBUG"

    const-string v1, "Destroying NativeVideoDisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->b:Lcom/google/ads/interactivemedia/v3/impl/g;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/g;->c()V

    .line 179
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->b:Lcom/google/ads/interactivemedia/v3/impl/g;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->d:Lcom/google/ads/interactivemedia/v3/impl/k;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/g;->b(Lcom/google/ads/interactivemedia/v3/impl/af$b;)V

    .line 180
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->b:Lcom/google/ads/interactivemedia/v3/impl/g;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->e:Lcom/google/ads/interactivemedia/v3/impl/e;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/g;->b(Lcom/google/ads/interactivemedia/v3/impl/af$b;)V

    .line 181
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->d:Lcom/google/ads/interactivemedia/v3/impl/k;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/k;->a()V

    .line 182
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->e:Lcom/google/ads/interactivemedia/v3/impl/e;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;->removeCallback(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;)V

    .line 183
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    instance-of v0, v0, Lcom/google/ads/interactivemedia/v3/impl/ag;

    if-eqz v0, :cond_33

    .line 184
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/ag;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/impl/ag;->c()V

    .line 186
    :cond_33
    return-void
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->f:Z

    return v0
.end method

.method public getAdProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;->getAdProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    move-result-object v0

    return-object v0
.end method

.method public onAdError(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V
    .registers 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ae;->d:Lcom/google/ads/interactivemedia/v3/impl/k;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/k;->a()V

    .line 173
    return-void
.end method
