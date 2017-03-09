.class public Lcom/buzzfeed/buzzcat/SnakeGameController;
.super Ljava/lang/Object;
.source "SnakeGameController.java"

# interfaces
.implements Lcom/buzzfeed/buzzcat/SnakeGameBoardView$SnakeGameBoardParent;
.implements Lcom/buzzfeed/buzzcat/SnakePointerView$SnakePointerViewParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/buzzcat/SnakeGameController$SnakeControllerStateParent;,
        Lcom/buzzfeed/buzzcat/SnakeGameController$SnakeControllerParent;
    }
.end annotation


# static fields
.field private static final CAT_PREFS:Ljava/lang/String; = "buzzcat"

.field public static final DIALOG_GAME_OVER:Ljava/lang/String; = "game_over"

.field public static final DIALOG_START:Ljava/lang/String; = "start_menu"

.field private static final HIGH_SCORE:Ljava/lang/String; = "high_score"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCurrentScore:I

.field private mCurrentScoreView:Landroid/widget/TextView;

.field private mGameBoard:Lcom/buzzfeed/buzzcat/SnakeGameBoardView;

.field private mHighScoreView:Landroid/widget/TextView;

.field private mJoystick:Lcom/buzzfeed/buzzcat/SnakePointerView;

.field private mParent:Lcom/buzzfeed/buzzcat/SnakeGameController$SnakeControllerParent;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mStateParent:Lcom/buzzfeed/buzzcat/SnakeGameController$SnakeControllerStateParent;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-class v0, Lcom/buzzfeed/buzzcat/SnakeGameController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/buzzcat/SnakeGameController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/buzzfeed/buzzcat/SnakeGameController$SnakeControllerParent;Lcom/buzzfeed/buzzcat/SnakeGameController$SnakeControllerStateParent;Lcom/buzzfeed/buzzcat/SnakeGameBoardView;Lcom/buzzfeed/buzzcat/SnakePointerView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "parent"    # Lcom/buzzfeed/buzzcat/SnakeGameController$SnakeControllerParent;
    .param p3, "stateParent"    # Lcom/buzzfeed/buzzcat/SnakeGameController$SnakeControllerStateParent;
    .param p4, "boardView"    # Lcom/buzzfeed/buzzcat/SnakeGameBoardView;
    .param p5, "pointerView"    # Lcom/buzzfeed/buzzcat/SnakePointerView;
    .param p6, "highScoreView"    # Landroid/widget/TextView;
    .param p7, "currentScoreView"    # Landroid/widget/TextView;

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput v1, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mCurrentScore:I

    .line 34
    iput-object p4, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mGameBoard:Lcom/buzzfeed/buzzcat/SnakeGameBoardView;

    .line 35
    iput-object p5, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mJoystick:Lcom/buzzfeed/buzzcat/SnakePointerView;

    .line 36
    iput-object p6, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mHighScoreView:Landroid/widget/TextView;

    .line 37
    iput-object p7, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mCurrentScoreView:Landroid/widget/TextView;

    .line 38
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mJoystick:Lcom/buzzfeed/buzzcat/SnakePointerView;

    invoke-virtual {v0, p0}, Lcom/buzzfeed/buzzcat/SnakePointerView;->setListener(Lcom/buzzfeed/buzzcat/SnakePointerView$SnakePointerViewParent;)V

    .line 39
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mGameBoard:Lcom/buzzfeed/buzzcat/SnakeGameBoardView;

    invoke-virtual {v0, p0}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->setListener(Lcom/buzzfeed/buzzcat/SnakeGameBoardView$SnakeGameBoardParent;)V

    .line 40
    iput-object p1, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mActivity:Landroid/app/Activity;

    .line 41
    iput-object p2, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mParent:Lcom/buzzfeed/buzzcat/SnakeGameController$SnakeControllerParent;

    .line 42
    iput-object p3, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mStateParent:Lcom/buzzfeed/buzzcat/SnakeGameController$SnakeControllerStateParent;

    .line 43
    const-string v0, "buzzcat"

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mPrefs:Landroid/content/SharedPreferences;

    .line 44
    invoke-direct {p0}, Lcom/buzzfeed/buzzcat/SnakeGameController;->updateHighScore()V

    .line 45
    invoke-virtual {p0}, Lcom/buzzfeed/buzzcat/SnakeGameController;->startGame()V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/buzzcat/SnakeGameController;)Lcom/buzzfeed/buzzcat/SnakePointerView;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/buzzcat/SnakeGameController;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mJoystick:Lcom/buzzfeed/buzzcat/SnakePointerView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/buzzfeed/buzzcat/SnakeGameController;)Lcom/buzzfeed/buzzcat/SnakeGameBoardView;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/buzzcat/SnakeGameController;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mGameBoard:Lcom/buzzfeed/buzzcat/SnakeGameBoardView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/buzzfeed/buzzcat/SnakeGameController;)Lcom/buzzfeed/buzzcat/SnakeGameController$SnakeControllerStateParent;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/buzzcat/SnakeGameController;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mStateParent:Lcom/buzzfeed/buzzcat/SnakeGameController$SnakeControllerStateParent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/buzzfeed/buzzcat/SnakeGameController;)Lcom/buzzfeed/buzzcat/SnakeGameController$SnakeControllerParent;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/buzzcat/SnakeGameController;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mParent:Lcom/buzzfeed/buzzcat/SnakeGameController$SnakeControllerParent;

    return-object v0
.end method

.method static synthetic access$400(Lcom/buzzfeed/buzzcat/SnakeGameController;)V
    .registers 1
    .param p0, "x0"    # Lcom/buzzfeed/buzzcat/SnakeGameController;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/buzzfeed/buzzcat/SnakeGameController;->shareScore()V

    return-void
.end method

.method static synthetic access$500(Lcom/buzzfeed/buzzcat/SnakeGameController;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/buzzcat/SnakeGameController;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private isStateValid()Z
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mStateParent:Lcom/buzzfeed/buzzcat/SnakeGameController$SnakeControllerStateParent;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mStateParent:Lcom/buzzfeed/buzzcat/SnakeGameController$SnakeControllerStateParent;

    invoke-interface {v0}, Lcom/buzzfeed/buzzcat/SnakeGameController$SnakeControllerStateParent;->isStateValid()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private shareScore()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/buzzfeed/buzzcat/SnakeGameController;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".shareScore"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "TAG":Ljava/lang/String;
    iget-object v3, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mActivity:Landroid/app/Activity;

    sget v5, Lcom/buzzfeed/buzzcat/R$string;->buzzcat_share_score_title:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    iget v6, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mCurrentScore:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/buzzfeed/buzzcat/R$string;->buzzcat_share_score_subject:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mCurrentScore:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const-string v7, "http://bzfd.it/bfmobileapps"

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->buildShareIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    .line 74
    .local v2, "intent":Landroid/content/Intent;
    :try_start_4f
    iget-object v3, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_54
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4f .. :try_end_54} :catch_55

    .line 78
    :goto_54
    return-void

    .line 75
    :catch_55
    move-exception v1

    .line 76
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No activity found on device to handle type \'text/plain\': "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_54
.end method

.method private showGameOverDialog()V
    .registers 7

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/buzzfeed/buzzcat/SnakeGameController;->isStateValid()Z

    move-result v0

    if-nez v0, :cond_7

    .line 160
    :goto_6
    return-void

    .line 142
    :cond_7
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mParent:Lcom/buzzfeed/buzzcat/SnakeGameController$SnakeControllerParent;

    const-string v1, "game_over"

    iget-object v2, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mActivity:Landroid/app/Activity;

    sget v3, Lcom/buzzfeed/buzzcat/R$string;->buzzcat_your_score:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mCurrentScore:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/buzzfeed/buzzcat/R$array;->buzzcat_game_over_options:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/buzzfeed/buzzcat/SnakeGameController$5;

    invoke-direct {v4, p0}, Lcom/buzzfeed/buzzcat/SnakeGameController$5;-><init>(Lcom/buzzfeed/buzzcat/SnakeGameController;)V

    new-instance v5, Lcom/buzzfeed/buzzcat/SnakeGameController$6;

    invoke-direct {v5, p0}, Lcom/buzzfeed/buzzcat/SnakeGameController$6;-><init>(Lcom/buzzfeed/buzzcat/SnakeGameController;)V

    invoke-interface/range {v0 .. v5}, Lcom/buzzfeed/buzzcat/SnakeGameController$SnakeControllerParent;->showListDialog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_6
.end method

.method private showResumeGameDialog()V
    .registers 6

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/buzzfeed/buzzcat/SnakeGameController;->isStateValid()Z

    move-result v0

    if-nez v0, :cond_7

    .line 137
    :goto_6
    return-void

    .line 126
    :cond_7
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mParent:Lcom/buzzfeed/buzzcat/SnakeGameController$SnakeControllerParent;

    iget-object v1, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/buzzfeed/buzzcat/R$string;->buzzcat_resume_game:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mActivity:Landroid/app/Activity;

    sget v3, Lcom/buzzfeed/buzzcat/R$string;->buzzcat_resume:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/buzzfeed/buzzcat/SnakeGameController$3;

    invoke-direct {v3, p0}, Lcom/buzzfeed/buzzcat/SnakeGameController$3;-><init>(Lcom/buzzfeed/buzzcat/SnakeGameController;)V

    new-instance v4, Lcom/buzzfeed/buzzcat/SnakeGameController$4;

    invoke-direct {v4, p0}, Lcom/buzzfeed/buzzcat/SnakeGameController$4;-><init>(Lcom/buzzfeed/buzzcat/SnakeGameController;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/buzzfeed/buzzcat/SnakeGameController$SnakeControllerParent;->showSingleButtonDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_6
.end method

.method private showStartGameDialog()V
    .registers 7

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/buzzfeed/buzzcat/SnakeGameController;->isStateValid()Z

    move-result v0

    if-nez v0, :cond_7

    .line 121
    :goto_6
    return-void

    .line 108
    :cond_7
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mParent:Lcom/buzzfeed/buzzcat/SnakeGameController$SnakeControllerParent;

    const-string v1, "start_menu"

    iget-object v2, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mActivity:Landroid/app/Activity;

    sget v3, Lcom/buzzfeed/buzzcat/R$string;->buzzcat_select_difficulty:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/buzzfeed/buzzcat/R$array;->buzzcat_level_difficulty:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/buzzfeed/buzzcat/SnakeGameController$1;

    invoke-direct {v4, p0}, Lcom/buzzfeed/buzzcat/SnakeGameController$1;-><init>(Lcom/buzzfeed/buzzcat/SnakeGameController;)V

    new-instance v5, Lcom/buzzfeed/buzzcat/SnakeGameController$2;

    invoke-direct {v5, p0}, Lcom/buzzfeed/buzzcat/SnakeGameController$2;-><init>(Lcom/buzzfeed/buzzcat/SnakeGameController;)V

    invoke-interface/range {v0 .. v5}, Lcom/buzzfeed/buzzcat/SnakeGameController$SnakeControllerParent;->showListDialog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_6
.end method

.method private updateHighScore()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 90
    invoke-direct {p0}, Lcom/buzzfeed/buzzcat/SnakeGameController;->isStateValid()Z

    move-result v1

    if-nez v1, :cond_8

    .line 97
    :goto_7
    return-void

    .line 92
    :cond_8
    iget-object v1, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "high_score"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 93
    .local v0, "previous":I
    iget v1, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mCurrentScore:I

    if-le v1, v0, :cond_25

    .line 94
    iget-object v1, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "high_score"

    iget v3, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mCurrentScore:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 96
    :cond_25
    iget-object v1, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mHighScoreView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mActivity:Landroid/app/Activity;

    sget v3, Lcom/buzzfeed/buzzcat/R$string;->buzzcat_high_score:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "high_score"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7
.end method


# virtual methods
.method public changeDirection(Lcom/buzzfeed/buzzcat/JoystickDirection;)V
    .registers 3
    .param p1, "direction"    # Lcom/buzzfeed/buzzcat/JoystickDirection;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mGameBoard:Lcom/buzzfeed/buzzcat/SnakeGameBoardView;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->onDirectionChanged(Lcom/buzzfeed/buzzcat/JoystickDirection;)V

    .line 102
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mStateParent:Lcom/buzzfeed/buzzcat/SnakeGameController$SnakeControllerStateParent;

    invoke-interface {v0, p1}, Lcom/buzzfeed/buzzcat/SnakeGameController$SnakeControllerStateParent;->onDirectionPadUsed(Lcom/buzzfeed/buzzcat/JoystickDirection;)V

    .line 103
    return-void
.end method

.method public gameOver()V
    .registers 2

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/buzzfeed/buzzcat/SnakeGameController;->updateHighScore()V

    .line 66
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mJoystick:Lcom/buzzfeed/buzzcat/SnakePointerView;

    invoke-virtual {v0}, Lcom/buzzfeed/buzzcat/SnakePointerView;->disable()V

    .line 67
    invoke-direct {p0}, Lcom/buzzfeed/buzzcat/SnakeGameController;->showGameOverDialog()V

    .line 68
    return-void
.end method

.method public pauseGame()V
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mGameBoard:Lcom/buzzfeed/buzzcat/SnakeGameBoardView;

    invoke-virtual {v0}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->pause()V

    .line 54
    return-void
.end method

.method public resumeGame()V
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mGameBoard:Lcom/buzzfeed/buzzcat/SnakeGameBoardView;

    invoke-virtual {v0}, Lcom/buzzfeed/buzzcat/SnakeGameBoardView;->isGameRunning()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 58
    invoke-direct {p0}, Lcom/buzzfeed/buzzcat/SnakeGameController;->showResumeGameDialog()V

    .line 60
    :cond_b
    return-void
.end method

.method public startGame()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/buzzfeed/buzzcat/SnakeGameController;->showStartGameDialog()V

    .line 50
    return-void
.end method

.method public updateScore(I)V
    .registers 4
    .param p1, "score"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mCurrentScore:I

    .line 85
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mCurrentScoreView:Landroid/widget/TextView;

    iget v1, p0, Lcom/buzzfeed/buzzcat/SnakeGameController;->mCurrentScore:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-direct {p0}, Lcom/buzzfeed/buzzcat/SnakeGameController;->updateHighScore()V

    .line 87
    return-void
.end method
