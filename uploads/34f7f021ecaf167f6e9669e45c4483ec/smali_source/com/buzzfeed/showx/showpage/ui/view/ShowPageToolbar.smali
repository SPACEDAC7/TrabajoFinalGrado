.class public Lcom/buzzfeed/showx/showpage/ui/view/ShowPageToolbar;
.super Landroid/support/v7/widget/Toolbar;
.source "ShowPageToolbar.java"


# instance fields
.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0}, Lcom/buzzfeed/showx/showpage/ui/view/ShowPageToolbar;->initialize()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0}, Lcom/buzzfeed/showx/showpage/ui/view/ShowPageToolbar;->initialize()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0}, Lcom/buzzfeed/showx/showpage/ui/view/ShowPageToolbar;->initialize()V

    .line 40
    return-void
.end method

.method private initialize()V
    .registers 3

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/ui/view/ShowPageToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/ui/view/ShowPageToolbar;->getLayoutResourceId()I

    move-result v1

    invoke-static {v0, v1, p0}, Lcom/buzzfeed/showx/showpage/ui/view/ShowPageToolbar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 44
    sget v0, Lcom/buzzfeed/showx/R$id;->toolbar_title:I

    invoke-static {p0, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/showx/showpage/ui/view/ShowPageToolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 52
    return-void
.end method


# virtual methods
.method protected getLayoutResourceId()I
    .registers 2
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    .prologue
    .line 83
    sget v0, Lcom/buzzfeed/showx/R$layout;->toolbar_actionbar_default:I

    return v0
.end method

.method public setTitle(I)V
    .registers 3
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 56
    const-string v0, ""

    invoke-super {p0, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ui/view/ShowPageToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 58
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 62
    const-string v0, ""

    invoke-super {p0, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ui/view/ShowPageToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method

.method public setTitleTextAlpha(F)V
    .registers 3
    .param p1, "alpha"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 78
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ui/view/ShowPageToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 79
    return-void
.end method

.method public setTitleTextAppearance(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 69
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ui/view/ShowPageToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 70
    return-void
.end method

.method public setTitleTextColor(I)V
    .registers 3
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 74
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ui/view/ShowPageToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    return-void
.end method
