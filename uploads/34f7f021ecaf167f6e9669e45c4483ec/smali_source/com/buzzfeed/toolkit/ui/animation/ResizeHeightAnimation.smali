.class public Lcom/buzzfeed/toolkit/ui/animation/ResizeHeightAnimation;
.super Landroid/view/animation/Animation;
.source "ResizeHeightAnimation.java"


# instance fields
.field final startHeight:I

.field final targetHeight:I

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "targetHeight"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/buzzfeed/toolkit/ui/animation/ResizeHeightAnimation;->view:Landroid/view/View;

    .line 14
    iput p2, p0, Lcom/buzzfeed/toolkit/ui/animation/ResizeHeightAnimation;->targetHeight:I

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/buzzfeed/toolkit/ui/animation/ResizeHeightAnimation;->startHeight:I

    .line 16
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 7
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 20
    iget v1, p0, Lcom/buzzfeed/toolkit/ui/animation/ResizeHeightAnimation;->startHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/buzzfeed/toolkit/ui/animation/ResizeHeightAnimation;->targetHeight:I

    iget v3, p0, Lcom/buzzfeed/toolkit/ui/animation/ResizeHeightAnimation;->startHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 21
    .local v0, "newHeight":I
    iget-object v1, p0, Lcom/buzzfeed/toolkit/ui/animation/ResizeHeightAnimation;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 22
    iget-object v1, p0, Lcom/buzzfeed/toolkit/ui/animation/ResizeHeightAnimation;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 23
    return-void
.end method

.method public willChangeBounds()Z
    .registers 2

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method
