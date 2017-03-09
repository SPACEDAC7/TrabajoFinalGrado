.class public Lcom/google/ads/interactivemedia/v3/impl/ak;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer$VideoStreamPlayerCallback;
.implements Lcom/google/ads/interactivemedia/v3/impl/af$b;
.implements Lcom/google/ads/interactivemedia/v3/impl/al;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/ak$a;
    }
.end annotation


# instance fields
.field private a:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

.field private b:Lcom/google/ads/interactivemedia/v3/impl/ab;

.field private final c:Lcom/google/ads/interactivemedia/v3/impl/ai;

.field private d:Lcom/google/ads/interactivemedia/v3/impl/u;

.field private e:Lcom/google/ads/interactivemedia/v3/impl/k;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/ad;Lcom/google/ads/interactivemedia/v3/impl/ab;Lcom/google/ads/interactivemedia/v3/impl/ai;Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;Landroid/content/Context;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/api/AdError;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 58
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, v6

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/ads/interactivemedia/v3/impl/ak;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/ad;Lcom/google/ads/interactivemedia/v3/impl/ab;Lcom/google/ads/interactivemedia/v3/impl/ai;Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;Lcom/google/ads/interactivemedia/v3/impl/u;Lcom/google/ads/interactivemedia/v3/impl/k;Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/ad;Lcom/google/ads/interactivemedia/v3/impl/ab;Lcom/google/ads/interactivemedia/v3/impl/ai;Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;Lcom/google/ads/interactivemedia/v3/impl/u;Lcom/google/ads/interactivemedia/v3/impl/k;Landroid/content/Context;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/api/AdError;
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-interface {p5}, Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;->getVideoStreamPlayer()Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ak;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    .line 72
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ak;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    if-nez v0, :cond_19

    .line 73
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/AdError;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INVALID_ARGUMENTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v3, "Server-side ad insertion player was not provided."

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_19
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/ak;->c:Lcom/google/ads/interactivemedia/v3/impl/ai;

    .line 77
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/ak;->f:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/ak;->b:Lcom/google/ads/interactivemedia/v3/impl/ab;

    .line 79
    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/impl/ak;->d:Lcom/google/ads/interactivemedia/v3/impl/u;

    .line 80
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ak;->d:Lcom/google/ads/interactivemedia/v3/impl/u;

    if-nez v0, :cond_32

    .line 81
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/u;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/ak;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    .line 82
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/impl/ad;->a()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/u;-><init>(Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;J)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ak;->d:Lcom/google/ads/interactivemedia/v3/impl/u;

    .line 84
    :cond_32
    iput-object p7, p0, Lcom/google/ads/interactivemedia/v3/impl/ak;->e:Lcom/google/ads/interactivemedia/v3/impl/k;

    .line 85
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ak;->e:Lcom/google/ads/interactivemedia/v3/impl/k;

    if-nez v0, :cond_44

    .line 87
    :try_start_38
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/k;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/impl/k;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/ad;Lcom/google/ads/interactivemedia/v3/impl/ab;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ak;->e:Lcom/google/ads/interactivemedia/v3/impl/k;
    :try_end_44
    .catch Lcom/google/ads/interactivemedia/v3/api/AdError; {:try_start_38 .. :try_end_44} :catch_45

    .line 94
    :cond_44
    :goto_44
    return-void

    .line 89
    :catch_45
    move-exception v0

    .line 90
    const-string v1, "IMASDK"

    const-string v2, "Error creating ad UI: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_44
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/impl/aa$c;Ljava/lang/Object;)V
    .registers 7

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ak;->b:Lcom/google/ads/interactivemedia/v3/impl/ab;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/aa;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->videoDisplay:Lcom/google/ads/interactivemedia/v3/impl/aa$b;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/ak;->f:Ljava/lang/String;

    invoke-direct {v1, v2, p1, v3, p2}, Lcom/google/ads/interactivemedia/v3/impl/aa;-><init>(Lcom/google/ads/interactivemedia/v3/impl/aa$b;Lcom/google/ads/interactivemedia/v3/impl/aa$c;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab;->b(Lcom/google/ads/interactivemedia/v3/impl/aa;)V

    .line 199
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ak;->d:Lcom/google/ads/interactivemedia/v3/impl/u;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/ak;->e:Lcom/google/ads/interactivemedia/v3/impl/k;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/u;->a(Lcom/google/ads/interactivemedia/v3/impl/af$b;)V

    .line 99
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ak;->d:Lcom/google/ads/interactivemedia/v3/impl/u;

    invoke-virtual {v0, p0}, Lcom/google/ads/interactivemedia/v3/impl/u;->a(Lcom/google/ads/interactivemedia/v3/impl/af$b;)V

    .line 100
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)V
    .registers 3

    .prologue
    .line 171
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->timeupdate:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-direct {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/ak;->a(Lcom/google/ads/interactivemedia/v3/impl/aa$c;Ljava/lang/Object;)V

    .line 172
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/impl/data/b;)V
    .registers 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ak;->e:Lcom/google/ads/interactivemedia/v3/impl/k;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/k;->a(Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    .line 138
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/impl/aa$c;Lcom/google/ads/interactivemedia/v3/impl/data/l;)Z
    .registers 9

    .prologue
    .line 111
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ak$1;->a:[I

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3a

    .line 124
    const/4 v0, 0x0

    .line 126
    :goto_c
    return v0

    .line 113
    :pswitch_d
    if-eqz p2, :cond_23

    iget-object v0, p2, Lcom/google/ads/interactivemedia/v3/impl/data/l;->streamUrl:Ljava/lang/String;

    if-eqz v0, :cond_23

    .line 114
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ak;->d:Lcom/google/ads/interactivemedia/v3/impl/u;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/u;->b()V

    .line 115
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ak;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    iget-object v1, p2, Lcom/google/ads/interactivemedia/v3/impl/data/l;->streamUrl:Ljava/lang/String;

    iget-object v2, p2, Lcom/google/ads/interactivemedia/v3/impl/data/l;->subtitles:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;->loadUrl(Ljava/lang/String;Ljava/util/List;)V

    .line 126
    :goto_21
    const/4 v0, 0x1

    goto :goto_c

    .line 117
    :cond_23
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ak;->c:Lcom/google/ads/interactivemedia/v3/impl/ai;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/c;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/api/AdError;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v5, "Load message must contain video url."

    invoke-direct {v2, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/ai;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    goto :goto_21

    .line 111
    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_d
    .end packed-switch
.end method

.method public b()V
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ak;->e:Lcom/google/ads/interactivemedia/v3/impl/k;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/k;->a()V

    .line 143
    return-void
.end method

.method public b(Lcom/google/ads/interactivemedia/v3/impl/aa$c;Lcom/google/ads/interactivemedia/v3/impl/data/l;)Z
    .registers 4

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ak;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;->onAdBreakStarted()V

    .line 177
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ak;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;->onAdBreakEnded()V

    .line 182
    return-void
.end method

.method public e()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 152
    const-string v0, "SDK_DEBUG"

    const-string v1, "Destroying StreamVideoDisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/ak;->h()V

    .line 154
    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/ak;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    .line 155
    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/ak;->b:Lcom/google/ads/interactivemedia/v3/impl/ab;

    .line 156
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ak;->d:Lcom/google/ads/interactivemedia/v3/impl/u;

    if-eqz v0, :cond_1f

    .line 157
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ak;->d:Lcom/google/ads/interactivemedia/v3/impl/u;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/ak;->e:Lcom/google/ads/interactivemedia/v3/impl/k;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/u;->b(Lcom/google/ads/interactivemedia/v3/impl/af$b;)V

    .line 158
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ak;->d:Lcom/google/ads/interactivemedia/v3/impl/u;

    invoke-virtual {v0, p0}, Lcom/google/ads/interactivemedia/v3/impl/u;->b(Lcom/google/ads/interactivemedia/v3/impl/af$b;)V

    .line 160
    :cond_1f
    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/ak;->d:Lcom/google/ads/interactivemedia/v3/impl/u;

    .line 161
    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/ak;->e:Lcom/google/ads/interactivemedia/v3/impl/k;

    .line 162
    return-void
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 186
    const/4 v0, 0x1

    return v0
.end method

.method public g()V
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ak;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    invoke-interface {v0, p0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;->addCallback(Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer$VideoStreamPlayerCallback;)V

    .line 191
    return-void
.end method

.method public getAdProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ak;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;->getContentProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ak;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    invoke-interface {v0, p0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;->removeCallback(Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer$VideoStreamPlayerCallback;)V

    .line 195
    return-void
.end method

.method public onAdError(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V
    .registers 2

    .prologue
    .line 148
    return-void
.end method

.method public onUserTextReceived(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 166
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->timedMetadata:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/impl/ak$a;->create(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/ak$a;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/ak;->a(Lcom/google/ads/interactivemedia/v3/impl/aa$c;Ljava/lang/Object;)V

    .line 167
    return-void
.end method
