.class Landroid/support/transition/FadeKitKat;
.super Landroid/support/transition/TransitionKitKat;
.source "FadeKitKat.java"

# interfaces
.implements Landroid/support/transition/VisibilityImpl;


# direct methods
.method public constructor <init>(Landroid/support/transition/TransitionInterface;)V
    .registers 3
    .param p1, "transition"    # Landroid/support/transition/TransitionInterface;

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/transition/TransitionKitKat;-><init>()V

    .line 25
    new-instance v0, Landroid/transition/Fade;

    invoke-direct {v0}, Landroid/transition/Fade;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/support/transition/FadeKitKat;->init(Landroid/support/transition/TransitionInterface;Ljava/lang/Object;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/support/transition/TransitionInterface;I)V
    .registers 4
    .param p1, "transition"    # Landroid/support/transition/TransitionInterface;
    .param p2, "fadingMode"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/transition/TransitionKitKat;-><init>()V

    .line 29
    new-instance v0, Landroid/transition/Fade;

    invoke-direct {v0, p2}, Landroid/transition/Fade;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroid/support/transition/FadeKitKat;->init(Landroid/support/transition/TransitionInterface;Ljava/lang/Object;)V

    .line 30
    return-void
.end method


# virtual methods
.method public isVisible(Landroid/support/transition/TransitionValues;)Z
    .registers 4
    .param p1, "values"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 34
    iget-object v0, p0, Landroid/support/transition/FadeKitKat;->mTransition:Landroid/transition/Transition;

    check-cast v0, Landroid/transition/Fade;

    invoke-static {p1}, Landroid/support/transition/FadeKitKat;->convertToPlatform(Landroid/support/transition/TransitionValues;)Landroid/transition/TransitionValues;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/transition/Fade;->isVisible(Landroid/transition/TransitionValues;)Z

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
    iget-object v0, p0, Landroid/support/transition/FadeKitKat;->mTransition:Landroid/transition/Transition;

    check-cast v0, Landroid/transition/Fade;

    .line 41
    invoke-static {p2}, Landroid/support/transition/FadeKitKat;->convertToPlatform(Landroid/support/transition/TransitionValues;)Landroid/transition/TransitionValues;

    move-result-object v2

    .line 42
    invoke-static {p4}, Landroid/support/transition/FadeKitKat;->convertToPlatform(Landroid/support/transition/TransitionValues;)Landroid/transition/TransitionValues;

    move-result-object v4

    move-object v1, p1

    move v3, p3

    move v5, p5

    .line 40
    invoke-virtual/range {v0 .. v5}, Landroid/transition/Fade;->onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;

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
    .line 48
    iget-object v0, p0, Landroid/support/transition/FadeKitKat;->mTransition:Landroid/transition/Transition;

    check-cast v0, Landroid/transition/Fade;

    .line 49
    invoke-static {p2}, Landroid/support/transition/FadeKitKat;->convertToPlatform(Landroid/support/transition/TransitionValues;)Landroid/transition/TransitionValues;

    move-result-object v2

    .line 50
    invoke-static {p4}, Landroid/support/transition/FadeKitKat;->convertToPlatform(Landroid/support/transition/TransitionValues;)Landroid/transition/TransitionValues;

    move-result-object v4

    move-object v1, p1

    move v3, p3

    move v5, p5

    .line 48
    invoke-virtual/range {v0 .. v5}, Landroid/transition/Fade;->onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
