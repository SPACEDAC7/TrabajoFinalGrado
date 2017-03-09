.class final Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$InternalEventProxy;
.super Lcom/buzzfeed/android/vcr/player/VCRExoPlayerEventProxy;
.source "VCRExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InternalEventProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;)V
    .registers 2

    .prologue
    .line 375
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$InternalEventProxy;->this$0:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayerEventProxy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;
    .param p2, "x1"    # Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$1;

    .prologue
    .line 375
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$InternalEventProxy;-><init>(Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;)V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(IIIF)V
    .registers 9
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unappliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F

    .prologue
    .line 380
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$InternalEventProxy;->this$0:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    # getter for: Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v1}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->access$400(Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$Listener;

    .line 381
    .local v0, "listener":Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$Listener;
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$Listener;->onVideoSizeChanged(IIIF)V

    goto :goto_a

    .line 385
    .end local v0    # "listener":Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$Listener;
    :cond_1a
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer$InternalEventProxy;->this$0:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    # getter for: Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->mIsDebugEnabled:Z
    invoke-static {v1}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->access$500(Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 386
    # getter for: Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->access$600()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "videoSizeChanged ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :cond_61
    return-void
.end method
