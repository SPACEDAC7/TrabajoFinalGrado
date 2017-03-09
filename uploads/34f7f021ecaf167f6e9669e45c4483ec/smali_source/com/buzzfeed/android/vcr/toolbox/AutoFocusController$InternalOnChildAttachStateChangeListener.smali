.class Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalOnChildAttachStateChangeListener;
.super Ljava/lang/Object;
.source "AutoFocusController.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalOnChildAttachStateChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;)V
    .registers 2

    .prologue
    .line 516
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalOnChildAttachStateChangeListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;
    .param p2, "x1"    # Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$1;

    .prologue
    .line 516
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalOnChildAttachStateChangeListener;-><init>(Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;)V

    return-void
.end method


# virtual methods
.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 522
    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 526
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalOnChildAttachStateChangeListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    iget-object v0, v0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mCurrentViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalOnChildAttachStateChangeListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    iget-object v0, v0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->mCurrentViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v0, p1, :cond_13

    .line 527
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$InternalOnChildAttachStateChangeListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    # invokes: Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->clearFocusViewIfNeeded()V
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->access$800(Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;)V

    .line 529
    :cond_13
    return-void
.end method
