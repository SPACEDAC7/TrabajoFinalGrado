.class public abstract Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;
.super Ljava/lang/Object;
.source "MediaViewerArgumentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final KEY_ASPECT_RATIO:Ljava/lang/String; = "KEY_ASPECT_RATIO"

.field public static final KEY_AVATAR_URL:Ljava/lang/String; = "KEY_AVATAR_URL"

.field public static final KEY_CONTENT_ID:Ljava/lang/String; = "KEY_CONTENT_ID"

.field public static final KEY_CONTENT_URI:Ljava/lang/String; = "KEY_CONTENT_URI"

.field public static final KEY_COVER_IMAGE_URL:Ljava/lang/String; = "KEY_COVER_IMAGE"

.field public static final KEY_DURATION:Ljava/lang/String; = "KEY_DURATION"

.field public static final KEY_INITIAL_PLAYBACK_REASON:Ljava/lang/String; = "KEY_INITIAL_PLAYBACK_REASON"

.field public static final KEY_RECIPE_CLICK_INTENT:Ljava/lang/String; = "KEY_RECIPE_CLICK_INTENT"

.field public static final KEY_REFERRER_FEED_POSITION:Ljava/lang/String; = "KEY_REFERRER_FEED_POSITION"

.field public static final KEY_REFERRER_SCREEN:Ljava/lang/String; = "KEY_REFERRER_SCREEN"

.field public static final KEY_SHOW_CLICK_INTENT:Ljava/lang/String; = "KEY_SHOW_CLICK_INTENT"

.field public static final KEY_SHOW_ID:Ljava/lang/String; = "KEY_SHOW_ID"

.field public static final KEY_SOURCE_URI:Ljava/lang/String; = "KEY_SOURCE_URL"

.field public static final KEY_START_POSITION:Ljava/lang/String; = "KEY_START_POSITION"

.field public static final KEY_VIDEO_TITLE:Ljava/lang/String; = "KEY_VIDEO_TITLE"


# instance fields
.field protected mExtras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10
    .local p0, "this":Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;, "Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;->mExtras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public aspectRatio(F)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;
    .registers 4
    .param p1, "aspectRatio"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;, "Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder<TT;>;"
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;->mExtras:Landroid/os/Bundle;

    const-string v1, "KEY_ASPECT_RATIO"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 52
    return-object p0
.end method

.method public avatarUrl(Ljava/lang/String;)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;
    .registers 4
    .param p1, "avatarUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;, "Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder<TT;>;"
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;->mExtras:Landroid/os/Bundle;

    const-string v1, "KEY_AVATAR_URL"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-object p0
.end method

.method public contentId(Ljava/lang/String;)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;
    .registers 4
    .param p1, "contentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;, "Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder<TT;>;"
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;->mExtras:Landroid/os/Bundle;

    const-string v1, "KEY_CONTENT_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-object p0
.end method

.method public contentUri(Ljava/lang/String;)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;
    .registers 4
    .param p1, "contentUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;, "Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder<TT;>;"
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;->mExtras:Landroid/os/Bundle;

    const-string v1, "KEY_CONTENT_URI"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-object p0
.end method

.method public coverImageUrl(Ljava/io/Serializable;)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;
    .registers 4
    .param p1, "coverImageUrl"    # Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Serializable;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;, "Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder<TT;>;"
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;->mExtras:Landroid/os/Bundle;

    const-string v1, "KEY_COVER_IMAGE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 67
    return-object p0
.end method

.method public duration(J)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;
    .registers 6
    .param p1, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;, "Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder<TT;>;"
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;->mExtras:Landroid/os/Bundle;

    const-string v1, "KEY_DURATION"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 47
    return-object p0
.end method

.method public initialPlaybackReason(Ljava/lang/String;)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;, "Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder<TT;>;"
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;->mExtras:Landroid/os/Bundle;

    const-string v1, "KEY_INITIAL_PLAYBACK_REASON"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-object p0
.end method

.method public recipeClickIntent(Landroid/content/Intent;)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;
    .registers 4
    .param p1, "recipeClickIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;, "Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder<TT;>;"
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;->mExtras:Landroid/os/Bundle;

    const-string v1, "KEY_RECIPE_CLICK_INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 102
    return-object p0
.end method

.method public referrerFeedPosition(I)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;
    .registers 4
    .param p1, "feedPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;, "Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder<TT;>;"
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;->mExtras:Landroid/os/Bundle;

    const-string v1, "KEY_REFERRER_FEED_POSITION"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    return-object p0
.end method

.method public referrerScreen(Ljava/lang/String;)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;
    .registers 4
    .param p1, "referrerScreen"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;, "Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder<TT;>;"
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;->mExtras:Landroid/os/Bundle;

    const-string v1, "KEY_REFERRER_SCREEN"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-object p0
.end method

.method public showClickIntent(Landroid/content/Intent;)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;
    .registers 4
    .param p1, "showClickIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;, "Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder<TT;>;"
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;->mExtras:Landroid/os/Bundle;

    const-string v1, "KEY_SHOW_CLICK_INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 92
    return-object p0
.end method

.method public showId(Ljava/lang/String;)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;
    .registers 4
    .param p1, "showId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;, "Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder<TT;>;"
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;->mExtras:Landroid/os/Bundle;

    const-string v1, "KEY_SHOW_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-object p0
.end method

.method public sourceUri(Ljava/lang/String;)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;
    .registers 4
    .param p1, "sourceUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;, "Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder<TT;>;"
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;->mExtras:Landroid/os/Bundle;

    const-string v1, "KEY_SOURCE_URL"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-object p0
.end method

.method public startPosition(J)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;
    .registers 6
    .param p1, "startPosition"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;, "Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder<TT;>;"
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;->mExtras:Landroid/os/Bundle;

    const-string v1, "KEY_START_POSITION"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 42
    return-object p0
.end method

.method public videoTitle(Ljava/lang/String;)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;
    .registers 4
    .param p1, "videoTitle"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;, "Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder<TT;>;"
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;->mExtras:Landroid/os/Bundle;

    const-string v1, "KEY_VIDEO_TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-object p0
.end method
