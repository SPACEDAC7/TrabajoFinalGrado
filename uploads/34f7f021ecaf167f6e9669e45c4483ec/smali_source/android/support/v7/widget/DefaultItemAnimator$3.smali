.class Landroid/support/v7/widget/DefaultItemAnimator$3;
.super Ljava/lang/Object;
.source "DefaultItemAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/DefaultItemAnimator;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/DefaultItemAnimator;

.field final synthetic val$additions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "this$0"    # Landroid/support/v7/widget/DefaultItemAnimator;

    .prologue
    .line 164
    iput-object p1, p0, Landroid/support/v7/widget/DefaultItemAnimator$3;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    iput-object p2, p0, Landroid/support/v7/widget/DefaultItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 167
    iget-object v1, p0, Landroid/support/v7/widget/DefaultItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 168
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v2, p0, Landroid/support/v7/widget/DefaultItemAnimator$3;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/DefaultItemAnimator;->animateAddImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_6

    .line 170
    .end local v0    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_18
    iget-object v1, p0, Landroid/support/v7/widget/DefaultItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 171
    iget-object v1, p0, Landroid/support/v7/widget/DefaultItemAnimator$3;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    iget-object v1, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v7/widget/DefaultItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 172
    return-void
.end method
