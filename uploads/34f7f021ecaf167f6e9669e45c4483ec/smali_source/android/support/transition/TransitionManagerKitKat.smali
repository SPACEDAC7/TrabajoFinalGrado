.class Landroid/support/transition/TransitionManagerKitKat;
.super Landroid/support/transition/TransitionManagerImpl;
.source "TransitionManagerKitKat.java"


# instance fields
.field private final mTransitionManager:Landroid/transition/TransitionManager;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/transition/TransitionManagerImpl;-><init>()V

    .line 23
    new-instance v0, Landroid/transition/TransitionManager;

    invoke-direct {v0}, Landroid/transition/TransitionManager;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionManagerKitKat;->mTransitionManager:Landroid/transition/TransitionManager;

    return-void
.end method


# virtual methods
.method public setTransition(Landroid/support/transition/SceneImpl;Landroid/support/transition/SceneImpl;Landroid/support/transition/TransitionImpl;)V
    .registers 8
    .param p1, "fromScene"    # Landroid/support/transition/SceneImpl;
    .param p2, "toScene"    # Landroid/support/transition/SceneImpl;
    .param p3, "transition"    # Landroid/support/transition/TransitionImpl;

    .prologue
    .line 33
    iget-object v1, p0, Landroid/support/transition/TransitionManagerKitKat;->mTransitionManager:Landroid/transition/TransitionManager;

    check-cast p1, Landroid/support/transition/SceneWrapper;

    .end local p1    # "fromScene":Landroid/support/transition/SceneImpl;
    iget-object v2, p1, Landroid/support/transition/SceneWrapper;->mScene:Landroid/transition/Scene;

    check-cast p2, Landroid/support/transition/SceneWrapper;

    .end local p2    # "toScene":Landroid/support/transition/SceneImpl;
    iget-object v3, p2, Landroid/support/transition/SceneWrapper;->mScene:Landroid/transition/Scene;

    if-nez p3, :cond_11

    const/4 v0, 0x0

    .end local p3    # "transition":Landroid/support/transition/TransitionImpl;
    :goto_d
    invoke-virtual {v1, v2, v3, v0}, Landroid/transition/TransitionManager;->setTransition(Landroid/transition/Scene;Landroid/transition/Scene;Landroid/transition/Transition;)V

    .line 36
    return-void

    .line 33
    .restart local p3    # "transition":Landroid/support/transition/TransitionImpl;
    :cond_11
    check-cast p3, Landroid/support/transition/TransitionKitKat;

    .end local p3    # "transition":Landroid/support/transition/TransitionImpl;
    iget-object v0, p3, Landroid/support/transition/TransitionKitKat;->mTransition:Landroid/transition/Transition;

    goto :goto_d
.end method

.method public setTransition(Landroid/support/transition/SceneImpl;Landroid/support/transition/TransitionImpl;)V
    .registers 6
    .param p1, "scene"    # Landroid/support/transition/SceneImpl;
    .param p2, "transition"    # Landroid/support/transition/TransitionImpl;

    .prologue
    .line 27
    iget-object v1, p0, Landroid/support/transition/TransitionManagerKitKat;->mTransitionManager:Landroid/transition/TransitionManager;

    check-cast p1, Landroid/support/transition/SceneWrapper;

    .end local p1    # "scene":Landroid/support/transition/SceneImpl;
    iget-object v2, p1, Landroid/support/transition/SceneWrapper;->mScene:Landroid/transition/Scene;

    if-nez p2, :cond_d

    const/4 v0, 0x0

    .end local p2    # "transition":Landroid/support/transition/TransitionImpl;
    :goto_9
    invoke-virtual {v1, v2, v0}, Landroid/transition/TransitionManager;->setTransition(Landroid/transition/Scene;Landroid/transition/Transition;)V

    .line 29
    return-void

    .line 27
    .restart local p2    # "transition":Landroid/support/transition/TransitionImpl;
    :cond_d
    check-cast p2, Landroid/support/transition/TransitionKitKat;

    .end local p2    # "transition":Landroid/support/transition/TransitionImpl;
    iget-object v0, p2, Landroid/support/transition/TransitionKitKat;->mTransition:Landroid/transition/Transition;

    goto :goto_9
.end method

.method public transitionTo(Landroid/support/transition/SceneImpl;)V
    .registers 4
    .param p1, "scene"    # Landroid/support/transition/SceneImpl;

    .prologue
    .line 40
    iget-object v0, p0, Landroid/support/transition/TransitionManagerKitKat;->mTransitionManager:Landroid/transition/TransitionManager;

    check-cast p1, Landroid/support/transition/SceneWrapper;

    .end local p1    # "scene":Landroid/support/transition/SceneImpl;
    iget-object v1, p1, Landroid/support/transition/SceneWrapper;->mScene:Landroid/transition/Scene;

    invoke-virtual {v0, v1}, Landroid/transition/TransitionManager;->transitionTo(Landroid/transition/Scene;)V

    .line 41
    return-void
.end method
