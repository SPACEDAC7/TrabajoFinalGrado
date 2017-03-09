.class Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;
.super Ljava/lang/Object;
.source "ManifestFetcher.java"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/util/ManifestFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleFetchHelper"
.end annotation


# instance fields
.field private final callbackLooper:Landroid/os/Looper;

.field private loadStartTimestamp:J

.field private final singleUseLoadable:Lcom/google/android/exoplayer/upstream/UriLoadable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/upstream/UriLoadable",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final singleUseLoader:Lcom/google/android/exoplayer/upstream/Loader;

.field final synthetic this$0:Lcom/google/android/exoplayer/util/ManifestFetcher;

.field private final wrappedCallback:Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/upstream/UriLoadable;Landroid/os/Looper;Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;)V
    .registers 7
    .param p3, "callbackLooper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/upstream/UriLoadable",
            "<TT;>;",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 359
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;, "Lcom/google/android/exoplayer/util/ManifestFetcher<TT;>.SingleFetchHelper;"
    .local p2, "singleUseLoadable":Lcom/google/android/exoplayer/upstream/UriLoadable;, "Lcom/google/android/exoplayer/upstream/UriLoadable<TT;>;"
    .local p4, "wrappedCallback":Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;, "Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback<TT;>;"
    iput-object p1, p0, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;->this$0:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    iput-object p2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;->singleUseLoadable:Lcom/google/android/exoplayer/upstream/UriLoadable;

    .line 361
    iput-object p3, p0, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;->callbackLooper:Landroid/os/Looper;

    .line 362
    iput-object p4, p0, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;->wrappedCallback:Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;

    .line 363
    new-instance v0, Lcom/google/android/exoplayer/upstream/Loader;

    const-string v1, "manifestLoader:single"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;->singleUseLoader:Lcom/google/android/exoplayer/upstream/Loader;

    .line 364
    return-void
.end method

.method private releaseLoader()V
    .registers 2

    .prologue
    .line 403
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;, "Lcom/google/android/exoplayer/util/ManifestFetcher<TT;>.SingleFetchHelper;"
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;->singleUseLoader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->release()V

    .line 404
    return-void
.end method


# virtual methods
.method public onLoadCanceled(Lcom/google/android/exoplayer/upstream/Loader$Loadable;)V
    .registers 4
    .param p1, "loadable"    # Lcom/google/android/exoplayer/upstream/Loader$Loadable;

    .prologue
    .line 386
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;, "Lcom/google/android/exoplayer/util/ManifestFetcher<TT;>.SingleFetchHelper;"
    :try_start_0
    new-instance v0, Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestIOException;

    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestIOException;-><init>(Ljava/lang/Throwable;)V

    .line 387
    .local v0, "exception":Ljava/io/IOException;
    iget-object v1, p0, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;->wrappedCallback:Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;->onSingleManifestError(Ljava/io/IOException;)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_13

    .line 389
    invoke-direct {p0}, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;->releaseLoader()V

    .line 391
    return-void

    .line 389
    .end local v0    # "exception":Ljava/io/IOException;
    :catchall_13
    move-exception v1

    invoke-direct {p0}, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;->releaseLoader()V

    throw v1
.end method

.method public onLoadCompleted(Lcom/google/android/exoplayer/upstream/Loader$Loadable;)V
    .registers 6
    .param p1, "loadable"    # Lcom/google/android/exoplayer/upstream/Loader$Loadable;

    .prologue
    .line 374
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;, "Lcom/google/android/exoplayer/util/ManifestFetcher<TT;>.SingleFetchHelper;"
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;->singleUseLoadable:Lcom/google/android/exoplayer/upstream/UriLoadable;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/upstream/UriLoadable;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 375
    .local v0, "result":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;->this$0:Lcom/google/android/exoplayer/util/ManifestFetcher;

    iget-wide v2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;->loadStartTimestamp:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/exoplayer/util/ManifestFetcher;->onSingleFetchCompleted(Ljava/lang/Object;J)V

    .line 376
    iget-object v1, p0, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;->wrappedCallback:Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;->onSingleManifest(Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_16

    .line 378
    invoke-direct {p0}, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;->releaseLoader()V

    .line 380
    return-void

    .line 378
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :catchall_16
    move-exception v1

    invoke-direct {p0}, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;->releaseLoader()V

    throw v1
.end method

.method public onLoadError(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Ljava/io/IOException;)V
    .registers 4
    .param p1, "loadable"    # Lcom/google/android/exoplayer/upstream/Loader$Loadable;
    .param p2, "exception"    # Ljava/io/IOException;

    .prologue
    .line 396
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;, "Lcom/google/android/exoplayer/util/ManifestFetcher<TT;>.SingleFetchHelper;"
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;->wrappedCallback:Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;

    invoke-interface {v0, p2}, Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;->onSingleManifestError(Ljava/io/IOException;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    .line 398
    invoke-direct {p0}, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;->releaseLoader()V

    .line 400
    return-void

    .line 398
    :catchall_9
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;->releaseLoader()V

    throw v0
.end method

.method public startLoading()V
    .registers 4

    .prologue
    .line 367
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;, "Lcom/google/android/exoplayer/util/ManifestFetcher<TT;>.SingleFetchHelper;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;->loadStartTimestamp:J

    .line 368
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;->singleUseLoader:Lcom/google/android/exoplayer/upstream/Loader;

    iget-object v1, p0, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;->callbackLooper:Landroid/os/Looper;

    iget-object v2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;->singleUseLoadable:Lcom/google/android/exoplayer/upstream/UriLoadable;

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/exoplayer/upstream/Loader;->startLoading(Landroid/os/Looper;Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V

    .line 369
    return-void
.end method
