.class Landroid/support/transition/ViewOverlay;
.super Ljava/lang/Object;
.source "ViewOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/ViewOverlay$OverlayViewGroup;
    }
.end annotation


# instance fields
.field protected mOverlayViewGroup:Landroid/support/transition/ViewOverlay$OverlayViewGroup;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostView"    # Landroid/view/ViewGroup;
    .param p3, "requestingView"    # Landroid/view/View;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;

    invoke-direct {v0, p1, p2, p3, p0}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/ViewOverlay;)V

    iput-object v0, p0, Landroid/support/transition/ViewOverlay;->mOverlayViewGroup:Landroid/support/transition/ViewOverlay$OverlayViewGroup;

    .line 48
    return-void
.end method

.method public static createFrom(Landroid/view/View;)Landroid/support/transition/ViewOverlay;
    .registers 7
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 64
    invoke-static {p0}, Landroid/support/transition/ViewOverlay;->getContentView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 65
    .local v1, "contentView":Landroid/view/ViewGroup;
    if-eqz v1, :cond_27

    .line 66
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 67
    .local v3, "numChildren":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v3, :cond_1d

    .line 68
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;

    if-eqz v4, :cond_1a

    .line 70
    check-cast v0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;

    .end local v0    # "child":Landroid/view/View;
    iget-object v4, v0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mViewOverlay:Landroid/support/transition/ViewOverlay;

    .line 75
    .end local v2    # "i":I
    .end local v3    # "numChildren":I
    :goto_19
    return-object v4

    .line 67
    .restart local v0    # "child":Landroid/view/View;
    .restart local v2    # "i":I
    .restart local v3    # "numChildren":I
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 73
    .end local v0    # "child":Landroid/view/View;
    :cond_1d
    new-instance v4, Landroid/support/transition/ViewGroupOverlay;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v1, p0}, Landroid/support/transition/ViewGroupOverlay;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_19

    .line 75
    .end local v2    # "i":I
    .end local v3    # "numChildren":I
    :cond_27
    const/4 v4, 0x0

    goto :goto_19
.end method

.method static getContentView(Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 51
    move-object v0, p0

    .line 52
    .local v0, "parent":Landroid/view/View;
    :cond_1
    :goto_1
    if-eqz v0, :cond_22

    .line 53
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x1020002

    if-ne v1, v2, :cond_13

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_13

    .line 54
    check-cast v0, Landroid/view/ViewGroup;

    .line 60
    .end local v0    # "parent":Landroid/view/View;
    :goto_12
    return-object v0

    .line 56
    .restart local v0    # "parent":Landroid/view/View;
    :cond_13
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .end local v0    # "parent":Landroid/view/View;
    check-cast v0, Landroid/view/ViewGroup;

    .restart local v0    # "parent":Landroid/view/View;
    goto :goto_1

    .line 60
    :cond_22
    const/4 v0, 0x0

    goto :goto_12
.end method


# virtual methods
.method public add(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 96
    iget-object v0, p0, Landroid/support/transition/ViewOverlay;->mOverlayViewGroup:Landroid/support/transition/ViewOverlay$OverlayViewGroup;

    invoke-virtual {v0, p1}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->add(Landroid/graphics/drawable/Drawable;)V

    .line 97
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Landroid/support/transition/ViewOverlay;->mOverlayViewGroup:Landroid/support/transition/ViewOverlay$OverlayViewGroup;

    invoke-virtual {v0}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->clear()V

    .line 114
    return-void
.end method

.method getOverlayView()Landroid/view/ViewGroup;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Landroid/support/transition/ViewOverlay;->mOverlayViewGroup:Landroid/support/transition/ViewOverlay$OverlayViewGroup;

    return-object v0
.end method

.method isEmpty()Z
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Landroid/support/transition/ViewOverlay;->mOverlayViewGroup:Landroid/support/transition/ViewOverlay$OverlayViewGroup;

    invoke-virtual {v0}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remove(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 106
    iget-object v0, p0, Landroid/support/transition/ViewOverlay;->mOverlayViewGroup:Landroid/support/transition/ViewOverlay$OverlayViewGroup;

    invoke-virtual {v0, p1}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 107
    return-void
.end method
