.class Landroid/support/transition/SceneApi21;
.super Landroid/support/transition/SceneWrapper;
.source "SceneApi21.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/transition/SceneWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Landroid/support/transition/SceneApi21;->mScene:Landroid/transition/Scene;

    invoke-virtual {v0}, Landroid/transition/Scene;->enter()V

    .line 37
    return-void
.end method

.method public init(Landroid/view/ViewGroup;)V
    .registers 3
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 26
    new-instance v0, Landroid/transition/Scene;

    invoke-direct {v0, p1}, Landroid/transition/Scene;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/support/transition/SceneApi21;->mScene:Landroid/transition/Scene;

    .line 27
    return-void
.end method

.method public init(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 4
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "layout"    # Landroid/view/View;

    .prologue
    .line 31
    new-instance v0, Landroid/transition/Scene;

    invoke-direct {v0, p1, p2}, Landroid/transition/Scene;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/transition/SceneApi21;->mScene:Landroid/transition/Scene;

    .line 32
    return-void
.end method
