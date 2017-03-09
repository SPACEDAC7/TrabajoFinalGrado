.class Lcom/adjust/sdk/SdkClickHandler$2;
.super Ljava/lang/Object;
.source "SdkClickHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/SdkClickHandler;->sendNextSdkClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adjust/sdk/SdkClickHandler;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/SdkClickHandler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/adjust/sdk/SdkClickHandler;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/adjust/sdk/SdkClickHandler$2;->this$0:Lcom/adjust/sdk/SdkClickHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/adjust/sdk/SdkClickHandler$2;->this$0:Lcom/adjust/sdk/SdkClickHandler;

    # invokes: Lcom/adjust/sdk/SdkClickHandler;->sendNextSdkClickI()V
    invoke-static {v0}, Lcom/adjust/sdk/SdkClickHandler;->access$300(Lcom/adjust/sdk/SdkClickHandler;)V

    .line 83
    return-void
.end method
