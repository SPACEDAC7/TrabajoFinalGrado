.class public abstract Lcom/buzzfeed/toolkit/ui/holder/BaseViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BaseViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 9
    .local p0, "this":Lcom/buzzfeed/toolkit/ui/holder/BaseViewHolder;, "Lcom/buzzfeed/toolkit/ui/holder/BaseViewHolder<TM;>;"
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 10
    return-void
.end method


# virtual methods
.method public abstract onViewHolderRecycled()V
.end method

.method public abstract populateFrom(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation
.end method
