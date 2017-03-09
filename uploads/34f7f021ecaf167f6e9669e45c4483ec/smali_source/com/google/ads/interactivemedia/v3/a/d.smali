.class public final Lcom/google/ads/interactivemedia/v3/a/d;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field public a:[B

.field public b:[B

.field public c:I

.field public d:[I

.field public e:[I

.field public f:I

.field private final g:Landroid/media/MediaCodec$CryptoInfo;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget v0, Lcom/google/ads/interactivemedia/v3/a/f/q;->a:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_10

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d;->b()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v0

    :goto_d
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/d;->g:Landroid/media/MediaCodec$CryptoInfo;

    .line 56
    return-void

    .line 55
    :cond_10
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private b()Landroid/media/MediaCodec$CryptoInfo;
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 106
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    return-object v0
.end method

.method private c()V
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/d;->g:Landroid/media/MediaCodec$CryptoInfo;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d;->f:I

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/d;->d:[I

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/d;->e:[I

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/d;->b:[B

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/a/d;->a:[B

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/a/d;->c:I

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec$CryptoInfo;->set(I[I[I[B[BI)V

    .line 113
    return-void
.end method


# virtual methods
.method public a()Landroid/media/MediaCodec$CryptoInfo;
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/d;->g:Landroid/media/MediaCodec$CryptoInfo;

    return-object v0
.end method

.method public a(I[I[I[B[BI)V
    .registers 9

    .prologue
    .line 63
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/a/d;->f:I

    .line 64
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/a/d;->d:[I

    .line 65
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/a/d;->e:[I

    .line 66
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/a/d;->b:[B

    .line 67
    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/a/d;->a:[B

    .line 68
    iput p6, p0, Lcom/google/ads/interactivemedia/v3/a/d;->c:I

    .line 69
    sget v0, Lcom/google/ads/interactivemedia/v3/a/f/q;->a:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_15

    .line 70
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d;->c()V

    .line 72
    :cond_15
    return-void
.end method
