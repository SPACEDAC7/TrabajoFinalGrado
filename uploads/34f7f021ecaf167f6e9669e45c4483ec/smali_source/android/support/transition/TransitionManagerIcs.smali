.class Landroid/support/transition/TransitionManagerIcs;
.super Landroid/support/transition/TransitionManagerImpl;
.source "TransitionManagerIcs.java"


# instance fields
.field private final mTransitionManager:Landroid/support/transition/TransitionManagerPort;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/transition/TransitionManagerImpl;-><init>()V

    .line 21
    new-instance v0, Landroid/support/transition/TransitionManagerPort;

    invoke-direct {v0}, Landroid/support/transition/TransitionManagerPort;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionManagerIcs;->mTransitionManager:Landroid/support/transition/TransitionManagerPort;

    return-void
.end method


# virtual methods
.method public setTransition(Landroid/support/transition/SceneImpl;Landroid/support/transition/SceneImpl;Landroid/support/transition/TransitionImpl;)V
    .registers 8
    .param p1, "fromScene"    # Landroid/support/transition/SceneImpl;
    .param p2, "toScene"    # Landroid/support/transition/SceneImpl;
    .param p3, "transition"    # Landroid/support/transition/TransitionImpl;

    .prologue
    .line 31
    iget-object v1, p0, Landroid/support/transition/TransitionManagerIcs;->mTransitionManager:Landroid/support/transition/TransitionManagerPort;

    check-cast p1, Landroid/support/transition/SceneIcs;

    .end local p1    # "fromScene":Landroid/support/transition/SceneImpl;
    iget-object v2, p1, Landroid/support/transition/SceneIcs;->mScene:Landroid/support/transition/ScenePort;

    check-cast p2, Landroid/support/transition/SceneIcs;

    .end local p2    # "toScene":Landroid/support/transition/SceneImpl;
    iget-object v3, p2, Landroid/support/transition/SceneIcs;->mScene:Landroid/support/transition/ScenePort;

    if-nez p3, :cond_11

    const/4 v0, 0x0

    .end local p3    # "transition":Landroid/support/transition/TransitionImpl;
    :goto_d
    invoke-virtual {v1, v2, v3, v0}, Landroid/support/transition/TransitionManagerPort;->setTransition(Landroid/support/transition/ScenePort;Landroid/support/transition/ScenePort;Landroid/support/transition/TransitionPort;)V

    .line 33
    return-void

    .line 31
    .restart local p3    # "transition":Landroid/support/transition/TransitionImpl;
    :cond_11
    check-cast p3, Landroid/support/transition/TransitionIcs;

    .end local p3    # "transition":Landroid/support/transition/TransitionImpl;
    iget-object v0, p3, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    goto :goto_d
.end method

.method public setTransition(Landroid/support/transition/SceneImpl;Landroid/support/transition/TransitionImpl;)V
    .registers 6
    .param p1, "scene"    # Landroid/support/transition/SceneImpl;
    .param p2, "transition"    # Landroid/support/transition/TransitionImpl;

    .prologue
    .line 25
    iget-object v1, p0, Landroid/support/transition/TransitionManagerIcs;->mTransitionManager:Landroid/support/transition/TransitionManagerPort;

    check-cast p1, Landroid/support/transition/SceneIcs;

    .end local p1    # "scene":Landroid/support/transition/SceneImpl;
    iget-object v2, p1, Landroid/support/transition/SceneIcs;->mScene:Landroid/support/transition/ScenePort;

    if-nez p2, :cond_d

    const/4 v0, 0x0

    .end local p2    # "transition":Landroid/support/transition/TransitionImpl;
    :goto_9
    invoke-virtual {v1, v2, v0}, Landroid/support/transition/TransitionManagerPort;->setTransition(Landroid/support/transition/ScenePort;Landroid/support/transition/TransitionPort;)V

    .line 27
    return-void

    .line 25
    .restart local p2    # "transition":Landroid/support/transition/TransitionImpl;
    :cond_d
    check-cast p2, Landroid/support/transition/TransitionIcs;

    .end local p2    # "transition":Landroid/support/transition/TransitionImpl;
    iget-object v0, p2, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    goto :goto_9
.end method

.method public transitionTo(Landroid/support/transition/SceneImpl;)V
    .registers 4
    .param p1, "scene"    # Landroid/support/transition/SceneImpl;

    .prologue
    .line 37
    iget-object v0, p0, Landroid/support/transition/TransitionManagerIcs;->mTransitionManager:Landroid/support/transition/TransitionManagerPort;

    check-cast p1, Landroid/support/transition/SceneIcs;

    .end local p1    # "scene":Landroid/support/transition/SceneImpl;
    iget-object v1, p1, Landroid/support/transition/SceneIcs;->mScene:Landroid/support/transition/ScenePort;

    invoke-virtual {v0, v1}, Landroid/support/transition/TransitionManagerPort;->transitionTo(Landroid/support/transition/ScenePort;)V

    .line 38
    return-void
.end method
