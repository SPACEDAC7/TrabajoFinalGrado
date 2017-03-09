.class Lcom/adjust/sdk/AttributionHandler$1;
.super Ljava/lang/Object;
.source "AttributionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/AttributionHandler;-><init>(Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/ActivityPackage;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adjust/sdk/AttributionHandler;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/AttributionHandler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/adjust/sdk/AttributionHandler;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/adjust/sdk/AttributionHandler$1;->this$0:Lcom/adjust/sdk/AttributionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler$1;->this$0:Lcom/adjust/sdk/AttributionHandler;

    # invokes: Lcom/adjust/sdk/AttributionHandler;->sendAttributionRequestI()V
    invoke-static {v0}, Lcom/adjust/sdk/AttributionHandler;->access$000(Lcom/adjust/sdk/AttributionHandler;)V

    .line 57
    return-void
.end method
