.class Lcom/buzzfeed/spicerack/ui/view/SpicyView$2;
.super Ljava/lang/Object;
.source "SpicyView.java"

# interfaces
.implements Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/spicerack/ui/view/SpicyView;->setupHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyView;


# direct methods
.method constructor <init>(Lcom/buzzfeed/spicerack/ui/view/SpicyView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$2;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .registers 7
    .param p1, "appBarLayout"    # Landroid/support/design/widget/AppBarLayout;
    .param p2, "i"    # I

    .prologue
    const/4 v3, 0x1

    .line 166
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$2;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    iget-object v1, v1, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mRecyclerView:Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;

    if-nez v1, :cond_8

    .line 180
    :goto_7
    return-void

    .line 170
    :cond_8
    const/4 v0, 0x0

    .line 171
    .local v0, "offset":I
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$2;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    iget-object v1, v1, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mRecyclerView:Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->getHeaderViewHolder()Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;

    move-result-object v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$2;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    iget-object v1, v1, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mRecyclerView:Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->getHeaderViewHolder()Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;

    move-result-object v1

    iget-object v1, v1, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->itemView:Landroid/view/View;

    if-nez v1, :cond_27

    .line 172
    :cond_1f
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$2;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    iget-object v1, v1, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mBleedingOverlay:Lcom/buzzfeed/toolkit/ui/appbarlayout/BleedingOverlay;

    invoke-virtual {v1, v0, v3}, Lcom/buzzfeed/toolkit/ui/appbarlayout/BleedingOverlay;->onOffsetChanged(IZ)V

    goto :goto_7

    .line 176
    :cond_27
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$2;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$2;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    iget-object v2, v2, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mRecyclerView:Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;

    invoke-virtual {v2}, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->getHeaderViewHolder()Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;

    move-result-object v2

    iget-object v2, v2, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-static {v1, v2}, Lcom/buzzfeed/spicerack/ui/utils/SpicyUtil;->calculateTopOffset(Landroid/content/Context;I)I

    move-result v0

    .line 177
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 179
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$2;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    iget-object v1, v1, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mBleedingOverlay:Lcom/buzzfeed/toolkit/ui/appbarlayout/BleedingOverlay;

    invoke-virtual {v1, v0, v3}, Lcom/buzzfeed/toolkit/ui/appbarlayout/BleedingOverlay;->onOffsetChanged(IZ)V

    goto :goto_7
.end method
