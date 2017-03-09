.class final Lcom/google/ads/interactivemedia/v3/a/x$a;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final b:Lcom/google/ads/interactivemedia/v3/a/x$a;


# instance fields
.field public volatile a:J

.field private final c:Landroid/os/Handler;

.field private final d:Landroid/os/HandlerThread;

.field private e:Landroid/view/Choreographer;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 220
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/x$a;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/a/x$a;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/a/x$a;->b:Lcom/google/ads/interactivemedia/v3/a/x$a;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ChoreographerOwner:Handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/x$a;->d:Landroid/os/HandlerThread;

    .line 233
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/x$a;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 234
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/x$a;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/x$a;->c:Landroid/os/Handler;

    .line 235
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/x$a;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 236
    return-void
.end method

.method public static a()Lcom/google/ads/interactivemedia/v3/a/x$a;
    .registers 1

    .prologue
    .line 228
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/x$a;->b:Lcom/google/ads/interactivemedia/v3/a/x$a;

    return-object v0
.end method

.method private d()V
    .registers 2

    .prologue
    .line 284
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/x$a;->e:Landroid/view/Choreographer;

    .line 285
    return-void
.end method

.method private e()V
    .registers 3

    .prologue
    .line 288
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/x$a;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/x$a;->f:I

    .line 289
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/x$a;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 290
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/x$a;->e:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 292
    :cond_10
    return-void
.end method

.method private f()V
    .registers 3

    .prologue
    .line 295
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/x$a;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/x$a;->f:I

    .line 296
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/x$a;->f:I

    if-nez v0, :cond_13

    .line 297
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/x$a;->e:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 298
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/x$a;->a:J

    .line 300
    :cond_13
    return-void
.end method


# virtual methods
.method public b()V
    .registers 3

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/x$a;->c:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 245
    return-void
.end method

.method public c()V
    .registers 3

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/x$a;->c:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 253
    return-void
.end method

.method public doFrame(J)V
    .registers 8

    .prologue
    .line 257
    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/a/x$a;->a:J

    .line 258
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/x$a;->e:Landroid/view/Choreographer;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, p0, v2, v3}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    .line 259
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 263
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_14

    .line 277
    const/4 v0, 0x0

    :goto_7
    return v0

    .line 265
    :pswitch_8
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/x$a;->d()V

    goto :goto_7

    .line 269
    :pswitch_c
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/x$a;->e()V

    goto :goto_7

    .line 273
    :pswitch_10
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/x$a;->f()V

    goto :goto_7

    .line 263
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_8
        :pswitch_c
        :pswitch_10
    .end packed-switch
.end method
