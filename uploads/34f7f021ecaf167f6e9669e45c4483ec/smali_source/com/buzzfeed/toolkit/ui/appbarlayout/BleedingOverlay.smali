.class public Lcom/buzzfeed/toolkit/ui/appbarlayout/BleedingOverlay;
.super Landroid/view/View;
.source "BleedingOverlay.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method


# virtual methods
.method public onOffsetChanged(IZ)V
    .registers 8
    .param p1, "offset"    # I
    .param p2, "invert"    # Z

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/ui/appbarlayout/BleedingOverlay;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/ui/appbarlayout/BleedingOverlay;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/buzzfeed/toolkit/util/UIUtil;->getActionBarHeight(Landroid/content/Context;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v1, v2

    .line 26
    .local v1, "flexibleRange":F
    invoke-static {}, Lcom/buzzfeed/toolkit/util/VersionUtil;->hasLollipop()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/ui/appbarlayout/BleedingOverlay;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/buzzfeed/toolkit/util/UIUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 28
    :cond_1e
    if-eqz p2, :cond_28

    .line 29
    float-to-int v2, v1

    sub-int p1, v2, p1

    .line 30
    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 33
    :cond_28
    const/high16 v2, 0x3f800000

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 34
    .local v0, "alpha":F
    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/ui/appbarlayout/BleedingOverlay;->setAlpha(F)V

    .line 35
    return-void
.end method
