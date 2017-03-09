.class Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$3;
.super Ljava/lang/Object;
.source "ImmersiveModeHelper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->restoreImmersiveMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;

.field final synthetic val$adapterPosition:I


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$3;->this$0:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;

    iput p2, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$3;->val$adapterPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 4

    .prologue
    .line 148
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$3;->this$0:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;

    # getter for: Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v1}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->access$800(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 149
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$3;->this$0:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;

    # getter for: Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v1}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->access$800(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    iget v2, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$3;->val$adapterPosition:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 150
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$3;->this$0:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;

    # invokes: Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->restoreImmersiveWithViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    invoke-static {v1, v0}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->access$900(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 151
    return-void
.end method
