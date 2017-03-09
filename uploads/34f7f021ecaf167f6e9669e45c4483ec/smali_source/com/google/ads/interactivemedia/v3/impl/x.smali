.class public Lcom/google/ads/interactivemedia/v3/impl/x;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/ag;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/x$a;,
        Lcom/google/ads/interactivemedia/v3/impl/x$c;,
        Lcom/google/ads/interactivemedia/v3/impl/x$e;,
        Lcom/google/ads/interactivemedia/v3/impl/x$d;,
        Lcom/google/ads/interactivemedia/v3/impl/x$b;,
        Lcom/google/ads/interactivemedia/v3/impl/x$f;,
        Lcom/google/ads/interactivemedia/v3/impl/x$g;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/a/g;

.field private final b:Landroid/view/SurfaceView;

.field private final c:Lcom/google/ads/interactivemedia/v3/a/a;

.field private final d:Landroid/widget/FrameLayout;

.field private final e:Landroid/view/ViewGroup;

.field private final f:Landroid/content/Context;

.field private final g:Landroid/os/Handler;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/google/ads/interactivemedia/v3/impl/x$b;

.field private final j:Lcom/google/ads/interactivemedia/v3/impl/x$e;

.field private final k:Lcom/google/ads/interactivemedia/v3/impl/x$c;

.field private final l:Lcom/google/ads/interactivemedia/v3/impl/x$a;

.field private m:Lcom/google/ads/interactivemedia/v3/impl/x$f;

.field private n:Z

.field private o:Lcom/google/ads/interactivemedia/v3/a/w;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .registers 4

    .prologue
    .line 95
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/g$b;->a(I)Lcom/google/ads/interactivemedia/v3/a/g;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/ads/interactivemedia/v3/impl/x;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/ads/interactivemedia/v3/a/g;)V

    .line 96
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/ads/interactivemedia/v3/a/g;)V
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->f:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->e:Landroid/view/ViewGroup;

    .line 106
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->a:Lcom/google/ads/interactivemedia/v3/a/g;

    .line 108
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/x$b;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/impl/x$b;-><init>(Lcom/google/ads/interactivemedia/v3/impl/x;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->i:Lcom/google/ads/interactivemedia/v3/impl/x$b;

    .line 109
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/x$c;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/impl/x$c;-><init>(Lcom/google/ads/interactivemedia/v3/impl/x;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->k:Lcom/google/ads/interactivemedia/v3/impl/x$c;

    .line 110
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/x$e;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/impl/x$e;-><init>(Lcom/google/ads/interactivemedia/v3/impl/x;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->j:Lcom/google/ads/interactivemedia/v3/impl/x$e;

    .line 111
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/x$a;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/impl/x$a;-><init>(Lcom/google/ads/interactivemedia/v3/impl/x;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->l:Lcom/google/ads/interactivemedia/v3/impl/x$a;

    .line 113
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->l:Lcom/google/ads/interactivemedia/v3/impl/x$a;

    invoke-interface {p3, v0}, Lcom/google/ads/interactivemedia/v3/a/g;->a(Lcom/google/ads/interactivemedia/v3/a/g$c;)V

    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->g:Landroid/os/Handler;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->h:Ljava/util/List;

    .line 120
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->d:Landroid/widget/FrameLayout;

    .line 121
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->d:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 122
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/a;

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->c:Lcom/google/ads/interactivemedia/v3/a/a;

    .line 123
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 125
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 126
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->c:Lcom/google/ads/interactivemedia/v3/a/a;

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/x$f;->a:Lcom/google/ads/interactivemedia/v3/impl/x$f;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->m:Lcom/google/ads/interactivemedia/v3/impl/x$f;

    .line 128
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->b:Landroid/view/SurfaceView;

    .line 131
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->b:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 132
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->b:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/x$1;

    invoke-direct {v1, p0, p3}, Lcom/google/ads/interactivemedia/v3/impl/x$1;-><init>(Lcom/google/ads/interactivemedia/v3/impl/x;Lcom/google/ads/interactivemedia/v3/a/g;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 160
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->c:Lcom/google/ads/interactivemedia/v3/a/a;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->b:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/a;->addView(Landroid/view/View;)V

    .line 161
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->d:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->c:Lcom/google/ads/interactivemedia/v3/a/a;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 162
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->e:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->d:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/impl/x;)Lcom/google/ads/interactivemedia/v3/impl/x$f;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->m:Lcom/google/ads/interactivemedia/v3/impl/x$f;

    return-object v0
.end method

.method private a(Landroid/view/Surface;Z)V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 256
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->a:Lcom/google/ads/interactivemedia/v3/a/g;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->o:Lcom/google/ads/interactivemedia/v3/a/w;

    if-nez v0, :cond_a

    .line 267
    :cond_9
    :goto_9
    return-void

    .line 260
    :cond_a
    if-eqz p2, :cond_14

    .line 261
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->a:Lcom/google/ads/interactivemedia/v3/a/g;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->o:Lcom/google/ads/interactivemedia/v3/a/w;

    invoke-interface {v0, v1, v2, p1}, Lcom/google/ads/interactivemedia/v3/a/g;->b(Lcom/google/ads/interactivemedia/v3/a/g$a;ILjava/lang/Object;)V

    goto :goto_9

    .line 264
    :cond_14
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->a:Lcom/google/ads/interactivemedia/v3/a/g;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->o:Lcom/google/ads/interactivemedia/v3/a/w;

    invoke-interface {v0, v1, v2, p1}, Lcom/google/ads/interactivemedia/v3/a/g;->a(Lcom/google/ads/interactivemedia/v3/a/g$a;ILjava/lang/Object;)V

    goto :goto_9
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/impl/x;Landroid/view/Surface;Z)V
    .registers 3

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/impl/x;->a(Landroid/view/Surface;Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/impl/x;Z)Z
    .registers 2

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/impl/x;)V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/x;->g()V

    return-void
.end method

.method static synthetic c(Lcom/google/ads/interactivemedia/v3/impl/x;)Lcom/google/ads/interactivemedia/v3/a/a;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->c:Lcom/google/ads/interactivemedia/v3/a/a;

    return-object v0
.end method

.method static synthetic d(Lcom/google/ads/interactivemedia/v3/impl/x;)Ljava/util/List;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->h:Ljava/util/List;

    return-object v0
.end method

.method private g()V
    .registers 3

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    .line 295
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onError()V

    goto :goto_6

    .line 297
    :cond_16
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 271
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->b:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 273
    return-void
.end method

.method public addCallback(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;)V
    .registers 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->d:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->b:Landroid/view/SurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 279
    return-void
.end method

.method public c()V
    .registers 3

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->a:Lcom/google/ads/interactivemedia/v3/a/g;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->l:Lcom/google/ads/interactivemedia/v3/impl/x$a;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/g;->b(Lcom/google/ads/interactivemedia/v3/a/g$c;)V

    .line 284
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->a:Lcom/google/ads/interactivemedia/v3/a/g;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/a/g;->c()V

    .line 285
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->e:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 286
    return-void
.end method

.method public d()Lcom/google/ads/interactivemedia/v3/impl/x$b;
    .registers 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->i:Lcom/google/ads/interactivemedia/v3/impl/x$b;

    return-object v0
.end method

.method public e()Lcom/google/ads/interactivemedia/v3/impl/x$e;
    .registers 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->j:Lcom/google/ads/interactivemedia/v3/impl/x$e;

    return-object v0
.end method

.method public f()Lcom/google/ads/interactivemedia/v3/impl/x$c;
    .registers 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->k:Lcom/google/ads/interactivemedia/v3/impl/x$c;

    return-object v0
.end method

.method public getAdProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;
    .registers 7

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->a:Lcom/google/ads/interactivemedia/v3/a/g;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/a/g;->a()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_12

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->a:Lcom/google/ads/interactivemedia/v3/a/g;

    .line 248
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/a/g;->a()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1e

    :cond_12
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->a:Lcom/google/ads/interactivemedia/v3/a/g;

    .line 249
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/a/g;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_21

    .line 250
    :cond_1e
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->VIDEO_TIME_NOT_READY:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    .line 252
    :goto_20
    return-object v0

    :cond_21
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->a:Lcom/google/ads/interactivemedia/v3/a/g;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/a/g;->e()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->a:Lcom/google/ads/interactivemedia/v3/a/g;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/a/g;->d()J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;-><init>(JJ)V

    goto :goto_20
.end method

.method public loadAd(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->a:Lcom/google/ads/interactivemedia/v3/a/g;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/a/g;->b()V

    .line 200
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->a:Lcom/google/ads/interactivemedia/v3/a/g;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/g;->a(J)V

    .line 201
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/a/a;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->f:Landroid/content/Context;

    const-string v3, "IMA SDK ExoPlayer"

    .line 202
    invoke-static {v2, v3}, Lcom/google/ads/interactivemedia/v3/a/f/q;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V

    .line 205
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->g:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Lcom/google/ads/interactivemedia/v3/impl/a/a;->a(Lcom/google/ads/interactivemedia/v3/impl/x;Landroid/os/Handler;)[Lcom/google/ads/interactivemedia/v3/a/w;

    move-result-object v0

    .line 206
    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/x$g;->a:Lcom/google/ads/interactivemedia/v3/impl/x$g;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/x$g;->a()I

    move-result v1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->o:Lcom/google/ads/interactivemedia/v3/a/w;

    .line 207
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->a:Lcom/google/ads/interactivemedia/v3/a/g;

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/g;->a([Lcom/google/ads/interactivemedia/v3/a/w;)V

    .line 208
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/x$f;->b:Lcom/google/ads/interactivemedia/v3/impl/x$f;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->m:Lcom/google/ads/interactivemedia/v3/impl/x$f;

    .line 209
    return-void
.end method

.method public pauseAd()V
    .registers 3

    .prologue
    .line 222
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/x$f;->d:Lcom/google/ads/interactivemedia/v3/impl/x$f;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->m:Lcom/google/ads/interactivemedia/v3/impl/x$f;

    .line 223
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->a:Lcom/google/ads/interactivemedia/v3/a/g;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/g;->a(Z)V

    .line 224
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    .line 225
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onPause()V

    goto :goto_10

    .line 227
    :cond_20
    return-void
.end method

.method public playAd()V
    .registers 5

    .prologue
    .line 172
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/x$2;->a:[I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->m:Lcom/google/ads/interactivemedia/v3/impl/x$f;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/x$f;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_80

    .line 188
    const-string v0, "IMA SDK"

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->m:Lcom/google/ads/interactivemedia/v3/impl/x$f;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x35

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Ignoring call to playAd during invalid player state: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_35
    :goto_35
    :pswitch_35
    return-void

    .line 174
    :pswitch_36
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    .line 175
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onPlay()V

    goto :goto_3c

    .line 177
    :cond_4c
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->b:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/x;->a(Landroid/view/Surface;Z)V

    .line 191
    :cond_5a
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/x$f;->c:Lcom/google/ads/interactivemedia/v3/impl/x$f;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->m:Lcom/google/ads/interactivemedia/v3/impl/x$f;

    .line 192
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->n:Z

    if-eqz v0, :cond_35

    .line 193
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->a:Lcom/google/ads/interactivemedia/v3/a/g;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/g;->a(Z)V

    goto :goto_35

    .line 180
    :pswitch_69
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    .line 181
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onResume()V

    goto :goto_6f

    .line 172
    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_36
        :pswitch_69
        :pswitch_35
    .end packed-switch
.end method

.method public removeCallback(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;)V
    .registers 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 243
    return-void
.end method

.method public resumeAd()V
    .registers 1

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/x;->playAd()V

    .line 233
    return-void
.end method

.method public stopAd()V
    .registers 3

    .prologue
    .line 213
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/x$f;->a:Lcom/google/ads/interactivemedia/v3/impl/x$f;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->m:Lcom/google/ads/interactivemedia/v3/impl/x$f;

    .line 214
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x;->a:Lcom/google/ads/interactivemedia/v3/a/g;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/a/g;->b()V

    .line 216
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/x;->a(Landroid/view/Surface;Z)V

    .line 217
    return-void
.end method
