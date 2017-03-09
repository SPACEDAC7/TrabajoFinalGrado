.class Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$InternalOnFocusChangeListener;
.super Ljava/lang/Object;
.source "BuffetFragment.java"

# interfaces
.implements Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalOnFocusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;)V
    .registers 2

    .prologue
    .line 1098
    iput-object p1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$InternalOnFocusChangeListener;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;
    .param p2, "x1"    # Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$1;

    .prologue
    .line 1098
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$InternalOnFocusChangeListener;-><init>(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;)V

    return-void
.end method

.method private handleVideoAdFocusChange(Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;Z)V
    .registers 11
    .param p1, "videoAdCard"    # Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 1117
    invoke-virtual {p1}, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->getAdContent()Lcom/buzzfeed/toolkit/content/VideoAdContent;

    move-result-object v7

    .line 1118
    .local v7, "adContent":Lcom/buzzfeed/toolkit/content/VideoAdContent;
    if-eqz p2, :cond_46

    .line 1119
    if-eqz v7, :cond_34

    invoke-interface {v7}, Lcom/buzzfeed/toolkit/content/VideoAdContent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1120
    invoke-interface {v7}, Lcom/buzzfeed/toolkit/content/VideoAdContent;->getContentUri()Ljava/lang/String;

    move-result-object v3

    .line 1121
    .local v3, "contentUri":Ljava/lang/String;
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$InternalOnFocusChangeListener;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iget-object v0, v0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoAdLoader:Lcom/buzzfeed/ads/video/VideoAdLoader;

    invoke-virtual {v0}, Lcom/buzzfeed/ads/video/VideoAdLoader;->startAd()V

    .line 1122
    invoke-direct {p0, p1, v3}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$InternalOnFocusChangeListener;->startPlayback(Lcom/buzzfeed/buffet/ui/holder/VideoCard;Ljava/lang/String;)V

    .line 1123
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$InternalOnFocusChangeListener;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iget-object v0, v0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetVideoEventTracker:Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;

    .line 1124
    invoke-interface {v7}, Lcom/buzzfeed/toolkit/content/VideoAdContent;->getId()Ljava/lang/String;

    move-result-object v1

    .line 1125
    invoke-interface {v7}, Lcom/buzzfeed/toolkit/content/VideoAdContent;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 1127
    invoke-interface {v7}, Lcom/buzzfeed/toolkit/content/VideoAdContent;->getDuration()J

    move-result-wide v4

    .line 1128
    invoke-virtual {p1}, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->getAdapterPosition()I

    move-result v6

    .line 1123
    invoke-virtual/range {v0 .. v6}, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->setVideoContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 1137
    .end local v3    # "contentUri":Ljava/lang/String;
    :goto_33
    return-void

    .line 1130
    :cond_34
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$InternalOnFocusChangeListener;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    # getter for: Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoCardStateHandler:Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;
    invoke-static {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->access$1200(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;)Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;->setTargetVideoCard(Lcom/buzzfeed/buffet/ui/holder/VideoCard;)V

    .line 1131
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$InternalOnFocusChangeListener;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iget-object v0, v0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetVideoEventTracker:Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->notifyContentReset()V

    goto :goto_33

    .line 1134
    :cond_46
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$InternalOnFocusChangeListener;->stopPlayback(Lcom/buzzfeed/buffet/ui/holder/VideoCard;)V

    .line 1135
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$InternalOnFocusChangeListener;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iget-object v0, v0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetVideoEventTracker:Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->notifyContentReset()V

    goto :goto_33
.end method

.method private handleVideoFocusChange(Lcom/buzzfeed/buffet/ui/holder/VideoCard;Z)V
    .registers 8
    .param p1, "videoCard"    # Lcom/buzzfeed/buffet/ui/holder/VideoCard;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 1140
    if-eqz p2, :cond_21

    .line 1141
    invoke-virtual {p1}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->getVideoContent()Lcom/buzzfeed/toolkit/content/VideoContent;

    move-result-object v2

    .line 1142
    .local v2, "videoContent":Lcom/buzzfeed/toolkit/content/VideoContent;
    invoke-static {v2}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->getFirstVideoFromVideoContent(Lcom/buzzfeed/toolkit/content/VideoContent;)Lcom/buzzfeed/toolkit/content/WeaverItem$Video;

    move-result-object v1

    .line 1143
    .local v1, "video":Lcom/buzzfeed/toolkit/content/WeaverItem$Video;
    if-eqz v2, :cond_20

    if-eqz v1, :cond_20

    .line 1144
    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->getHlsVideoContentUri(Lcom/buzzfeed/toolkit/content/WeaverItem$Video;)Ljava/lang/String;

    move-result-object v0

    .line 1145
    .local v0, "contentUri":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$InternalOnFocusChangeListener;->startPlayback(Lcom/buzzfeed/buffet/ui/holder/VideoCard;Ljava/lang/String;)V

    .line 1146
    iget-object v3, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$InternalOnFocusChangeListener;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iget-object v3, v3, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetVideoEventTracker:Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;

    invoke-virtual {p1}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->getAdapterPosition()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->setVideoContent(Lcom/buzzfeed/toolkit/content/VideoContent;I)V

    .line 1152
    .end local v0    # "contentUri":Ljava/lang/String;
    .end local v1    # "video":Lcom/buzzfeed/toolkit/content/WeaverItem$Video;
    .end local v2    # "videoContent":Lcom/buzzfeed/toolkit/content/VideoContent;
    :cond_20
    :goto_20
    return-void

    .line 1149
    :cond_21
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$InternalOnFocusChangeListener;->stopPlayback(Lcom/buzzfeed/buffet/ui/holder/VideoCard;)V

    .line 1150
    iget-object v3, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$InternalOnFocusChangeListener;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iget-object v3, v3, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetVideoEventTracker:Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;

    invoke-virtual {v3}, Lcom/buzzfeed/buffet/data/tracker/BuffetVideoEventTracker;->notifyContentReset()V

    goto :goto_20
.end method

.method private startPlayback(Lcom/buzzfeed/buffet/ui/holder/VideoCard;Ljava/lang/String;)V
    .registers 5
    .param p1, "videoCard"    # Lcom/buzzfeed/buffet/ui/holder/VideoCard;
    .param p2, "contentUri"    # Ljava/lang/String;

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$InternalOnFocusChangeListener;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    # getter for: Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;
    invoke-static {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->access$1300(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;)Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    move-result-object v0

    invoke-static {p2}, Lcom/buzzfeed/android/vcr/model/VideoType;->inferContentType(Ljava/lang/String;)Lcom/buzzfeed/android/vcr/model/VideoType;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->setContent(Ljava/lang/String;Lcom/buzzfeed/android/vcr/model/VideoType;)V

    .line 1156
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$InternalOnFocusChangeListener;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    # getter for: Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;
    invoke-static {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->access$1300(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;)Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->getTextureView()Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->setTargetView(Landroid/view/View;)V

    .line 1157
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$InternalOnFocusChangeListener;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    # getter for: Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;
    invoke-static {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->access$1300(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;)Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->play()V

    .line 1158
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$InternalOnFocusChangeListener;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    # getter for: Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;
    invoke-static {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->access$1300(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;)Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->setAudioMuted(Z)V

    .line 1159
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$InternalOnFocusChangeListener;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    # getter for: Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoCardStateHandler:Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;
    invoke-static {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->access$1200(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;)Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;->setTargetVideoCard(Lcom/buzzfeed/buffet/ui/holder/VideoCard;)V

    .line 1160
    sget-object v0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;->PREPARING:Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;

    invoke-virtual {p1, v0}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->applyUiState(Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;)V

    .line 1161
    return-void
.end method

.method private stopPlayback(Lcom/buzzfeed/buffet/ui/holder/VideoCard;)V
    .registers 5
    .param p1, "videoCard"    # Lcom/buzzfeed/buffet/ui/holder/VideoCard;

    .prologue
    const/4 v2, 0x0

    .line 1164
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$InternalOnFocusChangeListener;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    # getter for: Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;
    invoke-static {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->access$1300(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;)Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->stop()V

    .line 1165
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$InternalOnFocusChangeListener;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    # getter for: Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;
    invoke-static {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->access$1300(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;)Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    move-result-object v0

    sget-object v1, Lcom/buzzfeed/android/vcr/model/VideoType;->NONE:Lcom/buzzfeed/android/vcr/model/VideoType;

    invoke-virtual {v0, v2, v1}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->setContent(Ljava/lang/String;Lcom/buzzfeed/android/vcr/model/VideoType;)V

    .line 1166
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$InternalOnFocusChangeListener;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    # getter for: Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoPlayerPresenter:Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;
    invoke-static {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->access$1300(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;)Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;->setTargetView(Landroid/view/View;)V

    .line 1167
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$InternalOnFocusChangeListener;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    # getter for: Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoCardStateHandler:Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;
    invoke-static {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->access$1200(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;)Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/buzzfeed/buffet/ui/listener/VideoCardStateHandler;->setTargetVideoCard(Lcom/buzzfeed/buffet/ui/holder/VideoCard;)V

    .line 1168
    sget-object v0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;->STOPPED:Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;

    invoke-virtual {p1, v0}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->applyUiState(Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;)V

    .line 1169
    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V
    .registers 6
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 1102
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    invoke-static {v1}, Lcom/buzzfeed/toolkit/content/BuffetType;->fromInt(I)Lcom/buzzfeed/toolkit/content/BuffetType;

    move-result-object v0

    .line 1104
    .local v0, "type":Lcom/buzzfeed/toolkit/content/BuffetType;
    sget-object v1, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$10;->$SwitchMap$com$buzzfeed$toolkit$content$BuffetType:[I

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/BuffetType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_20

    .line 1114
    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :goto_13
    return-void

    .line 1106
    .restart local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :pswitch_14
    check-cast p1, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$InternalOnFocusChangeListener;->handleVideoAdFocusChange(Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;Z)V

    goto :goto_13

    .line 1110
    .restart local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :pswitch_1a
    check-cast p1, Lcom/buzzfeed/buffet/ui/holder/VideoCard;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$InternalOnFocusChangeListener;->handleVideoFocusChange(Lcom/buzzfeed/buffet/ui/holder/VideoCard;Z)V

    goto :goto_13

    .line 1104
    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_14
        :pswitch_1a
        :pswitch_1a
    .end packed-switch
.end method
