.class Lcom/google/ads/interactivemedia/v3/b/b/d$1;
.super Lcom/google/ads/interactivemedia/v3/b/v;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/b/b/d;->a(Lcom/google/ads/interactivemedia/v3/b/f;Lcom/google/ads/interactivemedia/v3/b/c/a;)Lcom/google/ads/interactivemedia/v3/b/v;
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
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/google/ads/interactivemedia/v3/b/f;

.field final synthetic d:Lcom/google/ads/interactivemedia/v3/b/c/a;

.field final synthetic e:Lcom/google/ads/interactivemedia/v3/b/b/d;

.field private f:Lcom/google/ads/interactivemedia/v3/b/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/b/v",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/b/b/d;ZZLcom/google/ads/interactivemedia/v3/b/f;Lcom/google/ads/interactivemedia/v3/b/c/a;)V
    .registers 6

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/b/d$1;->e:Lcom/google/ads/interactivemedia/v3/b/b/d;

    iput-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/b/b/d$1;->a:Z

    iput-boolean p3, p0, Lcom/google/ads/interactivemedia/v3/b/b/d$1;->b:Z

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/b/b/d$1;->c:Lcom/google/ads/interactivemedia/v3/b/f;

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/b/b/d$1;->d:Lcom/google/ads/interactivemedia/v3/b/c/a;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/v;-><init>()V

    return-void
.end method

.method private a()Lcom/google/ads/interactivemedia/v3/b/v;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/ads/interactivemedia/v3/b/v",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/d$1;->f:Lcom/google/ads/interactivemedia/v3/b/v;

    .line 142
    if-eqz v0, :cond_5

    .line 144
    :goto_4
    return-object v0

    .line 142
    :cond_5
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/d$1;->c:Lcom/google/ads/interactivemedia/v3/b/f;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/d$1;->e:Lcom/google/ads/interactivemedia/v3/b/b/d;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/b/d$1;->d:Lcom/google/ads/interactivemedia/v3/b/c/a;

    .line 144
    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/b/f;->a(Lcom/google/ads/interactivemedia/v3/b/w;Lcom/google/ads/interactivemedia/v3/b/c/a;)Lcom/google/ads/interactivemedia/v3/b/v;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/d$1;->f:Lcom/google/ads/interactivemedia/v3/b/v;

    goto :goto_4
.end method


# virtual methods
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
    .line 125
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/d$1;->a:Z

    if-eqz v0, :cond_9

    .line 126
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->n()V

    .line 127
    const/4 v0, 0x0

    .line 129
    :goto_8
    return-object v0

    :cond_9
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/b/d$1;->a()Lcom/google/ads/interactivemedia/v3/b/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/b/v;->read(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_8
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
    .line 133
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/d$1;->b:Z

    if-eqz v0, :cond_8

    .line 134
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/c;->f()Lcom/google/ads/interactivemedia/v3/b/d/c;

    .line 138
    :goto_7
    return-void

    .line 137
    :cond_8
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/b/d$1;->a()Lcom/google/ads/interactivemedia/v3/b/v;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/b/v;->write(Lcom/google/ads/interactivemedia/v3/b/d/c;Ljava/lang/Object;)V

    goto :goto_7
.end method
