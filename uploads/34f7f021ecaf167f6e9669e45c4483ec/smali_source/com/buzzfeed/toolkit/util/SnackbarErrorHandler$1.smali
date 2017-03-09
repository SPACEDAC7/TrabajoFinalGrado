.class Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler$1;
.super Landroid/support/design/widget/Snackbar$Callback;
.source "SnackbarErrorHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;->showSnackbarWithUserAction(IILandroid/view/View$OnClickListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;


# direct methods
.method constructor <init>(Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler$1;->this$0:Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;

    invoke-direct {p0}, Landroid/support/design/widget/Snackbar$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed(Landroid/support/design/widget/Snackbar;I)V
    .registers 5
    .param p1, "snackbar"    # Landroid/support/design/widget/Snackbar;
    .param p2, "event"    # I

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-super {p0, p1, p2}, Landroid/support/design/widget/Snackbar$Callback;->onDismissed(Landroid/support/design/widget/Snackbar;I)V

    .line 77
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler$1;->this$0:Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;

    iget-object v0, v0, Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;->mCurrentSnackbar:Landroid/support/design/widget/Snackbar;

    invoke-static {v0, p1}, Lcom/buzzfeed/toolkit/util/ObjectUtil;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 78
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler$1;->this$0:Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;

    iput-object v1, v0, Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;->mCurrentSnackbar:Landroid/support/design/widget/Snackbar;

    .line 79
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler$1;->this$0:Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;

    # setter for: Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;->mCurrentTag:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;->access$002(Lcom/buzzfeed/toolkit/util/SnackbarErrorHandler;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    :cond_17
    return-void
.end method
