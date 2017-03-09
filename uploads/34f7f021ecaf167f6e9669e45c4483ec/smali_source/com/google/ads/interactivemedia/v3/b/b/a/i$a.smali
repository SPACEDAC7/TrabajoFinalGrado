.class public final Lcom/google/ads/interactivemedia/v3/b/b/a/i$a;
.super Lcom/google/ads/interactivemedia/v3/b/v;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/b/b/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/ads/interactivemedia/v3/b/v",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/b/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/b/b/h",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/b/b/a/i$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/b/b/h;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/b/b/h",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/b/b/a/i$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/v;-><init>()V

    .line 200
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/i$a;->a:Lcom/google/ads/interactivemedia/v3/b/b/h;

    .line 201
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/i$a;->b:Ljava/util/Map;

    .line 202
    return-void
.end method


# virtual methods
.method public read(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/b/d/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->f()Lcom/google/ads/interactivemedia/v3/b/d/b;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/b/d/b;->i:Lcom/google/ads/interactivemedia/v3/b/d/b;

    if-ne v0, v1, :cond_d

    .line 206
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->j()V

    .line 207
    const/4 v0, 0x0

    .line 229
    :goto_c
    return-object v0

    .line 210
    :cond_d
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/i$a;->a:Lcom/google/ads/interactivemedia/v3/b/b/h;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/b/h;->a()Ljava/lang/Object;

    move-result-object v1

    .line 213
    :try_start_13
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->c()V

    .line 214
    :goto_16
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->e()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 215
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->g()Ljava/lang/String;

    move-result-object v0

    .line 216
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/i$a;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/b/b/a/i$b;

    .line 217
    if-eqz v0, :cond_2e

    iget-boolean v2, v0, Lcom/google/ads/interactivemedia/v3/b/b/a/i$b;->j:Z

    if-nez v2, :cond_39

    .line 218
    :cond_2e
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->n()V
    :try_end_31
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_31} :catch_32
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_31} :catch_3d

    goto :goto_16

    .line 223
    :catch_32
    move-exception v0

    .line 224
    new-instance v1, Lcom/google/ads/interactivemedia/v3/b/t;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/b/t;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 220
    :cond_39
    :try_start_39
    invoke-virtual {v0, p1, v1}, Lcom/google/ads/interactivemedia/v3/b/b/a/i$b;->a(Lcom/google/ads/interactivemedia/v3/b/d/a;Ljava/lang/Object;)V
    :try_end_3c
    .catch Ljava/lang/IllegalStateException; {:try_start_39 .. :try_end_3c} :catch_32
    .catch Ljava/lang/IllegalAccessException; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_16

    .line 225
    :catch_3d
    move-exception v0

    .line 226
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 228
    :cond_44
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->d()V

    move-object v0, v1

    .line 229
    goto :goto_c
.end method

.method public write(Lcom/google/ads/interactivemedia/v3/b/d/c;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/b/d/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    if-nez p2, :cond_6

    .line 234
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/c;->f()Lcom/google/ads/interactivemedia/v3/b/d/c;

    .line 250
    :goto_5
    return-void

    .line 238
    :cond_6
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/c;->d()Lcom/google/ads/interactivemedia/v3/b/d/c;

    .line 240
    :try_start_9
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/i$a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/b/b/a/i$b;

    .line 241
    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/b/b/a/i$b;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 242
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/b/b/a/i$b;->h:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/google/ads/interactivemedia/v3/b/d/c;->a(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/b/d/c;

    .line 243
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/b/b/a/i$b;->a(Lcom/google/ads/interactivemedia/v3/b/d/c;Ljava/lang/Object;)V
    :try_end_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_2d} :catch_2e

    goto :goto_13

    .line 246
    :catch_2e
    move-exception v0

    .line 247
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 249
    :cond_35
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/c;->e()Lcom/google/ads/interactivemedia/v3/b/d/c;

    goto :goto_5
.end method
