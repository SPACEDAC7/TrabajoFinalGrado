.class public Lcom/buzzfeed/android/ui/widget/ResponsiveWidthLayout;
.super Landroid/widget/RelativeLayout;
.source "ResponsiveWidthLayout.java"


# instance fields
.field private maxWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/buzzfeed/android/ui/widget/ResponsiveWidthLayout;->maxWidth:I

    .line 15
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/widget/ResponsiveWidthLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0099

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/buzzfeed/android/ui/widget/ResponsiveWidthLayout;->maxWidth:I

    .line 16
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 21
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 22
    .local v1, "measuredWidth":I
    iget v2, p0, Lcom/buzzfeed/android/ui/widget/ResponsiveWidthLayout;->maxWidth:I

    if-lez v2, :cond_16

    iget v2, p0, Lcom/buzzfeed/android/ui/widget/ResponsiveWidthLayout;->maxWidth:I

    if-ge v2, v1, :cond_16

    .line 23
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 24
    .local v0, "measureMode":I
    iget v2, p0, Lcom/buzzfeed/android/ui/widget/ResponsiveWidthLayout;->maxWidth:I

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 26
    .end local v0    # "measureMode":I
    :cond_16
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 27
    return-void
.end method
