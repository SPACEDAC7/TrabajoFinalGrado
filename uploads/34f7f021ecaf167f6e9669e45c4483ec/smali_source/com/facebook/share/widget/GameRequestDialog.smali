.class public Lcom/facebook/share/widget/GameRequestDialog;
.super Lcom/facebook/internal/FacebookDialogBase;
.source "GameRequestDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/widget/GameRequestDialog$WebHandler;,
        Lcom/facebook/share/widget/GameRequestDialog$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase",
        "<",
        "Lcom/facebook/share/model/GameRequestContent;",
        "Lcom/facebook/share/widget/GameRequestDialog$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_REQUEST_CODE:I

.field private static final GAME_REQUEST_DIALOG:Ljava/lang/String; = "apprequests"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 73
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->GameRequest:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    sput v0, Lcom/facebook/share/widget/GameRequestDialog;->DEFAULT_REQUEST_CODE:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 112
    sget v0, Lcom/facebook/share/widget/GameRequestDialog;->DEFAULT_REQUEST_CODE:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Landroid/app/Activity;I)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .registers 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 120
    sget v0, Lcom/facebook/share/widget/GameRequestDialog;->DEFAULT_REQUEST_CODE:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Landroid/support/v4/app/Fragment;I)V

    .line 121
    return-void
.end method

.method public static canShow()Z
    .registers 1

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public static show(Landroid/app/Activity;Lcom/facebook/share/model/GameRequestContent;)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "gameRequestContent"    # Lcom/facebook/share/model/GameRequestContent;

    .prologue
    .line 93
    new-instance v0, Lcom/facebook/share/widget/GameRequestDialog;

    invoke-direct {v0, p0}, Lcom/facebook/share/widget/GameRequestDialog;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1}, Lcom/facebook/share/widget/GameRequestDialog;->show(Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method public static show(Landroid/support/v4/app/Fragment;Lcom/facebook/share/model/GameRequestContent;)V
    .registers 3
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "gameRequestContent"    # Lcom/facebook/share/model/GameRequestContent;

    .prologue
    .line 104
    new-instance v0, Lcom/facebook/share/widget/GameRequestDialog;

    invoke-direct {v0, p0}, Lcom/facebook/share/widget/GameRequestDialog;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, p1}, Lcom/facebook/share/widget/GameRequestDialog;->show(Ljava/lang/Object;)V

    .line 105
    return-void
.end method


# virtual methods
.method protected createBaseAppCall()Lcom/facebook/internal/AppCall;
    .registers 3

    .prologue
    .line 157
    new-instance v0, Lcom/facebook/internal/AppCall;

    invoke-virtual {p0}, Lcom/facebook/share/widget/GameRequestDialog;->getRequestCode()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/internal/AppCall;-><init>(I)V

    return-object v0
.end method

.method protected getOrderedModeHandlers()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/internal/FacebookDialogBase",
            "<",
            "Lcom/facebook/share/model/GameRequestContent;",
            "Lcom/facebook/share/widget/GameRequestDialog$Result;",
            ">.ModeHandler;>;"
        }
    .end annotation

    .prologue
    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v0, "handlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/internal/FacebookDialogBase<Lcom/facebook/share/model/GameRequestContent;Lcom/facebook/share/widget/GameRequestDialog$Result;>.ModeHandler;>;"
    new-instance v1, Lcom/facebook/share/widget/GameRequestDialog$WebHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/share/widget/GameRequestDialog$WebHandler;-><init>(Lcom/facebook/share/widget/GameRequestDialog;Lcom/facebook/share/widget/GameRequestDialog$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    return-object v0
.end method

.method protected registerCallbackImpl(Lcom/facebook/internal/CallbackManagerImpl;Lcom/facebook/FacebookCallback;)V
    .registers 6
    .param p1, "callbackManager"    # Lcom/facebook/internal/CallbackManagerImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/CallbackManagerImpl;",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/share/widget/GameRequestDialog$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p2, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/widget/GameRequestDialog$Result;>;"
    if-nez p2, :cond_10

    const/4 v0, 0x0

    .line 141
    .local v0, "resultProcessor":Lcom/facebook/share/internal/ResultProcessor;
    :goto_3
    invoke-virtual {p0}, Lcom/facebook/share/widget/GameRequestDialog;->getRequestCode()I

    move-result v1

    new-instance v2, Lcom/facebook/share/widget/GameRequestDialog$2;

    invoke-direct {v2, p0, v0}, Lcom/facebook/share/widget/GameRequestDialog$2;-><init>(Lcom/facebook/share/widget/GameRequestDialog;Lcom/facebook/share/internal/ResultProcessor;)V

    invoke-virtual {p1, v1, v2}, Lcom/facebook/internal/CallbackManagerImpl;->registerCallback(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V

    .line 153
    return-void

    .line 127
    .end local v0    # "resultProcessor":Lcom/facebook/share/internal/ResultProcessor;
    :cond_10
    new-instance v0, Lcom/facebook/share/widget/GameRequestDialog$1;

    invoke-direct {v0, p0, p2, p2}, Lcom/facebook/share/widget/GameRequestDialog$1;-><init>(Lcom/facebook/share/widget/GameRequestDialog;Lcom/facebook/FacebookCallback;Lcom/facebook/FacebookCallback;)V

    goto :goto_3
.end method
