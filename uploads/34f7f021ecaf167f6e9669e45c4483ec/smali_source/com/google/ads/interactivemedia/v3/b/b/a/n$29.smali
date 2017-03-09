.class final Lcom/google/ads/interactivemedia/v3/b/b/a/n$29;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/b/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/b/b/a/n;->b(Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/b/v;)Lcom/google/ads/interactivemedia/v3/b/w;
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
    .line 897
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/n$29;->a:Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/n$29;->b:Lcom/google/ads/interactivemedia/v3/b/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/b/f;Lcom/google/ads/interactivemedia/v3/b/c/a;)Lcom/google/ads/interactivemedia/v3/b/v;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/ads/interactivemedia/v3/b/f;",
            "Lcom/google/ads/interactivemedia/v3/b/c/a",
            "<TT2;>;)",
            "Lcom/google/ads/interactivemedia/v3/b/v",
            "<TT2;>;"
        }
    .end annotation

    .prologue
    .line 900
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/b/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    .line 901
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/n$29;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 902
    const/4 v0, 0x0

    .line 904
    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/b/a/n$29$1;

    invoke-direct {v0, p0, v1}, Lcom/google/ads/interactivemedia/v3/b/b/a/n$29$1;-><init>(Lcom/google/ads/interactivemedia/v3/b/b/a/n$29;Ljava/lang/Class;)V

    goto :goto_d
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Factory[typeHierarchy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/n$29;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",adapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/a/n$29;->b:Lcom/google/ads/interactivemedia/v3/b/v;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
