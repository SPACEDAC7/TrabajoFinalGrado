.class Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$1;
.super Ljava/lang/Object;
.source "BaseShowPageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->restoreToolBarStateIfNeeded(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;

.field final synthetic val$offset:I

.field final synthetic val$state:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;


# direct methods
.method constructor <init>(Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;ILcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;)V
    .registers 4
    .param p1, "this$0"    # Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$1;->this$0:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;

    iput p2, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$1;->val$offset:I

    iput-object p3, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$1;->val$state:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 235
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$1;->this$0:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;

    iget v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$1;->val$offset:I

    iget-object v2, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$1;->val$state:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    # invokes: Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->restoreToolbarState(ILcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;)V
    invoke-static {v0, v1, v2}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->access$100(Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;ILcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;)V

    .line 236
    return-void
.end method
