.class public interface abstract Lcom/buzzfeed/toolkit/content/VideoContent;
.super Ljava/lang/Object;
.source "VideoContent.java"

# interfaces
.implements Lcom/buzzfeed/toolkit/content/PostContent;


# virtual methods
.method public abstract getShow()Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getSourceUri()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getVideos()Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/WeaverItem$Video;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isTrendingVideo()Z
.end method
