.class Lcom/facebook/share/internal/LikeDialog$NativeHandler;
.super Lcom/facebook/internal/FacebookDialogBase$ModeHandler;
.source "LikeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/LikeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase",
        "<",
        "Lcom/facebook/share/internal/LikeContent;",
        "Lcom/facebook/share/internal/LikeDialog$Result;",
        ">.ModeHandler;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/internal/LikeDialog;


# direct methods
.method private constructor <init>(Lcom/facebook/share/internal/LikeDialog;)V
    .registers 2

    .prologue
    .line 95
    iput-object p1, p0, Lcom/facebook/share/internal/LikeDialog$NativeHandler;->this$0:Lcom/facebook/share/internal/LikeDialog;

    invoke-direct {p0, p1}, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;-><init>(Lcom/facebook/internal/FacebookDialogBase;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/internal/LikeDialog;Lcom/facebook/share/internal/LikeDialog$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/facebook/share/internal/LikeDialog;
    .param p2, "x1"    # Lcom/facebook/share/internal/LikeDialog$1;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/facebook/share/internal/LikeDialog$NativeHandler;-><init>(Lcom/facebook/share/internal/LikeDialog;)V

    return-void
.end method


# virtual methods
.method public canShow(Lcom/facebook/share/internal/LikeContent;)Z
    .registers 3
    .param p1, "content"    # Lcom/facebook/share/internal/LikeContent;

    .prologue
    .line 98
    if-eqz p1, :cond_a

    invoke-static {}, Lcom/facebook/share/internal/LikeDialog;->canShowNativeDialog()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public bridge synthetic canShow(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 95
    check-cast p1, Lcom/facebook/share/internal/LikeContent;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/LikeDialog$NativeHandler;->canShow(Lcom/facebook/share/internal/LikeContent;)Z

    move-result v0

    return v0
.end method

.method public createAppCall(Lcom/facebook/share/internal/LikeContent;)Lcom/facebook/internal/AppCall;
    .registers 5
    .param p1, "content"    # Lcom/facebook/share/internal/LikeContent;

    .prologue
    .line 103
    iget-object v1, p0, Lcom/facebook/share/internal/LikeDialog$NativeHandler;->this$0:Lcom/facebook/share/internal/LikeDialog;

    invoke-virtual {v1}, Lcom/facebook/share/internal/LikeDialog;->createBaseAppCall()Lcom/facebook/internal/AppCall;

    move-result-object v0

    .line 105
    .local v0, "appCall":Lcom/facebook/internal/AppCall;
    new-instance v1, Lcom/facebook/share/internal/LikeDialog$NativeHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/share/internal/LikeDialog$NativeHandler$1;-><init>(Lcom/facebook/share/internal/LikeDialog$NativeHandler;Lcom/facebook/share/internal/LikeContent;)V

    # invokes: Lcom/facebook/share/internal/LikeDialog;->getFeature()Lcom/facebook/internal/DialogFeature;
    invoke-static {}, Lcom/facebook/share/internal/LikeDialog;->access$300()Lcom/facebook/internal/DialogFeature;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/DialogPresenter;->setupAppCallForNativeDialog(Lcom/facebook/internal/AppCall;Lcom/facebook/internal/DialogPresenter$ParameterProvider;Lcom/facebook/internal/DialogFeature;)V

    .line 123
    return-object v0
.end method

.method public bridge synthetic createAppCall(Ljava/lang/Object;)Lcom/facebook/internal/AppCall;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 95
    check-cast p1, Lcom/facebook/share/internal/LikeContent;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/LikeDialog$NativeHandler;->createAppCall(Lcom/facebook/share/internal/LikeContent;)Lcom/facebook/internal/AppCall;

    move-result-object v0

    return-object v0
.end method
