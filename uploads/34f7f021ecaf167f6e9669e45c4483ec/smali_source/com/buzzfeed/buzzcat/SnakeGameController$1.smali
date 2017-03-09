.class Lcom/buzzfeed/buzzcat/SnakeGameController$1;
.super Ljava/lang/Object;
.source "SnakeGameController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/buzzcat/SnakeGameController;->showStartGameDialog()V
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
    .line 108
    iput-object p1, p0, Lcom/buzzfeed/buzzcat/SnakeGameController$1;->this$0:Lcom/buzzfeed/buzzcat/SnakeGameController;

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
    .line 111
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameController$1;->this$0:Lcom/buzzfeed/buzzcat/SnakeGameController;

    # getter for: Lcom/buzzfeed/buzzcat/SnakeGameController;->mJoystick:Lcom/buzzfeed/buzzcat/SnakePointerView;
    invoke-static {v0}, Lcom/buzzfeed/buzzcat/SnakeGameController;->access$000(Lcom/buzzfeed/buzzcat/SnakeGameController;)Lcom/buzzfeed/buzzcat/SnakePointerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/buzzcat/SnakePointerView;->reset()V

    .line 112
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameController$1;->this$0:Lcom/buzzfeed/buzzcat/SnakeGameController;

    # getter for: Lcom/buzzfeed/buzzcat/SnakeGameController;->mGameBoard:Lcom/buzzfeed/buzzcat/SnakeGameBoardView;
    invoke-static {v0}, Lcom/buzzfeed/buzzcat/SnakeGameController;->access$100(Lcom/buzzfeed/buzzcat/SnakeGameController;)Lcom/buzzfeed/buzzcat/SnakeGameBoardView;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->startGame(I)V

    .line 113
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameController$1;->this$0:Lcom/buzzfeed/buzzcat/SnakeGameController;

    # getter for: Lcom/buzzfeed/buzzcat/SnakeGameController;->mStateParent:Lcom/buzzfeed/buzzcat/SnakeGameController$SnakeControllerStateParent;
    invoke-static {v0}, Lcom/buzzfeed/buzzcat/SnakeGameController;->access$200(Lcom/buzzfeed/buzzcat/SnakeGameController;)Lcom/buzzfeed/buzzcat/SnakeGameController$SnakeControllerStateParent;

    move-result-object v0

    invoke-interface {v0}, Lcom/buzzfeed/buzzcat/SnakeGameController$SnakeControllerStateParent;->onNewGame()V

    .line 114
    return-void
.end method
