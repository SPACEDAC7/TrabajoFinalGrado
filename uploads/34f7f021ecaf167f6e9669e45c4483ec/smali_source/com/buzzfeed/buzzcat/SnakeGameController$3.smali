.class Lcom/buzzfeed/buzzcat/SnakeGameController$3;
.super Ljava/lang/Object;
.source "SnakeGameController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/buzzcat/SnakeGameController;->showResumeGameDialog()V
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
    .line 126
    iput-object p1, p0, Lcom/buzzfeed/buzzcat/SnakeGameController$3;->this$0:Lcom/buzzfeed/buzzcat/SnakeGameController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameController$3;->this$0:Lcom/buzzfeed/buzzcat/SnakeGameController;

    # getter for: Lcom/buzzfeed/buzzcat/SnakeGameController;->mGameBoard:Lcom/buzzfeed/buzzcat/SnakeGameBoardView;
    invoke-static {v0}, Lcom/buzzfeed/buzzcat/SnakeGameController;->access$100(Lcom/buzzfeed/buzzcat/SnakeGameController;)Lcom/buzzfeed/buzzcat/SnakeGameBoardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->resume()V

    .line 130
    return-void
.end method
