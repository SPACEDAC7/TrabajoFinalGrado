.class Lcom/adjust/sdk/CustomScheduledExecutor$1$1;
.super Ljava/lang/Object;
.source "CustomScheduledExecutor.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/CustomScheduledExecutor$1;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adjust/sdk/CustomScheduledExecutor$1;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/CustomScheduledExecutor$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/adjust/sdk/CustomScheduledExecutor$1;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/adjust/sdk/CustomScheduledExecutor$1$1;->this$1:Lcom/adjust/sdk/CustomScheduledExecutor$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 8
    .param p1, "th"    # Ljava/lang/Thread;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 33
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    const-string v1, "Thread %s with error %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    return-void
.end method
