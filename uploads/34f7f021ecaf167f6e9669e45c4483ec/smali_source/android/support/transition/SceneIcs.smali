.class Landroid/support/transition/SceneIcs;
.super Landroid/support/transition/SceneImpl;
.source "SceneIcs.java"


# instance fields
.field mScene:Landroid/support/transition/ScenePort;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/transition/SceneImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Landroid/support/transition/SceneIcs;->mScene:Landroid/support/transition/ScenePort;

    invoke-virtual {v0}, Landroid/support/transition/ScenePort;->enter()V

    .line 39
    return-void
.end method

.method public exit()V
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Landroid/support/transition/SceneIcs;->mScene:Landroid/support/transition/ScenePort;

    invoke-virtual {v0}, Landroid/support/transition/ScenePort;->exit()V

    .line 44
    return-void
.end method

.method public getSceneRoot()Landroid/view/ViewGroup;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Landroid/support/transition/SceneIcs;->mScene:Landroid/support/transition/ScenePort;

    invoke-virtual {v0}, Landroid/support/transition/ScenePort;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/view/ViewGroup;)V
    .registers 3
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 28
    new-instance v0, Landroid/support/transition/ScenePort;

    invoke-direct {v0, p1}, Landroid/support/transition/ScenePort;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/support/transition/SceneIcs;->mScene:Landroid/support/transition/ScenePort;

    .line 29
    return-void
.end method

.method public init(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 4
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "layout"    # Landroid/view/View;

    .prologue
    .line 33
    new-instance v0, Landroid/support/transition/ScenePort;

    invoke-direct {v0, p1, p2}, Landroid/support/transition/ScenePort;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/transition/SceneIcs;->mScene:Landroid/support/transition/ScenePort;

    .line 34
    return-void
.end method

.method public setEnterAction(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 54
    iget-object v0, p0, Landroid/support/transition/SceneIcs;->mScene:Landroid/support/transition/ScenePort;

    invoke-virtual {v0, p1}, Landroid/support/transition/ScenePort;->setEnterAction(Ljava/lang/Runnable;)V

    .line 55
    return-void
.end method

.method public setExitAction(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 59
    iget-object v0, p0, Landroid/support/transition/SceneIcs;->mScene:Landroid/support/transition/ScenePort;

    invoke-virtual {v0, p1}, Landroid/support/transition/ScenePort;->setExitAction(Ljava/lang/Runnable;)V

    .line 60
    return-void
.end method
