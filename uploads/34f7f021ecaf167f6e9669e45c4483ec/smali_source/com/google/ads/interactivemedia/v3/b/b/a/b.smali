.class public final Lcom/google/ads/interactivemedia/v3/b/b/a/b;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/b/w;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/b/b/a/b$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/b/b/c;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/b/b/c;)V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/b;->a:Lcom/google/ads/interactivemedia/v3/b/b/c;

    .line 41
    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/b/f;Lcom/google/ads/interactivemedia/v3/b/c/a;)Lcom/google/ads/interactivemedia/v3/b/v;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/ads/interactivemedia/v3/b/f;",
            "Lcom/google/ads/interactivemedia/v3/b/c/a",
            "<TT;>;)",
            "Lcom/google/ads/interactivemedia/v3/b/v",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/b/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 47
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/b/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    .line 48
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 49
    const/4 v0, 0x0

    .line 58
    :goto_11
    return-object v0

    .line 52
    :cond_12
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 53
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/b/c/a;->a(Ljava/lang/reflect/Type;)Lcom/google/ads/interactivemedia/v3/b/c/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/b/f;->a(Lcom/google/ads/interactivemedia/v3/b/c/a;)Lcom/google/ads/interactivemedia/v3/b/v;

    move-result-object v2

    .line 54
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/b;->a:Lcom/google/ads/interactivemedia/v3/b/b/c;

    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/b/b/c;->a(Lcom/google/ads/interactivemedia/v3/b/c/a;)Lcom/google/ads/interactivemedia/v3/b/b/h;

    move-result-object v3

    .line 57
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/b/a/b$a;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/b/b/a/b$a;-><init>(Lcom/google/ads/interactivemedia/v3/b/f;Ljava/lang/reflect/Type;Lcom/google/ads/interactivemedia/v3/b/v;Lcom/google/ads/interactivemedia/v3/b/b/h;)V

    goto :goto_11
.end method
