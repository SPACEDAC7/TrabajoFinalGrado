.class Lcom/buzzfeed/buzzcat/SnakeGameBoardView$1;
.super Ljava/lang/Object;
.source "SnakeGameBoardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/buzzcat/SnakeGameBoardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/buzzcat/SnakeGameBoardView;


# direct methods
.method constructor <init>(Lcom/buzzfeed/buzzcat/SnakeGameBoardView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/buzzcat/SnakeGameBoardView;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$1;->this$0:Lcom/buzzfeed/buzzcat/SnakeGameBoardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 82
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$1;->this$0:Lcom/buzzfeed/buzzcat/SnakeGameBoardView;

    # getter for: Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mIsGameOver:Z
    invoke-static {v0}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->access$000(Lcom/buzzfeed/buzzcat/SnakeGameBoardView;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$1;->this$0:Lcom/buzzfeed/buzzcat/SnakeGameBoardView;

    # getter for: Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mIsPaused:Z
    invoke-static {v0}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->access$100(Lcom/buzzfeed/buzzcat/SnakeGameBoardView;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 87
    :cond_10
    :goto_10
    return-void

    .line 85
    :cond_11
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$1;->this$0:Lcom/buzzfeed/buzzcat/SnakeGameBoardView;

    # invokes: Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->onUpdate()V
    invoke-static {v0}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->access$200(Lcom/buzzfeed/buzzcat/SnakeGameBoardView;)V

    .line 86
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$1;->this$0:Lcom/buzzfeed/buzzcat/SnakeGameBoardView;

    # getter for: Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->access$400(Lcom/buzzfeed/buzzcat/SnakeGameBoardView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$1;->this$0:Lcom/buzzfeed/buzzcat/SnakeGameBoardView;

    iget-object v1, v1, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mStatusChecker:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$1;->this$0:Lcom/buzzfeed/buzzcat/SnakeGameBoardView;

    # getter for: Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mSpeed:I
    invoke-static {v2}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->access$300(Lcom/buzzfeed/buzzcat/SnakeGameBoardView;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_10
.end method
