.class Landroid/support/transition/SceneKitKat;
.super Landroid/support/transition/SceneWrapper;
.source "SceneKitKat.java"


# static fields
.field private static sEnterAction:Ljava/lang/reflect/Field;

.field private static sSetCurrentScene:Ljava/lang/reflect/Method;


# instance fields
.field private mLayout:Landroid/view/View;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/transition/SceneWrapper;-><init>()V

    return-void
.end method

.method private invokeEnterAction()V
    .registers 5

    .prologue
    .line 63
    sget-object v2, Landroid/support/transition/SceneKitKat;->sEnterAction:Ljava/lang/reflect/Field;

    if-nez v2, :cond_14

    .line 65
    :try_start_4
    const-class v2, Landroid/transition/Scene;

    const-string v3, "mEnterAction"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroid/support/transition/SceneKitKat;->sEnterAction:Ljava/lang/reflect/Field;

    .line 66
    sget-object v2, Landroid/support/transition/SceneKitKat;->sEnterAction:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_14
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_14} :catch_24

    .line 72
    :cond_14
    :try_start_14
    sget-object v2, Landroid/support/transition/SceneKitKat;->sEnterAction:Ljava/lang/reflect/Field;

    iget-object v3, p0, Landroid/support/transition/SceneKitKat;->mScene:Landroid/transition/Scene;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 73
    .local v1, "enterAction":Ljava/lang/Runnable;
    if-eqz v1, :cond_23

    .line 74
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_14 .. :try_end_23} :catch_2b

    .line 79
    :cond_23
    return-void

    .line 67
    .end local v1    # "enterAction":Ljava/lang/Runnable;
    :catch_24
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 76
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_2b
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private updateCurrentScene(Landroid/view/View;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 83
    sget-object v1, Landroid/support/transition/SceneKitKat;->sSetCurrentScene:Ljava/lang/reflect/Method;

    if-nez v1, :cond_21

    .line 85
    :try_start_4
    const-class v1, Landroid/transition/Scene;

    const-string v2, "setCurrentScene"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/transition/Scene;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/transition/SceneKitKat;->sSetCurrentScene:Ljava/lang/reflect/Method;

    .line 87
    sget-object v1, Landroid/support/transition/SceneKitKat;->sSetCurrentScene:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_21
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_21} :catch_33

    .line 93
    :cond_21
    :try_start_21
    sget-object v1, Landroid/support/transition/SceneKitKat;->sSetCurrentScene:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Landroid/support/transition/SceneKitKat;->mScene:Landroid/transition/Scene;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/lang/IllegalAccessException; {:try_start_21 .. :try_end_32} :catch_3a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_21 .. :try_end_32} :catch_41

    .line 97
    return-void

    .line 88
    :catch_33
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 94
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3a
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_3b
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 94
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_41
    move-exception v0

    goto :goto_3b
.end method


# virtual methods
.method public enter()V
    .registers 3

    .prologue
    .line 50
    iget-object v1, p0, Landroid/support/transition/SceneKitKat;->mLayout:Landroid/view/View;

    if-eqz v1, :cond_17

    .line 52
    invoke-virtual {p0}, Landroid/support/transition/SceneKitKat;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v0

    .line 53
    .local v0, "root":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 54
    iget-object v1, p0, Landroid/support/transition/SceneKitKat;->mLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 55
    invoke-direct {p0}, Landroid/support/transition/SceneKitKat;->invokeEnterAction()V

    .line 56
    invoke-direct {p0, v0}, Landroid/support/transition/SceneKitKat;->updateCurrentScene(Landroid/view/View;)V

    .line 60
    .end local v0    # "root":Landroid/view/ViewGroup;
    :goto_16
    return-void

    .line 58
    :cond_17
    iget-object v1, p0, Landroid/support/transition/SceneKitKat;->mScene:Landroid/transition/Scene;

    invoke-virtual {v1}, Landroid/transition/Scene;->enter()V

    goto :goto_16
.end method

.method public init(Landroid/view/ViewGroup;)V
    .registers 3
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 35
    new-instance v0, Landroid/transition/Scene;

    invoke-direct {v0, p1}, Landroid/transition/Scene;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/support/transition/SceneKitKat;->mScene:Landroid/transition/Scene;

    .line 36
    return-void
.end method

.method public init(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 4
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "layout"    # Landroid/view/View;

    .prologue
    .line 40
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_e

    .line 41
    new-instance v0, Landroid/transition/Scene;

    check-cast p2, Landroid/view/ViewGroup;

    .end local p2    # "layout":Landroid/view/View;
    invoke-direct {v0, p1, p2}, Landroid/transition/Scene;-><init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/support/transition/SceneKitKat;->mScene:Landroid/transition/Scene;

    .line 46
    :goto_d
    return-void

    .line 43
    .restart local p2    # "layout":Landroid/view/View;
    :cond_e
    new-instance v0, Landroid/transition/Scene;

    invoke-direct {v0, p1}, Landroid/transition/Scene;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/support/transition/SceneKitKat;->mScene:Landroid/transition/Scene;

    .line 44
    iput-object p2, p0, Landroid/support/transition/SceneKitKat;->mLayout:Landroid/view/View;

    goto :goto_d
.end method
