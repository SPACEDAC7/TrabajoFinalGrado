.class abstract Lcom/google/ads/interactivemedia/v3/a/c/d/f;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field protected final a:Lcom/google/ads/interactivemedia/v3/a/f/m;

.field protected final b:Lcom/google/ads/interactivemedia/v3/a/c/d/c;

.field protected c:Lcom/google/ads/interactivemedia/v3/a/c/m;

.field protected d:Lcom/google/ads/interactivemedia/v3/a/c/g;


# direct methods
.method constructor <init>()V
    .registers 4

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f/m;

    const v1, 0xfe01

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;-><init>([BI)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/f;->a:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 18
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/d/c;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/a/c/d/c;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/f;->b:Lcom/google/ads/interactivemedia/v3/a/c/d/c;

    return-void
.end method


# virtual methods
.method abstract a(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/c/j;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method a(Lcom/google/ads/interactivemedia/v3/a/c/g;Lcom/google/ads/interactivemedia/v3/a/c/m;)V
    .registers 3

    .prologue
    .line 25
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/f;->d:Lcom/google/ads/interactivemedia/v3/a/c/g;

    .line 26
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/f;->c:Lcom/google/ads/interactivemedia/v3/a/c/m;

    .line 27
    return-void
.end method

.method b()V
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/f;->b:Lcom/google/ads/interactivemedia/v3/a/c/d/c;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/d/c;->a()V

    .line 34
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/d/f;->a:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->a()V

    .line 35
    return-void
.end method
