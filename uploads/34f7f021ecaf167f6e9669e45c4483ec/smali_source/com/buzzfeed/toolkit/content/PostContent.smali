.class public interface abstract Lcom/buzzfeed/toolkit/content/PostContent;
.super Ljava/lang/Object;
.source "PostContent.java"

# interfaces
.implements Lcom/buzzfeed/toolkit/content/Content;
.implements Lcom/buzzfeed/toolkit/sharmo/Shareable;


# virtual methods
.method public abstract getAuthorContents()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/AuthorContent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAuthorDisplayName()Ljava/lang/String;
.end method

.method public abstract getAuthorId()Ljava/lang/String;
.end method

.method public abstract getAuthorUserPage()Ljava/lang/String;
.end method

.method public abstract getCategory()Ljava/lang/String;
.end method

.method public abstract getDataSource()Ljava/lang/String;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getEditUpdated()Ljava/util/Date;
.end method

.method public abstract getImageStack(F)Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLastUpdated()Ljava/util/Date;
.end method

.method public abstract getPublished()Ljava/util/Date;
.end method

.method public abstract getThumbnailStack()Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getUri()Ljava/lang/String;
.end method

.method public abstract getViewCount()J
.end method

.method public abstract getWideStack()Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasEditUpdated()Z
.end method

.method public abstract isAd()Z
.end method

.method public abstract isAllowContributions()Z
.end method

.method public abstract isBookmarked()Z
.end method

.method public abstract isBreaking()Z
.end method

.method public abstract isCommentsEnabled()Z
.end method

.method public abstract isReactionsEnabled()Z
.end method

.method public abstract setBookmarked(J)V
.end method
