.class Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "ProgressiveLoadingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/LinearLayoutManager;Landroid/support/v7/widget/RecyclerView$Adapter;Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager$ProgressiveLoadingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;


# direct methods
.method constructor <init>(Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager$1;->this$0:Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .registers 5
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 24
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 25
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager$1;->this$0:Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;

    # invokes: Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;->handleScroll(I)V
    invoke-static {v0, p3}, Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;->access$000(Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;I)V

    .line 26
    return-void
.end method
