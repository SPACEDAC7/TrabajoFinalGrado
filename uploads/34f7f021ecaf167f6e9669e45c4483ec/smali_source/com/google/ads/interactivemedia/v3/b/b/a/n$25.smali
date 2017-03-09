.class final Lcom/google/ads/interactivemedia/v3/b/b/a/n$25;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/b/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/b/b/a/n;->a(Lcom/google/ads/interactivemedia/v3/b/c/a;Lcom/google/ads/interactivemedia/v3/b/v;)Lcom/google/ads/interactivemedia/v3/b/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/b/c/a;

.field final synthetic b:Lcom/google/ads/interactivemedia/v3/b/v;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/b/c/a;Lcom/google/ads/interactivemedia/v3/b/v;)V
    .registers 3

    .prologue
    .line 840
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/n$25;->a:Lcom/google/ads/interactivemedia/v3/b/c/a;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/n$25;->b:Lcom/google/ads/interactivemedia/v3/b/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/b/f;Lcom/google/ads/interactivemedia/v3/b/c/a;)Lcom/google/ads/interactivemedia/v3/b/v;
    .registers 4
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
    .line 843
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/n$25;->a:Lcom/google/ads/interactivemedia/v3/b/c/a;

    invoke-virtual {p2, v0}, Lcom/google/ads/interactivemedia/v3/b/c/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/n$25;->b:Lcom/google/ads/interactivemedia/v3/b/v;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
