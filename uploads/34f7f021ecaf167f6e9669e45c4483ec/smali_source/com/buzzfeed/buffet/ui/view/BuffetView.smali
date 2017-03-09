.class public Lcom/buzzfeed/buffet/ui/view/BuffetView;
.super Landroid/widget/FrameLayout;
.source "BuffetView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/buffet/ui/view/BuffetView$BuffetAutoFocusStrategy;
    }
.end annotation


# static fields
.field private static final SMOOTH_SCROLL_SNAP_POSITION:I = 0xf

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;

.field private mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

.field private mIsShowsFeed:Z

.field private mProgressSpinner:Landroid/widget/ProgressBar;

.field private mRecyclerView:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const-class v0, Lcom/buzzfeed/buffet/ui/view/BuffetView;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    sget v0, Lcom/buzzfeed/buffet/R$layout;->buffet_view:I

    invoke-static {p1, v0, p0}, Lcom/buzzfeed/buffet/ui/view/BuffetView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 59
    return-void
.end method

.method static synthetic access$100(Lcom/buzzfeed/buffet/ui/view/BuffetView;)Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/buffet/ui/view/BuffetView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mAdapter:Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;

    return-object v0
.end method

.method private configureDecorations()V
    .registers 6

    .prologue
    .line 92
    iget-boolean v2, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mIsShowsFeed:Z

    if-eqz v2, :cond_21

    .line 93
    invoke-virtual {p0}, Lcom/buzzfeed/buffet/ui/view/BuffetView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/buzzfeed/buffet/R$dimen;->buffet_show_card_margins:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 94
    .local v1, "margin":I
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mRecyclerView:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    new-instance v3, Lcom/buzzfeed/buffet/ui/itemdecoration/ShowsItemDecoration;

    invoke-direct {p0}, Lcom/buzzfeed/buffet/ui/view/BuffetView;->getColumnCount()I

    move-result v4

    invoke-direct {v3, v4, v1}, Lcom/buzzfeed/buffet/ui/itemdecoration/ShowsItemDecoration;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 100
    :goto_20
    return-void

    .line 96
    .end local v1    # "margin":I
    :cond_21
    invoke-virtual {p0}, Lcom/buzzfeed/buffet/ui/view/BuffetView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/buzzfeed/buffet/R$dimen;->buffet_gutter:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 97
    .local v0, "gutter":I
    invoke-virtual {p0}, Lcom/buzzfeed/buffet/ui/view/BuffetView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/buzzfeed/buffet/R$dimen;->buffet_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 98
    .restart local v1    # "margin":I
    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mRecyclerView:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    new-instance v3, Lcom/buzzfeed/buffet/ui/itemdecoration/BuffetItemDecoration;

    invoke-direct {v3, v0, v1}, Lcom/buzzfeed/buffet/ui/itemdecoration/BuffetItemDecoration;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    goto :goto_20
.end method

.method private configureRecyclerView()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 103
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/buzzfeed/buffet/ui/view/BuffetView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/buzzfeed/buffet/ui/view/BuffetView;->getColumnCount()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    .line 104
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/GridLayoutManager;->setRecycleChildrenOnDetach(Z)V

    .line 105
    invoke-direct {p0}, Lcom/buzzfeed/buffet/ui/view/BuffetView;->configureDecorations()V

    .line 106
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mRecyclerView:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 107
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mRecyclerView:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    new-instance v1, Lcom/buzzfeed/buffet/ui/listener/VideoCardPlaybackStateHandler;

    invoke-direct {v1}, Lcom/buzzfeed/buffet/ui/listener/VideoCardPlaybackStateHandler;-><init>()V

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->setPlaybackStateListener(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$PlaybackStateListener;)V

    .line 108
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mRecyclerView:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    new-instance v1, Lcom/buzzfeed/buffet/ui/view/BuffetView$BuffetAutoFocusStrategy;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/buzzfeed/buffet/ui/view/BuffetView$BuffetAutoFocusStrategy;-><init>(Lcom/buzzfeed/buffet/ui/view/BuffetView;Lcom/buzzfeed/buffet/ui/view/BuffetView$1;)V

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->setAutoFocusStrategy(Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$AutoFocusStrategy;)V

    .line 109
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mRecyclerView:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    new-instance v1, Lcom/buzzfeed/buffet/ui/listener/BuffetAutoPlayDelegate;

    invoke-direct {v1}, Lcom/buzzfeed/buffet/ui/listener/BuffetAutoPlayDelegate;-><init>()V

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->setAutoPlayDelegate(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$AutoPlayDelegate;)V

    .line 110
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mRecyclerView:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    invoke-virtual {v0, v3}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->setKeepScreenOnWhilePlaying(Z)V

    .line 111
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mRecyclerView:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    invoke-virtual {v0, v3}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->setPlaybackAudioMuted(Z)V

    .line 112
    return-void
.end method

.method private getColumnCount()I
    .registers 3

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mIsShowsFeed:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/buzzfeed/buffet/ui/view/BuffetView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/buzzfeed/buffet/R$integer;->buffet_show_card_columns:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x2

    goto :goto_e
.end method

.method private setupSpanSize()V
    .registers 3

    .prologue
    .line 125
    new-instance v0, Lcom/buzzfeed/buffet/ui/view/BuffetView$1;

    invoke-direct {v0, p0}, Lcom/buzzfeed/buffet/ui/view/BuffetView$1;-><init>(Lcom/buzzfeed/buffet/ui/view/BuffetView;)V

    .line 149
    .local v0, "spanSizeLookup":Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->setSpanIndexCacheEnabled(Z)V

    .line 150
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 151
    return-void
.end method


# virtual methods
.method public appendItems(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/FlowItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "flowItemList":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/toolkit/content/FlowItem;>;"
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mAdapter:Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;

    if-eqz v0, :cond_9

    .line 181
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mAdapter:Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;->appendItems(Ljava/util/List;)V

    .line 183
    :cond_9
    return-void
.end method

.method public getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .registers 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mAdapter:Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;

    return-object v0
.end method

.method public getFlowList()Lcom/buzzfeed/toolkit/content/FlowList;
    .registers 3

    .prologue
    .line 267
    new-instance v0, Lcom/buzzfeed/toolkit/content/FlowList;

    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mAdapter:Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;

    invoke-virtual {v1}, Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/buzzfeed/toolkit/content/FlowList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mAdapter:Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;

    if-eqz v0, :cond_b

    .line 193
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mAdapter:Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;->getItemCount()I

    move-result v0

    .line 195
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getMediaPlayerControl()Lcom/buzzfeed/android/vcr/player/VCRPlayerControl;
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mRecyclerView:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->getPlayerControl()Lcom/buzzfeed/android/vcr/player/VCRPlayerControl;

    move-result-object v0

    return-object v0
.end method

.method public getRecyclerView()Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mRecyclerView:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    return-object v0
.end method

.method public getVideoPlayerPresenter()Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;
    .registers 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mRecyclerView:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->getVideoPlayerPresenter()Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    .line 80
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 81
    sget v0, Lcom/buzzfeed/buffet/R$id;->progressBar:I

    invoke-static {p0, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mProgressSpinner:Landroid/widget/ProgressBar;

    .line 82
    sget v0, Lcom/buzzfeed/buffet/R$id;->recyclerView:I

    invoke-static {p0, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mRecyclerView:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    .line 83
    invoke-virtual {p0}, Lcom/buzzfeed/buffet/ui/view/BuffetView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mProgressSpinner:Landroid/widget/ProgressBar;

    sget v2, Lcom/buzzfeed/buffet/R$color;->buzzfeed_blue:I

    invoke-static {v0, v1, v2}, Lcom/buzzfeed/toolkit/util/UIUtil;->tintProgressBar(Landroid/content/Context;Landroid/widget/ProgressBar;I)V

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/buffet/ui/view/BuffetView;->setSpinnerVisible(Z)V

    .line 85
    return-void
.end method

.method public removeItemAt(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 186
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mAdapter:Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;

    if-eqz v0, :cond_9

    .line 187
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mAdapter:Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;->removeItemAt(I)V

    .line 189
    :cond_9
    return-void
.end method

.method public setAdapter(Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;)V
    .registers 4
    .param p1, "adapter"    # Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mAdapter:Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;

    .line 116
    invoke-direct {p0}, Lcom/buzzfeed/buffet/ui/view/BuffetView;->configureRecyclerView()V

    .line 117
    invoke-direct {p0}, Lcom/buzzfeed/buffet/ui/view/BuffetView;->setupSpanSize()V

    .line 118
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mRecyclerView:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mAdapter:Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 119
    return-void
.end method

.method public setBuffetEventListener(Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mAdapter:Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;

    const-string v1, "You must set an adapter before calling setBuffetEventListener!"

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mAdapter:Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;->setBuffetEventListener(Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;)V

    .line 64
    return-void
.end method

.method public setIsShowsFeed(Z)V
    .registers 2
    .param p1, "isShowsFeed"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mIsShowsFeed:Z

    .line 76
    return-void
.end method

.method public setList(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/FlowItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "flowItemList":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/toolkit/content/FlowItem;>;"
    invoke-virtual {p0, p1}, Lcom/buzzfeed/buffet/ui/view/BuffetView;->updateList(Ljava/util/List;)V

    .line 158
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mRecyclerView:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->scrollToPosition(I)V

    .line 159
    return-void
.end method

.method public setMediaPlaybackDebuggingEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 234
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mRecyclerView:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->setPlaybackDebugLoggingEnabled(Z)V

    .line 235
    return-void
.end method

.method public setMediaPlaybackPositionCache(Lcom/buzzfeed/android/vcr/toolbox/PositionCache;)V
    .registers 3
    .param p1, "positionCache"    # Lcom/buzzfeed/android/vcr/toolbox/PositionCache;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 227
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mRecyclerView:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->setPlaybackPositionCache(Lcom/buzzfeed/android/vcr/toolbox/PositionCache;)V

    .line 228
    return-void
.end method

.method public setRecycledViewPool(Landroid/support/v7/widget/RecyclerView$RecycledViewPool;)V
    .registers 3
    .param p1, "recycledViewPool"    # Landroid/support/v7/widget/RecyclerView$RecycledViewPool;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 220
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mRecyclerView:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->setRecycledViewPool(Landroid/support/v7/widget/RecyclerView$RecycledViewPool;)V

    .line 221
    return-void
.end method

.method public setSpinnerVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .prologue
    .line 67
    if-eqz p1, :cond_9

    .line 68
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mProgressSpinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 72
    :goto_8
    return-void

    .line 70
    :cond_9
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mProgressSpinner:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_8
.end method

.method public smoothScrollToTop()V
    .registers 4

    .prologue
    const/16 v2, 0xf

    .line 204
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v1, :cond_19

    .line 205
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 207
    .local v0, "visiblePosition":I
    if-le v0, v2, :cond_13

    .line 208
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mRecyclerView:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->scrollToPosition(I)V

    .line 211
    :cond_13
    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mRecyclerView:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->smoothScrollToPosition(I)V

    .line 213
    .end local v0    # "visiblePosition":I
    :cond_19
    return-void
.end method

.method public startMediaComponents()V
    .registers 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mRecyclerView:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->startMediaComponents()V

    .line 243
    return-void
.end method

.method public stopMediaComponents()V
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mRecyclerView:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->stopMediaComponents()V

    .line 250
    return-void
.end method

.method public updateItemAt(ILcom/buzzfeed/toolkit/content/FlowItem;)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "flowItem"    # Lcom/buzzfeed/toolkit/content/FlowItem;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mAdapter:Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;

    if-eqz v0, :cond_9

    .line 175
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mAdapter:Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;->updateItem(ILcom/buzzfeed/toolkit/content/FlowItem;)V

    .line 177
    :cond_9
    return-void
.end method

.method public updateList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/FlowItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "flowItemList":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/toolkit/content/FlowItem;>;"
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mAdapter:Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;

    if-eqz v0, :cond_9

    .line 169
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/view/BuffetView;->mAdapter:Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;->setList(Ljava/util/List;)V

    .line 171
    :cond_9
    return-void
.end method
