.class final Lcom/google/ads/interactivemedia/v3/b/b/a/n$26;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/b/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/b/b/a/n;->a(Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/b/v;)Lcom/google/ads/interactivemedia/v3/b/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Lcom/google/ads/interactivemedia/v3/b/v;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/b/v;)V
    .registers 3

    .prologue
    .line 850
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/n$26;->a:Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/n$26;->b:Lcom/google/ads/interactivemedia/v3/b/v;

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
    .line 853
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/b/c/a;->a()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/n$26;->a:Ljava/lang/Class;

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/n$26;->b:Lcom/google/ads/interactivemedia/v3/b/v;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Factory[type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/n$26;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",adapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/n$26;->b:Lcom/google/ads/interactivemedia/v3/b/v;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
