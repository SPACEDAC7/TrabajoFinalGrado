.class Lcom/google/ads/interactivemedia/v3/b/f$a;
.super Lcom/google/ads/interactivemedia/v3/b/v;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/ads/interactivemedia/v3/b/v",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/ads/interactivemedia/v3/b/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/b/v",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 955
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/v;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/b/v;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/b/v",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 959
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f$a;->a:Lcom/google/ads/interactivemedia/v3/b/v;

    if-eqz v0, :cond_a

    .line 960
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 962
    :cond_a
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/f$a;->a:Lcom/google/ads/interactivemedia/v3/b/v;

    .line 963
    return-void
.end method

.method public read(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/b/d/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 966
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f$a;->a:Lcom/google/ads/interactivemedia/v3/b/v;

    if-nez v0, :cond_a

    .line 967
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 969
    :cond_a
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f$a;->a:Lcom/google/ads/interactivemedia/v3/b/v;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/b/v;->read(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/google/ads/interactivemedia/v3/b/d/c;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/b/d/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 973
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f$a;->a:Lcom/google/ads/interactivemedia/v3/b/v;

    if-nez v0, :cond_a

    .line 974
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 976
    :cond_a
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f$a;->a:Lcom/google/ads/interactivemedia/v3/b/v;

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/b/v;->write(Lcom/google/ads/interactivemedia/v3/b/d/c;Ljava/lang/Object;)V

    .line 977
    return-void
.end method
