.class Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$6;
.super Ljava/lang/Object;
.source "BuffetFragment.java"

# interfaces
.implements Lcom/buzzfeed/ads/video/VideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->onBuffetAdReady(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    .prologue
    .line 1024
    iput-object p1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$6;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iput p2, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$6;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .registers 3

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$6;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$6;->val$index:I

    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$6;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iget-object v1, v1, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetView:Lcom/buzzfeed/buffet/ui/view/BuffetView;

    invoke-virtual {v1}, Lcom/buzzfeed/buffet/ui/view/BuffetView;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 1038
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$6;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iget-object v0, v0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetView:Lcom/buzzfeed/buffet/ui/view/BuffetView;

    iget v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$6;->val$index:I

    invoke-virtual {v0, v1}, Lcom/buzzfeed/buffet/ui/view/BuffetView;->removeItemAt(I)V

    .line 1039
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$6;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    # getter for: Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mAdLoader:Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;
    invoke-static {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->access$1000(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;)Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$6;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iget-object v1, v1, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetView:Lcom/buzzfeed/buffet/ui/view/BuffetView;

    invoke-virtual {v1}, Lcom/buzzfeed/buffet/ui/view/BuffetView;->getFlowList()Lcom/buzzfeed/toolkit/content/FlowList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/ads/editorial/BuffetNativeAdLoader;->initializeAdPositions(Lcom/buzzfeed/toolkit/content/FlowList;)V

    .line 1041
    :cond_2e
    return-void
.end method

.method public onReady(Lcom/buzzfeed/ads/model/VideoAd;)V
    .registers 5
    .param p1, "videoAd"    # Lcom/buzzfeed/ads/model/VideoAd;

    .prologue
    .line 1027
    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$6;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    invoke-virtual {v1}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1028
    new-instance v0, Lcom/buzzfeed/toolkit/content/FlowItem;

    sget-object v1, Lcom/buzzfeed/toolkit/content/BuffetType;->VIDEO_AD:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/BuffetType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/buzzfeed/toolkit/content/FlowItem;-><init>(Ljava/lang/String;Lcom/buzzfeed/toolkit/content/Content;)V

    .line 1029
    .local v0, "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$6;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iget-object v1, v1, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetView:Lcom/buzzfeed/buffet/ui/view/BuffetView;

    iget v2, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$6;->val$index:I

    invoke-virtual {v1, v2, v0}, Lcom/buzzfeed/buffet/ui/view/BuffetView;->updateItemAt(ILcom/buzzfeed/toolkit/content/FlowItem;)V

    .line 1030
    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$6;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iget v2, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$6;->val$index:I

    # invokes: Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->refocusViewHolderOnUpdateIfNeeded(I)V
    invoke-static {v1, v2}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->access$900(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;I)V

    .line 1032
    .end local v0    # "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    :cond_23
    return-void
.end method
