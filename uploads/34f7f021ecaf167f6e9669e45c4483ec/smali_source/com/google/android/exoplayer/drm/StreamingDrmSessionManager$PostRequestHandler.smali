.class Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostRequestHandler;
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
    name = "PostRequestHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;Landroid/os/Looper;)V
    .registers 3
    .param p2, "backgroundLooper"    # Landroid/os/Looper;

    .prologue
    .line 536
    .local p0, "this":Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostRequestHandler;, "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager<TT;>.PostRequestHandler;"
    iput-object p1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostRequestHandler;->this$0:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    .line 537
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 538
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 544
    .local p0, "this":Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostRequestHandler;, "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager<TT;>.PostRequestHandler;"
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_3e

    .line 552
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_b

    .line 554
    :catch_b
    move-exception v0

    .line 555
    .local v0, "e":Ljava/lang/Exception;
    move-object v1, v0

    .line 557
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_d
    iget-object v2, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostRequestHandler;->this$0:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    iget-object v2, v2, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postResponseHandler:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostResponseHandler;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3, v1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 558
    return-void

    .line 546
    :pswitch_1b
    :try_start_1b
    iget-object v2, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostRequestHandler;->this$0:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    iget-object v3, v2, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->callback:Lcom/google/android/exoplayer/drm/MediaDrmCallback;

    iget-object v2, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostRequestHandler;->this$0:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    iget-object v4, v2, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->uuid:Ljava/util/UUID;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

    invoke-interface {v3, v4, v2}, Lcom/google/android/exoplayer/drm/MediaDrmCallback;->executeProvisionRequest(Ljava/util/UUID;Lcom/google/android/exoplayer/drm/ExoMediaDrm$ProvisionRequest;)[B

    move-result-object v1

    .line 547
    .local v1, "response":[B
    goto :goto_d

    .line 549
    .end local v1    # "response":[B
    :pswitch_2c
    iget-object v2, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostRequestHandler;->this$0:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    iget-object v3, v2, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->callback:Lcom/google/android/exoplayer/drm/MediaDrmCallback;

    iget-object v2, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostRequestHandler;->this$0:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    iget-object v4, v2, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->uuid:Ljava/util/UUID;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer/drm/ExoMediaDrm$KeyRequest;

    invoke-interface {v3, v4, v2}, Lcom/google/android/exoplayer/drm/MediaDrmCallback;->executeKeyRequest(Ljava/util/UUID;Lcom/google/android/exoplayer/drm/ExoMediaDrm$KeyRequest;)[B
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_3b} :catch_b

    move-result-object v1

    .line 550
    .restart local v1    # "response":[B
    goto :goto_d

    .line 544
    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_2c
    .end packed-switch
.end method
