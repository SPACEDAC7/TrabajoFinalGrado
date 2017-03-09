.class final Lcom/google/ads/interactivemedia/v3/a/e/l$b;
.super Landroid/os/Handler;
.source "IMASDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/e/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/a/e/l;

.field private final b:Lcom/google/ads/interactivemedia/v3/a/e/l$c;

.field private final c:Lcom/google/ads/interactivemedia/v3/a/e/l$a;

.field private volatile d:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/a/e/l;Landroid/os/Looper;Lcom/google/ads/interactivemedia/v3/a/e/l$c;Lcom/google/ads/interactivemedia/v3/a/e/l$a;)V
    .registers 5

    .prologue
    .line 203
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/e/l$b;->a:Lcom/google/ads/interactivemedia/v3/a/e/l;

    .line 204
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 205
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/a/e/l$b;->b:Lcom/google/ads/interactivemedia/v3/a/e/l$c;

    .line 206
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/a/e/l$b;->c:Lcom/google/ads/interactivemedia/v3/a/e/l$a;

    .line 207
    return-void
.end method

.method private b()V
    .registers 3

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/l$b;->a:Lcom/google/ads/interactivemedia/v3/a/e/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/e/l;->a(Lcom/google/ads/interactivemedia/v3/a/e/l;Z)Z

    .line 268
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/l$b;->a:Lcom/google/ads/interactivemedia/v3/a/e/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/e/l;->a(Lcom/google/ads/interactivemedia/v3/a/e/l;Lcom/google/ads/interactivemedia/v3/a/e/l$b;)Lcom/google/ads/interactivemedia/v3/a/e/l$b;

    .line 269
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/l$b;->b:Lcom/google/ads/interactivemedia/v3/a/e/l$c;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/a/e/l$c;->a()V

    .line 211
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/l$b;->d:Ljava/lang/Thread;

    if-eqz v0, :cond_e

    .line 212
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/l$b;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 214
    :cond_e
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .prologue
    .line 248
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 249
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 251
    :cond_a
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/e/l$b;->b()V

    .line 252
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/l$b;->b:Lcom/google/ads/interactivemedia/v3/a/e/l$c;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/a/e/l$c;->b()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 253
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/l$b;->c:Lcom/google/ads/interactivemedia/v3/a/e/l$a;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/l$b;->b:Lcom/google/ads/interactivemedia/v3/a/e/l$c;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/e/l$a;->b(Lcom/google/ads/interactivemedia/v3/a/e/l$c;)V

    .line 264
    :goto_1c
    return-void

    .line 256
    :cond_1d
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_38

    goto :goto_1c

    .line 258
    :pswitch_23
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/l$b;->c:Lcom/google/ads/interactivemedia/v3/a/e/l$a;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/l$b;->b:Lcom/google/ads/interactivemedia/v3/a/e/l$c;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/e/l$a;->a(Lcom/google/ads/interactivemedia/v3/a/e/l$c;)V

    goto :goto_1c

    .line 261
    :pswitch_2b
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/l$b;->c:Lcom/google/ads/interactivemedia/v3/a/e/l$a;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/e/l$b;->b:Lcom/google/ads/interactivemedia/v3/a/e/l$c;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/io/IOException;

    invoke-interface {v1, v2, v0}, Lcom/google/ads/interactivemedia/v3/a/e/l$a;->a(Lcom/google/ads/interactivemedia/v3/a/e/l$c;Ljava/io/IOException;)V

    goto :goto_1c

    .line 256
    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_23
        :pswitch_2b
    .end packed-switch
.end method

.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 219
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/l$b;->d:Ljava/lang/Thread;

    .line 220
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/l$b;->b:Lcom/google/ads/interactivemedia/v3/a/e/l$c;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/a/e/l$c;->b()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 221
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/l$b;->b:Lcom/google/ads/interactivemedia/v3/a/e/l$c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".load()"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/p;->a(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/l$b;->b:Lcom/google/ads/interactivemedia/v3/a/e/l$c;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/a/e/l$c;->c()V

    .line 223
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/a/f/p;->a()V

    .line 225
    :cond_2f
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/e/l$b;->sendEmptyMessage(I)Z
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_33} :catch_34
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_33} :catch_3d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_33} :catch_4b
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_33} :catch_60

    .line 244
    :goto_33
    return-void

    .line 226
    :catch_34
    move-exception v0

    .line 227
    invoke-virtual {p0, v3, v0}, Lcom/google/ads/interactivemedia/v3/a/e/l$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_33

    .line 228
    :catch_3d
    move-exception v0

    .line 230
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/l$b;->b:Lcom/google/ads/interactivemedia/v3/a/e/l$c;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/a/e/l$c;->b()Z

    move-result v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->b(Z)V

    .line 231
    invoke-virtual {p0, v2}, Lcom/google/ads/interactivemedia/v3/a/e/l$b;->sendEmptyMessage(I)Z

    goto :goto_33

    .line 232
    :catch_4b
    move-exception v0

    .line 234
    const-string v1, "LoadTask"

    const-string v2, "Unexpected exception loading stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/e/l$d;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/e/l$d;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p0, v3, v1}, Lcom/google/ads/interactivemedia/v3/a/e/l$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_33

    .line 236
    :catch_60
    move-exception v0

    .line 240
    const-string v1, "LoadTask"

    const-string v2, "Unexpected error loading stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/google/ads/interactivemedia/v3/a/e/l$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 242
    throw v0
.end method
