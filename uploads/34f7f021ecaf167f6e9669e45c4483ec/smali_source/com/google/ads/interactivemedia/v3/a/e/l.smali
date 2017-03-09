.class public final Lcom/google/ads/interactivemedia/v3/a/e/l;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/a/e/l$b;,
        Lcom/google/ads/interactivemedia/v3/a/e/l$a;,
        Lcom/google/ads/interactivemedia/v3/a/e/l$c;,
        Lcom/google/ads/interactivemedia/v3/a/e/l$d;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;

.field private b:Lcom/google/ads/interactivemedia/v3/a/e/l$b;

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/a/f/q;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/l;->a:Ljava/util/concurrent/ExecutorService;

    .line 114
    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/a/e/l;Lcom/google/ads/interactivemedia/v3/a/e/l$b;)Lcom/google/ads/interactivemedia/v3/a/e/l$b;
    .registers 2

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/e/l;->b:Lcom/google/ads/interactivemedia/v3/a/e/l$b;

    return-object p1
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/a/e/l;Z)Z
    .registers 2

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/a/e/l;->c:Z

    return p1
.end method


# virtual methods
.method public a(Landroid/os/Looper;Lcom/google/ads/interactivemedia/v3/a/e/l$c;Lcom/google/ads/interactivemedia/v3/a/e/l$a;)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 141
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/l;->c:Z

    if-nez v0, :cond_1a

    move v0, v1

    :goto_6
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->b(Z)V

    .line 142
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/l;->c:Z

    .line 143
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/e/l$b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/a/e/l$b;-><init>(Lcom/google/ads/interactivemedia/v3/a/e/l;Landroid/os/Looper;Lcom/google/ads/interactivemedia/v3/a/e/l$c;Lcom/google/ads/interactivemedia/v3/a/e/l$a;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/l;->b:Lcom/google/ads/interactivemedia/v3/a/e/l$b;

    .line 144
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/l;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/e/l;->b:Lcom/google/ads/interactivemedia/v3/a/e/l$b;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 145
    return-void

    .line 141
    :cond_1a
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/e/l$c;Lcom/google/ads/interactivemedia/v3/a/e/l$a;)V
    .registers 5

    .prologue
    .line 125
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .line 126
    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->b(Z)V

    .line 127
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/ads/interactivemedia/v3/a/e/l;->a(Landroid/os/Looper;Lcom/google/ads/interactivemedia/v3/a/e/l$c;Lcom/google/ads/interactivemedia/v3/a/e/l$a;)V

    .line 128
    return-void

    .line 126
    :cond_e
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public a(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/l;->c:Z

    if-eqz v0, :cond_7

    .line 185
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/e/l;->b()V

    .line 187
    :cond_7
    if-eqz p1, :cond_e

    .line 188
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/l;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 190
    :cond_e
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/l;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 191
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/l;->c:Z

    return v0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/l;->c:Z

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->b(Z)V

    .line 163
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/l;->b:Lcom/google/ads/interactivemedia/v3/a/e/l$b;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/e/l$b;->a()V

    .line 164
    return-void
.end method
