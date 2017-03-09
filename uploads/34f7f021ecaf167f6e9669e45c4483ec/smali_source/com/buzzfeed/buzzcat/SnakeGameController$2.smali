.class Lcom/buzzfeed/buzzcat/SnakeGameController$2;
.super Ljava/lang/Object;
.source "SnakeGameController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 115
    iput-object p1, p0, Lcom/buzzfeed/buzzcat/SnakeGameController$2;->this$0:Lcom/buzzfeed/buzzcat/SnakeGameController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameController$2;->this$0:Lcom/buzzfeed/buzzcat/SnakeGameController;

    # getter for: Lcom/buzzfeed/buzzcat/SnakeGameController;->mParent:Lcom/buzzfeed/buzzcat/SnakeGameController$SnakeControllerParent;
    invoke-static {v0}, Lcom/buzzfeed/buzzcat/SnakeGameController;->access$300(Lcom/buzzfeed/buzzcat/SnakeGameController;)Lcom/buzzfeed/buzzcat/SnakeGameController$SnakeControllerParent;

    move-result-object v0

    invoke-interface {v0}, Lcom/buzzfeed/buzzcat/SnakeGameController$SnakeControllerParent;->quit()V

    .line 119
    return-void
.end method
