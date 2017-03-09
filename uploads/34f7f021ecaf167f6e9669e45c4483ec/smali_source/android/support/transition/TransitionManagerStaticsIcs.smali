.class Landroid/support/transition/TransitionManagerStaticsIcs;
.super Landroid/support/transition/TransitionManagerStaticsImpl;
.source "TransitionManagerStaticsIcs.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/transition/TransitionManagerStaticsImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public beginDelayedTransition(Landroid/view/ViewGroup;)V
    .registers 2
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 36
    invoke-static {p1}, Landroid/support/transition/TransitionManagerPort;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 37
    return-void
.end method

.method public beginDelayedTransition(Landroid/view/ViewGroup;Landroid/support/transition/TransitionImpl;)V
    .registers 4
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "transition"    # Landroid/support/transition/TransitionImpl;

    .prologue
    .line 41
    if-nez p2, :cond_7

    const/4 v0, 0x0

    .end local p2    # "transition":Landroid/support/transition/TransitionImpl;
    :goto_3
    invoke-static {p1, v0}, Landroid/support/transition/TransitionManagerPort;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/support/transition/TransitionPort;)V

    .line 43
    return-void

    .line 41
    .restart local p2    # "transition":Landroid/support/transition/TransitionImpl;
    :cond_7
    check-cast p2, Landroid/support/transition/TransitionIcs;

    .end local p2    # "transition":Landroid/support/transition/TransitionImpl;
    iget-object v0, p2, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    goto :goto_3
.end method

.method public go(Landroid/support/transition/SceneImpl;)V
    .registers 3
    .param p1, "scene"    # Landroid/support/transition/SceneImpl;

    .prologue
    .line 25
    check-cast p1, Landroid/support/transition/SceneIcs;

    .end local p1    # "scene":Landroid/support/transition/SceneImpl;
    iget-object v0, p1, Landroid/support/transition/SceneIcs;->mScene:Landroid/support/transition/ScenePort;

    invoke-static {v0}, Landroid/support/transition/TransitionManagerPort;->go(Landroid/support/transition/ScenePort;)V

    .line 26
    return-void
.end method

.method public go(Landroid/support/transition/SceneImpl;Landroid/support/transition/TransitionImpl;)V
    .registers 5
    .param p1, "scene"    # Landroid/support/transition/SceneImpl;
    .param p2, "transition"    # Landroid/support/transition/TransitionImpl;

    .prologue
    .line 30
    check-cast p1, Landroid/support/transition/SceneIcs;

    .end local p1    # "scene":Landroid/support/transition/SceneImpl;
    iget-object v1, p1, Landroid/support/transition/SceneIcs;->mScene:Landroid/support/transition/ScenePort;

    if-nez p2, :cond_b

    const/4 v0, 0x0

    .end local p2    # "transition":Landroid/support/transition/TransitionImpl;
    :goto_7
    invoke-static {v1, v0}, Landroid/support/transition/TransitionManagerPort;->go(Landroid/support/transition/ScenePort;Landroid/support/transition/TransitionPort;)V

    .line 32
    return-void

    .line 30
    .restart local p2    # "transition":Landroid/support/transition/TransitionImpl;
    :cond_b
    check-cast p2, Landroid/support/transition/TransitionIcs;

    .end local p2    # "transition":Landroid/support/transition/TransitionImpl;
    iget-object v0, p2, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    goto :goto_7
.end method
