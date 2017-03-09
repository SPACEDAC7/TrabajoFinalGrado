.class public Lcom/buzzfeed/spicerack/ui/sharebar/ShareBarItemView;
.super Landroid/widget/FrameLayout;
.source "ShareBarItemView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0}, Lcom/buzzfeed/spicerack/ui/sharebar/ShareBarItemView;->init()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0}, Lcom/buzzfeed/spicerack/ui/sharebar/ShareBarItemView;->init()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0}, Lcom/buzzfeed/spicerack/ui/sharebar/ShareBarItemView;->init()V

    .line 34
    return-void
.end method

.method private init()V
    .registers 3

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/ui/sharebar/ShareBarItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/buzzfeed/nativecontent/R$layout;->view_share_bar_item:I

    invoke-static {v0, v1, p0}, Lcom/buzzfeed/spicerack/ui/sharebar/ShareBarItemView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 38
    return-void
.end method


# virtual methods
.method public populateFrom(Lcom/buzzfeed/spicerack/data/sharebar/ShareBarItem;ZZ)V
    .registers 11
    .param p1, "item"    # Lcom/buzzfeed/spicerack/data/sharebar/ShareBarItem;
    .param p2, "isLeft"    # Z
    .param p3, "isRight"    # Z

    .prologue
    const/4 v4, 0x0

    .line 41
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/ui/sharebar/ShareBarItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/buzzfeed/nativecontent/R$dimen;->share_bar_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/high16 v6, 0x3f800000

    invoke-direct {v2, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 42
    .local v2, "parms":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz p2, :cond_35

    move v1, v4

    .line 43
    .local v1, "leftMargin":I
    :goto_15
    if-eqz p3, :cond_40

    move v3, v4

    .line 44
    .local v3, "rightMargin":I
    :goto_18
    invoke-virtual {v2, v1, v4, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 45
    invoke-virtual {p0, v2}, Lcom/buzzfeed/spicerack/ui/sharebar/ShareBarItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    invoke-interface {p1}, Lcom/buzzfeed/spicerack/data/sharebar/ShareBarItem;->getBackgroundDrawableResource()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/buzzfeed/spicerack/ui/sharebar/ShareBarItemView;->setBackgroundResource(I)V

    .line 48
    sget v4, Lcom/buzzfeed/nativecontent/R$id;->view_share_bar_item_image:I

    invoke-static {p0, v4}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 49
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-interface {p1}, Lcom/buzzfeed/spicerack/data/sharebar/ShareBarItem;->getImageResource()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 50
    return-void

    .line 42
    .end local v0    # "imageView":Landroid/widget/ImageView;
    .end local v1    # "leftMargin":I
    .end local v3    # "rightMargin":I
    :cond_35
    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/ui/sharebar/ShareBarItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/buzzfeed/nativecontent/R$dimen;->share_bar_margin_half:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_15

    .line 43
    .restart local v1    # "leftMargin":I
    :cond_40
    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/ui/sharebar/ShareBarItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/buzzfeed/nativecontent/R$dimen;->share_bar_margin_half:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_18
.end method
