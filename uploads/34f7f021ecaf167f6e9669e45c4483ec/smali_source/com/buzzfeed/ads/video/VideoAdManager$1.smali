.class Lcom/buzzfeed/ads/video/VideoAdManager$1;
.super Ljava/lang/Object;
.source "VideoAdManager.java"

# interfaces
.implements Lcom/buzzfeed/ads/data/VideoApiClient$ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/ads/video/VideoAdManager;->populateAd(Lcom/google/ads/interactivemedia/v3/api/Ad;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/ads/video/VideoAdManager;

.field final synthetic val$videoAd:Lcom/buzzfeed/ads/model/VideoAd;


# direct methods
.method constructor <init>(Lcom/buzzfeed/ads/video/VideoAdManager;Lcom/buzzfeed/ads/model/VideoAd;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/ads/video/VideoAdManager;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/buzzfeed/ads/video/VideoAdManager$1;->this$0:Lcom/buzzfeed/ads/video/VideoAdManager;

    iput-object p2, p0, Lcom/buzzfeed/ads/video/VideoAdManager$1;->val$videoAd:Lcom/buzzfeed/ads/model/VideoAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;)V
    .registers 3
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/buzzfeed/ads/video/VideoAdManager$1;->this$0:Lcom/buzzfeed/ads/video/VideoAdManager;

    invoke-virtual {v0}, Lcom/buzzfeed/ads/video/VideoAdManager;->notifyAdError()V

    .line 147
    return-void
.end method

.method public onResponse(Lcom/buzzfeed/ads/data/VideoResponse;)V
    .registers 4
    .param p1, "video"    # Lcom/buzzfeed/ads/data/VideoResponse;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/buzzfeed/ads/video/VideoAdManager$1;->val$videoAd:Lcom/buzzfeed/ads/model/VideoAd;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/ads/model/VideoAd;->setVideo(Lcom/buzzfeed/ads/data/VideoResponse;)V

    .line 137
    iget-object v0, p0, Lcom/buzzfeed/ads/video/VideoAdManager$1;->this$0:Lcom/buzzfeed/ads/video/VideoAdManager;

    # getter for: Lcom/buzzfeed/ads/video/VideoAdManager;->mBuffetVideoAdListener:Lcom/buzzfeed/ads/video/VideoAdListener;
    invoke-static {v0}, Lcom/buzzfeed/ads/video/VideoAdManager;->access$000(Lcom/buzzfeed/ads/video/VideoAdManager;)Lcom/buzzfeed/ads/video/VideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/buzzfeed/ads/video/VideoAdManager$1;->val$videoAd:Lcom/buzzfeed/ads/model/VideoAd;

    invoke-virtual {v0}, Lcom/buzzfeed/ads/model/VideoAd;->isValid()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 138
    iget-object v0, p0, Lcom/buzzfeed/ads/video/VideoAdManager$1;->this$0:Lcom/buzzfeed/ads/video/VideoAdManager;

    # getter for: Lcom/buzzfeed/ads/video/VideoAdManager;->mBuffetVideoAdListener:Lcom/buzzfeed/ads/video/VideoAdListener;
    invoke-static {v0}, Lcom/buzzfeed/ads/video/VideoAdManager;->access$000(Lcom/buzzfeed/ads/video/VideoAdManager;)Lcom/buzzfeed/ads/video/VideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/ads/video/VideoAdManager$1;->val$videoAd:Lcom/buzzfeed/ads/model/VideoAd;

    invoke-interface {v0, v1}, Lcom/buzzfeed/ads/video/VideoAdListener;->onReady(Lcom/buzzfeed/ads/model/VideoAd;)V

    .line 142
    :goto_20
    return-void

    .line 140
    :cond_21
    iget-object v0, p0, Lcom/buzzfeed/ads/video/VideoAdManager$1;->this$0:Lcom/buzzfeed/ads/video/VideoAdManager;

    invoke-virtual {v0}, Lcom/buzzfeed/ads/video/VideoAdManager;->notifyAdError()V

    goto :goto_20
.end method
