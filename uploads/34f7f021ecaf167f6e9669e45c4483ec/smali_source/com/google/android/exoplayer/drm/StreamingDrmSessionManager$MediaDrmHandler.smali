.class Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;
.super Landroid/os/Handler;
.source "StreamingDrmSessionManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaDrmHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 476
    .local p0, "this":Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;, "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager<TT;>.MediaDrmHandler;"
    iput-object p1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;->this$0:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    .line 477
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 478
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .local p0, "this":Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;, "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager<TT;>.MediaDrmHandler;"
    const/4 v2, 0x3

    .line 483
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;->this$0:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    # getter for: Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->openCount:I
    invoke-static {v0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->access$200(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;)I

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;->this$0:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    # getter for: Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I
    invoke-static {v0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->access$300(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;)I

    move-result v0

    if-eq v0, v2, :cond_1b

    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;->this$0:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    # getter for: Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I
    invoke-static {v0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->access$300(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1b

    .line 499
    :cond_1a
    :goto_1a
    return-void

    .line 486
    :cond_1b
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_42

    goto :goto_1a

    .line 495
    :pswitch_21
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;->this$0:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    # setter for: Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I
    invoke-static {v0, v2}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->access$302(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;I)I

    .line 496
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;->this$0:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    # invokes: Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postProvisionRequest()V
    invoke-static {v0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->access$600(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;)V

    goto :goto_1a

    .line 488
    :pswitch_2c
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;->this$0:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    # invokes: Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postKeyRequest()V
    invoke-static {v0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->access$400(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;)V

    goto :goto_1a

    .line 491
    :pswitch_32
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;->this$0:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    # setter for: Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I
    invoke-static {v0, v2}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->access$302(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;I)I

    .line 492
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;->this$0:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    new-instance v1, Lcom/google/android/exoplayer/drm/KeysExpiredException;

    invoke-direct {v1}, Lcom/google/android/exoplayer/drm/KeysExpiredException;-><init>()V

    # invokes: Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V
    invoke-static {v0, v1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->access$500(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;Ljava/lang/Exception;)V

    goto :goto_1a

    .line 486
    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_21
        :pswitch_2c
        :pswitch_32
    .end packed-switch
.end method
