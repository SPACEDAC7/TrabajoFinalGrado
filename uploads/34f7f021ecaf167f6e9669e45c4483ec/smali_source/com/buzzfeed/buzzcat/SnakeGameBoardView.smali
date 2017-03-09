.class public Lcom/buzzfeed/buzzcat/SnakeGameBoardView;
.super Landroid/widget/RelativeLayout;
.source "SnakeGameBoardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/buzzcat/SnakeGameBoardView$PointAndDirection;,
        Lcom/buzzfeed/buzzcat/SnakeGameBoardView$LimitedQueue;,
        Lcom/buzzfeed/buzzcat/SnakeGameBoardView$SnakeGameBoardParent;
    }
.end annotation


# static fields
.field private static final INSANE_LEVEL_SPEED_INCREASE:I = 0xa

.field private static final INSANE_LEVEL_UP_DIFFICULTY_MOD:I = 0x5

.field private static final MAX_PENDING_POINTS:I = 0x5

.field private static mRandom:Ljava/util/Random;


# instance fields
.field private final INITIAL_TAIL:I

.field private mBottomMax:I

.field private mCurrentScore:I

.field private mCurrentTargetPoint:Landroid/graphics/Point;

.field private mHandler:Landroid/os/Handler;

.field private mIsGameOver:Z

.field private mIsInitialized:Z

.field private mIsInsaneLevel:Z

.field private mIsPaused:Z

.field private mPadding:I

.field private mPainter:Lcom/buzzfeed/buzzcat/RainbowPainter;

.field private mParent:Lcom/buzzfeed/buzzcat/SnakeGameBoardView$SnakeGameBoardParent;

.field private mPastPoints:Lcom/buzzfeed/buzzcat/SnakeGameBoardView$LimitedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/buzzfeed/buzzcat/SnakeGameBoardView$LimitedQueue",
            "<",
            "Lcom/buzzfeed/buzzcat/SnakeGameBoardView$PointAndDirection;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingPoints:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/buzzfeed/buzzcat/JoystickDirection;",
            ">;"
        }
    .end annotation
.end field

.field private mRightMax:I

.field private mSnake:Landroid/widget/ImageView;

.field private mSpeed:I

.field private mSpeedDifficulties:[I

.field mStatusChecker:Ljava/lang/Runnable;

.field private mTarget:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mRandom:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 27
    iput v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mCurrentScore:I

    .line 32
    iput v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mSpeed:I

    .line 33
    iput-boolean v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mIsInsaneLevel:Z

    .line 34
    iput-boolean v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mIsInitialized:Z

    .line 35
    iput-boolean v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mIsPaused:Z

    .line 37
    const/4 v0, 0x7

    iput v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->INITIAL_TAIL:I

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mIsGameOver:Z

    .line 79
    new-instance v0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$1;

    invoke-direct {v0, p0}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$1;-><init>(Lcom/buzzfeed/buzzcat/SnakeGameBoardView;)V

    iput-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mStatusChecker:Ljava/lang/Runnable;

    .line 52
    invoke-direct {p0}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->init()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mCurrentScore:I

    .line 32
    iput v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mSpeed:I

    .line 33
    iput-boolean v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mIsInsaneLevel:Z

    .line 34
    iput-boolean v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mIsInitialized:Z

    .line 35
    iput-boolean v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mIsPaused:Z

    .line 37
    const/4 v0, 0x7

    iput v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->INITIAL_TAIL:I

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mIsGameOver:Z

    .line 79
    new-instance v0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$1;

    invoke-direct {v0, p0}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$1;-><init>(Lcom/buzzfeed/buzzcat/SnakeGameBoardView;)V

    iput-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mStatusChecker:Ljava/lang/Runnable;

    .line 57
    invoke-direct {p0}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->init()V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    iput v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mCurrentScore:I

    .line 32
    iput v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mSpeed:I

    .line 33
    iput-boolean v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mIsInsaneLevel:Z

    .line 34
    iput-boolean v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mIsInitialized:Z

    .line 35
    iput-boolean v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mIsPaused:Z

    .line 37
    const/4 v0, 0x7

    iput v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->INITIAL_TAIL:I

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mIsGameOver:Z

    .line 79
    new-instance v0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$1;

    invoke-direct {v0, p0}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$1;-><init>(Lcom/buzzfeed/buzzcat/SnakeGameBoardView;)V

    iput-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mStatusChecker:Ljava/lang/Runnable;

    .line 62
    invoke-direct {p0}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->init()V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/buzzcat/SnakeGameBoardView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/buzzcat/SnakeGameBoardView;

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mIsGameOver:Z

    return v0
.end method

.method static synthetic access$100(Lcom/buzzfeed/buzzcat/SnakeGameBoardView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/buzzcat/SnakeGameBoardView;

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mIsPaused:Z

    return v0
.end method

.method static synthetic access$200(Lcom/buzzfeed/buzzcat/SnakeGameBoardView;)V
    .registers 1
    .param p0, "x0"    # Lcom/buzzfeed/buzzcat/SnakeGameBoardView;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->onUpdate()V

    return-void
.end method

.method static synthetic access$300(Lcom/buzzfeed/buzzcat/SnakeGameBoardView;)I
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/buzzcat/SnakeGameBoardView;

    .prologue
    .line 17
    iget v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mSpeed:I

    return v0
.end method

.method static synthetic access$400(Lcom/buzzfeed/buzzcat/SnakeGameBoardView;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/buzzcat/SnakeGameBoardView;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkScore()V
    .registers 4

    .prologue
    .line 237
    iget-object v1, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mPastPoints:Lcom/buzzfeed/buzzcat/SnakeGameBoardView$LimitedQueue;

    invoke-virtual {v1}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$LimitedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$PointAndDirection;

    .line 238
    .local v0, "current":Lcom/buzzfeed/buzzcat/SnakeGameBoardView$PointAndDirection;
    invoke-virtual {v0}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$PointAndDirection;->getPoint()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$PointAndDirection;->getPoint()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v2}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->didCollideWithTarget(II)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 239
    iget v1, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mCurrentScore:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mCurrentScore:I

    .line 240
    iget-object v1, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mParent:Lcom/buzzfeed/buzzcat/SnakeGameBoardView$SnakeGameBoardParent;

    iget v2, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mCurrentScore:I

    invoke-interface {v1, v2}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$SnakeGameBoardParent;->updateScore(I)V

    .line 241
    invoke-direct {p0}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->onScoreUp()V

    .line 242
    invoke-direct {p0}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->moveTarget()V

    .line 244
    iget-boolean v1, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mIsInsaneLevel:Z

    if-eqz v1, :cond_3d

    iget v1, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mCurrentScore:I

    rem-int/lit8 v1, v1, 0x5

    if-nez v1, :cond_3d

    .line 245
    iget v1, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mSpeed:I

    add-int/lit8 v1, v1, -0xa

    iput v1, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mSpeed:I

    .line 248
    :cond_3d
    return-void
.end method

.method private didCollideWithBorder(II)Z
    .registers 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 229
    if-ltz p1, :cond_c

    iget v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mRightMax:I

    if-gt p1, v0, :cond_c

    if-ltz p2, :cond_c

    iget v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mBottomMax:I

    if-le p2, v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private didCollideWithTail(II)Z
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 220
    iget-object v1, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mPastPoints:Lcom/buzzfeed/buzzcat/SnakeGameBoardView$LimitedQueue;

    invoke-virtual {v1}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$LimitedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$PointAndDirection;

    .line 221
    .local v0, "point":Lcom/buzzfeed/buzzcat/SnakeGameBoardView$PointAndDirection;
    invoke-virtual {v0}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$PointAndDirection;->getPoint()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-ne v2, p1, :cond_6

    invoke-virtual {v0}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$PointAndDirection;->getPoint()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-ne v2, p2, :cond_6

    .line 222
    const/4 v1, 0x1

    .line 225
    .end local v0    # "point":Lcom/buzzfeed/buzzcat/SnakeGameBoardView$PointAndDirection;
    :goto_23
    return v1

    :cond_24
    const/4 v1, 0x0

    goto :goto_23
.end method

.method private didCollideWithTarget(II)Z
    .registers 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 233
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mCurrentTargetPoint:Landroid/graphics/Point;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mCurrentTargetPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-ne v0, p1, :cond_12

    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mCurrentTargetPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-ne v0, p2, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private drawTail(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mPastPoints:Lcom/buzzfeed/buzzcat/SnakeGameBoardView$LimitedQueue;

    invoke-virtual {v0}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$LimitedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$PointAndDirection;

    .line 166
    .local v6, "point":Lcom/buzzfeed/buzzcat/SnakeGameBoardView$PointAndDirection;
    invoke-virtual {v6}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$PointAndDirection;->getPoint()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    invoke-virtual {v6}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$PointAndDirection;->getPoint()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    invoke-virtual {v6}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$PointAndDirection;->getPoint()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mPadding:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {v6}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$PointAndDirection;->getPoint()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mPadding:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mPainter:Lcom/buzzfeed/buzzcat/RainbowPainter;

    invoke-virtual {v6}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$PointAndDirection;->getPaintIndex()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/buzzfeed/buzzcat/RainbowPainter;->getPaint(I)Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_6

    .line 168
    .end local v6    # "point":Lcom/buzzfeed/buzzcat/SnakeGameBoardView$PointAndDirection;
    :cond_43
    return-void
.end method

.method private gameOver()V
    .registers 4

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mIsGameOver:Z

    if-eqz v0, :cond_5

    .line 121
    :goto_4
    return-void

    .line 117
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mIsGameOver:Z

    .line 118
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mStatusChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 119
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mSnake:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/buzzfeed/buzzcat/R$anim;->snake_shake:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 120
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mParent:Lcom/buzzfeed/buzzcat/SnakeGameBoardView$SnakeGameBoardParent;

    invoke-interface {v0}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$SnakeGameBoardParent;->gameOver()V

    goto :goto_4
.end method

.method private generateNewTargetPoint()Landroid/graphics/Point;
    .registers 6

    .prologue
    .line 308
    sget-object v2, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mRandom:Ljava/util/Random;

    iget v3, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mRightMax:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 309
    .local v0, "x":I
    sget-object v2, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mRandom:Ljava/util/Random;

    iget v3, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mBottomMax:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 310
    .local v1, "y":I
    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mPadding:I

    invoke-direct {p0, v0, v3}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->roundToPosition(II)I

    move-result v3

    iget v4, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mPadding:I

    invoke-direct {p0, v1, v4}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->roundToPosition(II)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method private getTailSize()I
    .registers 2

    .prologue
    .line 255
    iget v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mCurrentScore:I

    add-int/lit8 v0, v0, 0x7

    return v0
.end method

.method private init()V
    .registers 3

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/buzzfeed/buzzcat/R$layout;->view_snake_game_board:I

    invoke-static {v0, v1, p0}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->setWillNotDraw(Z)V

    .line 68
    sget v0, Lcom/buzzfeed/buzzcat/R$id;->fragment_snake_gameboard_snake:I

    invoke-virtual {p0, v0}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mSnake:Landroid/widget/ImageView;

    .line 69
    sget v0, Lcom/buzzfeed/buzzcat/R$id;->fragment_snake_gameboard_mouse:I

    invoke-virtual {p0, v0}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mTarget:Landroid/widget/ImageView;

    .line 70
    invoke-virtual {p0}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/buzzfeed/buzzcat/R$dimen;->cat_block_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mPadding:I

    .line 71
    invoke-virtual {p0}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/buzzfeed/buzzcat/R$array;->cat_difficulty_speeds:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mSpeedDifficulties:[I

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mHandler:Landroid/os/Handler;

    .line 74
    new-instance v0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$LimitedQueue;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$LimitedQueue;-><init>(Lcom/buzzfeed/buzzcat/SnakeGameBoardView;I)V

    iput-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mPastPoints:Lcom/buzzfeed/buzzcat/SnakeGameBoardView$LimitedQueue;

    .line 75
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mPendingPoints:Ljava/util/Queue;

    .line 76
    new-instance v0, Lcom/buzzfeed/buzzcat/RainbowPainter;

    invoke-virtual {p0}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/buzzfeed/buzzcat/RainbowPainter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mPainter:Lcom/buzzfeed/buzzcat/RainbowPainter;

    .line 77
    return-void
.end method

.method private initSnake()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 291
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 292
    .local v0, "point":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mPastPoints:Lcom/buzzfeed/buzzcat/SnakeGameBoardView$LimitedQueue;

    new-instance v2, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$PointAndDirection;

    sget-object v3, Lcom/buzzfeed/buzzcat/JoystickDirection;->Right:Lcom/buzzfeed/buzzcat/JoystickDirection;

    invoke-direct {v2, p0, v0, v4, v3}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$PointAndDirection;-><init>(Lcom/buzzfeed/buzzcat/SnakeGameBoardView;Landroid/graphics/Point;ILcom/buzzfeed/buzzcat/JoystickDirection;)V

    invoke-virtual {v1, v2}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$LimitedQueue;->add(Ljava/lang/Object;)Z

    .line 293
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v2}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->moveSnake(II)V

    .line 294
    iget-object v1, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mSnake:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 295
    return-void
.end method

.method private isDaredevelLevel(I)Z
    .registers 3
    .param p1, "diffLevel"    # I

    .prologue
    .line 95
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private moveSnake(II)V
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 153
    iget-object v1, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mSnake:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 154
    .local v0, "parms":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, p1, p2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 155
    iget-object v1, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mSnake:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    return-void
.end method

.method private moveSnake(Lcom/buzzfeed/buzzcat/JoystickDirection;)V
    .registers 10
    .param p1, "direction"    # Lcom/buzzfeed/buzzcat/JoystickDirection;

    .prologue
    .line 124
    iget-object v4, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mPastPoints:Lcom/buzzfeed/buzzcat/SnakeGameBoardView$LimitedQueue;

    invoke-virtual {v4}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$LimitedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$PointAndDirection;

    .line 125
    .local v0, "lastPoint":Lcom/buzzfeed/buzzcat/SnakeGameBoardView$PointAndDirection;
    invoke-virtual {v0}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$PointAndDirection;->getPoint()Landroid/graphics/Point;

    move-result-object v4

    iget v2, v4, Landroid/graphics/Point;->x:I

    .line 126
    .local v2, "x":I
    invoke-virtual {v0}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$PointAndDirection;->getPoint()Landroid/graphics/Point;

    move-result-object v4

    iget v3, v4, Landroid/graphics/Point;->y:I

    .line 127
    .local v3, "y":I
    sget-object v4, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$2;->$SwitchMap$com$buzzfeed$buzzcat$JoystickDirection:[I

    invoke-virtual {p1}, Lcom/buzzfeed/buzzcat/JoystickDirection;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_68

    .line 142
    :goto_1f
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 143
    .local v1, "newPoint":Landroid/graphics/Point;
    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v4, v5}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->didCollideWithBorder(II)Z

    move-result v4

    if-nez v4, :cond_38

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v4, v5}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->didCollideWithTail(II)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 144
    :cond_38
    invoke-direct {p0}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->gameOver()V

    .line 150
    :goto_3b
    return-void

    .line 129
    .end local v1    # "newPoint":Landroid/graphics/Point;
    :pswitch_3c
    iget v4, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mPadding:I

    add-int/2addr v3, v4

    .line 130
    goto :goto_1f

    .line 132
    :pswitch_40
    iget v4, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mPadding:I

    sub-int/2addr v3, v4

    .line 133
    goto :goto_1f

    .line 135
    :pswitch_44
    iget v4, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mPadding:I

    sub-int/2addr v2, v4

    .line 136
    goto :goto_1f

    .line 138
    :pswitch_48
    iget v4, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mPadding:I

    add-int/2addr v2, v4

    goto :goto_1f

    .line 148
    .restart local v1    # "newPoint":Landroid/graphics/Point;
    :cond_4c
    iget-object v4, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mPastPoints:Lcom/buzzfeed/buzzcat/SnakeGameBoardView$LimitedQueue;

    new-instance v5, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$PointAndDirection;

    iget-object v6, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mPainter:Lcom/buzzfeed/buzzcat/RainbowPainter;

    invoke-virtual {v0}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$PointAndDirection;->getPaintIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/buzzfeed/buzzcat/RainbowPainter;->getNextIndex(I)I

    move-result v6

    invoke-direct {v5, p0, v1, v6, p1}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$PointAndDirection;-><init>(Lcom/buzzfeed/buzzcat/SnakeGameBoardView;Landroid/graphics/Point;ILcom/buzzfeed/buzzcat/JoystickDirection;)V

    invoke-virtual {v4, v5}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$LimitedQueue;->add(Ljava/lang/Object;)Z

    .line 149
    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v4, v5}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->moveSnake(II)V

    goto :goto_3b

    .line 127
    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_40
        :pswitch_44
        :pswitch_48
    .end packed-switch
.end method

.method private moveTarget()V
    .registers 3

    .prologue
    .line 299
    :cond_0
    invoke-direct {p0}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->generateNewTargetPoint()Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mCurrentTargetPoint:Landroid/graphics/Point;

    .line 301
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mCurrentTargetPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mCurrentTargetPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0, v1}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->didCollideWithTail(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mCurrentTargetPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mCurrentTargetPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0, v1}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->moveTarget(II)V

    .line 304
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mTarget:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 305
    return-void
.end method

.method private moveTarget(II)V
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 159
    iget-object v1, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mTarget:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 160
    .local v0, "parms":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, p1, p2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 161
    iget-object v1, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mTarget:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    return-void
.end method

.method private onScoreUp()V
    .registers 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mPastPoints:Lcom/buzzfeed/buzzcat/SnakeGameBoardView$LimitedQueue;

    invoke-direct {p0}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->getTailSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$LimitedQueue;->setLimit(I)V

    .line 252
    return-void
.end method

.method private onUpdate()V
    .registers 4

    .prologue
    .line 180
    iget v1, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mRightMax:I

    if-gtz v1, :cond_9

    iget v1, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mBottomMax:I

    if-gtz v1, :cond_9

    .line 198
    :goto_8
    return-void

    .line 184
    :cond_9
    iget-object v1, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mPendingPoints:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-lez v1, :cond_33

    .line 185
    iget-object v1, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mPendingPoints:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/buzzcat/JoystickDirection;

    .line 186
    .local v0, "direction":Lcom/buzzfeed/buzzcat/JoystickDirection;
    invoke-direct {p0, v0}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->moveSnake(Lcom/buzzfeed/buzzcat/JoystickDirection;)V

    goto :goto_17

    .line 189
    .end local v0    # "direction":Lcom/buzzfeed/buzzcat/JoystickDirection;
    :cond_27
    iget-object v1, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mPendingPoints:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 195
    :goto_2c
    invoke-direct {p0}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->checkScore()V

    .line 197
    invoke-virtual {p0}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->invalidate()V

    goto :goto_8

    .line 192
    :cond_33
    iget-object v1, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mPastPoints:Lcom/buzzfeed/buzzcat/SnakeGameBoardView$LimitedQueue;

    invoke-virtual {v1}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$LimitedQueue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$PointAndDirection;

    invoke-virtual {v1}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$PointAndDirection;->getDirection()Lcom/buzzfeed/buzzcat/JoystickDirection;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->moveSnake(Lcom/buzzfeed/buzzcat/JoystickDirection;)V

    goto :goto_2c
.end method

.method private roundToPosition(II)I
    .registers 4
    .param p1, "random"    # I
    .param p2, "divisor"    # I

    .prologue
    .line 314
    div-int v0, p1, p2

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/2addr v0, p2

    return v0
.end method


# virtual methods
.method public isGameRunning()Z
    .registers 2

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mIsGameOver:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onDirectionChanged(Lcom/buzzfeed/buzzcat/JoystickDirection;)V
    .registers 4
    .param p1, "direction"    # Lcom/buzzfeed/buzzcat/JoystickDirection;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mPendingPoints:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_e

    .line 216
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mPendingPoints:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_e
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 172
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 173
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mPastPoints:Lcom/buzzfeed/buzzcat/SnakeGameBoardView$LimitedQueue;

    if-nez v0, :cond_8

    .line 176
    :goto_7
    return-void

    .line 175
    :cond_8
    invoke-direct {p0, p1}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->drawTail(Landroid/graphics/Canvas;)V

    goto :goto_7
.end method

.method protected onMeasure(II)V
    .registers 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 261
    invoke-super {p0, p1, p1}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 262
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 8
    .param p1, "xNew"    # I
    .param p2, "yNew"    # I
    .param p3, "xOld"    # I
    .param p4, "yOld"    # I

    .prologue
    .line 266
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 267
    iget-boolean v2, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mIsInitialized:Z

    if-eqz v2, :cond_8

    .line 288
    :goto_7
    return-void

    .line 271
    :cond_8
    :goto_8
    iget v2, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mPadding:I

    rem-int v2, p1, v2

    if-eqz v2, :cond_15

    .line 272
    iget v2, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mPadding:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mPadding:I

    goto :goto_8

    .line 275
    :cond_15
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mIsInitialized:Z

    .line 276
    iget-object v2, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mSnake:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 277
    .local v0, "parms":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mPadding:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 278
    iget v2, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mPadding:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 279
    iget-object v2, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mSnake:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    iget-object v2, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mTarget:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 282
    .local v1, "targetParms":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mPadding:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 283
    iget v2, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mPadding:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 284
    iget-object v2, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mTarget:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    iget v2, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mPadding:I

    sub-int v2, p1, v2

    iput v2, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mRightMax:I

    .line 287
    iget v2, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mPadding:I

    sub-int v2, p2, v2

    iput v2, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mBottomMax:I

    goto :goto_7
.end method

.method public pause()V
    .registers 3

    .prologue
    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mIsPaused:Z

    .line 202
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mStatusChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 203
    return-void
.end method

.method public resume()V
    .registers 2

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mIsGameOver:Z

    if-eqz v0, :cond_5

    .line 212
    :cond_4
    :goto_4
    return-void

    .line 209
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mIsPaused:Z

    .line 210
    iget-boolean v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mIsInitialized:Z

    if-eqz v0, :cond_4

    .line 211
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mStatusChecker:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_4
.end method

.method public setListener(Lcom/buzzfeed/buzzcat/SnakeGameBoardView$SnakeGameBoardParent;)V
    .registers 2
    .param p1, "parent"    # Lcom/buzzfeed/buzzcat/SnakeGameBoardView$SnakeGameBoardParent;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mParent:Lcom/buzzfeed/buzzcat/SnakeGameBoardView$SnakeGameBoardParent;

    .line 48
    return-void
.end method

.method public startGame(I)V
    .registers 4
    .param p1, "diffLevel"    # I

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mSpeedDifficulties:[I

    aget v0, v0, p1

    iput v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mSpeed:I

    .line 100
    invoke-direct {p0, p1}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->isDaredevelLevel(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mIsInsaneLevel:Z

    .line 101
    iput-boolean v1, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mIsGameOver:Z

    .line 102
    iput-boolean v1, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mIsPaused:Z

    .line 103
    iput v1, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mCurrentScore:I

    .line 104
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mParent:Lcom/buzzfeed/buzzcat/SnakeGameBoardView$SnakeGameBoardParent;

    iget v1, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mCurrentScore:I

    invoke-interface {v0, v1}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$SnakeGameBoardParent;->updateScore(I)V

    .line 105
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mPastPoints:Lcom/buzzfeed/buzzcat/SnakeGameBoardView$LimitedQueue;

    invoke-virtual {v0}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$LimitedQueue;->clear()V

    .line 106
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mPastPoints:Lcom/buzzfeed/buzzcat/SnakeGameBoardView$LimitedQueue;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView$LimitedQueue;->setLimit(I)V

    .line 107
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mPendingPoints:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 108
    invoke-direct {p0}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->initSnake()V

    .line 109
    invoke-direct {p0}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->moveTarget()V

    .line 110
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->mStatusChecker:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 111
    return-void
.end method
