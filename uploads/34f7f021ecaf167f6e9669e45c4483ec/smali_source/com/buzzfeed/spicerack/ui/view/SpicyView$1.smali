.class Lcom/buzzfeed/spicerack/ui/view/SpicyView$1;
.super Ljava/lang/Object;
.source "SpicyView.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/spicerack/ui/view/SpicyView;->onFinishInflate()V
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
    .line 138
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$1;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 141
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$1;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    iget-object v1, v1, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mRecyclerView:Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;

    invoke-virtual {v1, p1}, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 142
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$1;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    # invokes: Lcom/buzzfeed/spicerack/ui/view/SpicyView;->shouldAnimateHeader()Z
    invoke-static {v1}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->access$000(Lcom/buzzfeed/spicerack/ui/view/SpicyView;)Z

    move-result v1

    if-eqz v1, :cond_20

    instance-of v1, v0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;

    if-eqz v1, :cond_20

    .line 143
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$1;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    check-cast v0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;

    .end local v0    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->animateIn()I

    move-result v2

    # setter for: Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mShareBarDelay:I
    invoke-static {v1, v2}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->access$102(Lcom/buzzfeed/spicerack/ui/view/SpicyView;I)I

    .line 147
    :cond_1f
    :goto_1f
    return-void

    .line 144
    .restart local v0    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_20
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$1;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    # invokes: Lcom/buzzfeed/spicerack/ui/view/SpicyView;->shouldAnimateShareBar()Z
    invoke-static {v1}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->access$200(Lcom/buzzfeed/spicerack/ui/view/SpicyView;)Z

    move-result v1

    if-eqz v1, :cond_1f

    instance-of v1, v0, Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;

    if-eqz v1, :cond_1f

    .line 145
    check-cast v0, Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;

    .end local v0    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$1;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    # getter for: Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mShareBarDelay:I
    invoke-static {v1}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->access$100(Lcom/buzzfeed/spicerack/ui/view/SpicyView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;->animateIn(I)V

    goto :goto_1f
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 152
    return-void
.end method
