.class public final Lcom/google/ads/interactivemedia/v3/b/b/a/d;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/b/w;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/b/b/c;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/b/b/c;)V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/d;->a:Lcom/google/ads/interactivemedia/v3/b/b/c;

    .line 39
    return-void
.end method


# virtual methods
.method a(Lcom/google/ads/interactivemedia/v3/b/b/c;Lcom/google/ads/interactivemedia/v3/b/f;Lcom/google/ads/interactivemedia/v3/b/c/a;Lcom/google/ads/interactivemedia/v3/b/a/b;)Lcom/google/ads/interactivemedia/v3/b/v;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/b/b/c;",
            "Lcom/google/ads/interactivemedia/v3/b/f;",
            "Lcom/google/ads/interactivemedia/v3/b/c/a",
            "<*>;",
            "Lcom/google/ads/interactivemedia/v3/b/a/b;",
            ")",
            "Lcom/google/ads/interactivemedia/v3/b/v",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 55
    invoke-interface {p4}, Lcom/google/ads/interactivemedia/v3/b/a/b;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/b/c/a;->b(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/b/c/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/b/b/c;->a(Lcom/google/ads/interactivemedia/v3/b/c/a;)Lcom/google/ads/interactivemedia/v3/b/b/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/b/h;->a()Ljava/lang/Object;

    move-result-object v0

    .line 58
    instance-of v1, v0, Lcom/google/ads/interactivemedia/v3/b/v;

    if-eqz v1, :cond_1e

    .line 59
    check-cast v0, Lcom/google/ads/interactivemedia/v3/b/v;

    .line 76
    :goto_17
    if-eqz v0, :cond_1d

    .line 77
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/b/v;->nullSafe()Lcom/google/ads/interactivemedia/v3/b/v;

    move-result-object v0

    .line 80
    :cond_1d
    return-object v0

    .line 60
    :cond_1e
    instance-of v1, v0, Lcom/google/ads/interactivemedia/v3/b/w;

    if-eqz v1, :cond_29

    .line 61
    check-cast v0, Lcom/google/ads/interactivemedia/v3/b/w;

    invoke-interface {v0, p2, p3}, Lcom/google/ads/interactivemedia/v3/b/w;->a(Lcom/google/ads/interactivemedia/v3/b/f;Lcom/google/ads/interactivemedia/v3/b/c/a;)Lcom/google/ads/interactivemedia/v3/b/v;

    move-result-object v0

    goto :goto_17

    .line 62
    :cond_29
    instance-of v1, v0, Lcom/google/ads/interactivemedia/v3/b/s;

    if-nez v1, :cond_31

    instance-of v1, v0, Lcom/google/ads/interactivemedia/v3/b/k;

    if-eqz v1, :cond_4b

    .line 63
    :cond_31
    instance-of v1, v0, Lcom/google/ads/interactivemedia/v3/b/s;

    if-eqz v1, :cond_47

    move-object v1, v0

    check-cast v1, Lcom/google/ads/interactivemedia/v3/b/s;

    .line 66
    :goto_38
    instance-of v2, v0, Lcom/google/ads/interactivemedia/v3/b/k;

    if-eqz v2, :cond_49

    check-cast v0, Lcom/google/ads/interactivemedia/v3/b/k;

    move-object v2, v0

    .line 69
    :goto_3f
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/b/a/l;

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/b/b/a/l;-><init>(Lcom/google/ads/interactivemedia/v3/b/s;Lcom/google/ads/interactivemedia/v3/b/k;Lcom/google/ads/interactivemedia/v3/b/f;Lcom/google/ads/interactivemedia/v3/b/c/a;Lcom/google/ads/interactivemedia/v3/b/w;)V

    goto :goto_17

    :cond_47
    move-object v1, v5

    .line 63
    goto :goto_38

    :cond_49
    move-object v2, v5

    .line 66
    goto :goto_3f

    .line 71
    :cond_4b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "@JsonAdapter value must be TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer reference."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/b/f;Lcom/google/ads/interactivemedia/v3/b/c/a;)Lcom/google/ads/interactivemedia/v3/b/v;
    .registers 5
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
    .line 44
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/b/c/a;->a()Ljava/lang/Class;

    move-result-object v0

    .line 45
    const-class v1, Lcom/google/ads/interactivemedia/v3/b/a/b;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/b/a/b;

    .line 46
    if-nez v0, :cond_10

    .line 47
    const/4 v0, 0x0

    .line 49
    :goto_f
    return-object v0

    :cond_10
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/d;->a:Lcom/google/ads/interactivemedia/v3/b/b/c;

    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/google/ads/interactivemedia/v3/b/b/a/d;->a(Lcom/google/ads/interactivemedia/v3/b/b/c;Lcom/google/ads/interactivemedia/v3/b/f;Lcom/google/ads/interactivemedia/v3/b/c/a;Lcom/google/ads/interactivemedia/v3/b/a/b;)Lcom/google/ads/interactivemedia/v3/b/v;

    move-result-object v0

    goto :goto_f
.end method
