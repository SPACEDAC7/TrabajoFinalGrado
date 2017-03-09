.class Lcom/adjust/sdk/ActivityHandler$21;
.super Ljava/lang/Object;
.source "ActivityHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/ActivityHandler;->initI()V
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
    .line 668
    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler$21;->this$0:Lcom/adjust/sdk/ActivityHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler$21;->this$0:Lcom/adjust/sdk/ActivityHandler;

    # invokes: Lcom/adjust/sdk/ActivityHandler;->foregroundTimerFiredI()V
    invoke-static {v0}, Lcom/adjust/sdk/ActivityHandler;->access$1900(Lcom/adjust/sdk/ActivityHandler;)V

    .line 672
    return-void
.end method
