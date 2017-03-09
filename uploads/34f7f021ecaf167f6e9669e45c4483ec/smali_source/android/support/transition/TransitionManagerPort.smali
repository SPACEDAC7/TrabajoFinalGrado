.class Landroid/support/transition/TransitionManagerPort;
.super Ljava/lang/Object;
.source "TransitionManagerPort.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/TransitionManagerPort$MultiListener;
    }
.end annotation


# static fields
.field private static final EMPTY_STRINGS:[Ljava/lang/String;

.field private static LOG_TAG:Ljava/lang/String;

.field private static sDefaultTransition:Landroid/support/transition/TransitionPort;

.field static sPendingTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static sRunningTransitions:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/TransitionPort;",
            ">;>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field mNameSceneTransitions:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/support/transition/ScenePort;",
            "Landroid/support/transition/TransitionPort;",
            ">;>;"
        }
    .end annotation
.end field

.field mSceneNameTransitions:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/support/transition/ScenePort;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/transition/TransitionPort;",
            ">;>;"
        }
    .end annotation
.end field

.field mScenePairTransitions:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/support/transition/ScenePort;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/support/transition/ScenePort;",
            "Landroid/support/transition/TransitionPort;",
            ">;>;"
        }
    .end annotation
.end field

.field mSceneTransitions:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/support/transition/ScenePort;",
            "Landroid/support/transition/TransitionPort;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/support/transition/TransitionManagerPort;->EMPTY_STRINGS:[Ljava/lang/String;

    .line 37
    const-string v0, "TransitionManager"

    sput-object v0, Landroid/support/transition/TransitionManagerPort;->LOG_TAG:Ljava/lang/String;

    .line 39
    new-instance v0, Landroid/support/transition/AutoTransitionPort;

    invoke-direct {v0}, Landroid/support/transition/AutoTransitionPort;-><init>()V

    sput-object v0, Landroid/support/transition/TransitionManagerPort;->sDefaultTransition:Landroid/support/transition/TransitionPort;

    .line 42
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/transition/TransitionManagerPort;->sRunningTransitions:Ljava/lang/ThreadLocal;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/support/transition/TransitionManagerPort;->sPendingTransitions:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionManagerPort;->mSceneTransitions:Landroid/support/v4/util/ArrayMap;

    .line 48
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionManagerPort;->mScenePairTransitions:Landroid/support/v4/util/ArrayMap;

    .line 51
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionManagerPort;->mSceneNameTransitions:Landroid/support/v4/util/ArrayMap;

    .line 53
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionManagerPort;->mNameSceneTransitions:Landroid/support/v4/util/ArrayMap;

    .line 376
    return-void
.end method

.method public static beginDelayedTransition(Landroid/view/ViewGroup;)V
    .registers 2
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/support/transition/TransitionManagerPort;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/support/transition/TransitionPort;)V

    .line 165
    return-void
.end method

.method public static beginDelayedTransition(Landroid/view/ViewGroup;Landroid/support/transition/TransitionPort;)V
    .registers 4
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "transition"    # Landroid/support/transition/TransitionPort;

    .prologue
    .line 169
    sget-object v1, Landroid/support/transition/TransitionManagerPort;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 174
    sget-object v1, Landroid/support/transition/TransitionManagerPort;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    if-nez p1, :cond_17

    .line 176
    sget-object p1, Landroid/support/transition/TransitionManagerPort;->sDefaultTransition:Landroid/support/transition/TransitionPort;

    .line 178
    :cond_17
    invoke-virtual {p1}, Landroid/support/transition/TransitionPort;->clone()Landroid/support/transition/TransitionPort;

    move-result-object v0

    .line 179
    .local v0, "transitionClone":Landroid/support/transition/TransitionPort;
    invoke-static {p0, v0}, Landroid/support/transition/TransitionManagerPort;->sceneChangeSetup(Landroid/view/ViewGroup;Landroid/support/transition/TransitionPort;)V

    .line 180
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/support/transition/ScenePort;->setCurrentScene(Landroid/view/View;Landroid/support/transition/ScenePort;)V

    .line 181
    invoke-static {p0, v0}, Landroid/support/transition/TransitionManagerPort;->sceneChangeRunTransition(Landroid/view/ViewGroup;Landroid/support/transition/TransitionPort;)V

    .line 183
    .end local v0    # "transitionClone":Landroid/support/transition/TransitionPort;
    :cond_25
    return-void
.end method

.method private static changeScene(Landroid/support/transition/ScenePort;Landroid/support/transition/TransitionPort;)V
    .registers 6
    .param p0, "scene"    # Landroid/support/transition/ScenePort;
    .param p1, "transition"    # Landroid/support/transition/TransitionPort;

    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/support/transition/ScenePort;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v1

    .line 95
    .local v1, "sceneRoot":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .line 96
    .local v2, "transitionClone":Landroid/support/transition/TransitionPort;
    if-eqz p1, :cond_e

    .line 97
    invoke-virtual {p1}, Landroid/support/transition/TransitionPort;->clone()Landroid/support/transition/TransitionPort;

    move-result-object v2

    .line 98
    invoke-virtual {v2, v1}, Landroid/support/transition/TransitionPort;->setSceneRoot(Landroid/view/ViewGroup;)Landroid/support/transition/TransitionPort;

    .line 101
    :cond_e
    invoke-static {v1}, Landroid/support/transition/ScenePort;->getCurrentScene(Landroid/view/View;)Landroid/support/transition/ScenePort;

    move-result-object v0

    .line 102
    .local v0, "oldScene":Landroid/support/transition/ScenePort;
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/support/transition/ScenePort;->isCreatedFromLayoutResource()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 103
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/transition/TransitionPort;->setCanRemoveViews(Z)V

    .line 106
    :cond_1e
    invoke-static {v1, v2}, Landroid/support/transition/TransitionManagerPort;->sceneChangeSetup(Landroid/view/ViewGroup;Landroid/support/transition/TransitionPort;)V

    .line 108
    invoke-virtual {p0}, Landroid/support/transition/ScenePort;->enter()V

    .line 110
    invoke-static {v1, v2}, Landroid/support/transition/TransitionManagerPort;->sceneChangeRunTransition(Landroid/view/ViewGroup;Landroid/support/transition/TransitionPort;)V

    .line 111
    return-void
.end method

.method public static getDefaultTransition()Landroid/support/transition/TransitionPort;
    .registers 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 65
    sget-object v0, Landroid/support/transition/TransitionManagerPort;->sDefaultTransition:Landroid/support/transition/TransitionPort;

    return-object v0
.end method

.method static getRunningTransitions()Landroid/support/v4/util/ArrayMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/TransitionPort;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 114
    sget-object v2, Landroid/support/transition/TransitionManagerPort;->sRunningTransitions:Ljava/lang/ThreadLocal;

    .line 115
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 116
    .local v0, "runningTransitions":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v4/util/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroid/support/transition/TransitionPort;>;>;>;"
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1f

    .line 117
    :cond_10
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 118
    .local v1, "transitions":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroid/support/transition/TransitionPort;>;>;"
    new-instance v0, Ljava/lang/ref/WeakReference;

    .end local v0    # "runningTransitions":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v4/util/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroid/support/transition/TransitionPort;>;>;>;"
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 119
    .restart local v0    # "runningTransitions":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v4/util/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroid/support/transition/TransitionPort;>;>;>;"
    sget-object v2, Landroid/support/transition/TransitionManagerPort;->sRunningTransitions:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 121
    .end local v1    # "transitions":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroid/support/transition/TransitionPort;>;>;"
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/util/ArrayMap;

    return-object v2
.end method

.method private getTransition(Landroid/support/transition/ScenePort;)Landroid/support/transition/TransitionPort;
    .registers 7
    .param p1, "scene"    # Landroid/support/transition/ScenePort;

    .prologue
    .line 210
    invoke-virtual {p1}, Landroid/support/transition/ScenePort;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v1

    .line 211
    .local v1, "sceneRoot":Landroid/view/ViewGroup;
    if-eqz v1, :cond_20

    .line 213
    invoke-static {v1}, Landroid/support/transition/ScenePort;->getCurrentScene(Landroid/view/View;)Landroid/support/transition/ScenePort;

    move-result-object v0

    .line 214
    .local v0, "currScene":Landroid/support/transition/ScenePort;
    if-eqz v0, :cond_20

    .line 215
    iget-object v4, p0, Landroid/support/transition/TransitionManagerPort;->mScenePairTransitions:Landroid/support/v4/util/ArrayMap;

    .line 216
    invoke-virtual {v4, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/util/ArrayMap;

    .line 217
    .local v2, "sceneTransitionMap":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/support/transition/ScenePort;Landroid/support/transition/TransitionPort;>;"
    if-eqz v2, :cond_20

    .line 218
    invoke-virtual {v2, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/TransitionPort;

    .line 219
    .local v3, "transition":Landroid/support/transition/TransitionPort;
    if-eqz v3, :cond_20

    move-object v4, v3

    .line 226
    .end local v0    # "currScene":Landroid/support/transition/ScenePort;
    .end local v2    # "sceneTransitionMap":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/support/transition/ScenePort;Landroid/support/transition/TransitionPort;>;"
    :goto_1f
    return-object v4

    .line 225
    .end local v3    # "transition":Landroid/support/transition/TransitionPort;
    :cond_20
    iget-object v4, p0, Landroid/support/transition/TransitionManagerPort;->mSceneTransitions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/TransitionPort;

    .line 226
    .restart local v3    # "transition":Landroid/support/transition/TransitionPort;
    if-eqz v3, :cond_2c

    move-object v4, v3

    goto :goto_1f

    :cond_2c
    sget-object v4, Landroid/support/transition/TransitionManagerPort;->sDefaultTransition:Landroid/support/transition/TransitionPort;

    goto :goto_1f
.end method

.method public static go(Landroid/support/transition/ScenePort;)V
    .registers 2
    .param p0, "scene"    # Landroid/support/transition/ScenePort;

    .prologue
    .line 156
    sget-object v0, Landroid/support/transition/TransitionManagerPort;->sDefaultTransition:Landroid/support/transition/TransitionPort;

    invoke-static {p0, v0}, Landroid/support/transition/TransitionManagerPort;->changeScene(Landroid/support/transition/ScenePort;Landroid/support/transition/TransitionPort;)V

    .line 157
    return-void
.end method

.method public static go(Landroid/support/transition/ScenePort;Landroid/support/transition/TransitionPort;)V
    .registers 2
    .param p0, "scene"    # Landroid/support/transition/ScenePort;
    .param p1, "transition"    # Landroid/support/transition/TransitionPort;

    .prologue
    .line 160
    invoke-static {p0, p1}, Landroid/support/transition/TransitionManagerPort;->changeScene(Landroid/support/transition/ScenePort;Landroid/support/transition/TransitionPort;)V

    .line 161
    return-void
.end method

.method private static sceneChangeRunTransition(Landroid/view/ViewGroup;Landroid/support/transition/TransitionPort;)V
    .registers 4
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "transition"    # Landroid/support/transition/TransitionPort;

    .prologue
    .line 126
    if-eqz p1, :cond_13

    if-eqz p0, :cond_13

    .line 127
    new-instance v0, Landroid/support/transition/TransitionManagerPort$MultiListener;

    invoke-direct {v0, p1, p0}, Landroid/support/transition/TransitionManagerPort$MultiListener;-><init>(Landroid/support/transition/TransitionPort;Landroid/view/ViewGroup;)V

    .line 128
    .local v0, "listener":Landroid/support/transition/TransitionManagerPort$MultiListener;
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 129
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 131
    .end local v0    # "listener":Landroid/support/transition/TransitionManagerPort$MultiListener;
    :cond_13
    return-void
.end method

.method private static sceneChangeSetup(Landroid/view/ViewGroup;Landroid/support/transition/TransitionPort;)V
    .registers 7
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "transition"    # Landroid/support/transition/TransitionPort;

    .prologue
    .line 136
    invoke-static {}, Landroid/support/transition/TransitionManagerPort;->getRunningTransitions()Landroid/support/v4/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 138
    .local v2, "runningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionPort;>;"
    if-eqz v2, :cond_26

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_26

    .line 139
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/TransitionPort;

    .line 140
    .local v1, "runningTransition":Landroid/support/transition/TransitionPort;
    invoke-virtual {v1, p0}, Landroid/support/transition/TransitionPort;->pause(Landroid/view/View;)V

    goto :goto_16

    .line 144
    .end local v1    # "runningTransition":Landroid/support/transition/TransitionPort;
    :cond_26
    if-eqz p1, :cond_2c

    .line 145
    const/4 v3, 0x1

    invoke-virtual {p1, p0, v3}, Landroid/support/transition/TransitionPort;->captureValues(Landroid/view/ViewGroup;Z)V

    .line 149
    :cond_2c
    invoke-static {p0}, Landroid/support/transition/ScenePort;->getCurrentScene(Landroid/view/View;)Landroid/support/transition/ScenePort;

    move-result-object v0

    .line 150
    .local v0, "previousScene":Landroid/support/transition/ScenePort;
    if-eqz v0, :cond_35

    .line 151
    invoke-virtual {v0}, Landroid/support/transition/ScenePort;->exit()V

    .line 153
    :cond_35
    return-void
.end method


# virtual methods
.method public getNamedTransition(Landroid/support/transition/ScenePort;Ljava/lang/String;)Landroid/support/transition/TransitionPort;
    .registers 5
    .param p1, "fromScene"    # Landroid/support/transition/ScenePort;
    .param p2, "toName"    # Ljava/lang/String;

    .prologue
    .line 275
    iget-object v1, p0, Landroid/support/transition/TransitionManagerPort;->mSceneNameTransitions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/ArrayMap;

    .line 276
    .local v0, "m":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/support/transition/TransitionPort;>;"
    if-eqz v0, :cond_11

    .line 277
    invoke-virtual {v0, p2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/TransitionPort;

    .line 279
    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public getNamedTransition(Ljava/lang/String;Landroid/support/transition/ScenePort;)Landroid/support/transition/TransitionPort;
    .registers 5
    .param p1, "fromName"    # Ljava/lang/String;
    .param p2, "toScene"    # Landroid/support/transition/ScenePort;

    .prologue
    .line 248
    iget-object v1, p0, Landroid/support/transition/TransitionManagerPort;->mNameSceneTransitions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/ArrayMap;

    .line 249
    .local v0, "m":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/support/transition/ScenePort;Landroid/support/transition/TransitionPort;>;"
    if-eqz v0, :cond_11

    .line 250
    invoke-virtual {v0, p2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/TransitionPort;

    .line 252
    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public getTargetSceneNames(Landroid/support/transition/ScenePort;)[Ljava/lang/String;
    .registers 7
    .param p1, "fromScene"    # Landroid/support/transition/ScenePort;

    .prologue
    .line 300
    iget-object v4, p0, Landroid/support/transition/TransitionManagerPort;->mSceneNameTransitions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/util/ArrayMap;

    .line 301
    .local v2, "m":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/support/transition/TransitionPort;>;"
    if-nez v2, :cond_d

    .line 302
    sget-object v3, Landroid/support/transition/TransitionManagerPort;->EMPTY_STRINGS:[Ljava/lang/String;

    .line 309
    :cond_c
    return-object v3

    .line 304
    :cond_d
    invoke-virtual {v2}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    .line 305
    .local v0, "count":I
    new-array v3, v0, [Ljava/lang/String;

    .line 306
    .local v3, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    if-ge v1, v0, :cond_c

    .line 307
    invoke-virtual {v2, v1}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v3, v1

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_14
.end method

.method public setDefaultTransition(Landroid/support/transition/TransitionPort;)V
    .registers 2
    .param p1, "transition"    # Landroid/support/transition/TransitionPort;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 78
    sput-object p1, Landroid/support/transition/TransitionManagerPort;->sDefaultTransition:Landroid/support/transition/TransitionPort;

    .line 79
    return-void
.end method

.method public setTransition(Landroid/support/transition/ScenePort;Landroid/support/transition/ScenePort;Landroid/support/transition/TransitionPort;)V
    .registers 6
    .param p1, "fromScene"    # Landroid/support/transition/ScenePort;
    .param p2, "toScene"    # Landroid/support/transition/ScenePort;
    .param p3, "transition"    # Landroid/support/transition/TransitionPort;

    .prologue
    .line 190
    iget-object v1, p0, Landroid/support/transition/TransitionManagerPort;->mScenePairTransitions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/ArrayMap;

    .line 191
    .local v0, "sceneTransitionMap":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/support/transition/ScenePort;Landroid/support/transition/TransitionPort;>;"
    if-nez v0, :cond_14

    .line 192
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    .end local v0    # "sceneTransitionMap":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/support/transition/ScenePort;Landroid/support/transition/TransitionPort;>;"
    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 193
    .restart local v0    # "sceneTransitionMap":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/support/transition/ScenePort;Landroid/support/transition/TransitionPort;>;"
    iget-object v1, p0, Landroid/support/transition/TransitionManagerPort;->mScenePairTransitions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_14
    invoke-virtual {v0, p1, p3}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    return-void
.end method

.method public setTransition(Landroid/support/transition/ScenePort;Landroid/support/transition/TransitionPort;)V
    .registers 4
    .param p1, "scene"    # Landroid/support/transition/ScenePort;
    .param p2, "transition"    # Landroid/support/transition/TransitionPort;

    .prologue
    .line 186
    iget-object v0, p0, Landroid/support/transition/TransitionManagerPort;->mSceneTransitions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    return-void
.end method

.method public setTransition(Landroid/support/transition/ScenePort;Ljava/lang/String;Landroid/support/transition/TransitionPort;)V
    .registers 6
    .param p1, "fromScene"    # Landroid/support/transition/ScenePort;
    .param p2, "toName"    # Ljava/lang/String;
    .param p3, "transition"    # Landroid/support/transition/TransitionPort;

    .prologue
    .line 329
    iget-object v1, p0, Landroid/support/transition/TransitionManagerPort;->mSceneNameTransitions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/ArrayMap;

    .line 330
    .local v0, "m":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/support/transition/TransitionPort;>;"
    if-nez v0, :cond_14

    .line 331
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    .end local v0    # "m":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/support/transition/TransitionPort;>;"
    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 332
    .restart local v0    # "m":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/support/transition/TransitionPort;>;"
    iget-object v1, p0, Landroid/support/transition/TransitionManagerPort;->mSceneNameTransitions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_14
    invoke-virtual {v0, p2, p3}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    return-void
.end method

.method public setTransition(Ljava/lang/String;Landroid/support/transition/ScenePort;Landroid/support/transition/TransitionPort;)V
    .registers 6
    .param p1, "fromName"    # Ljava/lang/String;
    .param p2, "toScene"    # Landroid/support/transition/ScenePort;
    .param p3, "transition"    # Landroid/support/transition/TransitionPort;

    .prologue
    .line 354
    iget-object v1, p0, Landroid/support/transition/TransitionManagerPort;->mNameSceneTransitions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/ArrayMap;

    .line 355
    .local v0, "m":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/support/transition/ScenePort;Landroid/support/transition/TransitionPort;>;"
    if-nez v0, :cond_14

    .line 356
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    .end local v0    # "m":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/support/transition/ScenePort;Landroid/support/transition/TransitionPort;>;"
    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 357
    .restart local v0    # "m":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/support/transition/ScenePort;Landroid/support/transition/TransitionPort;>;"
    iget-object v1, p0, Landroid/support/transition/TransitionManagerPort;->mNameSceneTransitions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    :cond_14
    invoke-virtual {v0, p2, p3}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    return-void
.end method

.method public transitionTo(Landroid/support/transition/ScenePort;)V
    .registers 3
    .param p1, "scene"    # Landroid/support/transition/ScenePort;

    .prologue
    .line 365
    invoke-direct {p0, p1}, Landroid/support/transition/TransitionManagerPort;->getTransition(Landroid/support/transition/ScenePort;)Landroid/support/transition/TransitionPort;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/transition/TransitionManagerPort;->changeScene(Landroid/support/transition/ScenePort;Landroid/support/transition/TransitionPort;)V

    .line 366
    return-void
.end method
