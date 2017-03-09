.class public final Lcom/google/ads/interactivemedia/v3/a/b/a$a;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/a/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lcom/google/ads/interactivemedia/v3/a/b/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/a$a;->a:Ljava/util/Map;

    .line 48
    return-void
.end method


# virtual methods
.method public a(Ljava/util/UUID;Lcom/google/ads/interactivemedia/v3/a/b/a$b;)V
    .registers 4

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/a$a;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 67
    if-eqz p1, :cond_d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v0, v2, :cond_f

    :cond_d
    move v0, v1

    .line 79
    :goto_e
    return v0

    .line 70
    :cond_f
    check-cast p1, Lcom/google/ads/interactivemedia/v3/a/b/a$a;

    .line 71
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/a$a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v2, p1, Lcom/google/ads/interactivemedia/v3/a/b/a$a;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-eq v0, v2, :cond_21

    move v0, v1

    .line 72
    goto :goto_e

    .line 74
    :cond_21
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/a$a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    .line 75
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/b/a$a;->a:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p1, Lcom/google/ads/interactivemedia/v3/a/b/a$a;->a:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/ads/interactivemedia/v3/a/f/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    move v0, v1

    .line 76
    goto :goto_e

    .line 79
    :cond_4b
    const/4 v0, 0x1

    goto :goto_e
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/a$a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method
