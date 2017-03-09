.class final Lcom/buzzfeed/toolkit/ui/appbarlayout/ScrollFlagHelper;
.super Ljava/lang/Object;
.source "ScrollFlagHelper.java"


# instance fields
.field private mFlags:I

.field private mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/design/widget/AppBarLayout;)V
    .registers 8
    .param p1, "layout"    # Landroid/support/design/widget/AppBarLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v5, "AppBarLayout must not be null."

    invoke-static {p1, v5}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_2a

    .line 28
    invoke-virtual {p1, v3}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 29
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 30
    .local v4, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v5, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    if-eqz v5, :cond_2b

    move-object v1, v4

    .line 31
    check-cast v1, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 32
    .local v1, "childLp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v2

    .line 33
    .local v2, "flags":I
    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_2b

    .line 34
    iput-object v0, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/ScrollFlagHelper;->mView:Landroid/view/View;

    .line 35
    iput v2, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/ScrollFlagHelper;->mFlags:I

    .line 40
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childLp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    .end local v2    # "flags":I
    .end local v4    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_2a
    return-void

    .line 27
    .restart local v0    # "child":Landroid/view/View;
    .restart local v4    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_9
.end method


# virtual methods
.method getView()Landroid/view/View;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/ScrollFlagHelper;->mView:Landroid/view/View;

    return-object v0
.end method

.method isFlagEnterAlwaysCollapsedEnabled()Z
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/ScrollFlagHelper;->mView:Landroid/view/View;

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/ScrollFlagHelper;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method isFlagEnterAlwaysEnabled()Z
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/ScrollFlagHelper;->mView:Landroid/view/View;

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/ScrollFlagHelper;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method isFlagExitUntilCollapsedEnabled()Z
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/ScrollFlagHelper;->mView:Landroid/view/View;

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/ScrollFlagHelper;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method isFlagScrollEnabled()Z
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/ScrollFlagHelper;->mView:Landroid/view/View;

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/ScrollFlagHelper;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method isQuickReturnEnabled()Z
    .registers 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/ui/appbarlayout/ScrollFlagHelper;->isFlagEnterAlwaysEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/ui/appbarlayout/ScrollFlagHelper;->isFlagEnterAlwaysCollapsedEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
