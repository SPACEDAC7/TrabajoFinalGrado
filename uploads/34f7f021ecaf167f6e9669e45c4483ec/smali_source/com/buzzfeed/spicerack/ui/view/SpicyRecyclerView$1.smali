.class Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "SpicyRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->attachScrollListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;


# direct methods
.method constructor <init>(Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView$1;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .registers 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 55
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .registers 9
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    const/4 v4, 0x0

    .line 59
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 61
    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView$1;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;

    # getter for: Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->mFallbackView:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;
    invoke-static {v2}, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->access$000(Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;)Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    move-result-object v2

    if-eqz v2, :cond_4b

    .line 62
    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView$1;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;

    # invokes: Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->getFallbackTop()I
    invoke-static {v2}, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->access$100(Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;)I

    move-result v0

    .line 63
    .local v0, "top":I
    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView$1;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;

    # getter for: Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->mFallbackView:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;
    invoke-static {v2}, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->access$000(Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;)Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    move-result-object v2

    iget-object v3, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView$1;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;

    # invokes: Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->getFallback()Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;
    invoke-static {v3}, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->access$200(Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;)Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->getScrollY()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->onScroll(I)V

    .line 64
    mul-int/lit8 v1, v0, -0x1

    .line 67
    .local v1, "y":I
    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView$1;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;

    # getter for: Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->requiredFlingY:I
    invoke-static {v2}, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->access$300(Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;)I

    move-result v2

    if-ne v1, v2, :cond_4b

    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView$1;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;

    # getter for: Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->mFlingDistance:I
    invoke-static {v2}, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->access$400(Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;)I

    move-result v2

    if-lez v2, :cond_4b

    .line 68
    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView$1;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;

    # getter for: Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->mFallbackView:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;
    invoke-static {v2}, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->access$000(Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;)Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    move-result-object v2

    iget-object v3, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView$1;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;

    # getter for: Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->mFlingDistance:I
    invoke-static {v3}, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->access$400(Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->flingScroll(II)V

    .line 69
    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView$1;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;

    # setter for: Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->mFlingDistance:I
    invoke-static {v2, v4}, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->access$402(Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;I)I

    .line 72
    .end local v0    # "top":I
    .end local v1    # "y":I
    :cond_4b
    return-void
.end method
