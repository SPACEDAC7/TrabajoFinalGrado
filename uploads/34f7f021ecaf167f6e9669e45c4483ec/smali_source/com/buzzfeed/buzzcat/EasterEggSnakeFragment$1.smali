.class Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment$1;
.super Ljava/lang/Object;
.source "EasterEggSnakeFragment.java"

# interfaces
.implements Lcom/buzzfeed/buzzcat/SwipeGameControllerPad$OnDirectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;


# direct methods
.method constructor <init>(Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment$1;->this$0:Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown()V
    .registers 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment$1;->this$0:Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;

    # getter for: Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;->mController:Lcom/buzzfeed/buzzcat/SnakeGameController;
    invoke-static {v0}, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;->access$000(Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;)Lcom/buzzfeed/buzzcat/SnakeGameController;

    move-result-object v0

    sget-object v1, Lcom/buzzfeed/buzzcat/JoystickDirection;->Down:Lcom/buzzfeed/buzzcat/JoystickDirection;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/buzzcat/SnakeGameController;->changeDirection(Lcom/buzzfeed/buzzcat/JoystickDirection;)V

    .line 69
    return-void
.end method

.method public onLeft()V
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment$1;->this$0:Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;

    # getter for: Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;->mController:Lcom/buzzfeed/buzzcat/SnakeGameController;
    invoke-static {v0}, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;->access$000(Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;)Lcom/buzzfeed/buzzcat/SnakeGameController;

    move-result-object v0

    sget-object v1, Lcom/buzzfeed/buzzcat/JoystickDirection;->Left:Lcom/buzzfeed/buzzcat/JoystickDirection;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/buzzcat/SnakeGameController;->changeDirection(Lcom/buzzfeed/buzzcat/JoystickDirection;)V

    .line 74
    return-void
.end method

.method public onRight()V
    .registers 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment$1;->this$0:Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;

    # getter for: Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;->mController:Lcom/buzzfeed/buzzcat/SnakeGameController;
    invoke-static {v0}, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;->access$000(Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;)Lcom/buzzfeed/buzzcat/SnakeGameController;

    move-result-object v0

    sget-object v1, Lcom/buzzfeed/buzzcat/JoystickDirection;->Right:Lcom/buzzfeed/buzzcat/JoystickDirection;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/buzzcat/SnakeGameController;->changeDirection(Lcom/buzzfeed/buzzcat/JoystickDirection;)V

    .line 79
    return-void
.end method

.method public onUp()V
    .registers 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment$1;->this$0:Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;

    # getter for: Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;->mController:Lcom/buzzfeed/buzzcat/SnakeGameController;
    invoke-static {v0}, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;->access$000(Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;)Lcom/buzzfeed/buzzcat/SnakeGameController;

    move-result-object v0

    sget-object v1, Lcom/buzzfeed/buzzcat/JoystickDirection;->Up:Lcom/buzzfeed/buzzcat/JoystickDirection;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/buzzcat/SnakeGameController;->changeDirection(Lcom/buzzfeed/buzzcat/JoystickDirection;)V

    .line 64
    return-void
.end method
