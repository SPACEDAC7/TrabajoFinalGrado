.class Lcom/buzzfeed/android/ui/explore/ExploreFragment$1;
.super Ljava/lang/Object;
.source "ExploreFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/ui/explore/ExploreFragment;->updateRecyclerViewForContentChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/ui/explore/ExploreFragment;

.field final synthetic val$topPadding:I


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/ui/explore/ExploreFragment;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/android/ui/explore/ExploreFragment;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/buzzfeed/android/ui/explore/ExploreFragment$1;->this$0:Lcom/buzzfeed/android/ui/explore/ExploreFragment;

    iput p2, p0, Lcom/buzzfeed/android/ui/explore/ExploreFragment$1;->val$topPadding:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 91
    iget-object v0, p0, Lcom/buzzfeed/android/ui/explore/ExploreFragment$1;->this$0:Lcom/buzzfeed/android/ui/explore/ExploreFragment;

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/explore/ExploreFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_b

    .line 104
    :goto_a
    return-void

    .line 95
    :cond_b
    iget-object v0, p0, Lcom/buzzfeed/android/ui/explore/ExploreFragment$1;->this$0:Lcom/buzzfeed/android/ui/explore/ExploreFragment;

    # getter for: Lcom/buzzfeed/android/ui/explore/ExploreFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/buzzfeed/android/ui/explore/ExploreFragment;->access$100(Lcom/buzzfeed/android/ui/explore/ExploreFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 96
    iget-object v0, p0, Lcom/buzzfeed/android/ui/explore/ExploreFragment$1;->this$0:Lcom/buzzfeed/android/ui/explore/ExploreFragment;

    # getter for: Lcom/buzzfeed/android/ui/explore/ExploreFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/buzzfeed/android/ui/explore/ExploreFragment;->access$100(Lcom/buzzfeed/android/ui/explore/ExploreFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 97
    iget-object v0, p0, Lcom/buzzfeed/android/ui/explore/ExploreFragment$1;->this$0:Lcom/buzzfeed/android/ui/explore/ExploreFragment;

    # getter for: Lcom/buzzfeed/android/ui/explore/ExploreFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/buzzfeed/android/ui/explore/ExploreFragment;->access$100(Lcom/buzzfeed/android/ui/explore/ExploreFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOverScrollMode(I)V

    .line 98
    iget-object v0, p0, Lcom/buzzfeed/android/ui/explore/ExploreFragment$1;->this$0:Lcom/buzzfeed/android/ui/explore/ExploreFragment;

    # getter for: Lcom/buzzfeed/android/ui/explore/ExploreFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/buzzfeed/android/ui/explore/ExploreFragment;->access$100(Lcom/buzzfeed/android/ui/explore/ExploreFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    goto :goto_a

    .line 100
    :cond_33
    iget-object v0, p0, Lcom/buzzfeed/android/ui/explore/ExploreFragment$1;->this$0:Lcom/buzzfeed/android/ui/explore/ExploreFragment;

    # getter for: Lcom/buzzfeed/android/ui/explore/ExploreFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/buzzfeed/android/ui/explore/ExploreFragment;->access$100(Lcom/buzzfeed/android/ui/explore/ExploreFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 101
    iget-object v0, p0, Lcom/buzzfeed/android/ui/explore/ExploreFragment$1;->this$0:Lcom/buzzfeed/android/ui/explore/ExploreFragment;

    # getter for: Lcom/buzzfeed/android/ui/explore/ExploreFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/buzzfeed/android/ui/explore/ExploreFragment;->access$100(Lcom/buzzfeed/android/ui/explore/ExploreFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOverScrollMode(I)V

    .line 102
    iget-object v0, p0, Lcom/buzzfeed/android/ui/explore/ExploreFragment$1;->this$0:Lcom/buzzfeed/android/ui/explore/ExploreFragment;

    # getter for: Lcom/buzzfeed/android/ui/explore/ExploreFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/buzzfeed/android/ui/explore/ExploreFragment;->access$100(Lcom/buzzfeed/android/ui/explore/ExploreFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget v1, p0, Lcom/buzzfeed/android/ui/explore/ExploreFragment$1;->val$topPadding:I

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    goto :goto_a
.end method
