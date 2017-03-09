.class final Landroid/support/transition/ScenePort;
.super Ljava/lang/Object;
.source "ScenePort.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field mEnterAction:Ljava/lang/Runnable;

.field mExitAction:Ljava/lang/Runnable;

.field private mLayout:Landroid/view/View;

.field private mLayoutId:I

.field private mSceneRoot:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .registers 3
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/transition/ScenePort;->mLayoutId:I

    .line 54
    iput-object p1, p0, Landroid/support/transition/ScenePort;->mSceneRoot:Landroid/view/ViewGroup;

    .line 55
    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;ILandroid/content/Context;)V
    .registers 5
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "layoutId"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/transition/ScenePort;->mLayoutId:I

    .line 73
    iput-object p3, p0, Landroid/support/transition/ScenePort;->mContext:Landroid/content/Context;

    .line 74
    iput-object p1, p0, Landroid/support/transition/ScenePort;->mSceneRoot:Landroid/view/ViewGroup;

    .line 75
    iput p2, p0, Landroid/support/transition/ScenePort;->mLayoutId:I

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 4
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "layout"    # Landroid/view/View;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/transition/ScenePort;->mLayoutId:I

    .line 89
    iput-object p1, p0, Landroid/support/transition/ScenePort;->mSceneRoot:Landroid/view/ViewGroup;

    .line 90
    iput-object p2, p0, Landroid/support/transition/ScenePort;->mLayout:Landroid/view/View;

    .line 91
    return-void
.end method

.method static getCurrentScene(Landroid/view/View;)Landroid/support/transition/ScenePort;
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 129
    sget v0, Landroid/support/transition/R$id;->transition_current_scene:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/ScenePort;

    return-object v0
.end method

.method public static getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/support/transition/ScenePort;
    .registers 4
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "layoutId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    new-instance v0, Landroid/support/transition/ScenePort;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/transition/ScenePort;-><init>(Landroid/view/ViewGroup;ILandroid/content/Context;)V

    return-object v0
.end method

.method static setCurrentScene(Landroid/view/View;Landroid/support/transition/ScenePort;)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "scene"    # Landroid/support/transition/ScenePort;

    .prologue
    .line 118
    sget v0, Landroid/support/transition/R$id;->transition_current_scene:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 119
    return-void
.end method


# virtual methods
.method public enter()V
    .registers 4

    .prologue
    .line 171
    iget v0, p0, Landroid/support/transition/ScenePort;->mLayoutId:I

    if-gtz v0, :cond_8

    iget-object v0, p0, Landroid/support/transition/ScenePort;->mLayout:Landroid/view/View;

    if-eqz v0, :cond_20

    .line 173
    :cond_8
    invoke-virtual {p0}, Landroid/support/transition/ScenePort;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 175
    iget v0, p0, Landroid/support/transition/ScenePort;->mLayoutId:I

    if-lez v0, :cond_2f

    .line 176
    iget-object v0, p0, Landroid/support/transition/ScenePort;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Landroid/support/transition/ScenePort;->mLayoutId:I

    iget-object v2, p0, Landroid/support/transition/ScenePort;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 183
    :cond_20
    :goto_20
    iget-object v0, p0, Landroid/support/transition/ScenePort;->mEnterAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_29

    .line 184
    iget-object v0, p0, Landroid/support/transition/ScenePort;->mEnterAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 187
    :cond_29
    iget-object v0, p0, Landroid/support/transition/ScenePort;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-static {v0, p0}, Landroid/support/transition/ScenePort;->setCurrentScene(Landroid/view/View;Landroid/support/transition/ScenePort;)V

    .line 188
    return-void

    .line 178
    :cond_2f
    iget-object v0, p0, Landroid/support/transition/ScenePort;->mSceneRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/transition/ScenePort;->mLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_20
.end method

.method public exit()V
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Landroid/support/transition/ScenePort;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/support/transition/ScenePort;->getCurrentScene(Landroid/view/View;)Landroid/support/transition/ScenePort;

    move-result-object v0

    if-ne v0, p0, :cond_11

    .line 152
    iget-object v0, p0, Landroid/support/transition/ScenePort;->mExitAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_11

    .line 153
    iget-object v0, p0, Landroid/support/transition/ScenePort;->mExitAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 156
    :cond_11
    return-void
.end method

.method public getSceneRoot()Landroid/view/ViewGroup;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Landroid/support/transition/ScenePort;->mSceneRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method isCreatedFromLayoutResource()Z
    .registers 2

    .prologue
    .line 240
    iget v0, p0, Landroid/support/transition/ScenePort;->mLayoutId:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setEnterAction(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 209
    iput-object p1, p0, Landroid/support/transition/ScenePort;->mEnterAction:Ljava/lang/Runnable;

    .line 210
    return-void
.end method

.method public setExitAction(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 230
    iput-object p1, p0, Landroid/support/transition/ScenePort;->mExitAction:Ljava/lang/Runnable;

    .line 231
    return-void
.end method
