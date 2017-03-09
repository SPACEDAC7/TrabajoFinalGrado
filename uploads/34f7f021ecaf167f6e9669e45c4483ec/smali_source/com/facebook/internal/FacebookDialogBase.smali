.class public abstract Lcom/facebook/internal/FacebookDialogBase;
.super Ljava/lang/Object;
.source "FacebookDialogBase.java"

# interfaces
.implements Lcom/facebook/FacebookDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/FacebookDialogBase$ModeHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CONTENT:",
        "Ljava/lang/Object;",
        "RESU",
        "LT:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookDialog",
        "<TCONTENT;TRESU",
        "LT;",
        ">;"
    }
.end annotation


# static fields
.field protected static final BASE_AUTOMATIC_MODE:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "FacebookDialog"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final fragment:Landroid/support/v4/app/Fragment;

.field private modeHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/internal/FacebookDialogBase",
            "<TCONTENT;TRESU",
            "LT;",
            ">.ModeHandler;>;"
        }
    .end annotation
.end field

.field private requestCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/internal/FacebookDialogBase;->BASE_AUTOMATIC_MODE:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;I)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I

    .prologue
    .line 52
    .local p0, "this":Lcom/facebook/internal/FacebookDialogBase;, "Lcom/facebook/internal/FacebookDialogBase<TCONTENT;TRESULT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "activity"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lcom/facebook/internal/FacebookDialogBase;->activity:Landroid/app/Activity;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/internal/FacebookDialogBase;->fragment:Landroid/support/v4/app/Fragment;

    .line 56
    iput p2, p0, Lcom/facebook/internal/FacebookDialogBase;->requestCode:I

    .line 57
    return-void
.end method

.method protected constructor <init>(Landroid/support/v4/app/Fragment;I)V
    .registers 5
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "requestCode"    # I

    .prologue
    .line 59
    .local p0, "this":Lcom/facebook/internal/FacebookDialogBase;, "Lcom/facebook/internal/FacebookDialogBase<TCONTENT;TRESULT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "fragment"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iput-object p1, p0, Lcom/facebook/internal/FacebookDialogBase;->fragment:Landroid/support/v4/app/Fragment;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/internal/FacebookDialogBase;->activity:Landroid/app/Activity;

    .line 63
    iput p2, p0, Lcom/facebook/internal/FacebookDialogBase;->requestCode:I

    .line 65
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot use a fragment that is not attached to an activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1d
    return-void
.end method

.method private cachedModeHandlers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/internal/FacebookDialogBase",
            "<TCONTENT;TRESU",
            "LT;",
            ">.ModeHandler;>;"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, "this":Lcom/facebook/internal/FacebookDialogBase;, "Lcom/facebook/internal/FacebookDialogBase<TCONTENT;TRESULT;>;"
    iget-object v0, p0, Lcom/facebook/internal/FacebookDialogBase;->modeHandlers:Ljava/util/List;

    if-nez v0, :cond_a

    .line 207
    invoke-virtual {p0}, Lcom/facebook/internal/FacebookDialogBase;->getOrderedModeHandlers()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/FacebookDialogBase;->modeHandlers:Ljava/util/List;

    .line 210
    :cond_a
    iget-object v0, p0, Lcom/facebook/internal/FacebookDialogBase;->modeHandlers:Ljava/util/List;

    return-object v0
.end method

.method private createAppCallForMode(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/internal/AppCall;
    .registers 9
    .param p2, "mode"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTENT;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/internal/AppCall;"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "this":Lcom/facebook/internal/FacebookDialogBase;, "Lcom/facebook/internal/FacebookDialogBase<TCONTENT;TRESULT;>;"
    .local p1, "content":Ljava/lang/Object;, "TCONTENT;"
    sget-object v5, Lcom/facebook/internal/FacebookDialogBase;->BASE_AUTOMATIC_MODE:Ljava/lang/Object;

    if-ne p2, v5, :cond_3a

    const/4 v0, 0x1

    .line 179
    .local v0, "anyModeAllowed":Z
    :goto_5
    const/4 v1, 0x0

    .line 180
    .local v1, "appCall":Lcom/facebook/internal/AppCall;
    invoke-direct {p0}, Lcom/facebook/internal/FacebookDialogBase;->cachedModeHandlers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;

    .line 181
    .local v3, "handler":Lcom/facebook/internal/FacebookDialogBase$ModeHandler;, "Lcom/facebook/internal/FacebookDialogBase<TCONTENT;TRESULT;>.ModeHandler;"
    if-nez v0, :cond_26

    invoke-virtual {v3}, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;->getMode()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 184
    :cond_26
    invoke-virtual {v3, p1}, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;->canShow(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 189
    :try_start_2c
    invoke-virtual {v3, p1}, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;->createAppCall(Ljava/lang/Object;)Lcom/facebook/internal/AppCall;
    :try_end_2f
    .catch Lcom/facebook/FacebookException; {:try_start_2c .. :try_end_2f} :catch_3c

    move-result-object v1

    .line 197
    .end local v3    # "handler":Lcom/facebook/internal/FacebookDialogBase$ModeHandler;, "Lcom/facebook/internal/FacebookDialogBase<TCONTENT;TRESULT;>.ModeHandler;"
    :cond_30
    :goto_30
    if-nez v1, :cond_39

    .line 198
    invoke-virtual {p0}, Lcom/facebook/internal/FacebookDialogBase;->createBaseAppCall()Lcom/facebook/internal/AppCall;

    move-result-object v1

    .line 199
    invoke-static {v1}, Lcom/facebook/internal/DialogPresenter;->setupAppCallForCannotShowError(Lcom/facebook/internal/AppCall;)V

    .line 202
    :cond_39
    return-object v1

    .line 177
    .end local v0    # "anyModeAllowed":Z
    .end local v1    # "appCall":Lcom/facebook/internal/AppCall;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_3a
    const/4 v0, 0x0

    goto :goto_5

    .line 190
    .restart local v0    # "anyModeAllowed":Z
    .restart local v1    # "appCall":Lcom/facebook/internal/AppCall;
    .restart local v3    # "handler":Lcom/facebook/internal/FacebookDialogBase$ModeHandler;, "Lcom/facebook/internal/FacebookDialogBase<TCONTENT;TRESULT;>.ModeHandler;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    :catch_3c
    move-exception v2

    .line 191
    .local v2, "e":Lcom/facebook/FacebookException;
    invoke-virtual {p0}, Lcom/facebook/internal/FacebookDialogBase;->createBaseAppCall()Lcom/facebook/internal/AppCall;

    move-result-object v1

    .line 192
    invoke-static {v1, v2}, Lcom/facebook/internal/DialogPresenter;->setupAppCallForValidationError(Lcom/facebook/internal/AppCall;Lcom/facebook/FacebookException;)V

    goto :goto_30
.end method


# virtual methods
.method public canShow(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTENT;)Z"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lcom/facebook/internal/FacebookDialogBase;, "Lcom/facebook/internal/FacebookDialogBase<TCONTENT;TRESULT;>;"
    .local p1, "content":Ljava/lang/Object;, "TCONTENT;"
    sget-object v0, Lcom/facebook/internal/FacebookDialogBase;->BASE_AUTOMATIC_MODE:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/internal/FacebookDialogBase;->canShowImpl(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected canShowImpl(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 9
    .param p2, "mode"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTENT;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/facebook/internal/FacebookDialogBase;, "Lcom/facebook/internal/FacebookDialogBase<TCONTENT;TRESULT;>;"
    .local p1, "content":Ljava/lang/Object;, "TCONTENT;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 126
    sget-object v5, Lcom/facebook/internal/FacebookDialogBase;->BASE_AUTOMATIC_MODE:Ljava/lang/Object;

    if-ne p2, v5, :cond_2e

    move v0, v3

    .line 128
    .local v0, "anyModeAllowed":Z
    :goto_7
    invoke-direct {p0}, Lcom/facebook/internal/FacebookDialogBase;->cachedModeHandlers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;

    .line 129
    .local v1, "handler":Lcom/facebook/internal/FacebookDialogBase$ModeHandler;, "Lcom/facebook/internal/FacebookDialogBase<TCONTENT;TRESULT;>.ModeHandler;"
    if-nez v0, :cond_27

    invoke-virtual {v1}, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;->getMode()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 132
    :cond_27
    invoke-virtual {v1, p1}, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;->canShow(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 137
    .end local v1    # "handler":Lcom/facebook/internal/FacebookDialogBase$ModeHandler;, "Lcom/facebook/internal/FacebookDialogBase<TCONTENT;TRESULT;>.ModeHandler;"
    :goto_2d
    return v3

    .end local v0    # "anyModeAllowed":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2e
    move v0, v4

    .line 126
    goto :goto_7

    .restart local v0    # "anyModeAllowed":Z
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_30
    move v3, v4

    .line 137
    goto :goto_2d
.end method

.method protected abstract createBaseAppCall()Lcom/facebook/internal/AppCall;
.end method

.method protected getActivityContext()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 165
    .local p0, "this":Lcom/facebook/internal/FacebookDialogBase;, "Lcom/facebook/internal/FacebookDialogBase<TCONTENT;TRESULT;>;"
    iget-object v0, p0, Lcom/facebook/internal/FacebookDialogBase;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_7

    .line 166
    iget-object v0, p0, Lcom/facebook/internal/FacebookDialogBase;->activity:Landroid/app/Activity;

    .line 173
    :goto_6
    return-object v0

    .line 169
    :cond_7
    iget-object v0, p0, Lcom/facebook/internal/FacebookDialogBase;->fragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_12

    .line 170
    iget-object v0, p0, Lcom/facebook/internal/FacebookDialogBase;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    goto :goto_6

    .line 173
    :cond_12
    const/4 v0, 0x0

    goto :goto_6
.end method

.method protected abstract getOrderedModeHandlers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/internal/FacebookDialogBase",
            "<TCONTENT;TRESU",
            "LT;",
            ">.ModeHandler;>;"
        }
    .end annotation
.end method

.method public getRequestCode()I
    .registers 2

    .prologue
    .line 116
    .local p0, "this":Lcom/facebook/internal/FacebookDialogBase;, "Lcom/facebook/internal/FacebookDialogBase<TCONTENT;TRESULT;>;"
    iget v0, p0, Lcom/facebook/internal/FacebookDialogBase;->requestCode:I

    return v0
.end method

.method public final registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V
    .registers 5
    .param p1, "callbackManager"    # Lcom/facebook/CallbackManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/CallbackManager;",
            "Lcom/facebook/FacebookCallback",
            "<TRESU",
            "LT;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lcom/facebook/internal/FacebookDialogBase;, "Lcom/facebook/internal/FacebookDialogBase<TCONTENT;TRESULT;>;"
    .local p2, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<TRESULT;>;"
    instance-of v0, p1, Lcom/facebook/internal/CallbackManagerImpl;

    if-nez v0, :cond_c

    .line 76
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Unexpected CallbackManager, please use the provided Factory."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_c
    check-cast p1, Lcom/facebook/internal/CallbackManagerImpl;

    .end local p1    # "callbackManager":Lcom/facebook/CallbackManager;
    invoke-virtual {p0, p1, p2}, Lcom/facebook/internal/FacebookDialogBase;->registerCallbackImpl(Lcom/facebook/internal/CallbackManagerImpl;Lcom/facebook/FacebookCallback;)V

    .line 80
    return-void
.end method

.method public final registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;I)V
    .registers 4
    .param p1, "callbackManager"    # Lcom/facebook/CallbackManager;
    .param p3, "requestCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/CallbackManager;",
            "Lcom/facebook/FacebookCallback",
            "<TRESU",
            "LT;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lcom/facebook/internal/FacebookDialogBase;, "Lcom/facebook/internal/FacebookDialogBase<TCONTENT;TRESULT;>;"
    .local p2, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<TRESULT;>;"
    invoke-virtual {p0, p3}, Lcom/facebook/internal/FacebookDialogBase;->setRequestCode(I)V

    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/facebook/internal/FacebookDialogBase;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 89
    return-void
.end method

.method protected abstract registerCallbackImpl(Lcom/facebook/internal/CallbackManagerImpl;Lcom/facebook/FacebookCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/CallbackManagerImpl;",
            "Lcom/facebook/FacebookCallback",
            "<TRESU",
            "LT;",
            ">;)V"
        }
    .end annotation
.end method

.method protected setRequestCode(I)V
    .registers 5
    .param p1, "requestCode"    # I

    .prologue
    .line 103
    .local p0, "this":Lcom/facebook/internal/FacebookDialogBase;, "Lcom/facebook/internal/FacebookDialogBase<TCONTENT;TRESULT;>;"
    invoke-static {p1}, Lcom/facebook/FacebookSdk;->isFacebookRequestCode(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be within the range reserved by the Facebook SDK."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_25
    iput p1, p0, Lcom/facebook/internal/FacebookDialogBase;->requestCode:I

    .line 108
    return-void
.end method

.method public show(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTENT;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lcom/facebook/internal/FacebookDialogBase;, "Lcom/facebook/internal/FacebookDialogBase<TCONTENT;TRESULT;>;"
    .local p1, "content":Ljava/lang/Object;, "TCONTENT;"
    sget-object v0, Lcom/facebook/internal/FacebookDialogBase;->BASE_AUTOMATIC_MODE:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/internal/FacebookDialogBase;->showImpl(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method protected showImpl(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .param p2, "mode"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTENT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lcom/facebook/internal/FacebookDialogBase;, "Lcom/facebook/internal/FacebookDialogBase<TCONTENT;TRESULT;>;"
    .local p1, "content":Ljava/lang/Object;, "TCONTENT;"
    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/FacebookDialogBase;->createAppCallForMode(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/internal/AppCall;

    move-result-object v0

    .line 148
    .local v0, "appCall":Lcom/facebook/internal/AppCall;
    if-eqz v0, :cond_16

    .line 149
    iget-object v2, p0, Lcom/facebook/internal/FacebookDialogBase;->fragment:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_10

    .line 150
    iget-object v2, p0, Lcom/facebook/internal/FacebookDialogBase;->fragment:Landroid/support/v4/app/Fragment;

    invoke-static {v0, v2}, Lcom/facebook/internal/DialogPresenter;->present(Lcom/facebook/internal/AppCall;Landroid/support/v4/app/Fragment;)V

    .line 162
    :cond_f
    :goto_f
    return-void

    .line 152
    :cond_10
    iget-object v2, p0, Lcom/facebook/internal/FacebookDialogBase;->activity:Landroid/app/Activity;

    invoke-static {v0, v2}, Lcom/facebook/internal/DialogPresenter;->present(Lcom/facebook/internal/AppCall;Landroid/app/Activity;)V

    goto :goto_f

    .line 156
    :cond_16
    const-string v1, "No code path should ever result in a null appCall"

    .line 157
    .local v1, "errorMessage":Ljava/lang/String;
    const-string v2, "FacebookDialog"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-static {}, Lcom/facebook/FacebookSdk;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 159
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
