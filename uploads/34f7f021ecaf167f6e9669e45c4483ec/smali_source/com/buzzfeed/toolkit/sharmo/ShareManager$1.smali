.class final Lcom/buzzfeed/toolkit/sharmo/ShareManager$1;
.super Lcom/pinterest/pinit/PinItListener;
.source "ShareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/toolkit/sharmo/ShareManager;->sharePinterest(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 472
    invoke-direct {p0}, Lcom/pinterest/pinit/PinItListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Z)V
    .registers 5
    .param p1, "completed"    # Z

    .prologue
    .line 481
    # getter for: Lcom/buzzfeed/toolkit/sharmo/ShareManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pinn completed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    invoke-super {p0, p1}, Lcom/pinterest/pinit/PinItListener;->onComplete(Z)V

    .line 483
    return-void
.end method

.method public onException(Ljava/lang/Exception;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 487
    # getter for: Lcom/buzzfeed/toolkit/sharmo/ShareManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "failed to pin buzz module"

    invoke-static {v0, v1, p1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 488
    invoke-super {p0, p1}, Lcom/pinterest/pinit/PinItListener;->onException(Ljava/lang/Exception;)V

    .line 489
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 475
    # getter for: Lcom/buzzfeed/toolkit/sharmo/ShareManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Starting the Pinterest Share"

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-super {p0}, Lcom/pinterest/pinit/PinItListener;->onStart()V

    .line 477
    return-void
.end method
