.class public abstract Lcom/buzzfeed/toolkit/util/PageErrorHandler;
.super Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;
.source "PageErrorHandler.java"


# static fields
.field private static final TAG_LOADING_ERROR:Ljava/lang/String; = "loading_error"

.field private static final TAG_SETTINGS:Ljava/lang/String; = "settings"

.field private static final TAG_TRY_AGAIN:Ljava/lang/String; = "try_again"


# instance fields
.field private mErrorState:Z

.field private final mUseActionHandler:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "useActionHandler"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;-><init>(Landroid/view/View;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/toolkit/util/PageErrorHandler;->mErrorState:Z

    .line 37
    iput-boolean p2, p0, Lcom/buzzfeed/toolkit/util/PageErrorHandler;->mUseActionHandler:Z

    .line 38
    return-void
.end method

.method private showLoadingErrorSnackbar()V
    .registers 3

    .prologue
    .line 116
    sget v0, Lcom/buzzfeed/toolkit/R$string;->snackbar_message_server_error:I

    const-string v1, "loading_error"

    invoke-virtual {p0, v0, v1}, Lcom/buzzfeed/toolkit/util/PageErrorHandler;->showSnackbarWithErrorMsg(ILjava/lang/String;)V

    .line 117
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/PageErrorHandler;->setErrorOccurred(Z)Z

    .line 118
    return-void
.end method

.method private showSettingsSnackbar()V
    .registers 5

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/buzzfeed/toolkit/util/PageErrorHandler;->mUseActionHandler:Z

    if-nez v0, :cond_e

    .line 77
    sget v0, Lcom/buzzfeed/toolkit/R$string;->snackbar_message_no_connection:I

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/PageErrorHandler;->showSnackbarWithErrorMsg(I)V

    .line 93
    :goto_9
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/PageErrorHandler;->setErrorOccurred(Z)Z

    .line 94
    return-void

    .line 79
    :cond_e
    sget v0, Lcom/buzzfeed/toolkit/R$string;->snackbar_title_settings:I

    sget v1, Lcom/buzzfeed/toolkit/R$string;->snackbar_message_no_connection:I

    new-instance v2, Lcom/buzzfeed/toolkit/util/PageErrorHandler$1;

    invoke-direct {v2, p0}, Lcom/buzzfeed/toolkit/util/PageErrorHandler$1;-><init>(Lcom/buzzfeed/toolkit/util/PageErrorHandler;)V

    const-string v3, "settings"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/buzzfeed/toolkit/util/PageErrorHandler;->showSnackbarWithUserAction(IILandroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto :goto_9
.end method

.method private showTryAgainSnackbar()V
    .registers 5

    .prologue
    .line 100
    sget v0, Lcom/buzzfeed/toolkit/R$string;->snackbar_title_try_again:I

    sget v1, Lcom/buzzfeed/toolkit/R$string;->snackbar_message_server_error:I

    new-instance v2, Lcom/buzzfeed/toolkit/util/PageErrorHandler$2;

    invoke-direct {v2, p0}, Lcom/buzzfeed/toolkit/util/PageErrorHandler$2;-><init>(Lcom/buzzfeed/toolkit/util/PageErrorHandler;)V

    const-string/jumbo v3, "try_again"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/buzzfeed/toolkit/util/PageErrorHandler;->showSnackbarWithUserAction(IILandroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/PageErrorHandler;->setErrorOccurred(Z)Z

    .line 110
    return-void
.end method


# virtual methods
.method public dismissSnackbarIfVisible()V
    .registers 2

    .prologue
    .line 139
    invoke-super {p0}, Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;->dismissSnackbarIfVisible()V

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/toolkit/util/PageErrorHandler;->mErrorState:Z

    .line 141
    return-void
.end method

.method public hasErrorOccurred()Z
    .registers 2

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/buzzfeed/toolkit/util/PageErrorHandler;->mErrorState:Z

    return v0
.end method

.method public onAuthFailureError()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/util/PageErrorHandler;->showTryAgainSnackbar()V

    .line 48
    return-void
.end method

.method protected onCreateSnackbar(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;
    .registers 7
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "messageResId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "duration"    # I

    .prologue
    .line 122
    invoke-static {p1, p2, p3}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 123
    .local v0, "snackbar":Landroid/support/design/widget/Snackbar;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/buzzfeed/toolkit/R$color;->buzzfeed_yellow:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/Snackbar;->setActionTextColor(I)Landroid/support/design/widget/Snackbar;

    .line 125
    return-object v0
.end method

.method public onNoConnectionError()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/util/PageErrorHandler;->showSettingsSnackbar()V

    .line 63
    return-void
.end method

.method public onResourceNotFoundError()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/util/PageErrorHandler;->showLoadingErrorSnackbar()V

    .line 68
    return-void
.end method

.method public onServerError()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/util/PageErrorHandler;->showTryAgainSnackbar()V

    .line 53
    return-void
.end method

.method public onTimeoutError()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/util/PageErrorHandler;->showTryAgainSnackbar()V

    .line 43
    return-void
.end method

.method public abstract onTryAgainClicked()V
.end method

.method public onUnknownError()V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/util/PageErrorHandler;->showTryAgainSnackbar()V

    .line 58
    return-void
.end method

.method public setErrorOccurred(Z)Z
    .registers 2
    .param p1, "errorState"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/buzzfeed/toolkit/util/PageErrorHandler;->mErrorState:Z

    return p1
.end method
