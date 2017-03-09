.class Lcom/adjust/sdk/CustomScheduledExecutor$2;
.super Ljava/lang/Object;
.source "CustomScheduledExecutor.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/CustomScheduledExecutor;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adjust/sdk/CustomScheduledExecutor;

.field final synthetic val$source:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/CustomScheduledExecutor;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/adjust/sdk/CustomScheduledExecutor;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/adjust/sdk/CustomScheduledExecutor$2;->this$0:Lcom/adjust/sdk/CustomScheduledExecutor;

    iput-object p2, p0, Lcom/adjust/sdk/CustomScheduledExecutor$2;->val$source:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .registers 8
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .prologue
    .line 42
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    const-string v1, "Runnable %s rejected from %s "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/adjust/sdk/CustomScheduledExecutor$2;->val$source:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    return-void
.end method
