.class final Lcom/google/ads/interactivemedia/v3/a/c/f/c$a;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/c/f/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:J


# direct methods
.method private constructor <init>(IJ)V
    .registers 4

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/c$a;->a:I

    .line 165
    iput-wide p2, p0, Lcom/google/ads/interactivemedia/v3/a/c/f/c$a;->b:J

    .line 166
    return-void
.end method

.method public static a(Lcom/google/ads/interactivemedia/v3/a/c/f;Lcom/google/ads/interactivemedia/v3/a/f/m;)Lcom/google/ads/interactivemedia/v3/a/c/f/c$a;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 179
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/a/f/m;->a:[B

    const/16 v1, 0x8

    invoke-interface {p0, v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/a/c/f;->c([BII)V

    .line 180
    invoke-virtual {p1, v2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 182
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v0

    .line 183
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->l()J

    move-result-wide v2

    .line 185
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/c/f/c$a;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/c/f/c$a;-><init>(IJ)V

    return-object v1
.end method
