.class Lcom/google/ads/interactivemedia/v3/b/v$1;
.super Lcom/google/ads/interactivemedia/v3/b/v;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/b/v;->nullSafe()Lcom/google/ads/interactivemedia/v3/b/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/ads/interactivemedia/v3/b/v",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/b/v;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/b/v;)V
    .registers 2

    .prologue
    .line 186
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/v$1;->a:Lcom/google/ads/interactivemedia/v3/b/v;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/v;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/lang/Object;
    .registers 4
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
    .line 195
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->f()Lcom/google/ads/interactivemedia/v3/b/d/b;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/b/d/b;->i:Lcom/google/ads/interactivemedia/v3/b/d/b;

    if-ne v0, v1, :cond_d

    .line 196
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->j()V

    .line 197
    const/4 v0, 0x0

    .line 199
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/v$1;->a:Lcom/google/ads/interactivemedia/v3/b/v;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/b/v;->read(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c
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
    .line 188
    if-nez p2, :cond_6

    .line 189
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/c;->f()Lcom/google/ads/interactivemedia/v3/b/d/c;

    .line 193
    :goto_5
    return-void

    .line 191
    :cond_6
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/v$1;->a:Lcom/google/ads/interactivemedia/v3/b/v;

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/b/v;->write(Lcom/google/ads/interactivemedia/v3/b/d/c;Ljava/lang/Object;)V

    goto :goto_5
.end method
