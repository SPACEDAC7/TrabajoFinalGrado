.class abstract Lcom/buzzfeed/buffet/ui/adapter/BasePackageOverflowAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "BasePackageOverflowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/buzzfeed/buffet/ui/holder/BasePackageOverflowCard;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mPackageOverflowClickListener:Lcom/buzzfeed/buffet/ui/listener/PackageItemClickListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 13
    .local p0, "this":Lcom/buzzfeed/buffet/ui/adapter/BasePackageOverflowAdapter;, "Lcom/buzzfeed/buffet/ui/adapter/BasePackageOverflowAdapter<TT;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 13
    .local p0, "this":Lcom/buzzfeed/buffet/ui/adapter/BasePackageOverflowAdapter;, "Lcom/buzzfeed/buffet/ui/adapter/BasePackageOverflowAdapter<TT;>;"
    check-cast p1, Lcom/buzzfeed/buffet/ui/holder/BasePackageOverflowCard;

    invoke-virtual {p0, p1, p2}, Lcom/buzzfeed/buffet/ui/adapter/BasePackageOverflowAdapter;->onBindViewHolder(Lcom/buzzfeed/buffet/ui/holder/BasePackageOverflowCard;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/buzzfeed/buffet/ui/holder/BasePackageOverflowCard;I)V
    .registers 4
    .param p2, "position"    # I
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "this":Lcom/buzzfeed/buffet/ui/adapter/BasePackageOverflowAdapter;, "Lcom/buzzfeed/buffet/ui/adapter/BasePackageOverflowAdapter<TT;>;"
    .local p1, "holder":Lcom/buzzfeed/buffet/ui/holder/BasePackageOverflowCard;, "TT;"
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/adapter/BasePackageOverflowAdapter;->mPackageOverflowClickListener:Lcom/buzzfeed/buffet/ui/listener/PackageItemClickListener;

    invoke-virtual {p1, v0}, Lcom/buzzfeed/buffet/ui/holder/BasePackageOverflowCard;->setPackageItemClickListener(Lcom/buzzfeed/buffet/ui/listener/PackageItemClickListener;)V

    .line 22
    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 13
    .local p0, "this":Lcom/buzzfeed/buffet/ui/adapter/BasePackageOverflowAdapter;, "Lcom/buzzfeed/buffet/ui/adapter/BasePackageOverflowAdapter<TT;>;"
    check-cast p1, Lcom/buzzfeed/buffet/ui/holder/BasePackageOverflowCard;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/buffet/ui/adapter/BasePackageOverflowAdapter;->onViewRecycled(Lcom/buzzfeed/buffet/ui/holder/BasePackageOverflowCard;)V

    return-void
.end method

.method public onViewRecycled(Lcom/buzzfeed/buffet/ui/holder/BasePackageOverflowCard;)V
    .registers 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/buzzfeed/buffet/ui/adapter/BasePackageOverflowAdapter;, "Lcom/buzzfeed/buffet/ui/adapter/BasePackageOverflowAdapter<TT;>;"
    .local p1, "holder":Lcom/buzzfeed/buffet/ui/holder/BasePackageOverflowCard;, "TT;"
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/buzzfeed/buffet/ui/holder/BasePackageOverflowCard;->setPackageItemClickListener(Lcom/buzzfeed/buffet/ui/listener/PackageItemClickListener;)V

    .line 29
    return-void
.end method

.method public setPackageItemClickListener(Lcom/buzzfeed/buffet/ui/listener/PackageItemClickListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/buzzfeed/buffet/ui/listener/PackageItemClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 32
    .local p0, "this":Lcom/buzzfeed/buffet/ui/adapter/BasePackageOverflowAdapter;, "Lcom/buzzfeed/buffet/ui/adapter/BasePackageOverflowAdapter<TT;>;"
    iput-object p1, p0, Lcom/buzzfeed/buffet/ui/adapter/BasePackageOverflowAdapter;->mPackageOverflowClickListener:Lcom/buzzfeed/buffet/ui/listener/PackageItemClickListener;

    .line 33
    return-void
.end method
