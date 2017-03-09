.class public Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;
.super Landroid/widget/FrameLayout;
.source "VideoFooterView.java"


# instance fields
.field private mDivider:Landroid/view/View;

.field private mRecipeTextView:Landroid/widget/TextView;

.field private mShareButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;->initialize()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;->initialize()V

    .line 40
    return-void
.end method


# virtual methods
.method protected inflateView()V
    .registers 3

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/buzzfeed/mediaviewer/R$layout;->view_footer_layout:I

    invoke-static {v0, v1, p0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 51
    return-void
.end method

.method protected initialize()V
    .registers 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;->inflateView()V

    .line 44
    sget v0, Lcom/buzzfeed/mediaviewer/R$id;->divider:I

    invoke-static {p0, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;->mDivider:Landroid/view/View;

    .line 45
    sget v0, Lcom/buzzfeed/mediaviewer/R$id;->share_button:I

    invoke-static {p0, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;->mShareButton:Landroid/widget/ImageButton;

    .line 46
    sget v0, Lcom/buzzfeed/mediaviewer/R$id;->recipe_button:I

    invoke-static {p0, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;->mRecipeTextView:Landroid/widget/TextView;

    .line 47
    return-void
.end method

.method public setDividerVisible(Z)V
    .registers 4
    .param p1, "shown"    # Z

    .prologue
    .line 66
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;->mDivider:Landroid/view/View;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 67
    return-void

    .line 66
    :cond_9
    const/16 v0, 0x8

    goto :goto_5
.end method

.method public setRecipeButtonClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 54
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;->mRecipeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method

.method public setRecipeButtonVisible(Z)V
    .registers 4
    .param p1, "shown"    # Z

    .prologue
    .line 62
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;->mRecipeTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    return-void

    .line 62
    :cond_9
    const/16 v0, 0x8

    goto :goto_5
.end method

.method public setShareButtonClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 58
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;->mShareButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void
.end method
