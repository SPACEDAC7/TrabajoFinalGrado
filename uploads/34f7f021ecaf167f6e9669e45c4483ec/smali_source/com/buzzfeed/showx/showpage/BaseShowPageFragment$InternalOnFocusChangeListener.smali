.class Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$InternalOnFocusChangeListener;
.super Ljava/lang/Object;
.source "BaseShowPageFragment.java"

# interfaces
.implements Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalOnFocusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;)V
    .registers 2

    .prologue
    .line 764
    iput-object p1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$InternalOnFocusChangeListener;->this$0:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;
    .param p2, "x1"    # Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$1;

    .prologue
    .line 764
    invoke-direct {p0, p1}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$InternalOnFocusChangeListener;-><init>(Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;)V

    return-void
.end method

.method private handleVideoFocusChange(Lcom/buzzfeed/buffet/ui/holder/VideoCard;Z)V
    .registers 4
    .param p1, "videoCard"    # Lcom/buzzfeed/buffet/ui/holder/VideoCard;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 781
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$InternalOnFocusChangeListener;->this$0:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;

    iget-object v0, v0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    if-nez v0, :cond_7

    .line 788
    :goto_6
    return-void

    .line 782
    :cond_7
    if-eqz p2, :cond_14

    .line 783
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$InternalOnFocusChangeListener;->this$0:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->startPlayback(Lcom/buzzfeed/buffet/ui/holder/VideoCard;)V

    .line 787
    :goto_e
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$InternalOnFocusChangeListener;->this$0:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;

    invoke-virtual {v0, p1, p2}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->onVideoCardFocusChanged(Lcom/buzzfeed/buffet/ui/holder/VideoCard;Z)V

    goto :goto_6

    .line 785
    :cond_14
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$InternalOnFocusChangeListener;->this$0:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;

    invoke-virtual {v0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->stopPlayback()V

    goto :goto_e
.end method


# virtual methods
.method public onFocusChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V
    .registers 7
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 768
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    invoke-static {v1}, Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;->fromInt(I)Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;

    move-result-object v0

    .line 770
    .local v0, "type":Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;
    sget-object v1, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$8;->$SwitchMap$com$buzzfeed$showx$showpage$data$model$ShowPageItemType:[I

    invoke-virtual {v0}, Lcom/buzzfeed/showx/showpage/data/model/ShowPageItemType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_32

    .line 776
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No case for viewType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 773
    :pswitch_2c
    check-cast p1, Lcom/buzzfeed/buffet/ui/holder/VideoCard;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$InternalOnFocusChangeListener;->handleVideoFocusChange(Lcom/buzzfeed/buffet/ui/holder/VideoCard;Z)V

    .line 778
    return-void

    .line 770
    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2c
    .end packed-switch
.end method
