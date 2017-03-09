.class abstract Landroid/support/transition/SceneWrapper;
.super Landroid/support/transition/SceneImpl;
.source "SceneWrapper.java"


# instance fields
.field mScene:Landroid/transition/Scene;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/transition/SceneImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public exit()V
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Landroid/support/transition/SceneWrapper;->mScene:Landroid/transition/Scene;

    invoke-virtual {v0}, Landroid/transition/Scene;->exit()V

    .line 33
    return-void
.end method

.method public getSceneRoot()Landroid/view/ViewGroup;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Landroid/support/transition/SceneWrapper;->mScene:Landroid/transition/Scene;

    invoke-virtual {v0}, Landroid/transition/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public setEnterAction(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 37
    iget-object v0, p0, Landroid/support/transition/SceneWrapper;->mScene:Landroid/transition/Scene;

    invoke-virtual {v0, p1}, Landroid/transition/Scene;->setEnterAction(Ljava/lang/Runnable;)V

    .line 38
    return-void
.end method

.method public setExitAction(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 42
    iget-object v0, p0, Landroid/support/transition/SceneWrapper;->mScene:Landroid/transition/Scene;

    invoke-virtual {v0, p1}, Landroid/transition/Scene;->setExitAction(Ljava/lang/Runnable;)V

    .line 43
    return-void
.end method
