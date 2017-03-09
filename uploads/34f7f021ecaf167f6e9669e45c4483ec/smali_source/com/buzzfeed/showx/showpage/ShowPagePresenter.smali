.class public final Lcom/buzzfeed/showx/showpage/ShowPagePresenter;
.super Ljava/lang/Object;
.source "ShowPagePresenter.java"

# interfaces
.implements Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/showx/showpage/ShowPagePresenter$InternalBuffetEventListener;,
        Lcom/buzzfeed/showx/showpage/ShowPagePresenter$InternalProgressiveLoadingListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mCallbacks:Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCoverImageUri:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCurrentShowPage:Lcom/buzzfeed/showx/showpage/data/model/ShowPage;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/FlowItem;",
            ">;"
        }
    .end annotation
.end field

.field private mErrorHandler:Lcom/buzzfeed/toolkit/util/PageErrorHandler;

.field private mIsFirstLoad:Z

.field private mLoader:Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;

.field private mProgressiveLoadingManager:Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;

.field private mShowSettingsActionForNetworkError:Z

.field private mUpdatableView:Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    const-class v0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;Z)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "coverImageUri"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "loader"    # Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "showSettingsActionForNetworkError"    # Z

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mIsFirstLoad:Z

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mData:Ljava/util/List;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Context must not be null."

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mAppContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mCoverImageUri:Ljava/lang/String;

    .line 77
    const-string v0, "Loader must not be null."

    invoke-static {p3, v0}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;

    iput-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mLoader:Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;

    .line 78
    iput-boolean p4, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mShowSettingsActionForNetworkError:Z

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;)Z
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mIsFirstLoad:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;)Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mCallbacks:Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;

    return-object v0
.end method

.method static synthetic access$102(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/showx/showpage/ShowPagePresenter;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mIsFirstLoad:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;)Lcom/buzzfeed/toolkit/util/PageErrorHandler;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mErrorHandler:Lcom/buzzfeed/toolkit/util/PageErrorHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;)Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mProgressiveLoadingManager:Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;)V
    .registers 1
    .param p0, "x0"    # Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->startInitialLoad()V

    return-void
.end method

.method static synthetic access$300(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;)V
    .registers 1
    .param p0, "x0"    # Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->requestNextPageLoad()V

    return-void
.end method

.method static synthetic access$600(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$702(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;Lcom/buzzfeed/showx/showpage/data/model/ShowPage;)Lcom/buzzfeed/showx/showpage/data/model/ShowPage;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/showx/showpage/ShowPagePresenter;
    .param p1, "x1"    # Lcom/buzzfeed/showx/showpage/data/model/ShowPage;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mCurrentShowPage:Lcom/buzzfeed/showx/showpage/data/model/ShowPage;

    return-object p1
.end method

.method static synthetic access$800(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;)Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mUpdatableView:Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mCoverImageUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/showx/showpage/ShowPagePresenter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mCoverImageUri:Ljava/lang/String;

    return-object p1
.end method

.method private requestNextPageLoad()V
    .registers 4

    .prologue
    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".requestNextPageLoad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "TAG":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mIsFirstLoad:Z

    if-eqz v1, :cond_39

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestNextPageLoad was called, startInitialLoad should be called instead. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 184
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :goto_38
    return-void

    .line 188
    :cond_39
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mLoader:Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;

    invoke-virtual {v1}, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 189
    const-string v1, "Loading is already is progress."

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    .line 193
    :cond_47
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mLoader:Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;

    invoke-virtual {v1}, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->hasMorePages()Z

    move-result v1

    if-nez v1, :cond_55

    .line 194
    const-string v1, "No more pages to load."

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    .line 198
    :cond_55
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mErrorHandler:Lcom/buzzfeed/toolkit/util/PageErrorHandler;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/util/PageErrorHandler;->dismissSnackbarIfVisible()V

    .line 199
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mUpdatableView:Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;->setFooterProgressVisibility(Z)V

    .line 201
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mLoader:Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;

    new-instance v2, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$3;

    invoke-direct {v2, p0, v0}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$3;-><init>(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->loadNextPage(Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$Callbacks;)V

    goto :goto_38
.end method

.method private startInitialLoad()V
    .registers 4

    .prologue
    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".startInitialLoad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "TAG":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mIsFirstLoad:Z

    if-nez v1, :cond_39

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startInitialLoad has already been called. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 138
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :goto_38
    return-void

    .line 142
    :cond_39
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mLoader:Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;

    invoke-virtual {v1}, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 143
    const-string v1, "Loading is already is progress."

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    .line 147
    :cond_47
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mIsFirstLoad:Z

    .line 149
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mErrorHandler:Lcom/buzzfeed/toolkit/util/PageErrorHandler;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/util/PageErrorHandler;->dismissSnackbarIfVisible()V

    .line 150
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mUpdatableView:Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;->setHeaderProgressVisibility(Z)V

    .line 152
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mLoader:Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;

    new-instance v2, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$2;

    invoke-direct {v2, p0, v0}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$2;-><init>(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->loadNextPage(Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$Callbacks;)V

    goto :goto_38
.end method


# virtual methods
.method public attachView(Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;)V
    .registers 10
    .param p1, "updatableView"    # Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 83
    const-string v3, "View must not be null."

    invoke-static {p1, v3}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;

    iput-object v3, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mUpdatableView:Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;

    .line 84
    iget-object v3, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mCoverImageUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 85
    iget-object v3, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mUpdatableView:Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;

    iget-object v5, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mCoverImageUri:Ljava/lang/String;

    invoke-interface {v3, v5}, Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;->setCoverImage(Ljava/lang/String;)V

    .line 88
    :cond_1b
    new-instance v3, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$1;

    iget-object v5, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mUpdatableView:Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;

    invoke-interface {v5}, Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v5

    iget-boolean v6, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mShowSettingsActionForNetworkError:Z

    invoke-direct {v3, p0, v5, v6}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$1;-><init>(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;Landroid/view/View;Z)V

    iput-object v3, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mErrorHandler:Lcom/buzzfeed/toolkit/util/PageErrorHandler;

    .line 109
    iget-object v3, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mUpdatableView:Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;

    invoke-interface {v3}, Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    .line 110
    .local v2, "recyclerView":Landroid/support/v7/widget/RecyclerView;
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/LinearLayoutManager;

    .line 111
    .local v1, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    new-instance v0, Lcom/buzzfeed/showx/showpage/ShowPageAdapter;

    iget-object v3, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mCallbacks:Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;

    if-eqz v3, :cond_96

    iget-object v3, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mCallbacks:Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;

    invoke-interface {v3}, Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;->isShowSubscriptionsEnabled()Z

    move-result v3

    if-eqz v3, :cond_96

    const/4 v3, 0x1

    :goto_45
    invoke-direct {v0, v3}, Lcom/buzzfeed/showx/showpage/ShowPageAdapter;-><init>(Z)V

    .line 113
    .local v0, "adapter":Lcom/buzzfeed/showx/showpage/ShowPageAdapter;
    new-instance v3, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$InternalBuffetEventListener;

    invoke-direct {v3, p0, v7}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$InternalBuffetEventListener;-><init>(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;Lcom/buzzfeed/showx/showpage/ShowPagePresenter$1;)V

    invoke-virtual {v0, v3}, Lcom/buzzfeed/showx/showpage/ShowPageAdapter;->setBuffetEventListener(Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;)V

    .line 115
    iget-object v3, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mUpdatableView:Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;

    invoke-interface {v3, v0}, Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;->setAdapter(Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;)V

    .line 116
    iget-object v3, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mUpdatableView:Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;

    invoke-interface {v3, p0}, Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;->setPresenter(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;)V

    .line 117
    new-instance v3, Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;

    new-instance v5, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$InternalProgressiveLoadingListener;

    invoke-direct {v5, p0, v7}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$InternalProgressiveLoadingListener;-><init>(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;Lcom/buzzfeed/showx/showpage/ShowPagePresenter$1;)V

    invoke-direct {v3, v2, v1, v0, v5}, Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/LinearLayoutManager;Landroid/support/v7/widget/RecyclerView$Adapter;Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager$ProgressiveLoadingListener;)V

    iput-object v3, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mProgressiveLoadingManager:Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;

    .line 120
    iget-object v3, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mCallbacks:Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;

    invoke-interface {v3}, Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;->handleShowOpened()V

    .line 122
    iget-object v3, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_98

    .line 123
    iget-object v3, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mUpdatableView:Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;

    iget-object v5, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mCurrentShowPage:Lcom/buzzfeed/showx/showpage/data/model/ShowPage;

    invoke-interface {v3, v5}, Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;->setShowPageModel(Lcom/buzzfeed/showx/showpage/data/model/ShowPage;)V

    .line 124
    iget-object v3, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mUpdatableView:Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;

    iget-object v5, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mData:Ljava/util/List;

    invoke-interface {v3, v5}, Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;->appendItems(Ljava/util/List;)V

    .line 125
    iget-object v3, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mUpdatableView:Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;

    invoke-interface {v3, v4}, Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;->setHeaderProgressVisibility(Z)V

    .line 126
    iget-object v3, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mCoverImageUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_95

    .line 127
    iget-object v3, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mUpdatableView:Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;

    iget-object v4, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mCoverImageUri:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;->setCoverImage(Ljava/lang/String;)V

    .line 132
    :cond_95
    :goto_95
    return-void

    .end local v0    # "adapter":Lcom/buzzfeed/showx/showpage/ShowPageAdapter;
    :cond_96
    move v3, v4

    .line 111
    goto :goto_45

    .line 130
    .restart local v0    # "adapter":Lcom/buzzfeed/showx/showpage/ShowPageAdapter;
    :cond_98
    invoke-direct {p0}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->startInitialLoad()V

    goto :goto_95
.end method

.method public detachView()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 227
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mLoader:Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;

    invoke-virtual {v0}, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->cancelPendingRequests()V

    .line 228
    iput-object v1, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mUpdatableView:Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;

    .line 229
    iput-object v1, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mProgressiveLoadingManager:Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;

    .line 230
    iget-boolean v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mIsFirstLoad:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mIsFirstLoad:Z

    .line 233
    :cond_19
    return-void
.end method

.method public handleConnectivityChange()V
    .registers 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/NetworkUtil;->isConnectedToNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 238
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mErrorHandler:Lcom/buzzfeed/toolkit/util/PageErrorHandler;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/util/PageErrorHandler;->onNoConnectionError()V

    .line 247
    :goto_d
    return-void

    .line 240
    :cond_e
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mErrorHandler:Lcom/buzzfeed/toolkit/util/PageErrorHandler;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/util/PageErrorHandler;->dismissSnackbarIfVisible()V

    .line 241
    iget-boolean v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mIsFirstLoad:Z

    if-eqz v0, :cond_1a

    .line 242
    invoke-direct {p0}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->startInitialLoad()V

    .line 245
    :cond_1a
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mUpdatableView:Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;

    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/VideoSettings;->isInAutoplayMode(Landroid/content/Context;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;->toggleAutoPlay(Z)V

    goto :goto_d
.end method

.method public onShareShowButtonClicked(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "showId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "showTitle"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://www.buzzfeed.com/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "url":Ljava/lang/String;
    invoke-static {p1, p3, v0}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-static {}, Lcom/buzzfeed/analytics/client/VideoTracker;->getInstance()Lcom/buzzfeed/analytics/client/VideoTracker;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "feed_module"

    const-string v4, "on_screen"

    invoke-virtual {v1, v2, v3, v4}, Lcom/buzzfeed/analytics/client/VideoTracker;->sendShareShowEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method public refreshSubscribeCard()V
    .registers 3

    .prologue
    .line 267
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mUpdatableView:Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;->updateItem(I)V

    .line 268
    return-void
.end method

.method public setPresenterCallbacks(Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;)V
    .registers 2
    .param p1, "callbacks"    # Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 262
    iput-object p1, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mCallbacks:Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;

    .line 263
    return-void
.end method
