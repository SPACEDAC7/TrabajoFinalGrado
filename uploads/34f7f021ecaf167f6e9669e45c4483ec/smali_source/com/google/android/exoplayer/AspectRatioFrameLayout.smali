.class public final Lcom/google/android/exoplayer/AspectRatioFrameLayout;
.super Landroid/widget/FrameLayout;
.source "AspectRatioFrameLayout.java"


# static fields
.field private static final MAX_ASPECT_RATIO_DEFORMATION_FRACTION:F = 0.01f


# instance fields
.field private videoAspectRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v7, 0x40000000

    const/4 v6, 0x0

    .line 62
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 63
    iget v4, p0, Lcom/google/android/exoplayer/AspectRatioFrameLayout;->videoAspectRatio:F

    cmpl-float v4, v4, v6

    if-nez v4, :cond_d

    .line 84
    :cond_c
    :goto_c
    return-void

    .line 68
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/exoplayer/AspectRatioFrameLayout;->getMeasuredWidth()I

    move-result v3

    .line 69
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/AspectRatioFrameLayout;->getMeasuredHeight()I

    move-result v1

    .line 70
    .local v1, "height":I
    int-to-float v4, v3

    int-to-float v5, v1

    div-float v2, v4, v5

    .line 71
    .local v2, "viewAspectRatio":F
    iget v4, p0, Lcom/google/android/exoplayer/AspectRatioFrameLayout;->videoAspectRatio:F

    div-float/2addr v4, v2

    const/high16 v5, 0x3f800000

    sub-float v0, v4, v5

    .line 72
    .local v0, "aspectDeformation":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3c23d70a

    cmpg-float v4, v4, v5

    if-lez v4, :cond_c

    .line 77
    cmpl-float v4, v0, v6

    if-lez v4, :cond_40

    .line 78
    int-to-float v4, v3

    iget v5, p0, Lcom/google/android/exoplayer/AspectRatioFrameLayout;->videoAspectRatio:F

    div-float/2addr v4, v5

    float-to-int v1, v4

    .line 82
    :goto_34
    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 83
    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 82
    invoke-super {p0, v4, v5}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_c

    .line 80
    :cond_40
    int-to-float v4, v1

    iget v5, p0, Lcom/google/android/exoplayer/AspectRatioFrameLayout;->videoAspectRatio:F

    mul-float/2addr v4, v5

    float-to-int v3, v4

    goto :goto_34
.end method

.method public setAspectRatio(F)V
    .registers 3
    .param p1, "widthHeightRatio"    # F

    .prologue
    .line 54
    iget v0, p0, Lcom/google/android/exoplayer/AspectRatioFrameLayout;->videoAspectRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    .line 55
    iput p1, p0, Lcom/google/android/exoplayer/AspectRatioFrameLayout;->videoAspectRatio:F

    .line 56
    invoke-virtual {p0}, Lcom/google/android/exoplayer/AspectRatioFrameLayout;->requestLayout()V

    .line 58
    :cond_b
    return-void
.end method
