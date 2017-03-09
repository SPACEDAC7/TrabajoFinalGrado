.class Lcom/adjust/sdk/AttributionHandler$2;
.super Ljava/lang/Object;
.source "AttributionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/AttributionHandler;->getAttribution()V
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
    .line 74
    iput-object p1, p0, Lcom/adjust/sdk/AttributionHandler$2;->this$0:Lcom/adjust/sdk/AttributionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 77
    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler$2;->this$0:Lcom/adjust/sdk/AttributionHandler;

    const-wide/16 v2, 0x0

    # invokes: Lcom/adjust/sdk/AttributionHandler;->getAttributionI(J)V
    invoke-static {v0, v2, v3}, Lcom/adjust/sdk/AttributionHandler;->access$100(Lcom/adjust/sdk/AttributionHandler;J)V

    .line 78
    return-void
.end method
