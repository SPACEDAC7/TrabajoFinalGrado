.class Landroid/support/transition/TransitionKitKat$TransitionWrapper;
.super Landroid/transition/Transition;
.source "TransitionKitKat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/TransitionKitKat;
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
    .line 299
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    .line 300
    iput-object p1, p0, Landroid/support/transition/TransitionKitKat$TransitionWrapper;->mTransition:Landroid/support/transition/TransitionInterface;

    .line 301
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .registers 3
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 310
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat$TransitionWrapper;->mTransition:Landroid/support/transition/TransitionInterface;

    invoke-static {v0, p1}, Landroid/support/transition/TransitionKitKat;->wrapCaptureEndValues(Landroid/support/transition/TransitionInterface;Landroid/transition/TransitionValues;)V

    .line 311
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .registers 3
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 305
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat$TransitionWrapper;->mTransition:Landroid/support/transition/TransitionInterface;

    invoke-static {v0, p1}, Landroid/support/transition/TransitionKitKat;->wrapCaptureStartValues(Landroid/support/transition/TransitionInterface;Landroid/transition/TransitionValues;)V

    .line 306
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 7
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 317
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat$TransitionWrapper;->mTransition:Landroid/support/transition/TransitionInterface;

    invoke-static {p2}, Landroid/support/transition/TransitionKitKat;->convertToSupport(Landroid/transition/TransitionValues;)Landroid/support/transition/TransitionValues;

    move-result-object v1

    .line 318
    invoke-static {p3}, Landroid/support/transition/TransitionKitKat;->convertToSupport(Landroid/transition/TransitionValues;)Landroid/support/transition/TransitionValues;

    move-result-object v2

    .line 317
    invoke-interface {v0, p1, v1, v2}, Landroid/support/transition/TransitionInterface;->createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
