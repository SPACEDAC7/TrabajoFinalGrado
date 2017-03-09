.class public Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;
.super Landroid/support/v4/app/Fragment;
.source "EasterEggSnakeFragment.java"

# interfaces
.implements Lcom/buzzfeed/buzzcat/SnakeGameController$SnakeControllerStateParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment$CatStyleParent;
    }
.end annotation


# instance fields
.field private mController:Lcom/buzzfeed/buzzcat/SnakeGameController;

.field private mCurrentScoreView:Landroid/widget/TextView;

.field private mGamePad:Lcom/buzzfeed/buzzcat/SwipeGameControllerPad;

.field private mGameboard:Lcom/buzzfeed/buzzcat/SnakeGameBoardView;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Landroid/view/View$OnTouchListener;

.field private mHighScoreView:Landroid/widget/TextView;

.field private mParent:Lcom/buzzfeed/buzzcat/SnakeGameController$SnakeControllerParent;

.field private mPointerView:Lcom/buzzfeed/buzzcat/SnakePointerView;

.field private mStyleParent:Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment$CatStyleParent;

.field private mTopBarView:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;)Lcom/buzzfeed/buzzcat/SnakeGameController;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;->mController:Lcom/buzzfeed/buzzcat/SnakeGameController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;)Landroid/view/GestureDetector;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method


# virtual methods
.method public isStateValid()Z
    .registers 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;->isAdded()Z

    move-result v0

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    move-object v0, p1

    .line 37
    check-cast v0, Lcom/buzzfeed/buzzcat/SnakeGameController$SnakeControllerParent;

    iput-object v0, p0, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;->mParent:Lcom/buzzfeed/buzzcat/SnakeGameController$SnakeControllerParent;

    .line 38
    check-cast p1, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment$CatStyleParent;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;->mStyleParent:Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment$CatStyleParent;

    .line 39
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 13
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    sget v0, Lcom/buzzfeed/buzzcat/R$layout;->fragment_easter_egg_snake:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 50
    .local v8, "view":Landroid/view/View;
    sget v0, Lcom/buzzfeed/buzzcat/R$id;->fragment_snake_gameboard:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;

    iput-object v0, p0, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;->mGameboard:Lcom/buzzfeed/buzzcat/SnakeGameBoardView;

    .line 51
    sget v0, Lcom/buzzfeed/buzzcat/R$id;->fragment_snake_pointer:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/buzzcat/SnakePointerView;

    iput-object v0, p0, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;->mPointerView:Lcom/buzzfeed/buzzcat/SnakePointerView;

    .line 52
    sget v0, Lcom/buzzfeed/buzzcat/R$id;->fragment_snake_top_bar:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;->mTopBarView:Landroid/widget/RelativeLayout;

    .line 53
    sget v0, Lcom/buzzfeed/buzzcat/R$id;->fragment_snake_high_score:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;->mHighScoreView:Landroid/widget/TextView;

    .line 54
    sget v0, Lcom/buzzfeed/buzzcat/R$id;->fragment_snake_current_score:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;->mCurrentScoreView:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;->mTopBarView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_48

    .line 57
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;->mTopBarView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;->mStyleParent:Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment$CatStyleParent;

    invoke-interface {v1}, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment$CatStyleParent;->getTopBarColorResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 58
    :cond_48
    new-instance v0, Lcom/buzzfeed/buzzcat/SnakeGameController;

    invoke-virtual {p0}, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;->mParent:Lcom/buzzfeed/buzzcat/SnakeGameController$SnakeControllerParent;

    iget-object v4, p0, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;->mGameboard:Lcom/buzzfeed/buzzcat/SnakeGameBoardView;

    iget-object v5, p0, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;->mPointerView:Lcom/buzzfeed/buzzcat/SnakePointerView;

    iget-object v6, p0, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;->mHighScoreView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;->mCurrentScoreView:Landroid/widget/TextView;

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/buzzfeed/buzzcat/SnakeGameController;-><init>(Landroid/app/Activity;Lcom/buzzfeed/buzzcat/SnakeGameController$SnakeControllerParent;Lcom/buzzfeed/buzzcat/SnakeGameController$SnakeControllerStateParent;Lcom/buzzfeed/buzzcat/SnakeGameBoardView;Lcom/buzzfeed/buzzcat/SnakePointerView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;->mController:Lcom/buzzfeed/buzzcat/SnakeGameController;

    .line 60
    new-instance v0, Lcom/buzzfeed/buzzcat/SwipeGameControllerPad;

    new-instance v1, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment$1;

    invoke-direct {v1, p0}, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment$1;-><init>(Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;)V

    invoke-direct {v0, v1}, Lcom/buzzfeed/buzzcat/SwipeGameControllerPad;-><init>(Lcom/buzzfeed/buzzcat/SwipeGameControllerPad$OnDirectionCallback;)V

    iput-object v0, p0, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;->mGamePad:Lcom/buzzfeed/buzzcat/SwipeGameControllerPad;

    .line 82
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;->mGamePad:Lcom/buzzfeed/buzzcat/SwipeGameControllerPad;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;->mGestureDetector:Landroid/view/GestureDetector;

    .line 84
    new-instance v0, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment$2;

    invoke-direct {v0, p0}, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment$2;-><init>(Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;)V

    iput-object v0, p0, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;->mGestureListener:Landroid/view/View$OnTouchListener;

    .line 92
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;->mGestureListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 94
    return-object v8
.end method

.method public onDirectionPadUsed(Lcom/buzzfeed/buzzcat/JoystickDirection;)V
    .registers 3
    .param p1, "direction"    # Lcom/buzzfeed/buzzcat/JoystickDirection;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;->mGamePad:Lcom/buzzfeed/buzzcat/SwipeGameControllerPad;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/buzzcat/SwipeGameControllerPad;->directionPadUsed(Lcom/buzzfeed/buzzcat/JoystickDirection;)V

    .line 123
    return-void
.end method

.method public onNewGame()V
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;->mGamePad:Lcom/buzzfeed/buzzcat/SwipeGameControllerPad;

    invoke-virtual {v0}, Lcom/buzzfeed/buzzcat/SwipeGameControllerPad;->resetJoystick()V

    .line 117
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 99
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 100
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;->mController:Lcom/buzzfeed/buzzcat/SnakeGameController;

    invoke-virtual {v0}, Lcom/buzzfeed/buzzcat/SnakeGameController;->pauseGame()V

    .line 101
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 105
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 106
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/EasterEggSnakeFragment;->mController:Lcom/buzzfeed/buzzcat/SnakeGameController;

    invoke-virtual {v0}, Lcom/buzzfeed/buzzcat/SnakeGameController;->resumeGame()V

    .line 107
    return-void
.end method
