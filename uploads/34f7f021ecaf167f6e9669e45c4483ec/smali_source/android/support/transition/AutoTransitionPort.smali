.class Landroid/support/transition/AutoTransitionPort;
.super Landroid/support/transition/TransitionSetPort;
.source "AutoTransitionPort.java"


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 34
    invoke-direct {p0}, Landroid/support/transition/TransitionSetPort;-><init>()V

    .line 35
    invoke-virtual {p0, v2}, Landroid/support/transition/AutoTransitionPort;->setOrdering(I)Landroid/support/transition/TransitionSetPort;

    .line 36
    new-instance v0, Landroid/support/transition/FadePort;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/support/transition/FadePort;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/support/transition/AutoTransitionPort;->addTransition(Landroid/support/transition/TransitionPort;)Landroid/support/transition/TransitionSetPort;

    move-result-object v0

    new-instance v1, Landroid/support/transition/ChangeBoundsPort;

    invoke-direct {v1}, Landroid/support/transition/ChangeBoundsPort;-><init>()V

    .line 37
    invoke-virtual {v0, v1}, Landroid/support/transition/TransitionSetPort;->addTransition(Landroid/support/transition/TransitionPort;)Landroid/support/transition/TransitionSetPort;

    move-result-object v0

    new-instance v1, Landroid/support/transition/FadePort;

    invoke-direct {v1, v2}, Landroid/support/transition/FadePort;-><init>(I)V

    .line 38
    invoke-virtual {v0, v1}, Landroid/support/transition/TransitionSetPort;->addTransition(Landroid/support/transition/TransitionPort;)Landroid/support/transition/TransitionSetPort;

    .line 39
    return-void
.end method
