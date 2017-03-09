.class Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$5;
.super Ljava/lang/Object;
.source "BaseShowPageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->startAutoFocusAfterLayoutIfNeeded(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;

.field final synthetic val$initialFocus:Z


# direct methods
.method constructor <init>(Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;

    .prologue
    .line 529
    iput-object p1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$5;->this$0:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;

    iput-boolean p2, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$5;->val$initialFocus:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 532
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$5;->this$0:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;

    iget-boolean v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$5;->val$initialFocus:Z

    # invokes: Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->startAutoFocusIfNeeded(Z)V
    invoke-static {v0, v1}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->access$500(Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;Z)V

    .line 533
    return-void
.end method
