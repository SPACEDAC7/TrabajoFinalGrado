.class Lcom/adjust/sdk/SdkClickHandler$3;
.super Ljava/lang/Object;
.source "SdkClickHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/SdkClickHandler;->sendNextSdkClickI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adjust/sdk/SdkClickHandler;

.field final synthetic val$sdkClickPackage:Lcom/adjust/sdk/ActivityPackage;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/SdkClickHandler;Lcom/adjust/sdk/ActivityPackage;)V
    .registers 3
    .param p1, "this$0"    # Lcom/adjust/sdk/SdkClickHandler;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/adjust/sdk/SdkClickHandler$3;->this$0:Lcom/adjust/sdk/SdkClickHandler;

    iput-object p2, p0, Lcom/adjust/sdk/SdkClickHandler$3;->val$sdkClickPackage:Lcom/adjust/sdk/ActivityPackage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/adjust/sdk/SdkClickHandler$3;->this$0:Lcom/adjust/sdk/SdkClickHandler;

    iget-object v1, p0, Lcom/adjust/sdk/SdkClickHandler$3;->val$sdkClickPackage:Lcom/adjust/sdk/ActivityPackage;

    # invokes: Lcom/adjust/sdk/SdkClickHandler;->sendSdkClickI(Lcom/adjust/sdk/ActivityPackage;)V
    invoke-static {v0, v1}, Lcom/adjust/sdk/SdkClickHandler;->access$400(Lcom/adjust/sdk/SdkClickHandler;Lcom/adjust/sdk/ActivityPackage;)V

    .line 103
    iget-object v0, p0, Lcom/adjust/sdk/SdkClickHandler$3;->this$0:Lcom/adjust/sdk/SdkClickHandler;

    # invokes: Lcom/adjust/sdk/SdkClickHandler;->sendNextSdkClick()V
    invoke-static {v0}, Lcom/adjust/sdk/SdkClickHandler;->access$200(Lcom/adjust/sdk/SdkClickHandler;)V

    .line 104
    return-void
.end method
