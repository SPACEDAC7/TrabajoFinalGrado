.class Lcom/buzzfeed/buzzcat/SnakeGameController$5;
.super Ljava/lang/Object;
.source "SnakeGameController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/buzzcat/SnakeGameController;->showGameOverDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/buzzcat/SnakeGameController;


# direct methods
.method constructor <init>(Lcom/buzzfeed/buzzcat/SnakeGameController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/buzzcat/SnakeGameController;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/buzzfeed/buzzcat/SnakeGameController$5;->this$0:Lcom/buzzfeed/buzzcat/SnakeGameController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-nez p3, :cond_8

    .line 147
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameController$5;->this$0:Lcom/buzzfeed/buzzcat/SnakeGameController;

    # invokes: Lcom/buzzfeed/buzzcat/SnakeGameController;->shareScore()V
    invoke-static {v0}, Lcom/buzzfeed/buzzcat/SnakeGameController;->access$400(Lcom/buzzfeed/buzzcat/SnakeGameController;)V

    .line 153
    :cond_7
    :goto_7
    return-void

    .line 148
    :cond_8
    const/4 v0, 0x1

    if-ne p3, v0, :cond_11

    .line 149
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameController$5;->this$0:Lcom/buzzfeed/buzzcat/SnakeGameController;

    invoke-virtual {v0}, Lcom/buzzfeed/buzzcat/SnakeGameController;->startGame()V

    goto :goto_7

    .line 150
    :cond_11
    const/4 v0, 0x2

    if-ne p3, v0, :cond_7

    .line 151
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameController$5;->this$0:Lcom/buzzfeed/buzzcat/SnakeGameController;

    # getter for: Lcom/buzzfeed/buzzcat/SnakeGameController;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/buzzfeed/buzzcat/SnakeGameController;->access$500(Lcom/buzzfeed/buzzcat/SnakeGameController;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_7
.end method
