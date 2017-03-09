.class public Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;
.super Ljava/lang/Object;
.source "KeepScreenOnHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper$InternalPresenterListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mKeepScreenOn:Z

.field private final mPresenterListener:Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper$InternalPresenterListener;

.field private mVideoSurfacePresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

.field private final mWindow:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-class v0, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/Window;)V
    .registers 4
    .param p1, "window"    # Landroid/view/Window;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;->mKeepScreenOn:Z

    .line 30
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;->mWindow:Landroid/view/Window;

    .line 31
    new-instance v0, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper$InternalPresenterListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper$InternalPresenterListener;-><init>(Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper$1;)V

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;->mPresenterListener:Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper$InternalPresenterListener;

    .line 32
    return-void
.end method

.method static synthetic access$100(Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;->updateKeepScreenOnFlags(Z)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private updateKeepScreenOnFlags(Z)V
    .registers 6
    .param p1, "keepScreenOn"    # Z

    .prologue
    const/16 v3, 0x80

    .line 40
    iget-boolean v0, p0, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;->mKeepScreenOn:Z

    if-ne v0, p1, :cond_7

    .line 53
    :goto_6
    return-void

    .line 44
    :cond_7
    iput-boolean p1, p0, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;->mKeepScreenOn:Z

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".updateKeepScreenOnFlags"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings windows flag. keepScreenOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;->mKeepScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-boolean v0, p0, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;->mKeepScreenOn:Z

    if-eqz v0, :cond_40

    .line 49
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    goto :goto_6

    .line 51
    :cond_40
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_6
.end method


# virtual methods
.method public attachTo(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;)V
    .registers 3
    .param p1, "presenter"    # Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 61
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;->mPresenterListener:Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper$InternalPresenterListener;

    invoke-virtual {p1, v0}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->addListener(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;)V

    .line 62
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;->mVideoSurfacePresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    .line 63
    return-void
.end method

.method public detachFromPresenter()V
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;->mVideoSurfacePresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    if-eqz v0, :cond_12

    .line 74
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;->mVideoSurfacePresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;->mPresenterListener:Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper$InternalPresenterListener;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->removeListener(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;)V

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;->updateKeepScreenOnFlags(Z)V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;->mVideoSurfacePresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    .line 78
    :cond_12
    return-void
.end method

.method public isAttached()Z
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/KeepScreenOnHelper;->mVideoSurfacePresenter:Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
