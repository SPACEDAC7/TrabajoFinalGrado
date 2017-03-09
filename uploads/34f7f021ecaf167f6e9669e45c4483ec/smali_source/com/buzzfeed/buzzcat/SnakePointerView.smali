.class public Lcom/buzzfeed/buzzcat/SnakePointerView;
.super Landroid/widget/RelativeLayout;
.source "SnakePointerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/buzzcat/SnakePointerView$SnakePointerViewParent;
    }
.end annotation


# static fields
.field private static final IMAGE_ALPHA:F = 0.54f


# instance fields
.field private mBottom:Landroid/widget/ImageButton;

.field private mButtons:[Landroid/view/View;

.field private mLastDirection:Lcom/buzzfeed/buzzcat/JoystickDirection;

.field private mLeft:Landroid/widget/ImageButton;

.field private mParent:Lcom/buzzfeed/buzzcat/SnakePointerView$SnakePointerViewParent;

.field private mRight:Landroid/widget/ImageButton;

.field private mTop:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0}, Lcom/buzzfeed/buzzcat/SnakePointerView;->init()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0}, Lcom/buzzfeed/buzzcat/SnakePointerView;->init()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0}, Lcom/buzzfeed/buzzcat/SnakePointerView;->init()V

    .line 40
    return-void
.end method

.method private changeDirectionIfNecessary(Lcom/buzzfeed/buzzcat/JoystickDirection;)V
    .registers 3
    .param p1, "newDirection"    # Lcom/buzzfeed/buzzcat/JoystickDirection;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakePointerView;->mParent:Lcom/buzzfeed/buzzcat/SnakePointerView$SnakePointerViewParent;

    if-eqz v0, :cond_11

    invoke-direct {p0, p1}, Lcom/buzzfeed/buzzcat/SnakePointerView;->isValidDirectionChange(Lcom/buzzfeed/buzzcat/JoystickDirection;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 90
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakePointerView;->mParent:Lcom/buzzfeed/buzzcat/SnakePointerView$SnakePointerViewParent;

    invoke-interface {v0, p1}, Lcom/buzzfeed/buzzcat/SnakePointerView$SnakePointerViewParent;->changeDirection(Lcom/buzzfeed/buzzcat/JoystickDirection;)V

    .line 91
    iput-object p1, p0, Lcom/buzzfeed/buzzcat/SnakePointerView;->mLastDirection:Lcom/buzzfeed/buzzcat/JoystickDirection;

    .line 93
    :cond_11
    return-void
.end method

.method private init()V
    .registers 4

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/buzzfeed/buzzcat/SnakePointerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/buzzfeed/buzzcat/R$layout;->view_snake_pointer_view:I

    invoke-static {v0, v1, p0}, Lcom/buzzfeed/buzzcat/SnakePointerView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 44
    sget v0, Lcom/buzzfeed/buzzcat/R$id;->view_snake_pointer_view_up:I

    invoke-virtual {p0, v0}, Lcom/buzzfeed/buzzcat/SnakePointerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/buzzfeed/buzzcat/SnakePointerView;->mTop:Landroid/widget/ImageButton;

    .line 45
    sget v0, Lcom/buzzfeed/buzzcat/R$id;->view_snake_pointer_view_down:I

    invoke-virtual {p0, v0}, Lcom/buzzfeed/buzzcat/SnakePointerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/buzzfeed/buzzcat/SnakePointerView;->mBottom:Landroid/widget/ImageButton;

    .line 46
    sget v0, Lcom/buzzfeed/buzzcat/R$id;->view_snake_pointer_view_left:I

    invoke-virtual {p0, v0}, Lcom/buzzfeed/buzzcat/SnakePointerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/buzzfeed/buzzcat/SnakePointerView;->mLeft:Landroid/widget/ImageButton;

    .line 47
    sget v0, Lcom/buzzfeed/buzzcat/R$id;->view_snake_pointer_view_right:I

    invoke-virtual {p0, v0}, Lcom/buzzfeed/buzzcat/SnakePointerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/buzzfeed/buzzcat/SnakePointerView;->mRight:Landroid/widget/ImageButton;

    .line 48
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/buzzfeed/buzzcat/SnakePointerView;->mTop:Landroid/widget/ImageButton;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/buzzfeed/buzzcat/SnakePointerView;->mBottom:Landroid/widget/ImageButton;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/buzzfeed/buzzcat/SnakePointerView;->mLeft:Landroid/widget/ImageButton;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/buzzfeed/buzzcat/SnakePointerView;->mRight:Landroid/widget/ImageButton;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/buzzfeed/buzzcat/SnakePointerView;->mButtons:[Landroid/view/View;

    .line 49
    invoke-direct {p0}, Lcom/buzzfeed/buzzcat/SnakePointerView;->initButtons()V

    .line 51
    sget-object v0, Lcom/buzzfeed/buzzcat/JoystickDirection;->Right:Lcom/buzzfeed/buzzcat/JoystickDirection;

    iput-object v0, p0, Lcom/buzzfeed/buzzcat/SnakePointerView;->mLastDirection:Lcom/buzzfeed/buzzcat/JoystickDirection;

    .line 52
    return-void
.end method

.method private initButtons()V
    .registers 4

    .prologue
    .line 55
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/buzzfeed/buzzcat/SnakePointerView;->mButtons:[Landroid/view/View;

    array-length v1, v1

    if-ge v0, v1, :cond_1a

    .line 56
    iget-object v1, p0, Lcom/buzzfeed/buzzcat/SnakePointerView;->mButtons:[Landroid/view/View;

    aget-object v1, v1, v0

    const v2, 0x3f0a3d71

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 57
    iget-object v1, p0, Lcom/buzzfeed/buzzcat/SnakePointerView;->mButtons:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 59
    :cond_1a
    return-void
.end method

.method private isValidDirectionChange(Lcom/buzzfeed/buzzcat/JoystickDirection;)Z
    .registers 5
    .param p1, "newDirection"    # Lcom/buzzfeed/buzzcat/JoystickDirection;

    .prologue
    const/4 v1, 0x0

    .line 78
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakePointerView;->mLastDirection:Lcom/buzzfeed/buzzcat/JoystickDirection;

    .line 79
    .local v0, "mCurrentDirection":Lcom/buzzfeed/buzzcat/JoystickDirection;
    if-ne p1, v0, :cond_6

    .line 82
    :cond_5
    :goto_5
    return v1

    :cond_6
    sget-object v2, Lcom/buzzfeed/buzzcat/JoystickDirection;->Down:Lcom/buzzfeed/buzzcat/JoystickDirection;

    if-ne p1, v2, :cond_e

    sget-object v2, Lcom/buzzfeed/buzzcat/JoystickDirection;->Up:Lcom/buzzfeed/buzzcat/JoystickDirection;

    if-eq v0, v2, :cond_5

    :cond_e
    sget-object v2, Lcom/buzzfeed/buzzcat/JoystickDirection;->Up:Lcom/buzzfeed/buzzcat/JoystickDirection;

    if-ne p1, v2, :cond_16

    sget-object v2, Lcom/buzzfeed/buzzcat/JoystickDirection;->Down:Lcom/buzzfeed/buzzcat/JoystickDirection;

    if-eq v0, v2, :cond_5

    :cond_16
    sget-object v2, Lcom/buzzfeed/buzzcat/JoystickDirection;->Left:Lcom/buzzfeed/buzzcat/JoystickDirection;

    if-ne p1, v2, :cond_1e

    sget-object v2, Lcom/buzzfeed/buzzcat/JoystickDirection;->Right:Lcom/buzzfeed/buzzcat/JoystickDirection;

    if-eq v0, v2, :cond_5

    :cond_1e
    sget-object v2, Lcom/buzzfeed/buzzcat/JoystickDirection;->Right:Lcom/buzzfeed/buzzcat/JoystickDirection;

    if-ne p1, v2, :cond_26

    sget-object v2, Lcom/buzzfeed/buzzcat/JoystickDirection;->Left:Lcom/buzzfeed/buzzcat/JoystickDirection;

    if-eq v0, v2, :cond_5

    :cond_26
    const/4 v1, 0x1

    goto :goto_5
.end method

.method private setButtonEnabledness(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 71
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/buzzfeed/buzzcat/SnakePointerView;->mButtons:[Landroid/view/View;

    array-length v1, v1

    if-ge v0, v1, :cond_10

    .line 72
    iget-object v1, p0, Lcom/buzzfeed/buzzcat/SnakePointerView;->mButtons:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 74
    :cond_10
    return-void
.end method


# virtual methods
.method public disable()V
    .registers 2

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/buzzfeed/buzzcat/SnakePointerView;->setButtonEnabledness(Z)V

    .line 63
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakePointerView;->mTop:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_a

    .line 98
    sget-object v0, Lcom/buzzfeed/buzzcat/JoystickDirection;->Up:Lcom/buzzfeed/buzzcat/JoystickDirection;

    invoke-direct {p0, v0}, Lcom/buzzfeed/buzzcat/SnakePointerView;->changeDirectionIfNecessary(Lcom/buzzfeed/buzzcat/JoystickDirection;)V

    .line 105
    :cond_9
    :goto_9
    return-void

    .line 99
    :cond_a
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakePointerView;->mLeft:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_14

    .line 100
    sget-object v0, Lcom/buzzfeed/buzzcat/JoystickDirection;->Left:Lcom/buzzfeed/buzzcat/JoystickDirection;

    invoke-direct {p0, v0}, Lcom/buzzfeed/buzzcat/SnakePointerView;->changeDirectionIfNecessary(Lcom/buzzfeed/buzzcat/JoystickDirection;)V

    goto :goto_9

    .line 101
    :cond_14
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakePointerView;->mRight:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_1e

    .line 102
    sget-object v0, Lcom/buzzfeed/buzzcat/JoystickDirection;->Right:Lcom/buzzfeed/buzzcat/JoystickDirection;

    invoke-direct {p0, v0}, Lcom/buzzfeed/buzzcat/SnakePointerView;->changeDirectionIfNecessary(Lcom/buzzfeed/buzzcat/JoystickDirection;)V

    goto :goto_9

    .line 103
    :cond_1e
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SnakePointerView;->mBottom:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_9

    .line 104
    sget-object v0, Lcom/buzzfeed/buzzcat/JoystickDirection;->Down:Lcom/buzzfeed/buzzcat/JoystickDirection;

    invoke-direct {p0, v0}, Lcom/buzzfeed/buzzcat/SnakePointerView;->changeDirectionIfNecessary(Lcom/buzzfeed/buzzcat/JoystickDirection;)V

    goto :goto_9
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 66
    sget-object v0, Lcom/buzzfeed/buzzcat/JoystickDirection;->Right:Lcom/buzzfeed/buzzcat/JoystickDirection;

    iput-object v0, p0, Lcom/buzzfeed/buzzcat/SnakePointerView;->mLastDirection:Lcom/buzzfeed/buzzcat/JoystickDirection;

    .line 67
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/buzzfeed/buzzcat/SnakePointerView;->setButtonEnabledness(Z)V

    .line 68
    return-void
.end method

.method public setListener(Lcom/buzzfeed/buzzcat/SnakePointerView$SnakePointerViewParent;)V
    .registers 2
    .param p1, "parent"    # Lcom/buzzfeed/buzzcat/SnakePointerView$SnakePointerViewParent;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/buzzfeed/buzzcat/SnakePointerView;->mParent:Lcom/buzzfeed/buzzcat/SnakePointerView$SnakePointerViewParent;

    .line 30
    return-void
.end method
