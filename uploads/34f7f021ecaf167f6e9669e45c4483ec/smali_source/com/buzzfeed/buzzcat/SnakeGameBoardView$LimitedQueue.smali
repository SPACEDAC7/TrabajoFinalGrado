.class public Lcom/buzzfeed/buzzcat/SnakeGameBoardView$LimitedQueue;
.super Ljava/util/LinkedList;
.source "SnakeGameBoardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/buzzcat/SnakeGameBoardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LimitedQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private limit:I

.field final synthetic this$0:Lcom/buzzfeed/buzzcat/SnakeGameBoardView;


# direct methods
.method public constructor <init>(Lcom/buzzfeed/buzzcat/SnakeGameBoardView;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/buzzcat/SnakeGameBoardView;
    .param p2, "limit"    # I

    .prologue
    .line 326
    .local p0, "this":Lcom/buzzfeed/buzzcat/SnakeGameBoardView$LimitedQueue;, "Lcom/buzzfeed/buzzcat/SnakeGameBoardView$LimitedQueue<TE;>;"
    iput-object p1, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$LimitedQueue;->this$0:Lcom/buzzfeed/buzzcat/SnakeGameBoardView;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 327
    iput p2, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$LimitedQueue;->limit:I

    .line 328
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 337
    .local p0, "this":Lcom/buzzfeed/buzzcat/SnakeGameBoardView$LimitedQueue;, "Lcom/buzzfeed/buzzcat/SnakeGameBoardView$LimitedQueue<TE;>;"
    .local p1, "o":Ljava/lang/Object;, "TE;"
    invoke-super {p0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 338
    :goto_3
    invoke-virtual {p0}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$LimitedQueue;->size()I

    move-result v0

    iget v1, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$LimitedQueue;->limit:I

    if-le v0, v1, :cond_f

    .line 339
    invoke-super {p0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_3

    .line 341
    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method public setLimit(I)V
    .registers 2
    .param p1, "limit"    # I

    .prologue
    .line 331
    .local p0, "this":Lcom/buzzfeed/buzzcat/SnakeGameBoardView$LimitedQueue;, "Lcom/buzzfeed/buzzcat/SnakeGameBoardView$LimitedQueue<TE;>;"
    iput p1, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$LimitedQueue;->limit:I

    .line 332
    return-void
.end method
