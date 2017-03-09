.class Landroid/support/transition/SceneStaticsKitKat;
.super Landroid/support/transition/SceneStaticsImpl;
.source "SceneStaticsKitKat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/transition/SceneStaticsImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/support/transition/SceneImpl;
    .registers 6
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "layoutId"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    new-instance v0, Landroid/support/transition/SceneKitKat;

    invoke-direct {v0}, Landroid/support/transition/SceneKitKat;-><init>()V

    .line 27
    .local v0, "scene":Landroid/support/transition/SceneKitKat;
    invoke-static {p1, p2, p3}, Landroid/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/transition/Scene;

    move-result-object v1

    iput-object v1, v0, Landroid/support/transition/SceneKitKat;->mScene:Landroid/transition/Scene;

    .line 28
    return-object v0
.end method
