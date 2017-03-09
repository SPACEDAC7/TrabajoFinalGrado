.class Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalAutoFocusChangeListener;
.super Ljava/lang/Object;
.source "VCRMediaRecyclerView.java"

# interfaces
.implements Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalAutoFocusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;)V
    .registers 2

    .prologue
    .line 339
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalAutoFocusChangeListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;
    .param p2, "x1"    # Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$1;

    .prologue
    .line 339
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalAutoFocusChangeListener;-><init>(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;)V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V
    .registers 8
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "hasFocus"    # Z

    .prologue
    const/4 v4, 0x0

    .line 343
    iget-object v2, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalAutoFocusChangeListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    # getter for: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mAutoPlayDelegate:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$AutoPlayDelegate;
    invoke-static {v2}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$300(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;)Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$AutoPlayDelegate;

    move-result-object v2

    if-nez v2, :cond_13

    .line 344
    # getter for: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AutoPlayDelegate has not been set. Aborting."

    invoke-static {v2, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :goto_12
    return-void

    .line 348
    :cond_13
    if-eqz p2, :cond_4e

    .line 349
    iget-object v2, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalAutoFocusChangeListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    # getter for: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mAutoPlayDelegate:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$AutoPlayDelegate;
    invoke-static {v2}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$300(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;)Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$AutoPlayDelegate;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$AutoPlayDelegate;->getContentUri(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, "contentUri":Ljava/lang/String;
    invoke-static {v1}, Lcom/buzzfeed/android/vcr/model/VideoType;->inferContentType(Ljava/lang/String;)Lcom/buzzfeed/android/vcr/model/VideoType;

    move-result-object v0

    .line 352
    .local v0, "contentType":Lcom/buzzfeed/android/vcr/model/VideoType;
    iget-object v2, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalAutoFocusChangeListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    # setter for: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mCurrentFocusedViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-static {v2, p1}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$502(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 354
    iget-object v2, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalAutoFocusChangeListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    # getter for: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;
    invoke-static {v2}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$600(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;)Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->setContent(Ljava/lang/String;Lcom/buzzfeed/android/vcr/model/VideoType;)V

    .line 355
    iget-object v2, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalAutoFocusChangeListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    # getter for: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;
    invoke-static {v2}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$600(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;)Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    move-result-object v2

    iget-object v3, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalAutoFocusChangeListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    # getter for: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mAutoPlayDelegate:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$AutoPlayDelegate;
    invoke-static {v3}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$300(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;)Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$AutoPlayDelegate;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$AutoPlayDelegate;->getTextureView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/view/TextureView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->setTargetView(Landroid/view/View;)V

    .line 356
    iget-object v2, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalAutoFocusChangeListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    # getter for: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;
    invoke-static {v2}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$600(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;)Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->play()V

    goto :goto_12

    .line 358
    .end local v0    # "contentType":Lcom/buzzfeed/android/vcr/model/VideoType;
    .end local v1    # "contentUri":Ljava/lang/String;
    :cond_4e
    iget-object v2, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalAutoFocusChangeListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    # getter for: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;
    invoke-static {v2}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$600(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;)Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->stop()V

    .line 359
    iget-object v2, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalAutoFocusChangeListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    # getter for: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;
    invoke-static {v2}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$600(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;)Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    move-result-object v2

    sget-object v3, Lcom/buzzfeed/android/vcr/model/VideoType;->NONE:Lcom/buzzfeed/android/vcr/model/VideoType;

    invoke-virtual {v2, v4, v3}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->setContent(Ljava/lang/String;Lcom/buzzfeed/android/vcr/model/VideoType;)V

    .line 360
    iget-object v2, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalAutoFocusChangeListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    # getter for: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;
    invoke-static {v2}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$600(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;)Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->setTargetView(Landroid/view/View;)V

    .line 361
    iget-object v2, p0, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$InternalAutoFocusChangeListener;->this$0:Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;

    # setter for: Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->mCurrentFocusedViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-static {v2, v4}, Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;->access$502(Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto :goto_12
.end method
