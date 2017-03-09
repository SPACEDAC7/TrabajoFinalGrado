.class final Lcom/google/ads/interactivemedia/v3/b/b/a/n$19;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/b/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/b/b/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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
    .line 591
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/b/c/a;->a()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/sql/Timestamp;

    if-eq v0, v1, :cond_a

    .line 592
    const/4 v0, 0x0

    .line 596
    :goto_9
    return-object v0

    .line 595
    :cond_a
    const-class v0, Ljava/util/Date;

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/b/f;->a(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/b/v;

    move-result-object v1

    .line 596
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/b/a/n$19$1;

    invoke-direct {v0, p0, v1}, Lcom/google/ads/interactivemedia/v3/b/b/a/n$19$1;-><init>(Lcom/google/ads/interactivemedia/v3/b/b/a/n$19;Lcom/google/ads/interactivemedia/v3/b/v;)V

    goto :goto_9
.end method
