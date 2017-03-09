.class public final Lcom/google/ads/interactivemedia/v3/b/b/a/l;
.super Lcom/google/ads/interactivemedia/v3/b/v;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/b/b/a/l$a;,
        Lcom/google/ads/interactivemedia/v3/b/b/a/l$b;
    }
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
.field private final a:Lcom/google/ads/interactivemedia/v3/b/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/b/s",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/ads/interactivemedia/v3/b/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/b/k",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/ads/interactivemedia/v3/b/f;

.field private final d:Lcom/google/ads/interactivemedia/v3/b/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/b/c/a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/ads/interactivemedia/v3/b/w;

.field private final f:Lcom/google/ads/interactivemedia/v3/b/b/a/l$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/b/b/a/l$a;"
        }
    .end annotation
.end field

.field private g:Lcom/google/ads/interactivemedia/v3/b/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/b/v",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/b/s;Lcom/google/ads/interactivemedia/v3/b/k;Lcom/google/ads/interactivemedia/v3/b/f;Lcom/google/ads/interactivemedia/v3/b/c/a;Lcom/google/ads/interactivemedia/v3/b/w;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/b/s",
            "<TT;>;",
            "Lcom/google/ads/interactivemedia/v3/b/k",
            "<TT;>;",
            "Lcom/google/ads/interactivemedia/v3/b/f;",
            "Lcom/google/ads/interactivemedia/v3/b/c/a",
            "<TT;>;",
            "Lcom/google/ads/interactivemedia/v3/b/w;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/v;-><init>()V

    .line 47
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/b/a/l$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/ads/interactivemedia/v3/b/b/a/l$a;-><init>(Lcom/google/ads/interactivemedia/v3/b/b/a/l;Lcom/google/ads/interactivemedia/v3/b/b/a/l$1;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/l;->f:Lcom/google/ads/interactivemedia/v3/b/b/a/l$a;

    .line 54
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/l;->a:Lcom/google/ads/interactivemedia/v3/b/s;

    .line 55
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/l;->b:Lcom/google/ads/interactivemedia/v3/b/k;

    .line 56
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/l;->c:Lcom/google/ads/interactivemedia/v3/b/f;

    .line 57
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/l;->d:Lcom/google/ads/interactivemedia/v3/b/c/a;

    .line 58
    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/l;->e:Lcom/google/ads/interactivemedia/v3/b/w;

    .line 59
    return-void
.end method

.method private a()Lcom/google/ads/interactivemedia/v3/b/v;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/ads/interactivemedia/v3/b/v",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/l;->g:Lcom/google/ads/interactivemedia/v3/b/v;

    .line 93
    if-eqz v0, :cond_5

    .line 95
    :goto_4
    return-object v0

    .line 93
    :cond_5
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/l;->c:Lcom/google/ads/interactivemedia/v3/b/f;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/l;->e:Lcom/google/ads/interactivemedia/v3/b/w;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/l;->d:Lcom/google/ads/interactivemedia/v3/b/c/a;

    .line 95
    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/b/f;->a(Lcom/google/ads/interactivemedia/v3/b/w;Lcom/google/ads/interactivemedia/v3/b/c/a;)Lcom/google/ads/interactivemedia/v3/b/v;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/l;->g:Lcom/google/ads/interactivemedia/v3/b/v;

    goto :goto_4
.end method

.method public static a(Lcom/google/ads/interactivemedia/v3/b/c/a;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/b/w;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/b/c/a",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/ads/interactivemedia/v3/b/w;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/b/a/l$b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/google/ads/interactivemedia/v3/b/b/a/l$b;-><init>(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/b/c/a;ZLjava/lang/Class;)V

    return-object v0
.end method

.method public static b(Lcom/google/ads/interactivemedia/v3/b/c/a;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/b/w;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/b/c/a",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/ads/interactivemedia/v3/b/w;"
        }
    .end annotation

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    .line 113
    :goto_b
    new-instance v1, Lcom/google/ads/interactivemedia/v3/b/b/a/l$b;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v0, v2}, Lcom/google/ads/interactivemedia/v3/b/b/a/l$b;-><init>(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/b/c/a;ZLjava/lang/Class;)V

    return-object v1

    .line 112
    :cond_12
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public read(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/lang/Object;
    .registers 6
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
    .line 62
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/l;->b:Lcom/google/ads/interactivemedia/v3/b/k;

    if-nez v0, :cond_d

    .line 63
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/b/a/l;->a()Lcom/google/ads/interactivemedia/v3/b/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/b/v;->read(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    :goto_c
    return-object v0

    .line 65
    :cond_d
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/b/b/j;->a(Lcom/google/ads/interactivemedia/v3/b/d/a;)Lcom/google/ads/interactivemedia/v3/b/l;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/b/l;->j()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 67
    const/4 v0, 0x0

    goto :goto_c

    .line 70
    :cond_19
    :try_start_19
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/l;->b:Lcom/google/ads/interactivemedia/v3/b/k;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/l;->d:Lcom/google/ads/interactivemedia/v3/b/c/a;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/b/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/l;->f:Lcom/google/ads/interactivemedia/v3/b/b/a/l$a;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/b/k;->b(Lcom/google/ads/interactivemedia/v3/b/l;Ljava/lang/reflect/Type;Lcom/google/ads/interactivemedia/v3/b/j;)Ljava/lang/Object;
    :try_end_26
    .catch Lcom/google/ads/interactivemedia/v3/b/p; {:try_start_19 .. :try_end_26} :catch_28
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_26} :catch_2a

    move-result-object v0

    goto :goto_c

    .line 71
    :catch_28
    move-exception v0

    .line 72
    throw v0

    .line 73
    :catch_2a
    move-exception v0

    .line 74
    new-instance v1, Lcom/google/ads/interactivemedia/v3/b/p;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/b/p;-><init>(Ljava/lang/Throwable;)V

    throw v1
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
    .line 79
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/l;->a:Lcom/google/ads/interactivemedia/v3/b/s;

    if-nez v0, :cond_c

    .line 80
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/b/a/l;->a()Lcom/google/ads/interactivemedia/v3/b/v;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/b/v;->write(Lcom/google/ads/interactivemedia/v3/b/d/c;Ljava/lang/Object;)V

    .line 89
    :goto_b
    return-void

    .line 83
    :cond_c
    if-nez p2, :cond_12

    .line 84
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/c;->f()Lcom/google/ads/interactivemedia/v3/b/d/c;

    goto :goto_b

    .line 87
    :cond_12
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/l;->a:Lcom/google/ads/interactivemedia/v3/b/s;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/l;->d:Lcom/google/ads/interactivemedia/v3/b/c/a;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/b/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/l;->f:Lcom/google/ads/interactivemedia/v3/b/b/a/l$a;

    invoke-interface {v0, p2, v1, v2}, Lcom/google/ads/interactivemedia/v3/b/s;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/ads/interactivemedia/v3/b/r;)Lcom/google/ads/interactivemedia/v3/b/l;

    move-result-object v0

    .line 88
    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/b/b/j;->a(Lcom/google/ads/interactivemedia/v3/b/l;Lcom/google/ads/interactivemedia/v3/b/d/c;)V

    goto :goto_b
.end method
