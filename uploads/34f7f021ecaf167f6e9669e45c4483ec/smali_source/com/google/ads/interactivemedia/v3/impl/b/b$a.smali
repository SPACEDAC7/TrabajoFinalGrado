.class Lcom/google/ads/interactivemedia/v3/impl/b/b$a;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/16 v2, 0xff

    .line 32
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/b/b$a$1;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/b/b$a$1;-><init>()V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/b$a;->a:Landroid/graphics/Paint;

    .line 53
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/b$a;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/b$a;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/b$a;->a:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 56
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/b$a;->a:Landroid/graphics/Paint;

    const/16 v1, 0x96

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/b$a;->b:Landroid/graphics/Paint;

    .line 59
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/b$a;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/b$a;->b:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/b$a;->b:Landroid/graphics/Paint;

    const/16 v1, 0x8c

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 62
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/drawable/shapes/Shape;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 5

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/b$a;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/shapes/Shape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 67
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/b$a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/shapes/Shape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 68
    return-void
.end method
