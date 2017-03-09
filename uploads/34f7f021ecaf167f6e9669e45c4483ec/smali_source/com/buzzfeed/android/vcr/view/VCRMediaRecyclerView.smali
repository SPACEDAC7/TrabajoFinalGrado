.class public Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "VCRMediaRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalPlayerEventListener;,
        Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalAutoFocusChangeListener;,
        Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalAutoFocusStrategy;,
        Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;,
        Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$AutoPlayDelegate;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAutoFocusController:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

.field private mAutoPlayDelegate:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$AutoPlayDelegate;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCurrentFocusedViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mKeepScreenOnWhilePlaying:Z

.field private mNeedStartAutoFocus:Z

.field private mPlaybackStateListener:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mPlayerControl:Lcom/buzzfeed/android/vcr/player/VCRPlayerControl;

.field private mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-class v0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    iput-boolean v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mNeedStartAutoFocus:Z

    .line 93
    iput-boolean v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mKeepScreenOnWhilePlaying:Z

    .line 109
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->initialize()V

    .line 110
    return-void
.end method

.method static synthetic access$300(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;)Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$AutoPlayDelegate;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mAutoPlayDelegate:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$AutoPlayDelegate;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mCurrentFocusedViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method static synthetic access$502(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;
    .param p1, "x1"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mCurrentFocusedViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method static synthetic access$600(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;)Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->updateKeepScreenOnFlags(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;)Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mPlaybackStateListener:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;

    return-object v0
.end method

.method private attachAutoFocusControllerIfNeeded()V
    .registers 2

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mAutoFocusController:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    .line 173
    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->isAttached()Z

    move-result v0

    if-nez v0, :cond_15

    .line 174
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mAutoFocusController:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    invoke-virtual {v0, p0}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->attachView(Landroid/support/v7/widget/RecyclerView;)V

    .line 176
    :cond_15
    return-void
.end method

.method private setupAndStartAutoFocusControllerIfNeeded()V
    .registers 2

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->attachAutoFocusControllerIfNeeded()V

    .line 164
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_f

    .line 165
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mAutoFocusController:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->start()V

    .line 169
    :goto_e
    return-void

    .line 167
    :cond_f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mNeedStartAutoFocus:Z

    goto :goto_e
.end method

.method private updateKeepScreenOnFlags(Z)V
    .registers 4
    .param p1, "keepScreenOn"    # Z

    .prologue
    .line 326
    iget-boolean v1, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mKeepScreenOnWhilePlaying:Z

    if-eqz v1, :cond_11

    if-eqz p1, :cond_11

    const/4 v0, 0x1

    .line 327
    .local v0, "shouldKeepScreenOn":Z
    :goto_7
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->getKeepScreenOn()Z

    move-result v1

    if-eq v1, v0, :cond_10

    .line 328
    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->setKeepScreenOn(Z)V

    .line 330
    :cond_10
    return-void

    .line 326
    .end local v0    # "shouldKeepScreenOn":Z
    :cond_11
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public addOnFocusChangeListener(Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$OnFocusChangeListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$OnFocusChangeListener;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mAutoFocusController:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->addOnFocusChangeListener(Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$OnFocusChangeListener;)V

    .line 229
    return-void
.end method

.method public addPlayerEventListener(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;)V
    .registers 3
    .param p1, "listener"    # Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->addListener(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;)V

    .line 248
    return-void
.end method

.method public getAutoFocusController()Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mAutoFocusController:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    return-object v0
.end method

.method public getCurrentFocusedViewHolder()Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mCurrentFocusedViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method public getPlayerControl()Lcom/buzzfeed/android/vcr/player/VCRPlayerControl;
    .registers 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mPlayerControl:Lcom/buzzfeed/android/vcr/player/VCRPlayerControl;

    return-object v0
.end method

.method public getVideoPlayerPresenter()Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;
    .registers 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    return-object v0
.end method

.method protected initialize()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 113
    new-instance v0, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    .line 114
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    new-instance v1, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalPlayerEventListener;

    invoke-direct {v1, p0, v2}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalPlayerEventListener;-><init>(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$1;)V

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->addListener(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;)V

    .line 116
    new-instance v0, Lcom/buzzfeed/android/vcr/player/VCRPlayerControl;

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/vcr/player/VCRPlayerControl;-><init>(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;)V

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mPlayerControl:Lcom/buzzfeed/android/vcr/player/VCRPlayerControl;

    .line 118
    new-instance v0, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    invoke-direct {v0}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mAutoFocusController:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    .line 119
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mAutoFocusController:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    new-instance v1, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalAutoFocusChangeListener;

    invoke-direct {v1, p0, v2}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalAutoFocusChangeListener;-><init>(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$1;)V

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->addOnFocusChangeListener(Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$OnFocusChangeListener;)V

    .line 120
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mAutoFocusController:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    new-instance v1, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalAutoFocusStrategy;

    invoke-direct {v1, p0, v2}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalAutoFocusStrategy;-><init>(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$1;)V

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->setAutoFocusStrategy(Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$AutoFocusStrategy;)V

    .line 121
    return-void
.end method

.method public isPlaybackAudioMuted()Z
    .registers 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->isAudioMuted()Z

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mAutoFocusController:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 126
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mAutoFocusController:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->detachView()V

    .line 128
    :cond_d
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onDetachedFromWindow()V

    .line 129
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 155
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/RecyclerView;->onLayout(ZIIII)V

    .line 156
    iget-boolean v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mNeedStartAutoFocus:Z

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_15

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mNeedStartAutoFocus:Z

    .line 158
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mAutoFocusController:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->start()V

    .line 160
    :cond_15
    return-void
.end method

.method public removeOnFocusChangeListener(Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$OnFocusChangeListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$OnFocusChangeListener;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mAutoFocusController:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->removeOnFocusChangeListener(Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$OnFocusChangeListener;)V

    .line 238
    return-void
.end method

.method public removePlayerEventListener(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;)V
    .registers 3
    .param p1, "listener"    # Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->removeListener(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter$Listener;)V

    .line 257
    return-void
.end method

.method public setAutoFocusStrategy(Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$AutoFocusStrategy;)V
    .registers 3
    .param p1, "strategy"    # Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$AutoFocusStrategy;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mAutoFocusController:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->setAutoFocusStrategy(Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$AutoFocusStrategy;)V

    .line 219
    return-void
.end method

.method public setAutoPlayDelegate(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$AutoPlayDelegate;)V
    .registers 2
    .param p1, "delegate"    # Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$AutoPlayDelegate;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 199
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mAutoPlayDelegate:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$AutoPlayDelegate;

    .line 200
    return-void
.end method

.method public setCurrentFocusedViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 191
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mCurrentFocusedViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 192
    return-void
.end method

.method public setKeepScreenOnWhilePlaying(Z)V
    .registers 3
    .param p1, "keepScreenOn"    # Z

    .prologue
    .line 318
    iput-boolean p1, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mKeepScreenOnWhilePlaying:Z

    .line 320
    iget-boolean v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mKeepScreenOnWhilePlaying:Z

    if-nez v0, :cond_a

    .line 321
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->updateKeepScreenOnFlags(Z)V

    .line 323
    :cond_a
    return-void
.end method

.method public setPlaybackAudioMuted(Z)V
    .registers 3
    .param p1, "muted"    # Z

    .prologue
    .line 300
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->setAudioMuted(Z)V

    .line 301
    return-void
.end method

.method public setPlaybackDebugLoggingEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 281
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->setDebugLoggingEnabled(Z)V

    .line 282
    return-void
.end method

.method public setPlaybackPositionCache(Lcom/buzzfeed/android/vcr/toolbox/PositionCache;)V
    .registers 3
    .param p1, "positionCache"    # Lcom/buzzfeed/android/vcr/toolbox/PositionCache;

    .prologue
    .line 291
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->setPositionCache(Lcom/buzzfeed/android/vcr/toolbox/PositionCache;)V

    .line 292
    return-void
.end method

.method public setPlaybackStateListener(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 208
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mPlaybackStateListener:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;

    .line 209
    return-void
.end method

.method public startMediaComponents()V
    .registers 2

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->setupAndStartAutoFocusControllerIfNeeded()V

    .line 136
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->play()V

    .line 137
    return-void
.end method

.method public stopMediaComponents()V
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mAutoFocusController:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 144
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mAutoFocusController:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->stop()V

    .line 146
    :cond_d
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->release()V

    .line 147
    return-void
.end method
