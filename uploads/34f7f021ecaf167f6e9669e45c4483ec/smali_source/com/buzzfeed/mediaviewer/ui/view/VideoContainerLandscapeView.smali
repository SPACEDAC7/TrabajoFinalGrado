.class public Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerLandscapeView;
.super Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;
.source "VideoContainerLandscapeView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 28
    return-void
.end method

.method private anchorHeaderToRightOfBackButton()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 43
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerLandscapeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 44
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 46
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    sget v3, Lcom/buzzfeed/mediaviewer/R$id;->closeButton:I

    invoke-virtual {v0, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 47
    sget v3, Lcom/buzzfeed/mediaviewer/R$dimen;->padding_large:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 48
    .local v2, "sideMargin":I
    invoke-virtual {v0, v4, v2, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 49
    iget-object v3, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerLandscapeView;->mHeaderView:Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;

    invoke-virtual {v3, v0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    iget-object v3, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerLandscapeView;->mFitSystemContainer:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerLandscapeView;->mHeaderView:Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 52
    iget-object v3, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerLandscapeView;->mHeaderView:Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;

    invoke-virtual {v3}, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 53
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/high16 v3, 0x40800000

    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerLandscapeView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v5, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 54
    return-void
.end method


# virtual methods
.method protected initialize(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->initialize(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerLandscapeView;->anchorHeaderToRightOfBackButton()V

    .line 34
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerLandscapeView;->anchorFooterToBottom()V

    .line 35
    return-void
.end method

.method protected setupHeaderAndFooterViewsIfNeeded()V
    .registers 1

    .prologue
    .line 40
    return-void
.end method
