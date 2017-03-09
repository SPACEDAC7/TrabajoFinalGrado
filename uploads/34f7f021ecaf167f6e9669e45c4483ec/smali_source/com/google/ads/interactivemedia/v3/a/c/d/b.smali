.class public Lcom/google/ads/interactivemedia/v3/a/c/d/b;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/a/c/e;


# instance fields
.field private a:Lcom/google/ads/interactivemedia/v3/a/c/d/f;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/c/j;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/b;->a:Lcom/google/ads/interactivemedia/v3/a/c/d/f;

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/a/c/d/f;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/c/j;)I

    move-result v0

    return v0
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/c/g;)V
    .registers 4

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/g;->d(I)Lcom/google/ads/interactivemedia/v3/a/c/m;

    move-result-object v0

    .line 66
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/c/g;->f()V

    .line 67
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/b;->a:Lcom/google/ads/interactivemedia/v3/a/c/d/f;

    invoke-virtual {v1, p1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/d/f;->a(Lcom/google/ads/interactivemedia/v3/a/c/g;Lcom/google/ads/interactivemedia/v3/a/c/m;)V

    .line 68
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/c/f;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x7

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 37
    :try_start_3
    new-instance v2, Lcom/google/ads/interactivemedia/v3/a/f/m;

    const/16 v3, 0x1b

    new-array v3, v3, [B

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>([BI)V

    .line 38
    new-instance v3, Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;

    invoke-direct {v3}, Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;-><init>()V

    .line 39
    const/4 v4, 0x1

    invoke-static {p1, v3, v2, v4}, Lcom/google/ads/interactivemedia/v3/a/c/d/e;->a(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;Lcom/google/ads/interactivemedia/v3/a/f/m;Z)Z

    move-result v4

    if-eqz v4, :cond_24

    iget v4, v3, Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;->b:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_24

    iget v3, v3, Lcom/google/ads/interactivemedia/v3/a/c/d/e$b;->i:I

    if-ge v3, v6, :cond_25

    .line 60
    :cond_24
    :goto_24
    return v0

    .line 43
    :cond_25
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a()V

    .line 44
    iget-object v3, v2, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    const/4 v4, 0x0

    const/4 v5, 0x7

    invoke-interface {p1, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c([BII)V

    .line 45
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/a/c/d/a;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 46
    new-instance v2, Lcom/google/ads/interactivemedia/v3/a/c/d/a;

    invoke-direct {v2}, Lcom/google/ads/interactivemedia/v3/a/c/d/a;-><init>()V

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/b;->a:Lcom/google/ads/interactivemedia/v3/a/c/d/f;

    :goto_3c
    move v0, v1

    .line 55
    goto :goto_24

    .line 48
    :cond_3e
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a()V

    .line 49
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/a/c/d/h;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 50
    new-instance v2, Lcom/google/ads/interactivemedia/v3/a/c/d/h;

    invoke-direct {v2}, Lcom/google/ads/interactivemedia/v3/a/c/d/h;-><init>()V

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/b;->a:Lcom/google/ads/interactivemedia/v3/a/c/d/f;
    :try_end_4e
    .catch Lcom/google/ads/interactivemedia/v3/a/r; {:try_start_3 .. :try_end_4e} :catch_4f
    .catchall {:try_start_3 .. :try_end_4e} :catchall_51

    goto :goto_3c

    .line 56
    :catch_4f
    move-exception v1

    goto :goto_24

    .line 58
    :catchall_51
    move-exception v0

    throw v0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/b;->a:Lcom/google/ads/interactivemedia/v3/a/c/d/f;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/d/f;->b()V

    .line 73
    return-void
.end method

.method public c()V
    .registers 1

    .prologue
    .line 78
    return-void
.end method
