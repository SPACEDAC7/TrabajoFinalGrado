.class public Lcom/buzzfeed/mediaviewer/VideoViewerFragment$BundleBuilder;
.super Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;
.source "VideoViewerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/mediaviewer/VideoViewerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BundleBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/buzzfeed/mediaviewer/VideoViewerFragment$BundleBuilder;",
        ">",
        "Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static final KEY_SHARED_ELEMENT_NAME:Ljava/lang/String; = "KEY_SHARED_ELEMENT_NAME"

.field public static final KEY_SHARED_ELEMENT_TRANSITION:Ljava/lang/String; = "KEY_SHARED_ELEMENT_TRANSITION"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 419
    .local p0, "this":Lcom/buzzfeed/mediaviewer/VideoViewerFragment$BundleBuilder;, "Lcom/buzzfeed/mediaviewer/VideoViewerFragment$BundleBuilder<TT;>;"
    invoke-direct {p0}, Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/os/Bundle;
    .registers 3

    .prologue
    .line 469
    .local p0, "this":Lcom/buzzfeed/mediaviewer/VideoViewerFragment$BundleBuilder;, "Lcom/buzzfeed/mediaviewer/VideoViewerFragment$BundleBuilder<TT;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 470
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$BundleBuilder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 471
    return-object v0
.end method

.method public videoContent(Lcom/buzzfeed/toolkit/content/VideoContent;)Lcom/buzzfeed/mediaviewer/VideoViewerFragment$BundleBuilder;
    .registers 8
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/VideoContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/buzzfeed/toolkit/content/VideoContent;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 426
    .local p0, "this":Lcom/buzzfeed/mediaviewer/VideoViewerFragment$BundleBuilder;, "Lcom/buzzfeed/mediaviewer/VideoViewerFragment$BundleBuilder<TT;>;"
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/VideoContent;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$BundleBuilder;->contentId(Ljava/lang/String;)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;

    move-result-object v3

    check-cast v3, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$BundleBuilder;

    .line 427
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/VideoContent;->getShareUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$BundleBuilder;->sourceUri(Ljava/lang/String;)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;

    move-result-object v3

    .line 428
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/VideoContent;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;->videoTitle(Ljava/lang/String;)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;

    move-result-object v3

    .line 429
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/VideoContent;->getThumbnailStack()Ljava/util/Stack;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;->coverImageUrl(Ljava/io/Serializable;)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;

    .line 431
    invoke-static {p1}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->getFirstVideoFromVideoContent(Lcom/buzzfeed/toolkit/content/VideoContent;)Lcom/buzzfeed/toolkit/content/WeaverItem$Video;

    move-result-object v2

    .line 432
    .local v2, "video":Lcom/buzzfeed/toolkit/content/WeaverItem$Video;
    if-eqz v2, :cond_4a

    .line 434
    invoke-static {v2}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->getHlsVideoContentUri(Lcom/buzzfeed/toolkit/content/WeaverItem$Video;)Ljava/lang/String;

    move-result-object v1

    .line 435
    .local v1, "contentUri":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_35

    .line 437
    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/NetworkUtil;->convertHttpToHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 439
    :cond_35
    invoke-static {v2}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->getAspectRatioFromVideo(Lcom/buzzfeed/toolkit/content/WeaverItem$Video;)F

    move-result v0

    .line 440
    .local v0, "aspectRatio":F
    invoke-virtual {v2}, Lcom/buzzfeed/toolkit/content/WeaverItem$Video;->getDuration()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$BundleBuilder;->duration(J)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;

    move-result-object v3

    check-cast v3, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$BundleBuilder;

    .line 441
    invoke-virtual {v3, v1}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$BundleBuilder;->contentUri(Ljava/lang/String;)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;

    move-result-object v3

    .line 442
    invoke-virtual {v3, v0}, Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;->aspectRatio(F)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;

    .line 445
    .end local v0    # "aspectRatio":F
    .end local v1    # "contentUri":Ljava/lang/String;
    :cond_4a
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/VideoContent;->getShow()Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;

    move-result-object v3

    if-eqz v3, :cond_5b

    .line 446
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/VideoContent;->getShow()Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;

    move-result-object v3

    invoke-virtual {v3}, Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$BundleBuilder;->showId(Ljava/lang/String;)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;

    .line 449
    :cond_5b
    return-object p0
.end method

.method public withSharedElementCoverImage(Landroid/view/View;)Lcom/buzzfeed/mediaviewer/VideoViewerFragment$BundleBuilder;
    .registers 5
    .param p1, "sharedElement"    # Landroid/view/View;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 462
    .local p0, "this":Lcom/buzzfeed/mediaviewer/VideoViewerFragment$BundleBuilder;, "Lcom/buzzfeed/mediaviewer/VideoViewerFragment$BundleBuilder<TT;>;"
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$BundleBuilder;->mExtras:Landroid/os/Bundle;

    const-string v1, "KEY_SHARED_ELEMENT_TRANSITION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 463
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$BundleBuilder;->mExtras:Landroid/os/Bundle;

    const-string v1, "KEY_SHARED_ELEMENT_NAME"

    const-string v2, "TRANSITION_NAME_COVER_IMAGE"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string v0, "TRANSITION_NAME_COVER_IMAGE"

    invoke-virtual {p1, v0}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 465
    return-object p0
.end method

.method public withSharedElementVideo(Landroid/view/TextureView;)Lcom/buzzfeed/mediaviewer/VideoViewerFragment$BundleBuilder;
    .registers 5
    .param p1, "sharedElement"    # Landroid/view/TextureView;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/TextureView;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 454
    .local p0, "this":Lcom/buzzfeed/mediaviewer/VideoViewerFragment$BundleBuilder;, "Lcom/buzzfeed/mediaviewer/VideoViewerFragment$BundleBuilder<TT;>;"
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$BundleBuilder;->mExtras:Landroid/os/Bundle;

    const-string v1, "KEY_SHARED_ELEMENT_TRANSITION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 455
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$BundleBuilder;->mExtras:Landroid/os/Bundle;

    const-string v1, "KEY_SHARED_ELEMENT_NAME"

    const-string v2, "TRANSITION_NAME_VIDEO"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string v0, "TRANSITION_NAME_VIDEO"

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setTransitionName(Ljava/lang/String;)V

    .line 457
    return-object p0
.end method
