.class final Lcom/google/android/exoplayer/upstream/Loader$LoadTask;
.super Landroid/os/Handler;
.source "Loader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/upstream/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LoadTask"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LoadTask"


# instance fields
.field private final callback:Lcom/google/android/exoplayer/upstream/Loader$Callback;

.field private volatile executorThread:Ljava/lang/Thread;

.field private final loadable:Lcom/google/android/exoplayer/upstream/Loader$Loadable;

.field final synthetic this$0:Lcom/google/android/exoplayer/upstream/Loader;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/upstream/Loader;Landroid/os/Looper;Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V
    .registers 5
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "loadable"    # Lcom/google/android/exoplayer/upstream/Loader$Loadable;
    .param p4, "callback"    # Lcom/google/android/exoplayer/upstream/Loader$Callback;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->this$0:Lcom/google/android/exoplayer/upstream/Loader;

    .line 204
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 205
    iput-object p3, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->loadable:Lcom/google/android/exoplayer/upstream/Loader$Loadable;

    .line 206
    iput-object p4, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->callback:Lcom/google/android/exoplayer/upstream/Loader$Callback;

    .line 207
    return-void
.end method

.method private onFinished()V
    .registers 3

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->this$0:Lcom/google/android/exoplayer/upstream/Loader;

    const/4 v1, 0x0

    # setter for: Lcom/google/android/exoplayer/upstream/Loader;->loading:Z
    invoke-static {v0, v1}, Lcom/google/android/exoplayer/upstream/Loader;->access$002(Lcom/google/android/exoplayer/upstream/Loader;Z)Z

    .line 268
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->this$0:Lcom/google/android/exoplayer/upstream/Loader;

    const/4 v1, 0x0

    # setter for: Lcom/google/android/exoplayer/upstream/Loader;->currentTask:Lcom/google/android/exoplayer/upstream/Loader$LoadTask;
    invoke-static {v0, v1}, Lcom/google/android/exoplayer/upstream/Loader;->access$102(Lcom/google/android/exoplayer/upstream/Loader;Lcom/google/android/exoplayer/upstream/Loader$LoadTask;)Lcom/google/android/exoplayer/upstream/Loader$LoadTask;

    .line 269
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 248
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 249
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 251
    :cond_a
    invoke-direct {p0}, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->onFinished()V

    .line 252
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->loadable:Lcom/google/android/exoplayer/upstream/Loader$Loadable;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/Loader$Loadable;->isLoadCanceled()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 253
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->callback:Lcom/google/android/exoplayer/upstream/Loader$Callback;

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->loadable:Lcom/google/android/exoplayer/upstream/Loader$Loadable;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/upstream/Loader$Callback;->onLoadCanceled(Lcom/google/android/exoplayer/upstream/Loader$Loadable;)V

    .line 264
    :goto_1c
    return-void

    .line 256
    :cond_1d
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_38

    goto :goto_1c

    .line 258
    :pswitch_23
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->callback:Lcom/google/android/exoplayer/upstream/Loader$Callback;

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->loadable:Lcom/google/android/exoplayer/upstream/Loader$Loadable;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/upstream/Loader$Callback;->onLoadCompleted(Lcom/google/android/exoplayer/upstream/Loader$Loadable;)V

    goto :goto_1c

    .line 261
    :pswitch_2b
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->callback:Lcom/google/android/exoplayer/upstream/Loader$Callback;

    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->loadable:Lcom/google/android/exoplayer/upstream/Loader$Loadable;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/io/IOException;

    invoke-interface {v1, v2, v0}, Lcom/google/android/exoplayer/upstream/Loader$Callback;->onLoadError(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Ljava/io/IOException;)V

    goto :goto_1c

    .line 256
    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_23
        :pswitch_2b
    .end packed-switch
.end method

.method public quit()V
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->loadable:Lcom/google/android/exoplayer/upstream/Loader$Loadable;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/Loader$Loadable;->cancelLoad()V

    .line 211
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->executorThread:Ljava/lang/Thread;

    if-eqz v0, :cond_e

    .line 212
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->executorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 214
    :cond_e
    return-void
.end method

.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 219
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->executorThread:Ljava/lang/Thread;

    .line 220
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->loadable:Lcom/google/android/exoplayer/upstream/Loader$Loadable;

    invoke-interface {v1}, Lcom/google/android/exoplayer/upstream/Loader$Loadable;->isLoadCanceled()Z

    move-result v1

    if-nez v1, :cond_38

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->loadable:Lcom/google/android/exoplayer/upstream/Loader$Loadable;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".load()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->loadable:Lcom/google/android/exoplayer/upstream/Loader$Loadable;

    invoke-interface {v1}, Lcom/google/android/exoplayer/upstream/Loader$Loadable;->load()V

    .line 223
    invoke-static {}, Lcom/google/android/exoplayer/util/TraceUtil;->endSection()V

    .line 225
    :cond_38
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->sendEmptyMessage(I)Z
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_3c} :catch_3d
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_3c} :catch_46
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3c} :catch_54
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_3c} :catch_69

    .line 244
    :goto_3c
    return-void

    .line 226
    :catch_3d
    move-exception v0

    .line 227
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v4, v0}, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3c

    .line 228
    .end local v0    # "e":Ljava/io/IOException;
    :catch_46
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->loadable:Lcom/google/android/exoplayer/upstream/Loader$Loadable;

    invoke-interface {v1}, Lcom/google/android/exoplayer/upstream/Loader$Loadable;->isLoadCanceled()Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 231
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->sendEmptyMessage(I)Z

    goto :goto_3c

    .line 232
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_54
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LoadTask"

    const-string v2, "Unexpected exception loading stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    new-instance v1, Lcom/google/android/exoplayer/upstream/Loader$UnexpectedLoaderException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/upstream/Loader$UnexpectedLoaderException;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p0, v4, v1}, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3c

    .line 236
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_69
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Error;
    const-string v1, "LoadTask"

    const-string v2, "Unexpected error loading stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 242
    throw v0
.end method
