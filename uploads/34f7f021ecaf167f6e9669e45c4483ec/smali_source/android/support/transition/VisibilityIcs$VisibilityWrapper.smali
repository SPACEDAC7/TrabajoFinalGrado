.class Landroid/support/transition/VisibilityIcs$VisibilityWrapper;
.super Landroid/support/transition/VisibilityPort;
.source "VisibilityIcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/VisibilityIcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisibilityWrapper"
.end annotation


# instance fields
.field private mVisibility:Landroid/support/transition/VisibilityInterface;


# direct methods
.method constructor <init>(Landroid/support/transition/VisibilityInterface;)V
    .registers 2
    .param p1, "visibility"    # Landroid/support/transition/VisibilityInterface;

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/support/transition/VisibilityPort;-><init>()V

    .line 58
    iput-object p1, p0, Landroid/support/transition/VisibilityIcs$VisibilityWrapper;->mVisibility:Landroid/support/transition/VisibilityInterface;

    .line 59
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/support/transition/TransitionValues;)V
    .registers 3
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 68
    iget-object v0, p0, Landroid/support/transition/VisibilityIcs$VisibilityWrapper;->mVisibility:Landroid/support/transition/VisibilityInterface;

    invoke-interface {v0, p1}, Landroid/support/transition/VisibilityInterface;->captureEndValues(Landroid/support/transition/TransitionValues;)V

    .line 69
    return-void
.end method

.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .registers 3
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 63
    iget-object v0, p0, Landroid/support/transition/VisibilityIcs$VisibilityWrapper;->mVisibility:Landroid/support/transition/VisibilityInterface;

    invoke-interface {v0, p1}, Landroid/support/transition/VisibilityInterface;->captureStartValues(Landroid/support/transition/TransitionValues;)V

    .line 64
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 5
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 74
    iget-object v0, p0, Landroid/support/transition/VisibilityIcs$VisibilityWrapper;->mVisibility:Landroid/support/transition/VisibilityInterface;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/transition/VisibilityInterface;->createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public isVisible(Landroid/support/transition/TransitionValues;)Z
    .registers 3
    .param p1, "values"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 79
    iget-object v0, p0, Landroid/support/transition/VisibilityIcs$VisibilityWrapper;->mVisibility:Landroid/support/transition/VisibilityInterface;

    invoke-interface {v0, p1}, Landroid/support/transition/VisibilityInterface;->isVisible(Landroid/support/transition/TransitionValues;)Z

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
    .line 86
    iget-object v0, p0, Landroid/support/transition/VisibilityIcs$VisibilityWrapper;->mVisibility:Landroid/support/transition/VisibilityInterface;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/support/transition/VisibilityInterface;->onAppear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;

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
    .line 93
    iget-object v0, p0, Landroid/support/transition/VisibilityIcs$VisibilityWrapper;->mVisibility:Landroid/support/transition/VisibilityInterface;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/support/transition/VisibilityInterface;->onDisappear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
