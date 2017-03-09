.class Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalScrollListener;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "ImmersiveModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;)V
    .registers 2

    .prologue
    .line 492
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalScrollListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;
    .param p2, "x1"    # Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$1;

    .prologue
    .line 492
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalScrollListener;-><init>(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;)V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .registers 7
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 496
    if-eqz p2, :cond_24

    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalScrollListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;

    .line 497
    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->isImmersiveMode()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalScrollListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;

    .line 498
    # getter for: Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mSelectedView:Landroid/view/View;
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->access$500(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 499
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalScrollListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalScrollListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;

    # getter for: Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mSelectedView:Landroid/view/View;
    invoke-static {v1}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->access$500(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$InternalScrollListener;->this$0:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;

    # getter for: Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->mSelectedIndex:I
    invoke-static {v2}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->access$600(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;)I

    move-result v2

    const/4 v3, 0x0

    # invokes: Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->onViewSelectionChanged(Landroid/view/View;IZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;->access$1000(Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;Landroid/view/View;IZ)V

    .line 501
    :cond_24
    return-void
.end method
