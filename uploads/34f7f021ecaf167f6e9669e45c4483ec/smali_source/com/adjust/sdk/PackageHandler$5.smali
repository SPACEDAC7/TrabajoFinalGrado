.class Lcom/adjust/sdk/PackageHandler$5;
.super Ljava/lang/Object;
.source "PackageHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/PackageHandler;->closeFirstPackage(Lcom/adjust/sdk/ResponseData;Lcom/adjust/sdk/ActivityPackage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adjust/sdk/PackageHandler;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/PackageHandler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/adjust/sdk/PackageHandler;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/adjust/sdk/PackageHandler$5;->this$0:Lcom/adjust/sdk/PackageHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 145
    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler$5;->this$0:Lcom/adjust/sdk/PackageHandler;

    # getter for: Lcom/adjust/sdk/PackageHandler;->logger:Lcom/adjust/sdk/ILogger;
    invoke-static {v0}, Lcom/adjust/sdk/PackageHandler;->access$400(Lcom/adjust/sdk/PackageHandler;)Lcom/adjust/sdk/ILogger;

    move-result-object v0

    const-string v1, "Package handler can send"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler$5;->this$0:Lcom/adjust/sdk/PackageHandler;

    # getter for: Lcom/adjust/sdk/PackageHandler;->isSending:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/adjust/sdk/PackageHandler;->access$500(Lcom/adjust/sdk/PackageHandler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 149
    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler$5;->this$0:Lcom/adjust/sdk/PackageHandler;

    invoke-virtual {v0}, Lcom/adjust/sdk/PackageHandler;->sendFirstPackage()V

    .line 150
    return-void
.end method
