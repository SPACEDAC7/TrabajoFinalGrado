.class Lcom/buzzfeed/android/ui/explore/holder/ExploreBasicItemViewHolder$1;
.super Ljava/lang/Object;
.source "ExploreBasicItemViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/ui/explore/holder/ExploreBasicItemViewHolder;->populateFrom(Lcom/buzzfeed/android/data/Feed;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/ui/explore/holder/ExploreBasicItemViewHolder;

.field final synthetic val$model:Lcom/buzzfeed/android/data/Feed;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/ui/explore/holder/ExploreBasicItemViewHolder;Lcom/buzzfeed/android/data/Feed;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/android/ui/explore/holder/ExploreBasicItemViewHolder;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/buzzfeed/android/ui/explore/holder/ExploreBasicItemViewHolder$1;->this$0:Lcom/buzzfeed/android/ui/explore/holder/ExploreBasicItemViewHolder;

    iput-object p2, p0, Lcom/buzzfeed/android/ui/explore/holder/ExploreBasicItemViewHolder$1;->val$model:Lcom/buzzfeed/android/data/Feed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/buzzfeed/android/ui/explore/holder/ExploreBasicItemViewHolder$1;->this$0:Lcom/buzzfeed/android/ui/explore/holder/ExploreBasicItemViewHolder;

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/explore/holder/ExploreBasicItemViewHolder;->getUserActionListener()Lcom/buzzfeed/android/ui/explore/listener/ExploreUserActionListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 31
    iget-object v0, p0, Lcom/buzzfeed/android/ui/explore/holder/ExploreBasicItemViewHolder$1;->this$0:Lcom/buzzfeed/android/ui/explore/holder/ExploreBasicItemViewHolder;

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/explore/holder/ExploreBasicItemViewHolder;->getUserActionListener()Lcom/buzzfeed/android/ui/explore/listener/ExploreUserActionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/ui/explore/holder/ExploreBasicItemViewHolder$1;->val$model:Lcom/buzzfeed/android/data/Feed;

    iget-object v2, p0, Lcom/buzzfeed/android/ui/explore/holder/ExploreBasicItemViewHolder$1;->this$0:Lcom/buzzfeed/android/ui/explore/holder/ExploreBasicItemViewHolder;

    invoke-virtual {v2}, Lcom/buzzfeed/android/ui/explore/holder/ExploreBasicItemViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/buzzfeed/android/ui/explore/listener/ExploreUserActionListener;->onExploreItemClicked(Lcom/buzzfeed/android/data/Feed;I)V

    .line 33
    :cond_19
    return-void
.end method
