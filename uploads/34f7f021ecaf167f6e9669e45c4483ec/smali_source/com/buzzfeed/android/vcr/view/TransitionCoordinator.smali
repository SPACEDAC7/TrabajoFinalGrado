.class public Lcom/buzzfeed/android/vcr/view/TransitionCoordinator;
.super Ljava/lang/Object;
.source "TransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/vcr/view/TransitionCoordinator$SharedPlayerHost;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/buzzfeed/android/vcr/view/TransitionCoordinator;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static getInstance()Lcom/buzzfeed/android/vcr/view/TransitionCoordinator;
    .registers 2

    .prologue
    .line 22
    sget-object v0, Lcom/buzzfeed/android/vcr/view/TransitionCoordinator;->sInstance:Lcom/buzzfeed/android/vcr/view/TransitionCoordinator;

    if-nez v0, :cond_13

    .line 23
    const-class v1, Lcom/buzzfeed/android/vcr/view/TransitionCoordinator;

    monitor-enter v1

    .line 24
    :try_start_7
    sget-object v0, Lcom/buzzfeed/android/vcr/view/TransitionCoordinator;->sInstance:Lcom/buzzfeed/android/vcr/view/TransitionCoordinator;

    if-nez v0, :cond_12

    .line 25
    new-instance v0, Lcom/buzzfeed/android/vcr/view/TransitionCoordinator;

    invoke-direct {v0}, Lcom/buzzfeed/android/vcr/view/TransitionCoordinator;-><init>()V

    sput-object v0, Lcom/buzzfeed/android/vcr/view/TransitionCoordinator;->sInstance:Lcom/buzzfeed/android/vcr/view/TransitionCoordinator;

    .line 27
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 29
    :cond_13
    sget-object v0, Lcom/buzzfeed/android/vcr/view/TransitionCoordinator;->sInstance:Lcom/buzzfeed/android/vcr/view/TransitionCoordinator;

    return-object v0

    .line 27
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private makeSceneTransitionAnimation(Landroid/app/Activity;)Landroid/os/Bundle;
    .registers 9
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 88
    move-object v1, p1

    check-cast v1, Lcom/buzzfeed/android/vcr/view/TransitionCoordinator$SharedPlayerHost;

    .line 89
    .local v1, "host":Lcom/buzzfeed/android/vcr/view/TransitionCoordinator$SharedPlayerHost;
    invoke-interface {v1}, Lcom/buzzfeed/android/vcr/view/TransitionCoordinator$SharedPlayerHost;->getSharedElementView()Landroid/view/View;

    move-result-object v3

    .line 90
    .local v3, "sharedElement":Landroid/view/View;
    if-nez v3, :cond_30

    .line 91
    new-instance v4, Ljava/lang/NullPointerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Shared element for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " must not be null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 94
    :cond_30
    sget-object v4, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->PLAYER_TRANSITION_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 95
    new-instance v0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;

    invoke-direct {v0, p1}, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;-><init>(Landroid/app/Activity;)V

    .line 96
    .local v0, "coordinator":Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->onSharedPlayerOwnershipLoss(Lcom/buzzfeed/android/vcr/view/TransitionCoordinator$SharedPlayerHost;)V

    .line 97
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 98
    invoke-virtual {v3}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v4}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 99
    .local v2, "options":Landroid/app/ActivityOptions;
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    return-object v4
.end method

.method private setupPlayerTransitionAndMakeBundle(Landroid/app/Activity;Landroid/content/Intent;)Landroid/os/Bundle;
    .registers 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 61
    if-nez p1, :cond_a

    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "Activity must not be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 62
    :cond_a
    if-nez p2, :cond_14

    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "Intent must not be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 64
    :cond_14
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v4, v5, :cond_1c

    const/4 v4, 0x0

    .line 83
    :goto_1b
    return-object v4

    .line 66
    :cond_1c
    instance-of v4, p1, Lcom/buzzfeed/android/vcr/view/TransitionCoordinator$SharedPlayerHost;

    if-nez v4, :cond_4b

    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " must implement "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Lcom/buzzfeed/android/vcr/view/TransitionCoordinator$SharedPlayerHost;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "msg":Ljava/lang/String;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 71
    .end local v3    # "msg":Ljava/lang/String;
    :cond_4b
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "className":Ljava/lang/String;
    :try_start_53
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 74
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Lcom/buzzfeed/android/vcr/view/TransitionCoordinator$SharedPlayerHost;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_8f

    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " must implement "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Lcom/buzzfeed/android/vcr/view/TransitionCoordinator$SharedPlayerHost;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 76
    .restart local v3    # "msg":Ljava/lang/String;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_86
    .catch Ljava/lang/ClassNotFoundException; {:try_start_53 .. :try_end_86} :catch_86

    .line 79
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "msg":Ljava/lang/String;
    :catch_86
    move-exception v2

    .line 80
    .local v2, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid intent"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 83
    .end local v2    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8f
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/vcr/view/TransitionCoordinator;->makeSceneTransitionAnimation(Landroid/app/Activity;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_1b
.end method


# virtual methods
.method public startPlayerTransition(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/android/vcr/view/TransitionCoordinator;->setupPlayerTransitionAndMakeBundle(Landroid/app/Activity;Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 43
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 44
    return-void
.end method

.method public startPlayerTransitionForResult(Landroid/app/Activity;Landroid/content/Intent;I)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/android/vcr/view/TransitionCoordinator;->setupPlayerTransitionAndMakeBundle(Landroid/app/Activity;Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 57
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p1, p2, p3, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 58
    return-void
.end method
