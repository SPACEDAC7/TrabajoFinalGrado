.class public Lcom/buzzfeed/spicerack/ui/view/BlankHeaderSpicyView;
.super Lcom/buzzfeed/spicerack/ui/view/SpicyView;
.source "BlankHeaderSpicyView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "layoutId"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method


# virtual methods
.method protected initView()V
    .registers 3

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/ui/view/BlankHeaderSpicyView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/buzzfeed/nativecontent/R$layout;->blank_header_spicy_view:I

    invoke-static {v0, v1, p0}, Lcom/buzzfeed/spicerack/ui/view/BlankHeaderSpicyView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 49
    return-void
.end method

.method public onSharedElementTransitionEnd()V
    .registers 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/BlankHeaderSpicyView;->mRecyclerView:Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;

    if-nez v0, :cond_5

    .line 64
    :cond_4
    :goto_4
    return-void

    .line 61
    :cond_5
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/BlankHeaderSpicyView;->mSpicyLayoutManager:Lcom/buzzfeed/spicerack/ui/view/SpicyLayoutManager;

    if-eqz v0, :cond_4

    .line 62
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/BlankHeaderSpicyView;->mSpicyLayoutManager:Lcom/buzzfeed/spicerack/ui/view/SpicyLayoutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/spicerack/ui/view/SpicyLayoutManager;->setScrollEnabled(Z)V

    goto :goto_4
.end method

.method public populateHeader(Lcom/buzzfeed/toolkit/content/PostContent;Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionSender;)V
    .registers 4
    .param p1, "postContent"    # Lcom/buzzfeed/toolkit/content/PostContent;
    .param p2, "sender"    # Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionSender;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/buzzfeed/spicerack/ui/view/BlankHeaderSpicyView;->mPopulatedHeader:Z

    if-eqz v0, :cond_5

    .line 75
    :goto_4
    return-void

    .line 71
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/spicerack/ui/view/BlankHeaderSpicyView;->mPopulatedHeader:Z

    .line 72
    invoke-virtual {p0, p1}, Lcom/buzzfeed/spicerack/ui/view/BlankHeaderSpicyView;->buildListFromPostContent(Lcom/buzzfeed/toolkit/content/PostContent;)V

    .line 73
    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/ui/view/BlankHeaderSpicyView;->dismissLoading()V

    .line 74
    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/ui/view/BlankHeaderSpicyView;->onSharedElementTransitionEnd()V

    goto :goto_4
.end method

.method public setFixedShareBarVariant(Lcom/buzzfeed/spicerack/experiment/FixedShareBarVariant;Lcom/buzzfeed/spicerack/ui/view/FixedShareBar$FixedShareBarListener;)V
    .registers 3
    .param p1, "variant"    # Lcom/buzzfeed/spicerack/experiment/FixedShareBarVariant;
    .param p2, "listener"    # Lcom/buzzfeed/spicerack/ui/view/FixedShareBar$FixedShareBarListener;

    .prologue
    .line 80
    return-void
.end method

.method public setHeaderImageInfo(Ljava/util/Stack;ZZ)V
    .registers 4
    .param p2, "isTallHeader"    # Z
    .param p3, "doSharedElementTransition"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "imageStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    return-void
.end method

.method protected setupHeader()V
    .registers 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/BlankHeaderSpicyView;->mRecyclerView:Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;

    new-instance v1, Lcom/buzzfeed/spicerack/ui/view/BlankHeaderSpicyView$1;

    invoke-direct {v1, p0}, Lcom/buzzfeed/spicerack/ui/view/BlankHeaderSpicyView$1;-><init>(Lcom/buzzfeed/spicerack/ui/view/BlankHeaderSpicyView;)V

    invoke-virtual {v0, v1}, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 45
    return-void
.end method
