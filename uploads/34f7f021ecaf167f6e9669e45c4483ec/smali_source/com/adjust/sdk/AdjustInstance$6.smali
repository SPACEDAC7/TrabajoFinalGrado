.class Lcom/adjust/sdk/AdjustInstance$6;
.super Ljava/lang/Object;
.source "AdjustInstance.java"

# interfaces
.implements Lcom/adjust/sdk/IRunActivityHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/AdjustInstance;->resetSessionPartnerParameters()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adjust/sdk/AdjustInstance;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/AdjustInstance;)V
    .registers 2
    .param p1, "this$0"    # Lcom/adjust/sdk/AdjustInstance;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/adjust/sdk/AdjustInstance$6;->this$0:Lcom/adjust/sdk/AdjustInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/adjust/sdk/ActivityHandler;)V
    .registers 2
    .param p1, "activityHandler"    # Lcom/adjust/sdk/ActivityHandler;

    .prologue
    .line 193
    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityHandler;->resetSessionPartnerParametersI()V

    .line 194
    return-void
.end method
