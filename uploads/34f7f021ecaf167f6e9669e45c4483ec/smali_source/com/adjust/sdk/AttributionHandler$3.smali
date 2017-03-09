.class Lcom/adjust/sdk/AttributionHandler$3;
.super Ljava/lang/Object;
.source "AttributionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/AttributionHandler;->checkSessionResponse(Lcom/adjust/sdk/SessionResponseData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adjust/sdk/AttributionHandler;

.field final synthetic val$sessionResponseData:Lcom/adjust/sdk/SessionResponseData;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/AttributionHandler;Lcom/adjust/sdk/SessionResponseData;)V
    .registers 3
    .param p1, "this$0"    # Lcom/adjust/sdk/AttributionHandler;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/adjust/sdk/AttributionHandler$3;->this$0:Lcom/adjust/sdk/AttributionHandler;

    iput-object p2, p0, Lcom/adjust/sdk/AttributionHandler$3;->val$sessionResponseData:Lcom/adjust/sdk/SessionResponseData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 87
    iget-object v1, p0, Lcom/adjust/sdk/AttributionHandler$3;->this$0:Lcom/adjust/sdk/AttributionHandler;

    # getter for: Lcom/adjust/sdk/AttributionHandler;->activityHandlerWeakRef:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/adjust/sdk/AttributionHandler;->access$200(Lcom/adjust/sdk/AttributionHandler;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adjust/sdk/IActivityHandler;

    .line 88
    .local v0, "activityHandler":Lcom/adjust/sdk/IActivityHandler;
    if-nez v0, :cond_f

    .line 92
    :goto_e
    return-void

    .line 91
    :cond_f
    iget-object v1, p0, Lcom/adjust/sdk/AttributionHandler$3;->this$0:Lcom/adjust/sdk/AttributionHandler;

    iget-object v2, p0, Lcom/adjust/sdk/AttributionHandler$3;->val$sessionResponseData:Lcom/adjust/sdk/SessionResponseData;

    # invokes: Lcom/adjust/sdk/AttributionHandler;->checkSessionResponseI(Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/SessionResponseData;)V
    invoke-static {v1, v0, v2}, Lcom/adjust/sdk/AttributionHandler;->access$300(Lcom/adjust/sdk/AttributionHandler;Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/SessionResponseData;)V

    goto :goto_e
.end method
