.class Lcom/buzzfeed/toolkit/util/PageErrorHandler$1;
.super Ljava/lang/Object;
.source "PageErrorHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/toolkit/util/PageErrorHandler;->showSettingsSnackbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/toolkit/util/PageErrorHandler;


# direct methods
.method constructor <init>(Lcom/buzzfeed/toolkit/util/PageErrorHandler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/toolkit/util/PageErrorHandler;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/buzzfeed/toolkit/util/PageErrorHandler$1;->this$0:Lcom/buzzfeed/toolkit/util/PageErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    iget-object v1, p0, Lcom/buzzfeed/toolkit/util/PageErrorHandler$1;->this$0:Lcom/buzzfeed/toolkit/util/PageErrorHandler;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/util/PageErrorHandler;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 86
    iget-object v1, p0, Lcom/buzzfeed/toolkit/util/PageErrorHandler$1;->this$0:Lcom/buzzfeed/toolkit/util/PageErrorHandler;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/util/PageErrorHandler;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 87
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 89
    .end local v0    # "context":Landroid/content/Context;
    :cond_1c
    return-void
.end method
