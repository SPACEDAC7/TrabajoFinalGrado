.class public Lcom/google/android/exoplayer/util/ManifestFetcher;
.super Ljava/lang/Object;
.source "ManifestFetcher.java"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;,
        Lcom/google/android/exoplayer/util/ManifestFetcher$RedirectingManifest;,
        Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;,
        Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;,
        Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestIOException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer/upstream/Loader$Callback;"
    }
.end annotation


# instance fields
.field private currentLoadStartTimestamp:J

.field private currentLoadable:Lcom/google/android/exoplayer/upstream/UriLoadable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/upstream/UriLoadable",
            "<TT;>;"
        }
    .end annotation
.end field

.field private enabledCount:I

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;

.field private loadException:Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestIOException;

.field private loadExceptionCount:I

.field private loadExceptionTimestamp:J

.field private loader:Lcom/google/android/exoplayer/upstream/Loader;

.field private volatile manifest:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile manifestLoadCompleteTimestamp:J

.field private volatile manifestLoadStartTimestamp:J

.field volatile manifestUri:Ljava/lang/String;

.field private final parser:Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/upstream/UriLoadable$Parser",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final uriDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer/upstream/UriDataSource;Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;)V
    .registers 10
    .param p1, "manifestUri"    # Ljava/lang/String;
    .param p2, "uriDataSource"    # Lcom/google/android/exoplayer/upstream/UriDataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer/upstream/UriDataSource;",
            "Lcom/google/android/exoplayer/upstream/UriLoadable$Parser",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<TT;>;"
    .local p3, "parser":Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;, "Lcom/google/android/exoplayer/upstream/UriLoadable$Parser<TT;>;"
    const/4 v4, 0x0

    .line 134
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/util/ManifestFetcher;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/upstream/UriDataSource;Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;Landroid/os/Handler;Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer/upstream/UriDataSource;Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;Landroid/os/Handler;Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;)V
    .registers 6
    .param p1, "manifestUri"    # Ljava/lang/String;
    .param p2, "uriDataSource"    # Lcom/google/android/exoplayer/upstream/UriDataSource;
    .param p4, "eventHandler"    # Landroid/os/Handler;
    .param p5, "eventListener"    # Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer/upstream/UriDataSource;",
            "Lcom/google/android/exoplayer/upstream/UriLoadable$Parser",
            "<TT;>;",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<TT;>;"
    .local p3, "parser":Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;, "Lcom/google/android/exoplayer/upstream/UriLoadable$Parser<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p3, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->parser:Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;

    .line 148
    iput-object p1, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->manifestUri:Ljava/lang/String;

    .line 149
    iput-object p2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->uriDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    .line 150
    iput-object p4, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->eventHandler:Landroid/os/Handler;

    .line 151
    iput-object p5, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->eventListener:Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;

    .line 152
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer/util/ManifestFetcher;)Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer/util/ManifestFetcher;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->eventListener:Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;

    return-object v0
.end method

.method private getRetryDelayMillis(J)J
    .registers 8
    .param p1, "errorCount"    # J

    .prologue
    .line 313
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<TT;>;"
    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private notifyManifestError(Ljava/io/IOException;)V
    .registers 4
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 339
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->eventListener:Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;

    if-eqz v0, :cond_12

    .line 340
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/util/ManifestFetcher$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer/util/ManifestFetcher$3;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 347
    :cond_12
    return-void
.end method

.method private notifyManifestRefreshStarted()V
    .registers 3

    .prologue
    .line 317
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->eventListener:Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;

    if-eqz v0, :cond_12

    .line 318
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/util/ManifestFetcher$1;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer/util/ManifestFetcher$1;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 325
    :cond_12
    return-void
.end method

.method private notifyManifestRefreshed()V
    .registers 3

    .prologue
    .line 328
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->eventListener:Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;

    if-eqz v0, :cond_12

    .line 329
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/util/ManifestFetcher$2;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer/util/ManifestFetcher$2;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 336
    :cond_12
    return-void
.end method


# virtual methods
.method public disable()V
    .registers 2

    .prologue
    .line 235
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<TT;>;"
    iget v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->enabledCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->enabledCount:I

    if-nez v0, :cond_14

    .line 236
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    if-eqz v0, :cond_14

    .line 237
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->release()V

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    .line 241
    :cond_14
    return-void
.end method

.method public enable()V
    .registers 3

    .prologue
    .line 225
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<TT;>;"
    iget v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->enabledCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->enabledCount:I

    if-nez v0, :cond_e

    .line 226
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loadExceptionCount:I

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loadException:Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestIOException;

    .line 229
    :cond_e
    return-void
.end method

.method public getManifest()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->manifest:Ljava/lang/Object;

    return-object v0
.end method

.method public getManifestLoadCompleteTimestamp()J
    .registers 3

    .prologue
    .line 203
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<TT;>;"
    iget-wide v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->manifestLoadCompleteTimestamp:J

    return-wide v0
.end method

.method public getManifestLoadStartTimestamp()J
    .registers 3

    .prologue
    .line 194
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<TT;>;"
    iget-wide v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->manifestLoadStartTimestamp:J

    return-wide v0
.end method

.method public maybeThrowError()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestIOException;
        }
    .end annotation

    .prologue
    .line 215
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loadException:Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestIOException;

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loadExceptionCount:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_a

    .line 216
    :cond_9
    return-void

    .line 218
    :cond_a
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loadException:Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestIOException;

    throw v0
.end method

.method public onLoadCanceled(Lcom/google/android/exoplayer/upstream/Loader$Loadable;)V
    .registers 2
    .param p1, "loadable"    # Lcom/google/android/exoplayer/upstream/Loader$Loadable;

    .prologue
    .line 290
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<TT;>;"
    return-void
.end method

.method public onLoadCompleted(Lcom/google/android/exoplayer/upstream/Loader$Loadable;)V
    .registers 6
    .param p1, "loadable"    # Lcom/google/android/exoplayer/upstream/Loader$Loadable;

    .prologue
    .line 265
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<TT;>;"
    iget-object v2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->currentLoadable:Lcom/google/android/exoplayer/upstream/UriLoadable;

    if-eq v2, p1, :cond_5

    .line 285
    :goto_4
    return-void

    .line 270
    :cond_5
    iget-object v2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->currentLoadable:Lcom/google/android/exoplayer/upstream/UriLoadable;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/upstream/UriLoadable;->getResult()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->manifest:Ljava/lang/Object;

    .line 271
    iget-wide v2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->currentLoadStartTimestamp:J

    iput-wide v2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->manifestLoadStartTimestamp:J

    .line 272
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->manifestLoadCompleteTimestamp:J

    .line 273
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loadExceptionCount:I

    .line 274
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loadException:Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestIOException;

    .line 276
    iget-object v2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->manifest:Ljava/lang/Object;

    instance-of v2, v2, Lcom/google/android/exoplayer/util/ManifestFetcher$RedirectingManifest;

    if-eqz v2, :cond_33

    .line 277
    iget-object v1, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->manifest:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer/util/ManifestFetcher$RedirectingManifest;

    .line 278
    .local v1, "redirectingManifest":Lcom/google/android/exoplayer/util/ManifestFetcher$RedirectingManifest;
    invoke-interface {v1}, Lcom/google/android/exoplayer/util/ManifestFetcher$RedirectingManifest;->getNextManifestUri()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "nextLocation":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 280
    iput-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->manifestUri:Ljava/lang/String;

    .line 284
    .end local v0    # "nextLocation":Ljava/lang/String;
    .end local v1    # "redirectingManifest":Lcom/google/android/exoplayer/util/ManifestFetcher$RedirectingManifest;
    :cond_33
    invoke-direct {p0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->notifyManifestRefreshed()V

    goto :goto_4
.end method

.method public onLoadError(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Ljava/io/IOException;)V
    .registers 5
    .param p1, "loadable"    # Lcom/google/android/exoplayer/upstream/Loader$Loadable;
    .param p2, "exception"    # Ljava/io/IOException;

    .prologue
    .line 294
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->currentLoadable:Lcom/google/android/exoplayer/upstream/UriLoadable;

    if-eq v0, p1, :cond_5

    .line 304
    :goto_4
    return-void

    .line 299
    :cond_5
    iget v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loadExceptionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loadExceptionCount:I

    .line 300
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loadExceptionTimestamp:J

    .line 301
    new-instance v0, Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestIOException;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestIOException;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loadException:Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestIOException;

    .line 303
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loadException:Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestIOException;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->notifyManifestError(Ljava/io/IOException;)V

    goto :goto_4
.end method

.method onSingleFetchCompleted(Ljava/lang/Object;J)V
    .registers 6
    .param p2, "loadStartTimestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->manifest:Ljava/lang/Object;

    .line 308
    iput-wide p2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->manifestLoadStartTimestamp:J

    .line 309
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->manifestLoadCompleteTimestamp:J

    .line 310
    return-void
.end method

.method public requestRefresh()V
    .registers 7

    .prologue
    .line 247
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loadException:Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestIOException;

    if-eqz v0, :cond_17

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loadExceptionTimestamp:J

    iget v4, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loadExceptionCount:I

    int-to-long v4, v4

    .line 248
    invoke-direct {p0, v4, v5}, Lcom/google/android/exoplayer/util/ManifestFetcher;->getRetryDelayMillis(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_17

    .line 261
    :cond_16
    :goto_16
    return-void

    .line 252
    :cond_17
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    if-nez v0, :cond_24

    .line 253
    new-instance v0, Lcom/google/android/exoplayer/upstream/Loader;

    const-string v1, "manifestLoader"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    .line 255
    :cond_24
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    if-nez v0, :cond_16

    .line 256
    new-instance v0, Lcom/google/android/exoplayer/upstream/UriLoadable;

    iget-object v1, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->manifestUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->uriDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    iget-object v3, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->parser:Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer/upstream/UriLoadable;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/upstream/UriDataSource;Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->currentLoadable:Lcom/google/android/exoplayer/upstream/UriLoadable;

    .line 257
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->currentLoadStartTimestamp:J

    .line 258
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    iget-object v1, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->currentLoadable:Lcom/google/android/exoplayer/upstream/UriLoadable;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer/upstream/Loader;->startLoading(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V

    .line 259
    invoke-direct {p0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->notifyManifestRefreshStarted()V

    goto :goto_16
.end method

.method public singleLoad(Landroid/os/Looper;Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;)V
    .registers 8
    .param p1, "callbackLooper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<TT;>;"
    .local p2, "callback":Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;, "Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback<TT;>;"
    new-instance v0, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;

    new-instance v1, Lcom/google/android/exoplayer/upstream/UriLoadable;

    iget-object v2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->manifestUri:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->uriDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    iget-object v4, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->parser:Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/exoplayer/upstream/UriLoadable;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/upstream/UriDataSource;Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;)V

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/upstream/UriLoadable;Landroid/os/Looper;Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;)V

    .line 173
    .local v0, "fetchHelper":Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;, "Lcom/google/android/exoplayer/util/ManifestFetcher<TT;>.SingleFetchHelper;"
    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;->startLoading()V

    .line 174
    return-void
.end method

.method public updateManifestUri(Ljava/lang/String;)V
    .registers 2
    .param p1, "manifestUri"    # Ljava/lang/String;

    .prologue
    .line 160
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<TT;>;"
    iput-object p1, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->manifestUri:Ljava/lang/String;

    .line 161
    return-void
.end method
