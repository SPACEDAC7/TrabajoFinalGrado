.class Lcom/google/ads/interactivemedia/v3/impl/b/b$a$1;
.super Landroid/graphics/drawable/shapes/Shape;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/impl/b/b$a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Landroid/graphics/Path;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/Shape;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/b$a$1;->a:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 49
    return-void
.end method

.method public onResize(FF)V
    .registers 12

    .prologue
    const/high16 v8, 0x42b40000

    const/4 v7, 0x0

    .line 36
    const/4 v0, 0x6

    .line 37
    const/16 v1, 0xc

    .line 38
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/b/b$a$1;->a:Landroid/graphics/Path;

    .line 39
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/b/b$a$1;->a:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/b/b$a$1;->getWidth()F

    move-result v3

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/b/b$a$1;->getHeight()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 40
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/b/b$a$1;->a:Landroid/graphics/Path;

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/b/b$a$1;->getHeight()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 41
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/b/b$a$1;->a:Landroid/graphics/Path;

    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/b/b$a$1;->getHeight()F

    move-result v4

    int-to-float v5, v1

    sub-float/2addr v4, v5

    int-to-float v5, v1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/b/b$a$1;->getHeight()F

    move-result v6

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v2, v3, v8, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 42
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/b/b$a$1;->a:Landroid/graphics/Path;

    int-to-float v0, v0

    invoke-virtual {v2, v7, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 43
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/b$a$1;->a:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/RectF;

    int-to-float v3, v1

    int-to-float v1, v1

    invoke-direct {v2, v7, v7, v3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v1, 0x43340000

    invoke-virtual {v0, v2, v1, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 44
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/b$a$1;->a:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/b/b$a$1;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 45
    return-void
.end method
