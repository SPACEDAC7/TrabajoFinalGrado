.class public Lcom/facebook/share/widget/AppInviteDialog;
.super Lcom/facebook/internal/FacebookDialogBase;
.source "AppInviteDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/widget/AppInviteDialog$WebFallbackHandler;,
        Lcom/facebook/share/widget/AppInviteDialog$NativeHandler;,
        Lcom/facebook/share/widget/AppInviteDialog$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase",
        "<",
        "Lcom/facebook/share/model/AppInviteContent;",
        "Lcom/facebook/share/widget/AppInviteDialog$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_REQUEST_CODE:I

.field private static final TAG:Ljava/lang/String; = "AppInviteDialog"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 71
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->AppInvite:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    sput v0, Lcom/facebook/share/widget/AppInviteDialog;->DEFAULT_REQUEST_CODE:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 127
    sget v0, Lcom/facebook/share/widget/AppInviteDialog;->DEFAULT_REQUEST_CODE:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Landroid/app/Activity;I)V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .registers 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 136
    sget v0, Lcom/facebook/share/widget/AppInviteDialog;->DEFAULT_REQUEST_CODE:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Landroid/support/v4/app/Fragment;I)V

    .line 137
    return-void
.end method

.method static synthetic access$200()Z
    .registers 1

    .prologue
    .line 41
    invoke-static {}, Lcom/facebook/share/widget/AppInviteDialog;->canShowNativeDialog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/facebook/share/model/AppInviteContent;)Landroid/os/Bundle;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/AppInviteContent;

    .prologue
    .line 41
    invoke-static {p0}, Lcom/facebook/share/widget/AppInviteDialog;->createParameters(Lcom/facebook/share/model/AppInviteContent;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Lcom/facebook/internal/DialogFeature;
    .registers 1

    .prologue
    .line 41
    invoke-static {}, Lcom/facebook/share/widget/AppInviteDialog;->getFeature()Lcom/facebook/internal/DialogFeature;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Z
    .registers 1

    .prologue
    .line 41
    invoke-static {}, Lcom/facebook/share/widget/AppInviteDialog;->canShowWebFallback()Z

    move-result v0

    return v0
.end method

.method public static canShow()Z
    .registers 1

    .prologue
    .line 80
    invoke-static {}, Lcom/facebook/share/widget/AppInviteDialog;->canShowNativeDialog()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/facebook/share/widget/AppInviteDialog;->canShowWebFallback()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static canShowNativeDialog()Z
    .registers 2

    .prologue
    .line 112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_12

    invoke-static {}, Lcom/facebook/share/widget/AppInviteDialog;->getFeature()Lcom/facebook/internal/DialogFeature;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/DialogPresenter;->canPresentNativeDialogWithFeature(Lcom/facebook/internal/DialogFeature;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static canShowWebFallback()Z
    .registers 2

    .prologue
    .line 117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_12

    invoke-static {}, Lcom/facebook/share/widget/AppInviteDialog;->getFeature()Lcom/facebook/internal/DialogFeature;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/DialogPresenter;->canPresentWebFallbackDialogWithFeature(Lcom/facebook/internal/DialogFeature;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static createParameters(Lcom/facebook/share/model/AppInviteContent;)Landroid/os/Bundle;
    .registers 4
    .param p0, "content"    # Lcom/facebook/share/model/AppInviteContent;

    .prologue
    .line 243
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 245
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "app_link_url"

    invoke-virtual {p0}, Lcom/facebook/share/model/AppInviteContent;->getApplinkUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v1, "preview_image_url"

    invoke-virtual {p0}, Lcom/facebook/share/model/AppInviteContent;->getPreviewImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-object v0
.end method

.method private static getFeature()Lcom/facebook/internal/DialogFeature;
    .registers 1

    .prologue
    .line 239
    sget-object v0, Lcom/facebook/share/internal/AppInviteDialogFeature;->APP_INVITES_DIALOG:Lcom/facebook/share/internal/AppInviteDialogFeature;

    return-object v0
.end method

.method public static show(Landroid/app/Activity;Lcom/facebook/share/model/AppInviteContent;)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appInviteContent"    # Lcom/facebook/share/model/AppInviteContent;

    .prologue
    .line 93
    new-instance v0, Lcom/facebook/share/widget/AppInviteDialog;

    invoke-direct {v0, p0}, Lcom/facebook/share/widget/AppInviteDialog;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1}, Lcom/facebook/share/widget/AppInviteDialog;->show(Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method public static show(Landroid/support/v4/app/Fragment;Lcom/facebook/share/model/AppInviteContent;)V
    .registers 3
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "appInviteContent"    # Lcom/facebook/share/model/AppInviteContent;

    .prologue
    .line 107
    new-instance v0, Lcom/facebook/share/widget/AppInviteDialog;

    invoke-direct {v0, p0}, Lcom/facebook/share/widget/AppInviteDialog;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, p1}, Lcom/facebook/share/widget/AppInviteDialog;->show(Ljava/lang/Object;)V

    .line 109
    return-void
.end method


# virtual methods
.method protected createBaseAppCall()Lcom/facebook/internal/AppCall;
    .registers 3

    .prologue
    .line 174
    new-instance v0, Lcom/facebook/internal/AppCall;

    invoke-virtual {p0}, Lcom/facebook/share/widget/AppInviteDialog;->getRequestCode()I

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
            "Lcom/facebook/share/model/AppInviteContent;",
            "Lcom/facebook/share/widget/AppInviteDialog$Result;",
            ">.ModeHandler;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v0, "handlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/internal/FacebookDialogBase<Lcom/facebook/share/model/AppInviteContent;Lcom/facebook/share/widget/AppInviteDialog$Result;>.ModeHandler;>;"
    new-instance v1, Lcom/facebook/share/widget/AppInviteDialog$NativeHandler;

    invoke-direct {v1, p0, v2}, Lcom/facebook/share/widget/AppInviteDialog$NativeHandler;-><init>(Lcom/facebook/share/widget/AppInviteDialog;Lcom/facebook/share/widget/AppInviteDialog$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v1, Lcom/facebook/share/widget/AppInviteDialog$WebFallbackHandler;

    invoke-direct {v1, p0, v2}, Lcom/facebook/share/widget/AppInviteDialog$WebFallbackHandler;-><init>(Lcom/facebook/share/widget/AppInviteDialog;Lcom/facebook/share/widget/AppInviteDialog$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
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
            "Lcom/facebook/share/widget/AppInviteDialog$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p2, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/widget/AppInviteDialog$Result;>;"
    if-nez p2, :cond_10

    const/4 v1, 0x0

    .line 156
    .local v1, "resultProcessor":Lcom/facebook/share/internal/ResultProcessor;
    :goto_3
    new-instance v0, Lcom/facebook/share/widget/AppInviteDialog$2;

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/widget/AppInviteDialog$2;-><init>(Lcom/facebook/share/widget/AppInviteDialog;Lcom/facebook/share/internal/ResultProcessor;)V

    .line 167
    .local v0, "callbackManagerCallback":Lcom/facebook/internal/CallbackManagerImpl$Callback;
    invoke-virtual {p0}, Lcom/facebook/share/widget/AppInviteDialog;->getRequestCode()I

    move-result v2

    invoke-virtual {p1, v2, v0}, Lcom/facebook/internal/CallbackManagerImpl;->registerCallback(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V

    .line 170
    return-void

    .line 142
    .end local v0    # "callbackManagerCallback":Lcom/facebook/internal/CallbackManagerImpl$Callback;
    .end local v1    # "resultProcessor":Lcom/facebook/share/internal/ResultProcessor;
    :cond_10
    new-instance v1, Lcom/facebook/share/widget/AppInviteDialog$1;

    invoke-direct {v1, p0, p2, p2}, Lcom/facebook/share/widget/AppInviteDialog$1;-><init>(Lcom/facebook/share/widget/AppInviteDialog;Lcom/facebook/FacebookCallback;Lcom/facebook/FacebookCallback;)V

    goto :goto_3
.end method
