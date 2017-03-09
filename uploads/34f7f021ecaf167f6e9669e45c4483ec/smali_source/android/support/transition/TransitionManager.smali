.class public Landroid/support/transition/TransitionManager;
.super Ljava/lang/Object;
.source "TransitionManager.java"


# static fields
.field private static sImpl:Landroid/support/transition/TransitionManagerStaticsImpl;


# instance fields
.field private mImpl:Landroid/support/transition/TransitionManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_e

    .line 43
    new-instance v0, Landroid/support/transition/TransitionManagerStaticsIcs;

    invoke-direct {v0}, Landroid/support/transition/TransitionManagerStaticsIcs;-><init>()V

    sput-object v0, Landroid/support/transition/TransitionManager;->sImpl:Landroid/support/transition/TransitionManagerStaticsImpl;

    .line 47
    :goto_d
    return-void

    .line 45
    :cond_e
    new-instance v0, Landroid/support/transition/TransitionManagerStaticsKitKat;

    invoke-direct {v0}, Landroid/support/transition/TransitionManagerStaticsKitKat;-><init>()V

    sput-object v0, Landroid/support/transition/TransitionManager;->sImpl:Landroid/support/transition/TransitionManagerStaticsImpl;

    goto :goto_d
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_11

    .line 53
    new-instance v0, Landroid/support/transition/TransitionManagerIcs;

    invoke-direct {v0}, Landroid/support/transition/TransitionManagerIcs;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionManager;->mImpl:Landroid/support/transition/TransitionManagerImpl;

    .line 57
    :goto_10
    return-void

    .line 55
    :cond_11
    new-instance v0, Landroid/support/transition/TransitionManagerKitKat;

    invoke-direct {v0}, Landroid/support/transition/TransitionManagerKitKat;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionManager;->mImpl:Landroid/support/transition/TransitionManagerImpl;

    goto :goto_10
.end method

.method public static beginDelayedTransition(Landroid/view/ViewGroup;)V
    .registers 2
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 97
    sget-object v0, Landroid/support/transition/TransitionManager;->sImpl:Landroid/support/transition/TransitionManagerStaticsImpl;

    invoke-virtual {v0, p0}, Landroid/support/transition/TransitionManagerStaticsImpl;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 98
    return-void
.end method

.method public static beginDelayedTransition(Landroid/view/ViewGroup;Landroid/support/transition/Transition;)V
    .registers 4
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "transition"    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 125
    sget-object v1, Landroid/support/transition/TransitionManager;->sImpl:Landroid/support/transition/TransitionManagerStaticsImpl;

    if-nez p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, p0, v0}, Landroid/support/transition/TransitionManagerStaticsImpl;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/support/transition/TransitionImpl;)V

    .line 126
    return-void

    .line 125
    :cond_9
    iget-object v0, p1, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    goto :goto_5
.end method

.method public static go(Landroid/support/transition/Scene;)V
    .registers 3
    .param p0, "scene"    # Landroid/support/transition/Scene;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 66
    sget-object v0, Landroid/support/transition/TransitionManager;->sImpl:Landroid/support/transition/TransitionManagerStaticsImpl;

    iget-object v1, p0, Landroid/support/transition/Scene;->mImpl:Landroid/support/transition/SceneImpl;

    invoke-virtual {v0, v1}, Landroid/support/transition/TransitionManagerStaticsImpl;->go(Landroid/support/transition/SceneImpl;)V

    .line 67
    return-void
.end method

.method public static go(Landroid/support/transition/Scene;Landroid/support/transition/Transition;)V
    .registers 5
    .param p0, "scene"    # Landroid/support/transition/Scene;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "transition"    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 84
    sget-object v1, Landroid/support/transition/TransitionManager;->sImpl:Landroid/support/transition/TransitionManagerStaticsImpl;

    iget-object v2, p0, Landroid/support/transition/Scene;->mImpl:Landroid/support/transition/SceneImpl;

    if-nez p1, :cond_b

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v1, v2, v0}, Landroid/support/transition/TransitionManagerStaticsImpl;->go(Landroid/support/transition/SceneImpl;Landroid/support/transition/TransitionImpl;)V

    .line 85
    return-void

    .line 84
    :cond_b
    iget-object v0, p1, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    goto :goto_7
.end method


# virtual methods
.method public setTransition(Landroid/support/transition/Scene;Landroid/support/transition/Scene;Landroid/support/transition/Transition;)V
    .registers 8
    .param p1, "fromScene"    # Landroid/support/transition/Scene;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "toScene"    # Landroid/support/transition/Scene;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "transition"    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 155
    iget-object v1, p0, Landroid/support/transition/TransitionManager;->mImpl:Landroid/support/transition/TransitionManagerImpl;

    iget-object v2, p1, Landroid/support/transition/Scene;->mImpl:Landroid/support/transition/SceneImpl;

    iget-object v3, p2, Landroid/support/transition/Scene;->mImpl:Landroid/support/transition/SceneImpl;

    if-nez p3, :cond_d

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v1, v2, v3, v0}, Landroid/support/transition/TransitionManagerImpl;->setTransition(Landroid/support/transition/SceneImpl;Landroid/support/transition/SceneImpl;Landroid/support/transition/TransitionImpl;)V

    .line 157
    return-void

    .line 155
    :cond_d
    iget-object v0, p3, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    goto :goto_9
.end method

.method public setTransition(Landroid/support/transition/Scene;Landroid/support/transition/Transition;)V
    .registers 6
    .param p1, "scene"    # Landroid/support/transition/Scene;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "transition"    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 138
    iget-object v1, p0, Landroid/support/transition/TransitionManager;->mImpl:Landroid/support/transition/TransitionManagerImpl;

    iget-object v2, p1, Landroid/support/transition/Scene;->mImpl:Landroid/support/transition/SceneImpl;

    if-nez p2, :cond_b

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v1, v2, v0}, Landroid/support/transition/TransitionManagerImpl;->setTransition(Landroid/support/transition/SceneImpl;Landroid/support/transition/TransitionImpl;)V

    .line 139
    return-void

    .line 138
    :cond_b
    iget-object v0, p2, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    goto :goto_7
.end method

.method public transitionTo(Landroid/support/transition/Scene;)V
    .registers 4
    .param p1, "scene"    # Landroid/support/transition/Scene;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 168
    iget-object v0, p0, Landroid/support/transition/TransitionManager;->mImpl:Landroid/support/transition/TransitionManagerImpl;

    iget-object v1, p1, Landroid/support/transition/Scene;->mImpl:Landroid/support/transition/SceneImpl;

    invoke-virtual {v0, v1}, Landroid/support/transition/TransitionManagerImpl;->transitionTo(Landroid/support/transition/SceneImpl;)V

    .line 169
    return-void
.end method
