.class public abstract Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;
.super Lcom/buzzfeed/toolkit/util/retrofit/RetrofitErrorHandler;
.source "SnackbarErrorHandler.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected mCurrentSnackbar:Landroid/support/design/widget/Snackbar;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCurrentTag:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/util/retrofit/RetrofitErrorHandler;-><init>()V

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;->TAG:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/ref/WeakReference;

    const-string v1, "View must not be null."

    invoke-static {p1, v1}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 32
    return-void
.end method

.method static synthetic access$002(Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;->mCurrentTag:Ljava/lang/String;

    return-object p1
.end method

.method private isShowingSnackbar(Ljava/lang/String;)Z
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 149
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;->mCurrentSnackbar:Landroid/support/design/widget/Snackbar;

    if-eqz v0, :cond_10

    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;->mCurrentTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method protected canShowSnackbar()Z
    .registers 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public dismissSnackbarIfVisible()V
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;->mCurrentSnackbar:Landroid/support/design/widget/Snackbar;

    if-eqz v0, :cond_9

    .line 143
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;->mCurrentSnackbar:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->dismiss()V

    .line 145
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;->mCurrentTag:Ljava/lang/String;

    .line 146
    return-void
.end method

.method protected getView()Landroid/view/View;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method protected abstract onCreateSnackbar(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
.end method

.method protected showSnackbarWithErrorMsg(I)V
    .registers 3
    .param p1, "messageResId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;->showSnackbarWithErrorMsg(ILjava/lang/String;)V

    .line 98
    return-void
.end method

.method protected showSnackbarWithErrorMsg(ILjava/lang/String;)V
    .registers 7
    .param p1, "messageResId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;->canShowSnackbar()Z

    move-result v1

    if-nez v1, :cond_e

    .line 108
    iget-object v1, p0, Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;->TAG:Ljava/lang/String;

    const-string v2, "Snackbar cannot be shown!"

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :goto_d
    return-void

    .line 112
    :cond_e
    invoke-direct {p0, p2}, Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;->isShowingSnackbar(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 113
    iget-object v1, p0, Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already showing snackbar with tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 117
    :cond_2d
    iget-object v1, p0, Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, -0x2

    invoke-virtual {p0, v1, p1, v2}, Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;->onCreateSnackbar(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 118
    .local v0, "snackbar":Landroid/support/design/widget/Snackbar;
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 119
    iput-object v0, p0, Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;->mCurrentSnackbar:Landroid/support/design/widget/Snackbar;

    .line 120
    iput-object p2, p0, Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;->mCurrentTag:Ljava/lang/String;

    goto :goto_d
.end method

.method protected showSnackbarWithUserAction(IILandroid/view/View$OnClickListener;)V
    .registers 5
    .param p1, "actionTitleResId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "messageResId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "clickListener"    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;->showSnackbarWithUserAction(IILandroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method protected showSnackbarWithUserAction(IILandroid/view/View$OnClickListener;Ljava/lang/String;)V
    .registers 9
    .param p1, "actionTitleResId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "messageResId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "clickListener"    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;->canShowSnackbar()Z

    move-result v1

    if-nez v1, :cond_e

    .line 61
    iget-object v1, p0, Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;->TAG:Ljava/lang/String;

    const-string v2, "Snackbar cannot be shown!"

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :goto_d
    return-void

    .line 65
    :cond_e
    invoke-direct {p0, p4}, Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;->isShowingSnackbar(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 66
    iget-object v1, p0, Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already showing snackbar with tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 70
    :cond_2d
    iget-object v1, p0, Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, -0x2

    invoke-virtual {p0, v1, p2, v2}, Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;->onCreateSnackbar(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 71
    .local v0, "snackbar":Landroid/support/design/widget/Snackbar;
    invoke-virtual {v0, p1, p3}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v1

    new-instance v2, Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler$1;

    invoke-direct {v2, p0}, Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler$1;-><init>(Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;)V

    .line 72
    invoke-virtual {v1, v2}, Landroid/support/design/widget/Snackbar;->setCallback(Landroid/support/design/widget/Snackbar$Callback;)Landroid/support/design/widget/Snackbar;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar;->show()V

    .line 84
    iput-object v0, p0, Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;->mCurrentSnackbar:Landroid/support/design/widget/Snackbar;

    .line 85
    iput-object p4, p0, Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;->mCurrentTag:Ljava/lang/String;

    goto :goto_d
.end method
