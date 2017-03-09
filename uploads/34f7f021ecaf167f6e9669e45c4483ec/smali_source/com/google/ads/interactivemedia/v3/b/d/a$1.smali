.class final Lcom/google/ads/interactivemedia/v3/b/d/a$1;
.super Lcom/google/ads/interactivemedia/v3/b/b/e;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/b/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1585
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/b/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/b/d/a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1587
    instance-of v0, p1, Lcom/google/ads/interactivemedia/v3/b/b/a/e;

    if-eqz v0, :cond_a

    .line 1588
    check-cast p1, Lcom/google/ads/interactivemedia/v3/b/b/a/e;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/b/a/e;->o()V

    .line 1605
    :goto_9
    return-void

    .line 1591
    :cond_a
    iget v0, p1, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    .line 1592
    if-nez v0, :cond_12

    .line 1593
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->r()I

    move-result v0

    .line 1595
    :cond_12
    const/16 v1, 0xd

    if-ne v0, v1, :cond_1b

    .line 1596
    const/16 v0, 0x9

    iput v0, p1, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    goto :goto_9

    .line 1597
    :cond_1b
    const/16 v1, 0xc

    if-ne v0, v1, :cond_24

    .line 1598
    const/16 v0, 0x8

    iput v0, p1, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    goto :goto_9

    .line 1599
    :cond_24
    const/16 v1, 0xe

    if-ne v0, v1, :cond_2d

    .line 1600
    const/16 v0, 0xa

    iput v0, p1, Lcom/google/ads/interactivemedia/v3/b/d/a;->a:I

    goto :goto_9

    .line 1602
    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a name but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1603
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->f()Lcom/google/ads/interactivemedia/v3/b/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->a(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
