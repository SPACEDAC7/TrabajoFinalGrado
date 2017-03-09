.class Lcom/google/ads/interactivemedia/v3/impl/x$a;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/a/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/impl/x;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/x;)V
    .registers 2

    .prologue
    .line 385
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/x$a;->a:Lcom/google/ads/interactivemedia/v3/impl/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 405
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/f;)V
    .registers 6

    .prologue
    .line 389
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x$a;->a:Lcom/google/ads/interactivemedia/v3/impl/x;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/x;->b(Lcom/google/ads/interactivemedia/v3/impl/x;)V

    .line 390
    const-string v0, "IMA SDK"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xd

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Player Error:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    return-void
.end method

.method public a(ZI)V
    .registers 5

    .prologue
    .line 395
    const/4 v0, 0x5

    if-ne p2, v0, :cond_1d

    .line 396
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x$a;->a:Lcom/google/ads/interactivemedia/v3/impl/x;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/x;->d(Lcom/google/ads/interactivemedia/v3/impl/x;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    .line 397
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onEnded()V

    goto :goto_d

    .line 400
    :cond_1d
    return-void
.end method
