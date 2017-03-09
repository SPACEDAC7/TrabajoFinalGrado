.class public Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "LinearLayoutCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/LinearLayoutCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public gravity:I

.field public weight:F


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1795
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1775
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1796
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 1797
    return-void
.end method

.method public constructor <init>(IIF)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "weight"    # F

    .prologue
    .line 1810
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1775
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1811
    iput p3, p0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 1812
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, -0x1

    .line 1781
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1775
    iput v3, p0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1782
    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_Layout:[I

    .line 1783
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1785
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_Layout_android_layout_weight:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 1786
    sget v1, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_Layout_android_layout_gravity:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1788
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1789
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;)V
    .registers 3
    .param p1, "source"    # Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .prologue
    .line 1835
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1775
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1837
    iget v0, p1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 1838
    iget v0, p1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1839
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1818
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1775
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1819
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 3
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 1825
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1775
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1826
    return-void
.end method
