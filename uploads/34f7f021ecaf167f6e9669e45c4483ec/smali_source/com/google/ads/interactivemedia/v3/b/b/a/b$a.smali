.class final Lcom/google/ads/interactivemedia/v3/b/b/a/b$a;
.super Lcom/google/ads/interactivemedia/v3/b/v;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/b/b/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/ads/interactivemedia/v3/b/v",
        "<",
        "Ljava/util/Collection",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/b/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/b/v",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/ads/interactivemedia/v3/b/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/b/b/h",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/b/f;Ljava/lang/reflect/Type;Lcom/google/ads/interactivemedia/v3/b/v;Lcom/google/ads/interactivemedia/v3/b/b/h;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/b/f;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/ads/interactivemedia/v3/b/v",
            "<TE;>;",
            "Lcom/google/ads/interactivemedia/v3/b/b/h",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/v;-><init>()V

    .line 68
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/b/a/m;

    invoke-direct {v0, p1, p3, p2}, Lcom/google/ads/interactivemedia/v3/b/b/a/m;-><init>(Lcom/google/ads/interactivemedia/v3/b/f;Lcom/google/ads/interactivemedia/v3/b/v;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/b$a;->a:Lcom/google/ads/interactivemedia/v3/b/v;

    .line 70
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/b$a;->b:Lcom/google/ads/interactivemedia/v3/b/b/h;

    .line 71
    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/b/d/a;",
            ")",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->f()Lcom/google/ads/interactivemedia/v3/b/d/b;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/b/d/b;->i:Lcom/google/ads/interactivemedia/v3/b/d/b;

    if-ne v0, v1, :cond_d

    .line 75
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->j()V

    .line 76
    const/4 v0, 0x0

    .line 86
    :goto_c
    return-object v0

    .line 79
    :cond_d
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/b$a;->b:Lcom/google/ads/interactivemedia/v3/b/b/h;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/b/h;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 80
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->a()V

    .line 81
    :goto_18
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 82
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/b$a;->a:Lcom/google/ads/interactivemedia/v3/b/v;

    invoke-virtual {v1, p1}, Lcom/google/ads/interactivemedia/v3/b/v;->read(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/lang/Object;

    move-result-object v1

    .line 83
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 85
    :cond_28
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b()V

    goto :goto_c
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/b/d/c;Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/b/d/c;",
            "Ljava/util/Collection",
            "<TE;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    if-nez p2, :cond_6

    .line 91
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/c;->f()Lcom/google/ads/interactivemedia/v3/b/d/c;

    .line 100
    :goto_5
    return-void

    .line 95
    :cond_6
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/c;->b()Lcom/google/ads/interactivemedia/v3/b/d/c;

    .line 96
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 97
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/b$a;->a:Lcom/google/ads/interactivemedia/v3/b/v;

    invoke-virtual {v2, p1, v1}, Lcom/google/ads/interactivemedia/v3/b/v;->write(Lcom/google/ads/interactivemedia/v3/b/d/c;Ljava/lang/Object;)V

    goto :goto_d

    .line 99
    :cond_1d
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/c;->c()Lcom/google/ads/interactivemedia/v3/b/d/c;

    goto :goto_5
.end method

.method public synthetic read(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/b/b/a/b$a;->a(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public synthetic write(Lcom/google/ads/interactivemedia/v3/b/d/c;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/b/b/a/b$a;->a(Lcom/google/ads/interactivemedia/v3/b/d/c;Ljava/util/Collection;)V

    return-void
.end method
