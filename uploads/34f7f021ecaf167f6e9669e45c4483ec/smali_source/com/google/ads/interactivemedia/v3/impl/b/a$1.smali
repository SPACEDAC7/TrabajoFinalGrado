.class Lcom/google/ads/interactivemedia/v3/impl/b/a$1;
.super Landroid/graphics/drawable/shapes/Shape;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/impl/b/a;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/b/d;Landroid/widget/TextView;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/b/a;)V
    .registers 2

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/Shape;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/b/a$1;->getHeight()F

    move-result v4

    move-object v0, p1

    move v2, v1

    move v3, v1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 79
    return-void
.end method
