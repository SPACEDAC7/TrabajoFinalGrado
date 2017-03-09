.class Lcom/google/ads/interactivemedia/v3/impl/h$a;
.super Landroid/os/AsyncTask;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/impl/h;

.field private b:Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/h;Lcom/google/ads/interactivemedia/v3/api/AdsRequest;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 177
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/h$a;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 178
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/h$a;->b:Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

    .line 179
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/h$a;->c:Ljava/lang/String;

    .line 180
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 189
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 190
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/h$a;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/h;->f(Lcom/google/ads/interactivemedia/v3/impl/h;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 191
    :try_start_a
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/h$a;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/impl/h;->g(Lcom/google/ads/interactivemedia/v3/impl/h;)Lcom/google/a/a/g;

    move-result-object v2

    if-nez v2, :cond_28

    .line 193
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/h$a;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    new-instance v3, Lcom/google/a/a/g;

    const-string v4, "a.3.5.2"

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/impl/h$a;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    .line 194
    invoke-static {v5}, Lcom/google/ads/interactivemedia/v3/impl/h;->c(Lcom/google/ads/interactivemedia/v3/impl/h;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/a/a/f;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/google/a/a/f;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/a/a/g;-><init>(Lcom/google/a/a/c;)V

    .line 193
    invoke-static {v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/h;->a(Lcom/google/ads/interactivemedia/v3/impl/h;Lcom/google/a/a/g;)Lcom/google/a/a/g;

    .line 197
    :cond_28
    if-eqz v0, :cond_4e

    .line 198
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 199
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/h$a;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/impl/h;->g(Lcom/google/ads/interactivemedia/v3/impl/h;)Lcom/google/a/a/g;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/a/a/g;->b(Landroid/net/Uri;)Z
    :try_end_37
    .catchall {:try_start_a .. :try_end_37} :catchall_50

    move-result v3

    if-eqz v3, :cond_4e

    .line 201
    :try_start_3a
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/h$a;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/impl/h;->g(Lcom/google/ads/interactivemedia/v3/impl/h;)Lcom/google/a/a/g;

    move-result-object v3

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/h$a;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/impl/h;->c(Lcom/google/ads/interactivemedia/v3/impl/h;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/google/a/a/g;->a(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_4d
    .catch Lcom/google/a/a/h; {:try_start_3a .. :try_end_4d} :catch_53
    .catchall {:try_start_3a .. :try_end_4d} :catchall_50

    move-result-object v0

    .line 207
    :cond_4e
    :goto_4e
    :try_start_4e
    monitor-exit v1

    .line 209
    return-object v0

    .line 207
    :catchall_50
    move-exception v0

    monitor-exit v1
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_50

    throw v0

    .line 202
    :catch_53
    move-exception v2

    goto :goto_4e
.end method

.method protected a(Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h$a;->b:Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->setAdTagUrl(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h$a;->b:Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/h$a;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    .line 219
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/h;->h(Lcom/google/ads/interactivemedia/v3/impl/h;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/h$a;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/impl/h;->i(Lcom/google/ads/interactivemedia/v3/impl/h;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/h$a;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/impl/h;->j(Lcom/google/ads/interactivemedia/v3/impl/h;)Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    move-result-object v3

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/h$a;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/impl/h;->k(Lcom/google/ads/interactivemedia/v3/impl/h;)Lcom/google/ads/interactivemedia/v3/impl/h$b;

    move-result-object v4

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/impl/h$a;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    .line 220
    invoke-static {v5}, Lcom/google/ads/interactivemedia/v3/impl/h;->l(Lcom/google/ads/interactivemedia/v3/impl/h;)Z

    move-result v5

    .line 218
    invoke-static/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->create(Lcom/google/ads/interactivemedia/v3/api/AdsRequest;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/impl/h$b;Z)Lcom/google/ads/interactivemedia/v3/impl/data/k;

    move-result-object v0

    .line 221
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/aa;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->adsLoader:Lcom/google/ads/interactivemedia/v3/impl/aa$b;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->requestAds:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/h$a;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/ads/interactivemedia/v3/impl/aa;-><init>(Lcom/google/ads/interactivemedia/v3/impl/aa$b;Lcom/google/ads/interactivemedia/v3/impl/aa$c;Ljava/lang/String;Ljava/lang/Object;)V

    .line 223
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h$a;->a:Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/h;->b(Lcom/google/ads/interactivemedia/v3/impl/h;)Lcom/google/ads/interactivemedia/v3/impl/ab;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab;->b(Lcom/google/ads/interactivemedia/v3/impl/aa;)V

    .line 224
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 173
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/h$a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 173
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/h$a;->a(Ljava/lang/String;)V

    return-void
.end method
