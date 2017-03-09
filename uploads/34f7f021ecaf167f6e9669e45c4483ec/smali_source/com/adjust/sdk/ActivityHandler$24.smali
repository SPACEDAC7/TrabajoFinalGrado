.class Lcom/adjust/sdk/ActivityHandler$24;
.super Ljava/lang/Object;
.source "ActivityHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/ActivityHandler;->launchEventResponseTasksI(Lcom/adjust/sdk/EventResponseData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adjust/sdk/ActivityHandler;

.field final synthetic val$eventResponseData:Lcom/adjust/sdk/EventResponseData;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/EventResponseData;)V
    .registers 3
    .param p1, "this$0"    # Lcom/adjust/sdk/ActivityHandler;

    .prologue
    .line 888
    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler$24;->this$0:Lcom/adjust/sdk/ActivityHandler;

    iput-object p2, p0, Lcom/adjust/sdk/ActivityHandler$24;->val$eventResponseData:Lcom/adjust/sdk/EventResponseData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 891
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler$24;->this$0:Lcom/adjust/sdk/ActivityHandler;

    # getter for: Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;
    invoke-static {v0}, Lcom/adjust/sdk/ActivityHandler;->access$2100(Lcom/adjust/sdk/ActivityHandler;)Lcom/adjust/sdk/AdjustConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->onEventTrackingSucceededListener:Lcom/adjust/sdk/OnEventTrackingSucceededListener;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler$24;->val$eventResponseData:Lcom/adjust/sdk/EventResponseData;

    invoke-virtual {v1}, Lcom/adjust/sdk/EventResponseData;->getSuccessResponseData()Lcom/adjust/sdk/AdjustEventSuccess;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adjust/sdk/OnEventTrackingSucceededListener;->onFinishedEventTrackingSucceeded(Lcom/adjust/sdk/AdjustEventSuccess;)V

    .line 892
    return-void
.end method
