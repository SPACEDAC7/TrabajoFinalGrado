.class final Lcom/buzzfeed/showx/showpage/ShowPagePresenter$InternalBuffetEventListener;
.super Lcom/buzzfeed/showx/showpage/listener/ShowPageBuffetEventListenerImpl;
.source "ShowPagePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/showx/showpage/ShowPagePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InternalBuffetEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;)V
    .registers 2

    .prologue
    .line 288
    iput-object p1, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$InternalBuffetEventListener;->this$0:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    invoke-direct {p0}, Lcom/buzzfeed/showx/showpage/listener/ShowPageBuffetEventListenerImpl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;Lcom/buzzfeed/showx/showpage/ShowPagePresenter$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/showx/showpage/ShowPagePresenter;
    .param p2, "x1"    # Lcom/buzzfeed/showx/showpage/ShowPagePresenter$1;

    .prologue
    .line 288
    invoke-direct {p0, p1}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$InternalBuffetEventListener;-><init>(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;)V

    return-void
.end method


# virtual methods
.method public isSubscribedToShow()Z
    .registers 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$InternalBuffetEventListener;->this$0:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    # getter for: Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mCallbacks:Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;
    invoke-static {v0}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->access$1000(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;)Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$InternalBuffetEventListener;->this$0:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    # getter for: Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mCallbacks:Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;
    invoke-static {v0}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->access$1000(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;)Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;->isSubscribedToShow()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public onCellClicked(Lcom/buzzfeed/toolkit/content/FlowItem;ILandroid/widget/ImageView;Ljava/util/Stack;Z)V
    .registers 17
    .param p1, "flowItem"    # Lcom/buzzfeed/toolkit/content/FlowItem;
    .param p2, "positionInFeed"    # I
    .param p3, "thumbnail"    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "isTallImage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/buzzfeed/toolkit/content/FlowItem;",
            "I",
            "Landroid/widget/ImageView;",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p4, "imageStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->access$1300()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".onCellClicked"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "TAG":Ljava/lang/String;
    invoke-static {p1}, Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;->hasVideoItemType(Lcom/buzzfeed/toolkit/content/FlowItem;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 294
    const-string v1, "Cell was clicked, but didn\'t contain a video item type."

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :cond_22
    :goto_22
    return-void

    .line 298
    :cond_23
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$InternalBuffetEventListener;->this$0:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    # getter for: Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mUpdatableView:Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;
    invoke-static {v1}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->access$800(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;)Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;

    move-result-object v1

    invoke-interface {v1}, Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;->getPlayer()Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    move-result-object v8

    .line 299
    .local v8, "playerPresenter":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v2

    check-cast v2, Lcom/buzzfeed/toolkit/content/VideoContent;

    .line 301
    .local v2, "videoContent":Lcom/buzzfeed/toolkit/content/VideoContent;
    invoke-static {v2}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->getFirstVideoFromVideoContent(Lcom/buzzfeed/toolkit/content/VideoContent;)Lcom/buzzfeed/toolkit/content/WeaverItem$Video;

    move-result-object v9

    .line 302
    .local v9, "video":Lcom/buzzfeed/toolkit/content/WeaverItem$Video;
    invoke-static {v9}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->getHlsVideoContentUri(Lcom/buzzfeed/toolkit/content/WeaverItem$Video;)Ljava/lang/String;

    move-result-object v10

    .line 303
    .local v10, "videoContentUri":Ljava/lang/String;
    invoke-static {v8, v10}, Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils;->getLastKnownVideoPosition(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;Ljava/lang/String;)J

    move-result-wide v4

    .line 304
    .local v4, "positionInVideo":J
    invoke-virtual {v8}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 305
    invoke-virtual {v8}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_64

    const/4 v7, 0x1

    .line 307
    .local v7, "isPlaying":Z
    :goto_50
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$InternalBuffetEventListener;->this$0:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    # getter for: Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mCallbacks:Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;
    invoke-static {v1}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->access$1000(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;)Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 308
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$InternalBuffetEventListener;->this$0:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    # getter for: Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mCallbacks:Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;
    invoke-static {v1}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->access$1000(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;)Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;

    move-result-object v1

    move-object v3, p3

    move v6, p2

    invoke-interface/range {v1 .. v7}, Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;->onVideoCellClicked(Lcom/buzzfeed/toolkit/content/VideoContent;Landroid/widget/ImageView;JIZ)V

    goto :goto_22

    .line 305
    .end local v7    # "isPlaying":Z
    :cond_64
    const/4 v7, 0x0

    goto :goto_50
.end method

.method public onGetRecipeClicked(Ljava/lang/String;)V
    .registers 3
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$InternalBuffetEventListener;->this$0:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    # getter for: Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mCallbacks:Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;
    invoke-static {v0}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->access$1000(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;)Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 329
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$InternalBuffetEventListener;->this$0:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    # getter for: Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mCallbacks:Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;
    invoke-static {v0}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->access$1000(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;)Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;->onGetRecipeClicked(Ljava/lang/String;)V

    .line 331
    :cond_11
    return-void
.end method

.method public onShareClicked(Lcom/buzzfeed/toolkit/content/FlowItem;I)V
    .registers 4
    .param p1, "flowItem"    # Lcom/buzzfeed/toolkit/content/FlowItem;
    .param p2, "positionInFeed"    # I

    .prologue
    .line 315
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$InternalBuffetEventListener;->this$0:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    # getter for: Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mCallbacks:Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;
    invoke-static {v0}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->access$1000(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;)Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 316
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$InternalBuffetEventListener;->this$0:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    # getter for: Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mCallbacks:Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;
    invoke-static {v0}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->access$1000(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;)Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;->onShareClicked(Lcom/buzzfeed/toolkit/content/FlowItem;I)V

    .line 318
    :cond_11
    return-void
.end method

.method public onSubscribeButtonClicked()V
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$InternalBuffetEventListener;->this$0:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    # getter for: Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mCallbacks:Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;
    invoke-static {v0}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->access$1000(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;)Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 336
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$InternalBuffetEventListener;->this$0:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    # getter for: Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mCallbacks:Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;
    invoke-static {v0}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->access$1000(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;)Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;->onSubscribeButtonClicked()V

    .line 338
    :cond_11
    return-void
.end method

.method public onVideoReloadClicked()V
    .registers 3

    .prologue
    .line 322
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$InternalBuffetEventListener;->this$0:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    # getter for: Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mUpdatableView:Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;
    invoke-static {v1}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->access$800(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;)Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;

    move-result-object v1

    invoke-interface {v1}, Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;->getPlayer()Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    move-result-object v0

    .line 323
    .local v0, "playerPresenter":Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;
    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->play()V

    .line 324
    return-void
.end method
