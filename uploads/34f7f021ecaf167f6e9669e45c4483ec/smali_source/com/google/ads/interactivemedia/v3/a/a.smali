.class public final Lcom/google/ads/interactivemedia/v3/a/a;
.super Landroid/widget/FrameLayout;
.source "IMASDK"


# instance fields
.field private a:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method


# virtual methods
.method public a(F)V
    .registers 3

    .prologue
    .line 54
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/a;->a:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    .line 55
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/a/a;->a:F

    .line 56
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/a;->requestLayout()V

    .line 58
    :cond_b
    return-void
.end method

.method protected onMeasure(II)V
    .registers 10

    .prologue
    const/high16 v6, 0x40000000

    const/4 v5, 0x0

    .line 62
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 63
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/a;->a:F

    cmpl-float v0, v0, v5

    if-nez v0, :cond_d

    .line 84
    :cond_c
    :goto_c
    return-void

    .line 68
    :cond_d
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/a;->getMeasuredWidth()I

    move-result v1

    .line 69
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/a;->getMeasuredHeight()I

    move-result v0

    .line 70
    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    .line 71
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/a;->a:F

    div-float v2, v3, v2

    const/high16 v3, 0x3f800000

    sub-float/2addr v2, v3

    .line 72
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3c23d70a

    cmpg-float v3, v3, v4

    if-lez v3, :cond_c

    .line 77
    cmpl-float v2, v2, v5

    if-lez v2, :cond_3f

    .line 78
    int-to-float v0, v1

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/a;->a:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 82
    :goto_33
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 83
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 82
    invoke-super {p0, v1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_c

    .line 80
    :cond_3f
    int-to-float v1, v0

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/a;->a:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_33
.end method
