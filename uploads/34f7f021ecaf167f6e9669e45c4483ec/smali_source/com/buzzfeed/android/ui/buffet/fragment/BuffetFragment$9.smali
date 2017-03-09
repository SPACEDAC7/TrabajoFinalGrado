.class Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$9;
.super Lcom/buzzfeed/toolkit/util/PageErrorHandler;
.source "BuffetFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->createErrorHandler(Landroid/view/View;)Lcom/buzzfeed/toolkit/util/PageErrorHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;Landroid/view/View;Z)V
    .registers 4
    .param p1, "this$0"    # Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;
    .param p2, "arg0"    # Landroid/view/View;
    .param p3, "arg1"    # Z

    .prologue
    .line 1216
    iput-object p1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$9;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    invoke-direct {p0, p2, p3}, Lcom/buzzfeed/toolkit/util/PageErrorHandler;-><init>(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public onGateWayTimeoutError()V
    .registers 2

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$9;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->isConnectedToNetwork()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1220
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$9;->onTimeoutError()V

    .line 1224
    :goto_b
    return-void

    .line 1222
    :cond_c
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$9;->onNoConnectionError()V

    goto :goto_b
.end method

.method public onTryAgainClicked()V
    .registers 2

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$9;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iget-object v0, v0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetLoader:Lcom/buzzfeed/android/data/loader/BuffetLoader;

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/loader/BuffetLoader;->isOnFirstPage()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1230
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$9;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->reloadFeed()V

    .line 1237
    :goto_f
    return-void

    .line 1234
    :cond_10
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$9;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->onLoadNextPage()V

    goto :goto_f
.end method
