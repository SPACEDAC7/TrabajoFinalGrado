.class Lcom/facebook/share/internal/LikeActionController$8;
.super Ljava/lang/Object;
.source "LikeActionController.java"

# interfaces
.implements Lcom/facebook/GraphRequestBatch$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/LikeActionController;->publishUnlikeAsync(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/internal/LikeActionController;

.field final synthetic val$analyticsParameters:Landroid/os/Bundle;

.field final synthetic val$unlikeRequest:Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 1040
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$8;->this$0:Lcom/facebook/share/internal/LikeActionController;

    iput-object p2, p0, Lcom/facebook/share/internal/LikeActionController$8;->val$unlikeRequest:Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;

    iput-object p3, p0, Lcom/facebook/share/internal/LikeActionController$8;->val$analyticsParameters:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchCompleted(Lcom/facebook/GraphRequestBatch;)V
    .registers 6
    .param p1, "batch"    # Lcom/facebook/GraphRequestBatch;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1043
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$8;->this$0:Lcom/facebook/share/internal/LikeActionController;

    # setter for: Lcom/facebook/share/internal/LikeActionController;->isPendingLikeOrUnlike:Z
    invoke-static {v0, v1}, Lcom/facebook/share/internal/LikeActionController;->access$1802(Lcom/facebook/share/internal/LikeActionController;Z)Z

    .line 1045
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$8;->val$unlikeRequest:Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;

    iget-object v0, v0, Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;->error:Lcom/facebook/FacebookRequestError;

    if-eqz v0, :cond_14

    .line 1048
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$8;->this$0:Lcom/facebook/share/internal/LikeActionController;

    const/4 v1, 0x1

    # invokes: Lcom/facebook/share/internal/LikeActionController;->publishDidError(Z)V
    invoke-static {v0, v1}, Lcom/facebook/share/internal/LikeActionController;->access$1900(Lcom/facebook/share/internal/LikeActionController;Z)V

    .line 1062
    :goto_13
    return-void

    .line 1050
    :cond_14
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$8;->this$0:Lcom/facebook/share/internal/LikeActionController;

    # setter for: Lcom/facebook/share/internal/LikeActionController;->unlikeToken:Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/facebook/share/internal/LikeActionController;->access$1102(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)Ljava/lang/String;

    .line 1051
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$8;->this$0:Lcom/facebook/share/internal/LikeActionController;

    # setter for: Lcom/facebook/share/internal/LikeActionController;->isObjectLikedOnServer:Z
    invoke-static {v0, v1}, Lcom/facebook/share/internal/LikeActionController;->access$2002(Lcom/facebook/share/internal/LikeActionController;Z)Z

    .line 1053
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$8;->this$0:Lcom/facebook/share/internal/LikeActionController;

    # invokes: Lcom/facebook/share/internal/LikeActionController;->getAppEventsLogger()Lcom/facebook/appevents/AppEventsLogger;
    invoke-static {v0}, Lcom/facebook/share/internal/LikeActionController;->access$1200(Lcom/facebook/share/internal/LikeActionController;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    const-string v1, "fb_like_control_did_unlike"

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController$8;->val$analyticsParameters:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v3, v2}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 1060
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$8;->this$0:Lcom/facebook/share/internal/LikeActionController;

    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$8;->val$analyticsParameters:Landroid/os/Bundle;

    # invokes: Lcom/facebook/share/internal/LikeActionController;->publishAgainIfNeeded(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/facebook/share/internal/LikeActionController;->access$2100(Lcom/facebook/share/internal/LikeActionController;Landroid/os/Bundle;)V

    goto :goto_13
.end method
