.class public Lcom/buzzfeed/buffet/ui/listener/BuffetAutoPlayDelegate;
.super Ljava/lang/Object;
.source "BuffetAutoPlayDelegate.java"

# interfaces
.implements Lcom/buzzfeed/android/vcr/view/VCRMediaRecyclerView$AutoPlayDelegate;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentUri(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Ljava/lang/String;
    .registers 6
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 36
    move-object v2, p1

    check-cast v2, Lcom/buzzfeed/buffet/ui/holder/VideoCard;

    .line 37
    .local v2, "videoCard":Lcom/buzzfeed/buffet/ui/holder/VideoCard;
    invoke-virtual {v2}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->isAd()Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x0

    .line 40
    :goto_a
    return-object v3

    .line 38
    :cond_b
    invoke-virtual {v2}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->getVideoContent()Lcom/buzzfeed/toolkit/content/VideoContent;

    move-result-object v3

    invoke-static {v3}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->getFirstVideoFromVideoContent(Lcom/buzzfeed/toolkit/content/VideoContent;)Lcom/buzzfeed/toolkit/content/WeaverItem$Video;

    move-result-object v1

    .line 39
    .local v1, "video":Lcom/buzzfeed/toolkit/content/WeaverItem$Video;
    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->getHlsVideoContentUri(Lcom/buzzfeed/toolkit/content/WeaverItem$Video;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "contentUri":Ljava/lang/String;
    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/NetworkUtil;->convertHttpToHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_a
.end method

.method public getTextureView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/view/TextureView;
    .registers 4
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 22
    move-object v0, p1

    check-cast v0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;

    .line 23
    .local v0, "videoCard":Lcom/buzzfeed/buffet/ui/holder/VideoCard;
    invoke-virtual {v0}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->getTextureView()Landroid/view/TextureView;

    move-result-object v1

    return-object v1
.end method

.method public hasVideoContent(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .registers 5
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 28
    move-object v1, p1

    check-cast v1, Lcom/buzzfeed/buffet/ui/holder/VideoCard;

    .line 29
    .local v1, "videoCard":Lcom/buzzfeed/buffet/ui/holder/VideoCard;
    invoke-virtual {v1}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->isAd()Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    .line 31
    :goto_a
    return v2

    .line 30
    :cond_b
    invoke-virtual {v1}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->getVideoContent()Lcom/buzzfeed/toolkit/content/VideoContent;

    move-result-object v2

    invoke-static {v2}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->getFirstVideoFromVideoContent(Lcom/buzzfeed/toolkit/content/VideoContent;)Lcom/buzzfeed/toolkit/content/WeaverItem$Video;

    move-result-object v0

    .line 31
    .local v0, "video":Lcom/buzzfeed/toolkit/content/WeaverItem$Video;
    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->hasHlsVideoContent(Lcom/buzzfeed/toolkit/content/WeaverItem$Video;)Z

    move-result v2

    goto :goto_a
.end method
