.class public Lcom/buzzfeed/toolkit/ui/view/ForceAspectFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ForceAspectFrameLayout.java"


# instance fields
.field private aspectRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/buzzfeed/toolkit/ui/view/ForceAspectFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/buzzfeed/toolkit/ui/view/ForceAspectFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    iput v2, p0, Lcom/buzzfeed/toolkit/ui/view/ForceAspectFrameLayout;->aspectRatio:F

    .line 27
    sget-object v1, Lcom/buzzfeed/toolkit/R$styleable;->ForceAspect:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 28
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/buzzfeed/toolkit/R$styleable;->ForceAspect_aspectRatio:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/buzzfeed/toolkit/ui/view/ForceAspectFrameLayout;->aspectRatio:F

    .line 29
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v7, 0x40000000

    const/high16 v6, 0x3f800000

    .line 37
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 38
    iget v4, p0, Lcom/buzzfeed/toolkit/ui/view/ForceAspectFrameLayout;->aspectRatio:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_f

    .line 58
    :goto_e
    return-void

    .line 42
    :cond_f
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 43
    .local v2, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 44
    .local v3, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 45
    .local v0, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 47
    .local v1, "heightSize":I
    if-ne v2, v7, :cond_2d

    .line 48
    if-eq v0, v7, :cond_29

    .line 49
    int-to-float v4, v3

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/buzzfeed/toolkit/ui/view/ForceAspectFrameLayout;->aspectRatio:F

    div-float/2addr v4, v5

    float-to-int v1, v4

    .line 57
    :cond_29
    :goto_29
    invoke-virtual {p0, v3, v1}, Lcom/buzzfeed/toolkit/ui/view/ForceAspectFrameLayout;->setMeasuredDimension(II)V

    goto :goto_e

    .line 51
    :cond_2d
    if-ne v0, v7, :cond_36

    .line 52
    int-to-float v4, v1

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/buzzfeed/toolkit/ui/view/ForceAspectFrameLayout;->aspectRatio:F

    mul-float/2addr v4, v5

    float-to-int v3, v4

    goto :goto_29

    .line 54
    :cond_36
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/ui/view/ForceAspectFrameLayout;->getMeasuredWidth()I

    move-result v3

    .line 55
    int-to-float v4, v3

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/buzzfeed/toolkit/ui/view/ForceAspectFrameLayout;->aspectRatio:F

    div-float/2addr v4, v5

    float-to-int v1, v4

    goto :goto_29
.end method

.method public setAspectRatio(F)V
    .registers 2
    .param p1, "aspectRatio"    # F

    .prologue
    .line 32
    iput p1, p0, Lcom/buzzfeed/toolkit/ui/view/ForceAspectFrameLayout;->aspectRatio:F

    .line 33
    return-void
.end method
