.class Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;
.super Ljava/lang/Object;
.source "RequestFutureTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/RequestFutureTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Waiter"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyAll(Ljava/lang/Object;)V
    .registers 2
    .param p1, "toNotify"    # Ljava/lang/Object;

    .prologue
    .line 242
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 243
    return-void
.end method

.method public waitForTimeout(Ljava/lang/Object;J)V
    .registers 4
    .param p1, "toWaitOn"    # Ljava/lang/Object;
    .param p2, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-virtual {p1, p2, p3}, Ljava/lang/Object;->wait(J)V

    .line 239
    return-void
.end method
