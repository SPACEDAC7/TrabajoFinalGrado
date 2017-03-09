.class final Lcom/google/ads/interactivemedia/v3/a/c/e/n;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/a/c/m;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/a/c/m;)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/n;->a:Lcom/google/ads/interactivemedia/v3/a/c/m;

    .line 36
    const-string v2, "application/eia-608"

    const/4 v3, -0x1

    const-wide/16 v4, -0x1

    move-object v6, v1

    invoke-static/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/a/p;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lcom/google/ads/interactivemedia/v3/a/p;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/p;)V

    .line 38
    return-void
.end method


# virtual methods
.method public a(JLcom/google/ads/interactivemedia/v3/a/f/m;)V
    .registers 13

    .prologue
    const/16 v8, 0xff

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 42
    :goto_4
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/a/f/m;->b()I

    move-result v0

    if-le v0, v4, :cond_31

    move v0, v6

    .line 46
    :cond_b
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v1

    .line 47
    add-int/2addr v0, v1

    .line 48
    if-eq v1, v8, :cond_b

    move v5, v6

    .line 52
    :cond_13
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v1

    .line 53
    add-int/2addr v5, v1

    .line 54
    if-eq v1, v8, :cond_13

    .line 56
    invoke-static {v0, v5, p3}, Lcom/google/ads/interactivemedia/v3/a/d/a/a;->a(IILcom/google/ads/interactivemedia/v3/a/f/m;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 57
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/n;->a:Lcom/google/ads/interactivemedia/v3/a/c/m;

    invoke-interface {v0, p3, v5}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/f/m;I)V

    .line 58
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/e/n;->a:Lcom/google/ads/interactivemedia/v3/a/c/m;

    const/4 v7, 0x0

    move-wide v2, p1

    invoke-interface/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(JIII[B)V

    goto :goto_4

    .line 60
    :cond_2d
    invoke-virtual {p3, v5}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d(I)V

    goto :goto_4

    .line 63
    :cond_31
    return-void
.end method
