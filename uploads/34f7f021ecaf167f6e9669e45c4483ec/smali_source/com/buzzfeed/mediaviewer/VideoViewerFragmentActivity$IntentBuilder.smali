.class public Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity$IntentBuilder;
.super Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;
.source "VideoViewerFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity$IntentBuilder;",
        ">",
        "Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static final KEY_SHARED_ELEMENT_TRANSITION:Ljava/lang/String; = "KEY_SHARED_ELEMENT_TRANSITION"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 64
    .local p0, "this":Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity$IntentBuilder;, "Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity$IntentBuilder<TT;>;"
    invoke-direct {p0}, Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;)Landroid/content/Intent;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    .local p0, "this":Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity$IntentBuilder;, "Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity$IntentBuilder<TT;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity$IntentBuilder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 103
    return-object v0
.end method

.method public videoContent(Lcom/buzzfeed/toolkit/content/VideoContent;)Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity$IntentBuilder;
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
    .line 70
    .local p0, "this":Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity$IntentBuilder;, "Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity$IntentBuilder<TT;>;"
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/VideoContent;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity$IntentBuilder;->contentId(Ljava/lang/String;)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;

    move-result-object v3

    check-cast v3, Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity$IntentBuilder;

    .line 71
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/VideoContent;->getSourceUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity$IntentBuilder;->sourceUri(Ljava/lang/String;)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;

    move-result-object v3

    .line 72
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/VideoContent;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;->videoTitle(Ljava/lang/String;)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;

    move-result-object v3

    .line 73
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/VideoContent;->getThumbnailStack()Ljava/util/Stack;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;->coverImageUrl(Ljava/io/Serializable;)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;

    .line 75
    invoke-static {p1}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->getFirstVideoFromVideoContent(Lcom/buzzfeed/toolkit/content/VideoContent;)Lcom/buzzfeed/toolkit/content/WeaverItem$Video;

    move-result-object v2

    .line 76
    .local v2, "video":Lcom/buzzfeed/toolkit/content/WeaverItem$Video;
    if-eqz v2, :cond_40

    .line 78
    invoke-static {v2}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->getHlsVideoContentUri(Lcom/buzzfeed/toolkit/content/WeaverItem$Video;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "contentUri":Ljava/lang/String;
    invoke-static {v2}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->getAspectRatioFromVideo(Lcom/buzzfeed/toolkit/content/WeaverItem$Video;)F

    move-result v0

    .line 80
    .local v0, "aspectRatio":F
    invoke-virtual {v2}, Lcom/buzzfeed/toolkit/content/WeaverItem$Video;->getDuration()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity$IntentBuilder;->duration(J)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;

    move-result-object v3

    check-cast v3, Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity$IntentBuilder;

    .line 81
    invoke-virtual {v3, v1}, Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity$IntentBuilder;->contentUri(Ljava/lang/String;)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;

    move-result-object v3

    .line 82
    invoke-virtual {v3, v0}, Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;->aspectRatio(F)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;

    .line 85
    .end local v0    # "aspectRatio":F
    .end local v1    # "contentUri":Ljava/lang/String;
    :cond_40
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/VideoContent;->getShow()Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;

    move-result-object v3

    if-eqz v3, :cond_51

    .line 86
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/VideoContent;->getShow()Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;

    move-result-object v3

    invoke-virtual {v3}, Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity$IntentBuilder;->showId(Ljava/lang/String;)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;

    .line 89
    :cond_51
    return-object p0
.end method

.method public withSharedElementCoverImage(Landroid/view/View;)Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity$IntentBuilder;
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
    .line 94
    .local p0, "this":Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity$IntentBuilder;, "Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity$IntentBuilder<TT;>;"
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity$IntentBuilder;->mExtras:Landroid/os/Bundle;

    const-string v1, "KEY_SHARED_ELEMENT_TRANSITION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 95
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity$IntentBuilder;->mExtras:Landroid/os/Bundle;

    const-string v1, "KEY_SHARED_ELEMENT_NAME"

    const-string v2, "TRANSITION_NAME_COVER_IMAGE"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v0, "TRANSITION_NAME_COVER_IMAGE"

    invoke-virtual {p1, v0}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 97
    return-object p0
.end method
