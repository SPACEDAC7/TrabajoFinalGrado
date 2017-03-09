.class Landroid/support/transition/TransitionManagerPort$MultiListener;
.super Ljava/lang/Object;
.source "TransitionManagerPort.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/TransitionManagerPort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiListener"
.end annotation


# instance fields
.field mSceneRoot:Landroid/view/ViewGroup;

.field mTransition:Landroid/support/transition/TransitionPort;


# direct methods
.method constructor <init>(Landroid/support/transition/TransitionPort;Landroid/view/ViewGroup;)V
    .registers 3
    .param p1, "transition"    # Landroid/support/transition/TransitionPort;
    .param p2, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    iput-object p1, p0, Landroid/support/transition/TransitionManagerPort$MultiListener;->mTransition:Landroid/support/transition/TransitionPort;

    .line 385
    iput-object p2, p0, Landroid/support/transition/TransitionManagerPort$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    .line 386
    return-void
.end method

.method private removeListeners()V
    .registers 2

    .prologue
    .line 389
    iget-object v0, p0, Landroid/support/transition/TransitionManagerPort$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 390
    iget-object v0, p0, Landroid/support/transition/TransitionManagerPort$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 391
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 8

    .prologue
    .line 413
    invoke-direct {p0}, Landroid/support/transition/TransitionManagerPort$MultiListener;->removeListeners()V

    .line 414
    sget-object v4, Landroid/support/transition/TransitionManagerPort;->sPendingTransitions:Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/support/transition/TransitionManagerPort$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 417
    invoke-static {}, Landroid/support/transition/TransitionManagerPort;->getRunningTransitions()Landroid/support/v4/util/ArrayMap;

    move-result-object v3

    .line 418
    .local v3, "runningTransitions":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroid/support/transition/TransitionPort;>;>;"
    iget-object v4, p0, Landroid/support/transition/TransitionManagerPort$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 419
    .local v0, "currentTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionPort;>;"
    const/4 v1, 0x0

    .line 420
    .local v1, "previousRunningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionPort;>;"
    if-nez v0, :cond_52

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "currentTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionPort;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 422
    .restart local v0    # "currentTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionPort;>;"
    iget-object v4, p0, Landroid/support/transition/TransitionManagerPort$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    :cond_23
    :goto_23
    iget-object v4, p0, Landroid/support/transition/TransitionManagerPort$MultiListener;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    iget-object v4, p0, Landroid/support/transition/TransitionManagerPort$MultiListener;->mTransition:Landroid/support/transition/TransitionPort;

    new-instance v5, Landroid/support/transition/TransitionManagerPort$MultiListener$1;

    invoke-direct {v5, p0, v3}, Landroid/support/transition/TransitionManagerPort$MultiListener$1;-><init>(Landroid/support/transition/TransitionManagerPort$MultiListener;Landroid/support/v4/util/ArrayMap;)V

    invoke-virtual {v4, v5}, Landroid/support/transition/TransitionPort;->addListener(Landroid/support/transition/TransitionPort$TransitionListener;)Landroid/support/transition/TransitionPort;

    .line 435
    iget-object v4, p0, Landroid/support/transition/TransitionManagerPort$MultiListener;->mTransition:Landroid/support/transition/TransitionPort;

    iget-object v5, p0, Landroid/support/transition/TransitionManagerPort$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/support/transition/TransitionPort;->captureValues(Landroid/view/ViewGroup;Z)V

    .line 436
    if-eqz v1, :cond_5e

    .line 437
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_40
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/TransitionPort;

    .line 438
    .local v2, "runningTransition":Landroid/support/transition/TransitionPort;
    iget-object v5, p0, Landroid/support/transition/TransitionManagerPort$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/support/transition/TransitionPort;->resume(Landroid/view/View;)V

    goto :goto_40

    .line 423
    .end local v2    # "runningTransition":Landroid/support/transition/TransitionPort;
    :cond_52
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_23

    .line 424
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "previousRunningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionPort;>;"
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .restart local v1    # "previousRunningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionPort;>;"
    goto :goto_23

    .line 441
    :cond_5e
    iget-object v4, p0, Landroid/support/transition/TransitionManagerPort$MultiListener;->mTransition:Landroid/support/transition/TransitionPort;

    iget-object v5, p0, Landroid/support/transition/TransitionManagerPort$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/support/transition/TransitionPort;->playTransition(Landroid/view/ViewGroup;)V

    .line 443
    const/4 v4, 0x1

    return v4
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 395
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 399
    invoke-direct {p0}, Landroid/support/transition/TransitionManagerPort$MultiListener;->removeListeners()V

    .line 401
    sget-object v2, Landroid/support/transition/TransitionManagerPort;->sPendingTransitions:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/transition/TransitionManagerPort$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 402
    invoke-static {}, Landroid/support/transition/TransitionManagerPort;->getRunningTransitions()Landroid/support/v4/util/ArrayMap;

    move-result-object v2

    iget-object v3, p0, Landroid/support/transition/TransitionManagerPort$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 403
    .local v1, "runningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionPort;>;"
    if-eqz v1, :cond_34

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_34

    .line 404
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionPort;

    .line 405
    .local v0, "runningTransition":Landroid/support/transition/TransitionPort;
    iget-object v3, p0, Landroid/support/transition/TransitionManagerPort$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/support/transition/TransitionPort;->resume(Landroid/view/View;)V

    goto :goto_22

    .line 408
    .end local v0    # "runningTransition":Landroid/support/transition/TransitionPort;
    :cond_34
    iget-object v2, p0, Landroid/support/transition/TransitionManagerPort$MultiListener;->mTransition:Landroid/support/transition/TransitionPort;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/transition/TransitionPort;->clearValues(Z)V

    .line 409
    return-void
.end method
