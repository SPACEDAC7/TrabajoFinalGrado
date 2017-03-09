.class public final Lcom/google/ads/interactivemedia/v3/b/b/j;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/b/b/j$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/google/ads/interactivemedia/v3/b/d/a;)Lcom/google/ads/interactivemedia/v3/b/l;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/b/p;
        }
    .end annotation

    .prologue
    .line 44
    const/4 v1, 0x1

    .line 46
    :try_start_1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/d/a;->f()Lcom/google/ads/interactivemedia/v3/b/d/b;

    .line 47
    const/4 v1, 0x0

    .line 48
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/b/a/n;->X:Lcom/google/ads/interactivemedia/v3/b/v;

    invoke-virtual {v0, p0}, Lcom/google/ads/interactivemedia/v3/b/v;->read(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/b/l;
    :try_end_d
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_d} :catch_e
    .catch Lcom/google/ads/interactivemedia/v3/b/d/d; {:try_start_1 .. :try_end_d} :catch_1a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_21
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_d} :catch_28

    .line 55
    :goto_d
    return-object v0

    .line 49
    :catch_e
    move-exception v0

    .line 54
    if-eqz v1, :cond_14

    .line 55
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/n;->a:Lcom/google/ads/interactivemedia/v3/b/n;

    goto :goto_d

    .line 58
    :cond_14
    new-instance v1, Lcom/google/ads/interactivemedia/v3/b/t;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/b/t;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 59
    :catch_1a
    move-exception v0

    .line 60
    new-instance v1, Lcom/google/ads/interactivemedia/v3/b/t;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/b/t;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 61
    :catch_21
    move-exception v0

    .line 62
    new-instance v1, Lcom/google/ads/interactivemedia/v3/b/m;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/b/m;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 63
    :catch_28
    move-exception v0

    .line 64
    new-instance v1, Lcom/google/ads/interactivemedia/v3/b/t;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/b/t;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/lang/Appendable;)Ljava/io/Writer;
    .registers 2

    .prologue
    .line 76
    instance-of v0, p0, Ljava/io/Writer;

    if-eqz v0, :cond_7

    check-cast p0, Ljava/io/Writer;

    :goto_6
    return-object p0

    :cond_7
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/b/j$a;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/b/b/j$a;-><init>(Ljava/lang/Appendable;)V

    move-object p0, v0

    goto :goto_6
.end method

.method public static a(Lcom/google/ads/interactivemedia/v3/b/l;Lcom/google/ads/interactivemedia/v3/b/d/c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/b/a/n;->X:Lcom/google/ads/interactivemedia/v3/b/v;

    invoke-virtual {v0, p1, p0}, Lcom/google/ads/interactivemedia/v3/b/v;->write(Lcom/google/ads/interactivemedia/v3/b/d/c;Ljava/lang/Object;)V

    .line 73
    return-void
.end method
