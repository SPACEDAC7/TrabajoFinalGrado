.class Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$1;
.super Ljava/lang/Object;
.source "BuffetFragment.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$1;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .registers 3

    .prologue
    .line 218
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$1;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iget-object v0, v0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetTracker:Lcom/buzzfeed/android/data/tracking/BuffetTracker;

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/tracking/BuffetTracker;->trackPullToRefresh()V

    .line 219
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$1;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->onBuffetRefresh()V

    .line 221
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$1;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iget-object v0, v0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoAdLoader:Lcom/buzzfeed/ads/video/VideoAdLoader;

    if-eqz v0, :cond_2d

    .line 222
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$1;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iget-object v0, v0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoAdLoader:Lcom/buzzfeed/ads/video/VideoAdLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/ads/video/VideoAdLoader;->setShouldRefreshAds(Z)V

    .line 223
    invoke-static {}, Lcom/buzzfeed/android/vcr/VCRConfig;->getInstance()Lcom/buzzfeed/android/vcr/VCRConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/VCRConfig;->getGlobalPositionCache()Lcom/buzzfeed/android/vcr/toolbox/PositionCache;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$1;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iget-object v1, v1, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoAdLoader:Lcom/buzzfeed/ads/video/VideoAdLoader;

    invoke-virtual {v1}, Lcom/buzzfeed/ads/video/VideoAdLoader;->getContentUri()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/buzzfeed/android/vcr/toolbox/PositionCache;->removePosition(Ljava/lang/String;)V

    .line 225
    :cond_2d
    return-void
.end method
