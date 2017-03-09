.class Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$2;
.super Ljava/lang/Object;
.source "BuffetFragment.java"

# interfaces
.implements Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager$ProgressiveLoadingListener;


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
    .line 231
    iput-object p1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$2;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadMore()V
    .registers 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$2;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->onLoadNextPage()V

    .line 235
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$2;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iget-object v0, v0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoAdLoader:Lcom/buzzfeed/ads/video/VideoAdLoader;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$2;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iget-object v0, v0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mVideoAdLoader:Lcom/buzzfeed/ads/video/VideoAdLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/buzzfeed/ads/video/VideoAdLoader;->setShouldRefreshAds(Z)V

    .line 236
    :cond_13
    return-void
.end method
