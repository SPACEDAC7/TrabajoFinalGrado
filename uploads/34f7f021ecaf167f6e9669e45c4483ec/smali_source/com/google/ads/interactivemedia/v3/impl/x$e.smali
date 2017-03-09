.class Lcom/google/ads/interactivemedia/v3/impl/x$e;
.super Lcom/google/ads/interactivemedia/v3/impl/x$d;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/a/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic b:Lcom/google/ads/interactivemedia/v3/impl/x;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/x;)V
    .registers 2

    .prologue
    .line 336
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/x$e;->b:Lcom/google/ads/interactivemedia/v3/impl/x;

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/x$d;-><init>(Lcom/google/ads/interactivemedia/v3/impl/x;)V

    return-void
.end method


# virtual methods
.method public a(IIIF)V
    .registers 8

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/x$e;->b:Lcom/google/ads/interactivemedia/v3/impl/x;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/x;->c(Lcom/google/ads/interactivemedia/v3/impl/x;)Lcom/google/ads/interactivemedia/v3/a/a;

    move-result-object v1

    if-nez p2, :cond_e

    .line 353
    const/high16 v0, 0x3f800000

    .line 352
    :goto_a
    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/a;->a(F)V

    .line 354
    return-void

    .line 353
    :cond_e
    int-to-float v0, p1

    mul-float/2addr v0, p4

    int-to-float v2, p2

    div-float/2addr v0, v2

    goto :goto_a
.end method

.method public a(IJ)V
    .registers 4

    .prologue
    .line 347
    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .registers 2

    .prologue
    .line 342
    return-void
.end method
