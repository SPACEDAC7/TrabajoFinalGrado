.class public abstract Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "CardAdapter.java"

# interfaces
.implements Lcom/buzzfeed/buffet/ui/listener/BuffetEventListenerProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/buzzfeed/buffet/ui/holder/BaseCard;",
        ">;",
        "Lcom/buzzfeed/buffet/ui/listener/BuffetEventListenerProvider;"
    }
.end annotation


# instance fields
.field protected mBuffetEventListener:Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mFlowList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/FlowItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;->mFlowList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public appendItems(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/FlowItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "flowItemList":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/toolkit/content/FlowItem;>;"
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;->mFlowList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 70
    .local v0, "previousListSize":I
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;->mFlowList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 71
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;->notifyItemRangeInserted(II)V

    .line 72
    return-void
.end method

.method public getBuffetEventListener()Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;->mBuffetEventListener:Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;

    return-object v0
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;->mFlowList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemForPosition(I)Lcom/buzzfeed/toolkit/content/FlowItem;
    .registers 3
    .param p1, "pos"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;->mFlowList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/FlowItem;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/FlowItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;->mFlowList:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 17
    check-cast p1, Lcom/buzzfeed/buffet/ui/holder/BaseCard;

    invoke-virtual {p0, p1, p2}, Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;->onBindViewHolder(Lcom/buzzfeed/buffet/ui/holder/BaseCard;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/buzzfeed/buffet/ui/holder/BaseCard;I)V
    .registers 4
    .param p1, "holder"    # Lcom/buzzfeed/buffet/ui/holder/BaseCard;
    .param p2, "position"    # I

    .prologue
    .line 41
    invoke-virtual {p1, p0}, Lcom/buzzfeed/buffet/ui/holder/BaseCard;->setBuffetListenerProvider(Lcom/buzzfeed/buffet/ui/listener/BuffetEventListenerProvider;)V

    .line 42
    invoke-virtual {p0, p2}, Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;->getItemForPosition(I)Lcom/buzzfeed/toolkit/content/FlowItem;

    move-result-object v0

    .line 43
    .local v0, "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    invoke-virtual {p1, v0}, Lcom/buzzfeed/buffet/ui/holder/BaseCard;->populateFrom(Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .registers 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;->mBuffetEventListener:Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;

    .line 86
    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 2

    .prologue
    .line 17
    check-cast p1, Lcom/buzzfeed/buffet/ui/holder/BaseCard;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;->onViewRecycled(Lcom/buzzfeed/buffet/ui/holder/BaseCard;)V

    return-void
.end method

.method public onViewRecycled(Lcom/buzzfeed/buffet/ui/holder/BaseCard;)V
    .registers 3
    .param p1, "holder"    # Lcom/buzzfeed/buffet/ui/holder/BaseCard;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/buzzfeed/buffet/ui/holder/BaseCard;->setBuffetListenerProvider(Lcom/buzzfeed/buffet/ui/listener/BuffetEventListenerProvider;)V

    .line 50
    invoke-virtual {p1}, Lcom/buzzfeed/buffet/ui/holder/BaseCard;->onViewHolderRecycled()V

    .line 51
    return-void
.end method

.method public removeItemAt(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;->mFlowList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 65
    invoke-virtual {p0, p1}, Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;->notifyItemRemoved(I)V

    .line 66
    return-void
.end method

.method public setBuffetEventListener(Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;)V
    .registers 2
    .param p1, "buffetEventListener"    # Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 25
    iput-object p1, p0, Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;->mBuffetEventListener:Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;

    .line 26
    return-void
.end method

.method public setList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/FlowItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/toolkit/content/FlowItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;->mFlowList:Ljava/util/List;

    .line 55
    invoke-virtual {p0}, Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;->notifyDataSetChanged()V

    .line 56
    return-void
.end method

.method public updateItem(ILcom/buzzfeed/toolkit/content/FlowItem;)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "flowItem"    # Lcom/buzzfeed/toolkit/content/FlowItem;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;->mFlowList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-virtual {p0, p1}, Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;->notifyItemChanged(I)V

    .line 61
    return-void
.end method
