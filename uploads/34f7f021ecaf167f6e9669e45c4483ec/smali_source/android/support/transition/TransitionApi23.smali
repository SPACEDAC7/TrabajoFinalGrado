.class Landroid/support/transition/TransitionApi23;
.super Landroid/support/transition/TransitionKitKat;
.source "TransitionApi23.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/transition/TransitionKitKat;-><init>()V

    return-void
.end method


# virtual methods
.method public removeTarget(I)Landroid/support/transition/TransitionImpl;
    .registers 3
    .param p1, "targetId"    # I

    .prologue
    .line 23
    iget-object v0, p0, Landroid/support/transition/TransitionApi23;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v0, p1}, Landroid/transition/Transition;->removeTarget(I)Landroid/transition/Transition;

    .line 24
    return-object p0
.end method
