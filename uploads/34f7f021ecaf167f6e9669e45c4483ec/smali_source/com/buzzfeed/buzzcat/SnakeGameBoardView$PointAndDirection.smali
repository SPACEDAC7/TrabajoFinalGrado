.class Lcom/buzzfeed/buzzcat/SnakeGameBoardView$PointAndDirection;
.super Ljava/lang/Object;
.source "SnakeGameBoardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/buzzcat/SnakeGameBoardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PointAndDirection"
.end annotation


# instance fields
.field private Direction:Lcom/buzzfeed/buzzcat/JoystickDirection;

.field private PaintIndex:I

.field private Point:Landroid/graphics/Point;

.field final synthetic this$0:Lcom/buzzfeed/buzzcat/SnakeGameBoardView;


# direct methods
.method public constructor <init>(Lcom/buzzfeed/buzzcat/SnakeGameBoardView;Landroid/graphics/Point;ILcom/buzzfeed/buzzcat/JoystickDirection;)V
    .registers 6
    .param p2, "point"    # Landroid/graphics/Point;
    .param p3, "paintIndex"    # I
    .param p4, "direction"    # Lcom/buzzfeed/buzzcat/JoystickDirection;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$PointAndDirection;->this$0:Lcom/buzzfeed/buzzcat/SnakeGameBoardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    const/4 v0, -0x1

    iput v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$PointAndDirection;->PaintIndex:I

    .line 347
    invoke-virtual {p0, p2}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$PointAndDirection;->setPoint(Landroid/graphics/Point;)V

    .line 348
    invoke-virtual {p0, p3}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$PointAndDirection;->setPaintIndex(I)V

    .line 349
    invoke-virtual {p0, p4}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$PointAndDirection;->setDirection(Lcom/buzzfeed/buzzcat/JoystickDirection;)V

    .line 350
    return-void
.end method


# virtual methods
.method public getDirection()Lcom/buzzfeed/buzzcat/JoystickDirection;
    .registers 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$PointAndDirection;->Direction:Lcom/buzzfeed/buzzcat/JoystickDirection;

    return-object v0
.end method

.method public getPaintIndex()I
    .registers 2

    .prologue
    .line 365
    iget v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$PointAndDirection;->PaintIndex:I

    return v0
.end method

.method public getPoint()Landroid/graphics/Point;
    .registers 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$PointAndDirection;->Point:Landroid/graphics/Point;

    return-object v0
.end method

.method public setDirection(Lcom/buzzfeed/buzzcat/JoystickDirection;)V
    .registers 2
    .param p1, "direction"    # Lcom/buzzfeed/buzzcat/JoystickDirection;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$PointAndDirection;->Direction:Lcom/buzzfeed/buzzcat/JoystickDirection;

    .line 378
    return-void
.end method

.method public setPaintIndex(I)V
    .registers 2
    .param p1, "paintIndex"    # I

    .prologue
    .line 369
    iput p1, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$PointAndDirection;->PaintIndex:I

    .line 370
    return-void
.end method

.method public setPoint(Landroid/graphics/Point;)V
    .registers 2
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$PointAndDirection;->Point:Landroid/graphics/Point;

    .line 362
    return-void
.end method
