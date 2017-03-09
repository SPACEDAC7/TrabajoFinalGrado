.class final Lcom/google/ads/interactivemedia/v3/b/b/a/m;
.super Lcom/google/ads/interactivemedia/v3/b/v;
.source "IMASDK"


# annotations
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
.field private final a:Lcom/google/ads/interactivemedia/v3/b/f;

.field private final b:Lcom/google/ads/interactivemedia/v3/b/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/b/v",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/b/f;Lcom/google/ads/interactivemedia/v3/b/v;Ljava/lang/reflect/Type;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/b/f;",
            "Lcom/google/ads/interactivemedia/v3/b/v",
            "<TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/v;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/m;->a:Lcom/google/ads/interactivemedia/v3/b/f;

    .line 35
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/m;->b:Lcom/google/ads/interactivemedia/v3/b/v;

    .line 36
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/m;->c:Ljava/lang/reflect/Type;

    .line 37
    return-void
.end method

.method private a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;
    .registers 4

    .prologue
    .line 76
    if-eqz p2, :cond_12

    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_e

    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_e

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_12

    .line 78
    :cond_e
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 80
    :cond_12
    return-object p1
.end method


# virtual methods
.method public read(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/lang/Object;
    .registers 3
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
    .line 41
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/m;->b:Lcom/google/ads/interactivemedia/v3/b/v;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/b/v;->read(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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
    .line 53
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/m;->b:Lcom/google/ads/interactivemedia/v3/b/v;

    .line 54
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/m;->c:Ljava/lang/reflect/Type;

    invoke-direct {p0, v1, p2}, Lcom/google/ads/interactivemedia/v3/b/b/a/m;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 55
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/m;->c:Ljava/lang/reflect/Type;

    if-eq v1, v2, :cond_1a

    .line 56
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/m;->a:Lcom/google/ads/interactivemedia/v3/b/f;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/b/c/a;->a(Ljava/lang/reflect/Type;)Lcom/google/ads/interactivemedia/v3/b/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/f;->a(Lcom/google/ads/interactivemedia/v3/b/c/a;)Lcom/google/ads/interactivemedia/v3/b/v;

    move-result-object v0

    .line 57
    instance-of v1, v0, Lcom/google/ads/interactivemedia/v3/b/b/a/i$a;

    if-nez v1, :cond_1e

    .line 69
    :cond_1a
    :goto_1a
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/b/v;->write(Lcom/google/ads/interactivemedia/v3/b/d/c;Ljava/lang/Object;)V

    .line 70
    return-void

    .line 60
    :cond_1e
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/m;->b:Lcom/google/ads/interactivemedia/v3/b/v;

    instance-of v1, v1, Lcom/google/ads/interactivemedia/v3/b/b/a/i$a;

    if-nez v1, :cond_1a

    .line 63
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/m;->b:Lcom/google/ads/interactivemedia/v3/b/v;

    goto :goto_1a
.end method
