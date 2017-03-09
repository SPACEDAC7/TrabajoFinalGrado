.class public Lcom/buzzfeed/toolkit/ui/behavior/BottomNavigationBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;
.source "BottomNavigationBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/design/widget/CoordinatorLayout$Behavior",
        "<TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    .local p0, "this":Lcom/buzzfeed/toolkit/ui/behavior/BottomNavigationBehavior;, "Lcom/buzzfeed/toolkit/ui/behavior/BottomNavigationBehavior<TV;>;"
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method private updateSnackbarClearance(Landroid/support/design/widget/Snackbar$SnackbarLayout;Landroid/view/View;)V
    .registers 5
    .param p1, "snackBarLayout"    # Landroid/support/design/widget/Snackbar$SnackbarLayout;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 36
    .local p0, "this":Lcom/buzzfeed/toolkit/ui/behavior/BottomNavigationBehavior;, "Lcom/buzzfeed/toolkit/ui/behavior/BottomNavigationBehavior<TV;>;"
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_7

    .line 48
    :goto_6
    return-void

    .line 41
    :cond_7
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 44
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 45
    .local v0, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 47
    invoke-virtual {p2}, Landroid/view/View;->bringToFront()V

    goto :goto_6
.end method


# virtual methods
.method public layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .registers 5
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "dependency"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/buzzfeed/toolkit/ui/behavior/BottomNavigationBehavior;, "Lcom/buzzfeed/toolkit/ui/behavior/BottomNavigationBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    instance-of v0, p3, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    if-eqz v0, :cond_b

    .line 23
    check-cast p3, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    .end local p3    # "dependency":Landroid/view/View;
    invoke-direct {p0, p3, p2}, Lcom/buzzfeed/toolkit/ui/behavior/BottomNavigationBehavior;->updateSnackbarClearance(Landroid/support/design/widget/Snackbar$SnackbarLayout;Landroid/view/View;)V

    .line 24
    const/4 v0, 0x1

    .line 27
    :goto_a
    return v0

    .restart local p3    # "dependency":Landroid/view/View;
    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
