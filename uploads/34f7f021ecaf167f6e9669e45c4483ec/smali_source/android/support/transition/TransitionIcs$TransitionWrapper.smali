.class Landroid/support/transition/TransitionIcs$TransitionWrapper;
.super Landroid/support/transition/TransitionPort;
.source "TransitionIcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/TransitionIcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransitionWrapper"
.end annotation


# instance fields
.field private mTransition:Landroid/support/transition/TransitionInterface;


# direct methods
.method public constructor <init>(Landroid/support/transition/TransitionInterface;)V
    .registers 2
    .param p1, "transition"    # Landroid/support/transition/TransitionInterface;

    .prologue
    .line 211
    invoke-direct {p0}, Landroid/support/transition/TransitionPort;-><init>()V

    .line 212
    iput-object p1, p0, Landroid/support/transition/TransitionIcs$TransitionWrapper;->mTransition:Landroid/support/transition/TransitionInterface;

    .line 213
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/support/transition/TransitionValues;)V
    .registers 3
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 222
    iget-object v0, p0, Landroid/support/transition/TransitionIcs$TransitionWrapper;->mTransition:Landroid/support/transition/TransitionInterface;

    invoke-interface {v0, p1}, Landroid/support/transition/TransitionInterface;->captureEndValues(Landroid/support/transition/TransitionValues;)V

    .line 223
    return-void
.end method

.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .registers 3
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 217
    iget-object v0, p0, Landroid/support/transition/TransitionIcs$TransitionWrapper;->mTransition:Landroid/support/transition/TransitionInterface;

    invoke-interface {v0, p1}, Landroid/support/transition/TransitionInterface;->captureStartValues(Landroid/support/transition/TransitionValues;)V

    .line 218
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 5
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 228
    iget-object v0, p0, Landroid/support/transition/TransitionIcs$TransitionWrapper;->mTransition:Landroid/support/transition/TransitionInterface;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/transition/TransitionInterface;->createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
