.class Landroid/support/transition/FadeIcs;
.super Landroid/support/transition/TransitionIcs;
.source "FadeIcs.java"

# interfaces
.implements Landroid/support/transition/VisibilityImpl;


# direct methods
.method public constructor <init>(Landroid/support/transition/TransitionInterface;)V
    .registers 3
    .param p1, "transition"    # Landroid/support/transition/TransitionInterface;

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/transition/TransitionIcs;-><init>()V

    .line 25
    new-instance v0, Landroid/support/transition/FadePort;

    invoke-direct {v0}, Landroid/support/transition/FadePort;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/support/transition/FadeIcs;->init(Landroid/support/transition/TransitionInterface;Ljava/lang/Object;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/support/transition/TransitionInterface;I)V
    .registers 4
    .param p1, "transition"    # Landroid/support/transition/TransitionInterface;
    .param p2, "fadingMode"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/transition/TransitionIcs;-><init>()V

    .line 29
    new-instance v0, Landroid/support/transition/FadePort;

    invoke-direct {v0, p2}, Landroid/support/transition/FadePort;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroid/support/transition/FadeIcs;->init(Landroid/support/transition/TransitionInterface;Ljava/lang/Object;)V

    .line 30
    return-void
.end method


# virtual methods
.method public isVisible(Landroid/support/transition/TransitionValues;)Z
    .registers 3
    .param p1, "values"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 34
    iget-object v0, p0, Landroid/support/transition/FadeIcs;->mTransition:Landroid/support/transition/TransitionPort;

    check-cast v0, Landroid/support/transition/FadePort;

    invoke-virtual {v0, p1}, Landroid/support/transition/FadePort;->isVisible(Landroid/support/transition/TransitionValues;)Z

    move-result v0

    return v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
    .registers 12
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroid/support/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    .prologue
    .line 40
    iget-object v0, p0, Landroid/support/transition/FadeIcs;->mTransition:Landroid/support/transition/TransitionPort;

    check-cast v0, Landroid/support/transition/FadePort;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/transition/FadePort;->onAppear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
    .registers 12
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroid/support/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    .prologue
    .line 47
    iget-object v0, p0, Landroid/support/transition/FadeIcs;->mTransition:Landroid/support/transition/TransitionPort;

    check-cast v0, Landroid/support/transition/FadePort;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/transition/FadePort;->onDisappear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
