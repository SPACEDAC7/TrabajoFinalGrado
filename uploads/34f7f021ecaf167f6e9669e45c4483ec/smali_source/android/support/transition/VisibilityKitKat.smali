.class Landroid/support/transition/VisibilityKitKat;
.super Landroid/support/transition/TransitionKitKat;
.source "VisibilityKitKat.java"

# interfaces
.implements Landroid/support/transition/VisibilityImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/VisibilityKitKat$VisibilityWrapper;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/transition/TransitionKitKat;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method public init(Landroid/support/transition/TransitionInterface;Ljava/lang/Object;)V
    .registers 4
    .param p1, "external"    # Landroid/support/transition/TransitionInterface;
    .param p2, "internal"    # Ljava/lang/Object;

    .prologue
    .line 26
    iput-object p1, p0, Landroid/support/transition/VisibilityKitKat;->mExternalTransition:Landroid/support/transition/TransitionInterface;

    .line 27
    if-nez p2, :cond_e

    .line 28
    new-instance v0, Landroid/support/transition/VisibilityKitKat$VisibilityWrapper;

    check-cast p1, Landroid/support/transition/VisibilityInterface;

    .end local p1    # "external":Landroid/support/transition/TransitionInterface;
    invoke-direct {v0, p1}, Landroid/support/transition/VisibilityKitKat$VisibilityWrapper;-><init>(Landroid/support/transition/VisibilityInterface;)V

    iput-object v0, p0, Landroid/support/transition/VisibilityKitKat;->mTransition:Landroid/transition/Transition;

    .line 32
    .end local p2    # "internal":Ljava/lang/Object;
    :goto_d
    return-void

    .line 30
    .restart local p1    # "external":Landroid/support/transition/TransitionInterface;
    .restart local p2    # "internal":Ljava/lang/Object;
    :cond_e
    check-cast p2, Landroid/transition/Visibility;

    .end local p2    # "internal":Ljava/lang/Object;
    iput-object p2, p0, Landroid/support/transition/VisibilityKitKat;->mTransition:Landroid/transition/Transition;

    goto :goto_d
.end method

.method public isVisible(Landroid/support/transition/TransitionValues;)Z
    .registers 4
    .param p1, "values"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 36
    iget-object v0, p0, Landroid/support/transition/VisibilityKitKat;->mTransition:Landroid/transition/Transition;

    check-cast v0, Landroid/transition/Visibility;

    invoke-static {p1}, Landroid/support/transition/VisibilityKitKat;->convertToPlatform(Landroid/support/transition/TransitionValues;)Landroid/transition/TransitionValues;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/transition/Visibility;->isVisible(Landroid/transition/TransitionValues;)Z

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
    .line 42
    iget-object v0, p0, Landroid/support/transition/VisibilityKitKat;->mTransition:Landroid/transition/Transition;

    check-cast v0, Landroid/transition/Visibility;

    .line 43
    invoke-static {p2}, Landroid/support/transition/VisibilityKitKat;->convertToPlatform(Landroid/support/transition/TransitionValues;)Landroid/transition/TransitionValues;

    move-result-object v2

    .line 44
    invoke-static {p4}, Landroid/support/transition/VisibilityKitKat;->convertToPlatform(Landroid/support/transition/TransitionValues;)Landroid/transition/TransitionValues;

    move-result-object v4

    move-object v1, p1

    move v3, p3

    move v5, p5

    .line 42
    invoke-virtual/range {v0 .. v5}, Landroid/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;

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
    .line 50
    iget-object v0, p0, Landroid/support/transition/VisibilityKitKat;->mTransition:Landroid/transition/Transition;

    check-cast v0, Landroid/transition/Visibility;

    .line 51
    invoke-static {p2}, Landroid/support/transition/VisibilityKitKat;->convertToPlatform(Landroid/support/transition/TransitionValues;)Landroid/transition/TransitionValues;

    move-result-object v2

    .line 52
    invoke-static {p4}, Landroid/support/transition/VisibilityKitKat;->convertToPlatform(Landroid/support/transition/TransitionValues;)Landroid/transition/TransitionValues;

    move-result-object v4

    move-object v1, p1

    move v3, p3

    move v5, p5

    .line 50
    invoke-virtual/range {v0 .. v5}, Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
