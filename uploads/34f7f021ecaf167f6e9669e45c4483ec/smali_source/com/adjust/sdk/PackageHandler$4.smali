.class Lcom/adjust/sdk/PackageHandler$4;
.super Ljava/lang/Object;
.source "PackageHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/PackageHandler;->sendNextPackage(Lcom/adjust/sdk/ResponseData;)V
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
    .line 119
    iput-object p1, p0, Lcom/adjust/sdk/PackageHandler$4;->this$0:Lcom/adjust/sdk/PackageHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler$4;->this$0:Lcom/adjust/sdk/PackageHandler;

    # invokes: Lcom/adjust/sdk/PackageHandler;->sendNextI()V
    invoke-static {v0}, Lcom/adjust/sdk/PackageHandler;->access$300(Lcom/adjust/sdk/PackageHandler;)V

    .line 123
    return-void
.end method
