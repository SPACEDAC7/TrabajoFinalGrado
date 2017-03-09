.class Lcom/google/ads/interactivemedia/v3/b/b/a/n$29$1;
.super Lcom/google/ads/interactivemedia/v3/b/v;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/b/b/a/n$29;->a(Lcom/google/ads/interactivemedia/v3/b/f;Lcom/google/ads/interactivemedia/v3/b/c/a;)Lcom/google/ads/interactivemedia/v3/b/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/ads/interactivemedia/v3/b/v",
        "<TT1;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Lcom/google/ads/interactivemedia/v3/b/b/a/n$29;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/b/b/a/n$29;Ljava/lang/Class;)V
    .registers 3

    .prologue
    .line 904
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/n$29$1;->b:Lcom/google/ads/interactivemedia/v3/b/b/a/n$29;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/n$29$1;->a:Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/v;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/b/d/a;",
            ")TT1;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 910
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/n$29$1;->b:Lcom/google/ads/interactivemedia/v3/b/b/a/n$29;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/b/b/a/n$29;->b:Lcom/google/ads/interactivemedia/v3/b/v;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/b/v;->read(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/lang/Object;

    move-result-object v0

    .line 911
    if-eqz v0, :cond_43

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/n$29$1;->a:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 912
    new-instance v1, Lcom/google/ads/interactivemedia/v3/b/t;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/n$29$1;->a:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 913
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/b/t;-><init>(Ljava/lang/String;)V

    throw v1

    .line 915
    :cond_43
    return-object v0
.end method

.method public write(Lcom/google/ads/interactivemedia/v3/b/d/c;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/b/d/c;",
            "TT1;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 906
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/n$29$1;->b:Lcom/google/ads/interactivemedia/v3/b/b/a/n$29;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/b/b/a/n$29;->b:Lcom/google/ads/interactivemedia/v3/b/v;

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/b/v;->write(Lcom/google/ads/interactivemedia/v3/b/d/c;Ljava/lang/Object;)V

    .line 907
    return-void
.end method
