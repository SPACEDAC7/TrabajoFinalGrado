.class final Lcom/buzzfeed/toolkit/util/UIUtil$6;
.super Ljava/lang/Object;
.source "UIUtil.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/toolkit/util/UIUtil;->runAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$runnable:Ljava/lang/Runnable;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 643
    iput-object p1, p0, Lcom/buzzfeed/toolkit/util/UIUtil$6;->val$runnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/buzzfeed/toolkit/util/UIUtil$6;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 2

    .prologue
    .line 646
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/UIUtil$6;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 647
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/UIUtil$6;->val$view:Landroid/view/View;

    # invokes: Lcom/buzzfeed/toolkit/util/UIUtil;->removeOnGlobalLayoutListenerApi14(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    invoke-static {v0, p0}, Lcom/buzzfeed/toolkit/util/UIUtil;->access$000(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 648
    return-void
.end method
