.class Lcom/adjust/sdk/ActivityHandler$2;
.super Ljava/lang/Object;
.source "ActivityHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/ActivityHandler;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adjust/sdk/ActivityHandler;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/ActivityHandler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/adjust/sdk/ActivityHandler;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler$2;->this$0:Lcom/adjust/sdk/ActivityHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 235
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler$2;->this$0:Lcom/adjust/sdk/ActivityHandler;

    # invokes: Lcom/adjust/sdk/ActivityHandler;->delayStartI()V
    invoke-static {v0}, Lcom/adjust/sdk/ActivityHandler;->access$100(Lcom/adjust/sdk/ActivityHandler;)V

    .line 237
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler$2;->this$0:Lcom/adjust/sdk/ActivityHandler;

    # invokes: Lcom/adjust/sdk/ActivityHandler;->stopBackgroundTimerI()V
    invoke-static {v0}, Lcom/adjust/sdk/ActivityHandler;->access$200(Lcom/adjust/sdk/ActivityHandler;)V

    .line 239
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler$2;->this$0:Lcom/adjust/sdk/ActivityHandler;

    # invokes: Lcom/adjust/sdk/ActivityHandler;->startForegroundTimerI()V
    invoke-static {v0}, Lcom/adjust/sdk/ActivityHandler;->access$300(Lcom/adjust/sdk/ActivityHandler;)V

    .line 241
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler$2;->this$0:Lcom/adjust/sdk/ActivityHandler;

    # getter for: Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;
    invoke-static {v0}, Lcom/adjust/sdk/ActivityHandler;->access$400(Lcom/adjust/sdk/ActivityHandler;)Lcom/adjust/sdk/ILogger;

    move-result-object v0

    const-string v1, "Subsession start"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler$2;->this$0:Lcom/adjust/sdk/ActivityHandler;

    # invokes: Lcom/adjust/sdk/ActivityHandler;->startI()V
    invoke-static {v0}, Lcom/adjust/sdk/ActivityHandler;->access$500(Lcom/adjust/sdk/ActivityHandler;)V

    .line 244
    return-void
.end method
