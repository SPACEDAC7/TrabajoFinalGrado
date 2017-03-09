.class Lcom/google/ads/interactivemedia/v3/impl/h$c;
.super Landroid/os/AsyncTask;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/impl/h;

.field private b:Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/h;Lcom/google/ads/interactivemedia/v3/api/StreamRequest;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 240
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/h$c;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 241
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/h$c;->b:Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

    .line 242
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/h$c;->c:Ljava/lang/String;

    .line 243
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 250
    const-string v0, ""

    .line 251
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h$c;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/h;->f(Lcom/google/ads/interactivemedia/v3/impl/h;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 252
    :try_start_9
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h$c;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/h;->g(Lcom/google/ads/interactivemedia/v3/impl/h;)Lcom/google/a/a/g;

    move-result-object v0

    if-nez v0, :cond_27

    .line 254
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h$c;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    new-instance v2, Lcom/google/a/a/g;

    const-string v3, "a.3.5.2"

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/h$c;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    .line 255
    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/impl/h;->c(Lcom/google/ads/interactivemedia/v3/impl/h;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/a/a/f;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/google/a/a/f;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/a/a/g;-><init>(Lcom/google/a/a/c;)V

    .line 254
    invoke-static {v0, v2}, Lcom/google/ads/interactivemedia/v3/impl/h;->a(Lcom/google/ads/interactivemedia/v3/impl/h;Lcom/google/a/a/g;)Lcom/google/a/a/g;

    .line 258
    :cond_27
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h$c;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/h;->g(Lcom/google/ads/interactivemedia/v3/impl/h;)Lcom/google/a/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/g;->a()Lcom/google/a/a/c;

    move-result-object v0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/h$c;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/impl/h;->c(Lcom/google/ads/interactivemedia/v3/impl/h;)Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/a/a/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 259
    monitor-exit v1

    .line 261
    return-object v0

    .line 259
    :catchall_3d
    move-exception v0

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_9 .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method protected a(Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h$c;->b:Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/h$c;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    .line 270
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/h;->h(Lcom/google/ads/interactivemedia/v3/impl/h;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/h$c;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/impl/h;->i(Lcom/google/ads/interactivemedia/v3/impl/h;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/h$c;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/impl/h;->j(Lcom/google/ads/interactivemedia/v3/impl/h;)Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    move-result-object v3

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/h$c;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    .line 271
    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/impl/h;->k(Lcom/google/ads/interactivemedia/v3/impl/h;)Lcom/google/ads/interactivemedia/v3/impl/h$b;

    move-result-object v4

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/impl/h$c;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-static {v5}, Lcom/google/ads/interactivemedia/v3/impl/h;->l(Lcom/google/ads/interactivemedia/v3/impl/h;)Z

    move-result v5

    move-object v6, p1

    .line 269
    invoke-static/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->createFromStreamRequest(Lcom/google/ads/interactivemedia/v3/api/StreamRequest;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/impl/h$b;ZLjava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/k;

    move-result-object v0

    .line 272
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/aa;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->adsLoader:Lcom/google/ads/interactivemedia/v3/impl/aa$b;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->requestStream:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/h$c;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/ads/interactivemedia/v3/impl/aa;-><init>(Lcom/google/ads/interactivemedia/v3/impl/aa$b;Lcom/google/ads/interactivemedia/v3/impl/aa$c;Ljava/lang/String;Ljava/lang/Object;)V

    .line 274
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h$c;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/h;->b(Lcom/google/ads/interactivemedia/v3/impl/h;)Lcom/google/ads/interactivemedia/v3/impl/ab;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab;->b(Lcom/google/ads/interactivemedia/v3/impl/aa;)V

    .line 275
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 236
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/h$c;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 236
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/h$c;->a(Ljava/lang/String;)V

    return-void
.end method
