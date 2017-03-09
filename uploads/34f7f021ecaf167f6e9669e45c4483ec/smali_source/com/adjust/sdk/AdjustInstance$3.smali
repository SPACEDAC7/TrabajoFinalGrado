.class Lcom/adjust/sdk/AdjustInstance$3;
.super Ljava/lang/Object;
.source "AdjustInstance.java"

# interfaces
.implements Lcom/adjust/sdk/IRunActivityHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/AdjustInstance;->removeSessionCallbackParameter(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adjust/sdk/AdjustInstance;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/AdjustInstance;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/adjust/sdk/AdjustInstance;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/adjust/sdk/AdjustInstance$3;->this$0:Lcom/adjust/sdk/AdjustInstance;

    iput-object p2, p0, Lcom/adjust/sdk/AdjustInstance$3;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/adjust/sdk/ActivityHandler;)V
    .registers 3
    .param p1, "activityHandler"    # Lcom/adjust/sdk/ActivityHandler;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance$3;->val$key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/adjust/sdk/ActivityHandler;->removeSessionCallbackParameterI(Ljava/lang/String;)V

    .line 140
    return-void
.end method
