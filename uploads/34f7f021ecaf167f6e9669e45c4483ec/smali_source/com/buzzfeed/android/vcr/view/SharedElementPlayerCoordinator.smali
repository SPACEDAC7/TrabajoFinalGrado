.class Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;
.super Ljava/lang/Object;
.source "SharedElementPlayerCoordinator.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$SecondActivityTransitionListener;,
        Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$FirstActivityTransitionListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final PLAYER_TRANSITION_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFirstActivity:Landroid/app/Activity;

.field private mFirstTransitionListener:Landroid/transition/Transition$TransitionListener;

.field private mHasSecondReturnTransitionEnded:Z

.field private mIsReturning:Z

.field private mSecondActivity:Landroid/app/Activity;

.field private mSecondTransitionListener:Landroid/transition/Transition$TransitionListener;

.field private mSharedPresenter:Lcom/buzzfeed/android/vcr/player/VCRSharedSurfaceTexturePresenter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 23
    const-class v0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->TAG:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".PLAYER_TRANSITION_NAME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->PLAYER_TRANSITION_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mFirstActivity:Landroid/app/Activity;

    .line 60
    new-instance v1, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$FirstActivityTransitionListener;

    invoke-direct {v1, p0, v3}, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$FirstActivityTransitionListener;-><init>(Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$1;)V

    iput-object v1, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mFirstTransitionListener:Landroid/transition/Transition$TransitionListener;

    .line 61
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mFirstActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getSharedElementExitTransition()Landroid/transition/Transition;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mFirstTransitionListener:Landroid/transition/Transition$TransitionListener;

    invoke-virtual {v1, v2}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 62
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mFirstActivity:Landroid/app/Activity;

    check-cast v0, Lcom/buzzfeed/android/vcr/view/TransitionCoordinator$SharedPlayerHost;

    .line 63
    .local v0, "host":Lcom/buzzfeed/android/vcr/view/TransitionCoordinator$SharedPlayerHost;
    invoke-interface {v0}, Lcom/buzzfeed/android/vcr/view/TransitionCoordinator$SharedPlayerHost;->getSharedSurfaceTexturePresenter()Lcom/buzzfeed/android/vcr/player/VCRSharedSurfaceTexturePresenter;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mSharedPresenter:Lcom/buzzfeed/android/vcr/player/VCRSharedSurfaceTexturePresenter;

    .line 64
    new-instance v1, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$SecondActivityTransitionListener;

    invoke-direct {v1, p0, v3}, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$SecondActivityTransitionListener;-><init>(Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$1;)V

    iput-object v1, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mSecondTransitionListener:Landroid/transition/Transition$TransitionListener;

    .line 65
    return-void
.end method

.method static synthetic access$200(Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;)Z
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mIsReturning:Z

    return v0
.end method

.method static synthetic access$300(Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mFirstActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-static {p0}, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mSecondActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;)Landroid/transition/Transition$TransitionListener;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mSecondTransitionListener:Landroid/transition/Transition$TransitionListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;)Landroid/transition/Transition$TransitionListener;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mFirstTransitionListener:Landroid/transition/Transition$TransitionListener;

    return-object v0
.end method

.method static synthetic access$702(Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition$TransitionListener;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;
    .param p1, "x1"    # Landroid/transition/Transition$TransitionListener;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mFirstTransitionListener:Landroid/transition/Transition$TransitionListener;

    return-object p1
.end method

.method private cleanUp()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 137
    const-string v1, "cleanUp started"

    invoke-static {v1}, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->log(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mFirstActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 139
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mFirstActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getSharedElementExitTransition()Landroid/transition/Transition;

    move-result-object v0

    .line 140
    .local v0, "exitTransition":Landroid/transition/Transition;
    if-eqz v0, :cond_20

    .line 141
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mFirstTransitionListener:Landroid/transition/Transition$TransitionListener;

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 143
    :cond_20
    iput-object v2, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mFirstActivity:Landroid/app/Activity;

    .line 144
    iput-object v2, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mSecondActivity:Landroid/app/Activity;

    .line 145
    iput-object v2, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mSharedPresenter:Lcom/buzzfeed/android/vcr/player/VCRSharedSurfaceTexturePresenter;

    .line 146
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 56
    return-void
.end method

.method private removeAndCleanUp()V
    .registers 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mSecondActivity:Landroid/app/Activity;

    if-eqz v0, :cond_e

    .line 131
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mSecondActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setEnterTransition(Landroid/transition/Transition;)V

    .line 133
    :cond_e
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->cleanUp()V

    .line 134
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityCreated activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->log(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mSecondActivity:Landroid/app/Activity;

    if-nez v1, :cond_2b

    .line 71
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mSecondActivity:Landroid/app/Activity;

    .line 72
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mSecondActivity:Landroid/app/Activity;

    check-cast v0, Lcom/buzzfeed/android/vcr/view/TransitionCoordinator$SharedPlayerHost;

    .line 73
    .local v0, "host":Lcom/buzzfeed/android/vcr/view/TransitionCoordinator$SharedPlayerHost;
    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->onSharedPlayerOwnershipGained(Lcom/buzzfeed/android/vcr/view/TransitionCoordinator$SharedPlayerHost;)V

    .line 75
    .end local v0    # "host":Lcom/buzzfeed/android/vcr/view/TransitionCoordinator$SharedPlayerHost;
    :cond_2b
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityDestroyed activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->log(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mFirstActivity:Landroid/app/Activity;

    if-ne v0, p1, :cond_26

    .line 122
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->removeAndCleanUp()V

    .line 126
    :cond_25
    :goto_25
    return-void

    .line 123
    :cond_26
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mSecondActivity:Landroid/app/Activity;

    if-ne v0, p1, :cond_25

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mSecondActivity:Landroid/app/Activity;

    goto :goto_25
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityPaused activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->log(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResumed activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->log(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivitySaveInstanceState activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->log(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityStarted activity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->log(Ljava/lang/String;)V

    .line 81
    iget-object v2, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mFirstActivity:Landroid/app/Activity;

    if-ne v2, p1, :cond_26

    .line 83
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mIsReturning:Z

    .line 91
    :cond_25
    :goto_25
    return-void

    .line 84
    :cond_26
    iget-object v2, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mSecondActivity:Landroid/app/Activity;

    if-ne p1, v2, :cond_25

    .line 86
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mSecondActivity:Landroid/app/Activity;

    check-cast v0, Lcom/buzzfeed/android/vcr/view/TransitionCoordinator$SharedPlayerHost;

    .line 87
    .local v0, "host":Lcom/buzzfeed/android/vcr/view/TransitionCoordinator$SharedPlayerHost;
    invoke-interface {v0}, Lcom/buzzfeed/android/vcr/view/TransitionCoordinator$SharedPlayerHost;->getSharedElementView()Landroid/view/View;

    move-result-object v2

    sget-object v3, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->PLAYER_TRANSITION_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 89
    .local v1, "secondWindow":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getSharedElementEnterTransition()Landroid/transition/Transition;

    move-result-object v2

    iget-object v3, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mSecondTransitionListener:Landroid/transition/Transition$TransitionListener;

    invoke-virtual {v2, v3}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    goto :goto_25
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityStopped activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->log(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mFirstActivity:Landroid/app/Activity;

    if-ne v0, p1, :cond_25

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mIsReturning:Z

    .line 110
    :cond_25
    return-void
.end method

.method public onFirstActivityReturnTransitionStarted()V
    .registers 3

    .prologue
    .line 178
    iget-boolean v1, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mHasSecondReturnTransitionEnded:Z

    if-nez v1, :cond_9

    .line 179
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mSharedPresenter:Lcom/buzzfeed/android/vcr/player/VCRSharedSurfaceTexturePresenter;

    invoke-virtual {v1}, Lcom/buzzfeed/android/vcr/player/VCRSharedSurfaceTexturePresenter;->detachSharedSurfaceTexture()V

    .line 181
    :cond_9
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mFirstActivity:Landroid/app/Activity;

    check-cast v0, Lcom/buzzfeed/android/vcr/view/TransitionCoordinator$SharedPlayerHost;

    .line 182
    .local v0, "host":Lcom/buzzfeed/android/vcr/view/TransitionCoordinator$SharedPlayerHost;
    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->onSharedPlayerOwnershipGained(Lcom/buzzfeed/android/vcr/view/TransitionCoordinator$SharedPlayerHost;)V

    .line 183
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->cleanUp()V

    .line 184
    return-void
.end method

.method public onSecondActivityTransitionEnded()V
    .registers 6

    .prologue
    .line 163
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mFirstActivity:Landroid/app/Activity;

    check-cast v1, Lcom/buzzfeed/android/vcr/view/TransitionCoordinator$SharedPlayerHost;

    .line 164
    .local v1, "host1":Lcom/buzzfeed/android/vcr/view/TransitionCoordinator$SharedPlayerHost;
    iget-object v2, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mSecondActivity:Landroid/app/Activity;

    check-cast v2, Lcom/buzzfeed/android/vcr/view/TransitionCoordinator$SharedPlayerHost;

    .line 165
    .local v2, "host2":Lcom/buzzfeed/android/vcr/view/TransitionCoordinator$SharedPlayerHost;
    invoke-interface {v2}, Lcom/buzzfeed/android/vcr/view/TransitionCoordinator$SharedPlayerHost;->getSurfaceTextureLayout()Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->createBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 166
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-interface {v1}, Lcom/buzzfeed/android/vcr/view/TransitionCoordinator$SharedPlayerHost;->getSurfaceTextureLayout()Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 167
    invoke-interface {v2}, Lcom/buzzfeed/android/vcr/view/TransitionCoordinator$SharedPlayerHost;->getSurfaceTextureLayout()Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/buzzfeed/android/vcr/view/SurfaceTextureLayout;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 168
    iget-object v3, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mSecondActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$1;

    invoke-direct {v4, p0, v2}, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$1;-><init>(Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;Lcom/buzzfeed/android/vcr/view/TransitionCoordinator$SharedPlayerHost;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 174
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mHasSecondReturnTransitionEnded:Z

    .line 175
    return-void
.end method

.method public onSecondActivityTransitionStarted()V
    .registers 1

    .prologue
    .line 160
    return-void
.end method

.method public onSharedPlayerOwnershipGained(Lcom/buzzfeed/android/vcr/view/TransitionCoordinator$SharedPlayerHost;)V
    .registers 3
    .param p1, "host"    # Lcom/buzzfeed/android/vcr/view/TransitionCoordinator$SharedPlayerHost;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mSharedPresenter:Lcom/buzzfeed/android/vcr/player/VCRSharedSurfaceTexturePresenter;

    invoke-interface {p1, v0}, Lcom/buzzfeed/android/vcr/view/TransitionCoordinator$SharedPlayerHost;->onSharedPresenterOwnershipGained(Lcom/buzzfeed/android/vcr/player/VCRSharedSurfaceTexturePresenter;)V

    .line 156
    return-void
.end method

.method public onSharedPlayerOwnershipLoss(Lcom/buzzfeed/android/vcr/view/TransitionCoordinator$SharedPlayerHost;)V
    .registers 3
    .param p1, "host"    # Lcom/buzzfeed/android/vcr/view/TransitionCoordinator$SharedPlayerHost;

    .prologue
    .line 149
    invoke-interface {p1}, Lcom/buzzfeed/android/vcr/view/TransitionCoordinator$SharedPlayerHost;->getSharedSurfaceTexturePresenter()Lcom/buzzfeed/android/vcr/player/VCRSharedSurfaceTexturePresenter;

    move-result-object v0

    .line 150
    .local v0, "player":Lcom/buzzfeed/android/vcr/player/VCRSharedSurfaceTexturePresenter;
    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/player/VCRSharedSurfaceTexturePresenter;->detachSharedSurfaceTexture()V

    .line 151
    invoke-interface {p1, v0}, Lcom/buzzfeed/android/vcr/view/TransitionCoordinator$SharedPlayerHost;->onSharedPresenterOwnershipLoss(Lcom/buzzfeed/android/vcr/player/VCRSharedSurfaceTexturePresenter;)V

    .line 152
    return-void
.end method
