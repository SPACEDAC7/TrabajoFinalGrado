.class Landroid/support/transition/TransitionIcs;
.super Landroid/support/transition/TransitionImpl;
.source "TransitionIcs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/TransitionIcs$CompatListener;,
        Landroid/support/transition/TransitionIcs$TransitionWrapper;
    }
.end annotation


# instance fields
.field private mCompatListener:Landroid/support/transition/TransitionIcs$CompatListener;

.field mExternalTransition:Landroid/support/transition/TransitionInterface;

.field mTransition:Landroid/support/transition/TransitionPort;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/transition/TransitionImpl;-><init>()V

    .line 232
    return-void
.end method


# virtual methods
.method public addListener(Landroid/support/transition/TransitionInterfaceListener;)Landroid/support/transition/TransitionImpl;
    .registers 4
    .param p1, "listener"    # Landroid/support/transition/TransitionInterfaceListener;

    .prologue
    .line 47
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mCompatListener:Landroid/support/transition/TransitionIcs$CompatListener;

    if-nez v0, :cond_12

    .line 48
    new-instance v0, Landroid/support/transition/TransitionIcs$CompatListener;

    invoke-direct {v0, p0}, Landroid/support/transition/TransitionIcs$CompatListener;-><init>(Landroid/support/transition/TransitionIcs;)V

    iput-object v0, p0, Landroid/support/transition/TransitionIcs;->mCompatListener:Landroid/support/transition/TransitionIcs$CompatListener;

    .line 49
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    iget-object v1, p0, Landroid/support/transition/TransitionIcs;->mCompatListener:Landroid/support/transition/TransitionIcs$CompatListener;

    invoke-virtual {v0, v1}, Landroid/support/transition/TransitionPort;->addListener(Landroid/support/transition/TransitionPort$TransitionListener;)Landroid/support/transition/TransitionPort;

    .line 51
    :cond_12
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mCompatListener:Landroid/support/transition/TransitionIcs$CompatListener;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionIcs$CompatListener;->addListener(Landroid/support/transition/TransitionInterfaceListener;)V

    .line 52
    return-object p0
.end method

.method public addTarget(I)Landroid/support/transition/TransitionImpl;
    .registers 3
    .param p1, "targetId"    # I

    .prologue
    .line 76
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionPort;->addTarget(I)Landroid/support/transition/TransitionPort;

    .line 77
    return-object p0
.end method

.method public addTarget(Landroid/view/View;)Landroid/support/transition/TransitionImpl;
    .registers 3
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 70
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionPort;->addTarget(Landroid/view/View;)Landroid/support/transition/TransitionPort;

    .line 71
    return-object p0
.end method

.method public captureEndValues(Landroid/support/transition/TransitionValues;)V
    .registers 3
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 82
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionPort;->captureEndValues(Landroid/support/transition/TransitionValues;)V

    .line 83
    return-void
.end method

.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .registers 3
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionPort;->captureStartValues(Landroid/support/transition/TransitionValues;)V

    .line 88
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 5
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 93
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/transition/TransitionPort;->createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public excludeChildren(IZ)Landroid/support/transition/TransitionImpl;
    .registers 4
    .param p1, "targetId"    # I
    .param p2, "exclude"    # Z

    .prologue
    .line 104
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionPort;->excludeChildren(IZ)Landroid/support/transition/TransitionPort;

    .line 105
    return-object p0
.end method

.method public excludeChildren(Landroid/view/View;Z)Landroid/support/transition/TransitionImpl;
    .registers 4
    .param p1, "target"    # Landroid/view/View;
    .param p2, "exclude"    # Z

    .prologue
    .line 98
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionPort;->excludeChildren(Landroid/view/View;Z)Landroid/support/transition/TransitionPort;

    .line 99
    return-object p0
.end method

.method public excludeChildren(Ljava/lang/Class;Z)Landroid/support/transition/TransitionImpl;
    .registers 4
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "exclude"    # Z

    .prologue
    .line 110
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionPort;->excludeChildren(Ljava/lang/Class;Z)Landroid/support/transition/TransitionPort;

    .line 111
    return-object p0
.end method

.method public excludeTarget(IZ)Landroid/support/transition/TransitionImpl;
    .registers 4
    .param p1, "targetId"    # I
    .param p2, "exclude"    # Z

    .prologue
    .line 122
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionPort;->excludeTarget(IZ)Landroid/support/transition/TransitionPort;

    .line 123
    return-object p0
.end method

.method public excludeTarget(Landroid/view/View;Z)Landroid/support/transition/TransitionImpl;
    .registers 4
    .param p1, "target"    # Landroid/view/View;
    .param p2, "exclude"    # Z

    .prologue
    .line 116
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionPort;->excludeTarget(Landroid/view/View;Z)Landroid/support/transition/TransitionPort;

    .line 117
    return-object p0
.end method

.method public excludeTarget(Ljava/lang/Class;Z)Landroid/support/transition/TransitionImpl;
    .registers 4
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "exclude"    # Z

    .prologue
    .line 128
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionPort;->excludeTarget(Ljava/lang/Class;Z)Landroid/support/transition/TransitionPort;

    .line 129
    return-object p0
.end method

.method public getDuration()J
    .registers 3

    .prologue
    .line 134
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0}, Landroid/support/transition/TransitionPort;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0}, Landroid/support/transition/TransitionPort;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0}, Landroid/support/transition/TransitionPort;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartDelay()J
    .registers 3

    .prologue
    .line 161
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0}, Landroid/support/transition/TransitionPort;->getStartDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTargetIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0}, Landroid/support/transition/TransitionPort;->getTargetIds()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTargets()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0}, Landroid/support/transition/TransitionPort;->getTargets()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0}, Landroid/support/transition/TransitionPort;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "start"    # Z

    .prologue
    .line 187
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionPort;->getTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/support/transition/TransitionInterface;Ljava/lang/Object;)V
    .registers 4
    .param p1, "external"    # Landroid/support/transition/TransitionInterface;
    .param p2, "internal"    # Ljava/lang/Object;

    .prologue
    .line 37
    iput-object p1, p0, Landroid/support/transition/TransitionIcs;->mExternalTransition:Landroid/support/transition/TransitionInterface;

    .line 38
    if-nez p2, :cond_c

    .line 39
    new-instance v0, Landroid/support/transition/TransitionIcs$TransitionWrapper;

    invoke-direct {v0, p1}, Landroid/support/transition/TransitionIcs$TransitionWrapper;-><init>(Landroid/support/transition/TransitionInterface;)V

    iput-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    .line 43
    .end local p2    # "internal":Ljava/lang/Object;
    :goto_b
    return-void

    .line 41
    .restart local p2    # "internal":Ljava/lang/Object;
    :cond_c
    check-cast p2, Landroid/support/transition/TransitionPort;

    .end local p2    # "internal":Ljava/lang/Object;
    iput-object p2, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    goto :goto_b
.end method

.method public removeListener(Landroid/support/transition/TransitionInterfaceListener;)Landroid/support/transition/TransitionImpl;
    .registers 4
    .param p1, "listener"    # Landroid/support/transition/TransitionInterfaceListener;

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mCompatListener:Landroid/support/transition/TransitionIcs$CompatListener;

    if-nez v0, :cond_5

    .line 65
    :cond_4
    :goto_4
    return-object p0

    .line 60
    :cond_5
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mCompatListener:Landroid/support/transition/TransitionIcs$CompatListener;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionIcs$CompatListener;->removeListener(Landroid/support/transition/TransitionInterfaceListener;)V

    .line 61
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mCompatListener:Landroid/support/transition/TransitionIcs$CompatListener;

    invoke-virtual {v0}, Landroid/support/transition/TransitionIcs$CompatListener;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 62
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    iget-object v1, p0, Landroid/support/transition/TransitionIcs;->mCompatListener:Landroid/support/transition/TransitionIcs$CompatListener;

    invoke-virtual {v0, v1}, Landroid/support/transition/TransitionPort;->removeListener(Landroid/support/transition/TransitionPort$TransitionListener;)Landroid/support/transition/TransitionPort;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/transition/TransitionIcs;->mCompatListener:Landroid/support/transition/TransitionIcs$CompatListener;

    goto :goto_4
.end method

.method public removeTarget(I)Landroid/support/transition/TransitionImpl;
    .registers 3
    .param p1, "targetId"    # I

    .prologue
    .line 198
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionPort;->removeTarget(I)Landroid/support/transition/TransitionPort;

    .line 199
    return-object p0
.end method

.method public removeTarget(Landroid/view/View;)Landroid/support/transition/TransitionImpl;
    .registers 3
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 192
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionPort;->removeTarget(Landroid/view/View;)Landroid/support/transition/TransitionPort;

    .line 193
    return-object p0
.end method

.method public setDuration(J)Landroid/support/transition/TransitionImpl;
    .registers 4
    .param p1, "duration"    # J

    .prologue
    .line 139
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionPort;->setDuration(J)Landroid/support/transition/TransitionPort;

    .line 140
    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/TransitionImpl;
    .registers 3
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 150
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionPort;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/TransitionPort;

    .line 151
    return-object p0
.end method

.method public setStartDelay(J)Landroid/support/transition/TransitionImpl;
    .registers 4
    .param p1, "startDelay"    # J

    .prologue
    .line 166
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionPort;->setStartDelay(J)Landroid/support/transition/TransitionPort;

    .line 167
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0}, Landroid/support/transition/TransitionPort;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
