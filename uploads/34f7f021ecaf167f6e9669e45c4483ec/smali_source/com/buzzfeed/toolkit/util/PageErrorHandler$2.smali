.class Lcom/buzzfeed/toolkit/util/PageErrorHandler$2;
.super Ljava/lang/Object;
.source "PageErrorHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/toolkit/util/PageErrorHandler;->showTryAgainSnackbar()V
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
    .line 103
    iput-object p1, p0, Lcom/buzzfeed/toolkit/util/PageErrorHandler$2;->this$0:Lcom/buzzfeed/toolkit/util/PageErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/PageErrorHandler$2;->this$0:Lcom/buzzfeed/toolkit/util/PageErrorHandler;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/util/PageErrorHandler;->onTryAgainClicked()V

    .line 107
    return-void
.end method
