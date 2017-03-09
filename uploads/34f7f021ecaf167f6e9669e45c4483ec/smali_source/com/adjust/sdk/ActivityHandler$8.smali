.class Lcom/adjust/sdk/ActivityHandler$8;
.super Ljava/lang/Object;
.source "ActivityHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/ActivityHandler;->sendReferrer(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adjust/sdk/ActivityHandler;

.field final synthetic val$clickTime:J

.field final synthetic val$referrer:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/ActivityHandler;Ljava/lang/String;J)V
    .registers 6
    .param p1, "this$0"    # Lcom/adjust/sdk/ActivityHandler;

    .prologue
    .line 460
    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler$8;->this$0:Lcom/adjust/sdk/ActivityHandler;

    iput-object p2, p0, Lcom/adjust/sdk/ActivityHandler$8;->val$referrer:Ljava/lang/String;

    iput-wide p3, p0, Lcom/adjust/sdk/ActivityHandler$8;->val$clickTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 463
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler$8;->this$0:Lcom/adjust/sdk/ActivityHandler;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler$8;->val$referrer:Ljava/lang/String;

    iget-wide v2, p0, Lcom/adjust/sdk/ActivityHandler$8;->val$clickTime:J

    # invokes: Lcom/adjust/sdk/ActivityHandler;->sendReferrerI(Ljava/lang/String;J)V
    invoke-static {v0, v1, v2, v3}, Lcom/adjust/sdk/ActivityHandler;->access$1200(Lcom/adjust/sdk/ActivityHandler;Ljava/lang/String;J)V

    .line 464
    return-void
.end method
