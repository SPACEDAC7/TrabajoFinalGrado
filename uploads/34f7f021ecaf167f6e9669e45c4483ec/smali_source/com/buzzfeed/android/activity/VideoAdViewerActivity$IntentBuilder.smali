.class public Lcom/buzzfeed/android/activity/VideoAdViewerActivity$IntentBuilder;
.super Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;
.source "VideoAdViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/activity/VideoAdViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder",
        "<",
        "Lcom/buzzfeed/android/activity/VideoAdViewerActivity$IntentBuilder;",
        ">;"
    }
.end annotation


# static fields
.field public static final KEY_SPONSORED_AVATAR_URL:Ljava/lang/String; = "KEY_SPONSOR_AVATAR_URL"

.field public static final KEY_SPONSOR_NAME:Ljava/lang/String; = "KEY_SPONSOR_NAME"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;)Landroid/content/Intent;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/buzzfeed/android/activity/VideoAdViewerActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/buzzfeed/android/activity/VideoAdViewerActivity$IntentBuilder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 103
    return-object v0
.end method

.method public sponsorAvatar(Ljava/lang/String;)Lcom/buzzfeed/android/activity/VideoAdViewerActivity$IntentBuilder;
    .registers 4
    .param p1, "sponsorAvatar"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/buzzfeed/android/activity/VideoAdViewerActivity$IntentBuilder;->mExtras:Landroid/os/Bundle;

    const-string v1, "KEY_SPONSOR_AVATAR_URL"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-object p0
.end method

.method public sponsorName(Ljava/lang/String;)Lcom/buzzfeed/android/activity/VideoAdViewerActivity$IntentBuilder;
    .registers 4
    .param p1, "sponsorName"    # Ljava/lang/String;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/buzzfeed/android/activity/VideoAdViewerActivity$IntentBuilder;->mExtras:Landroid/os/Bundle;

    const-string v1, "KEY_SPONSOR_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-object p0
.end method

.method public videoAd(Lcom/buzzfeed/ads/model/VideoAd;)Lcom/buzzfeed/android/activity/VideoAdViewerActivity$IntentBuilder;
    .registers 6
    .param p1, "videoAd"    # Lcom/buzzfeed/ads/model/VideoAd;

    .prologue
    .line 72
    invoke-virtual {p1}, Lcom/buzzfeed/ads/model/VideoAd;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/activity/VideoAdViewerActivity$IntentBuilder;->contentId(Ljava/lang/String;)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/activity/VideoAdViewerActivity$IntentBuilder;

    .line 73
    invoke-virtual {p1}, Lcom/buzzfeed/ads/model/VideoAd;->getDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/buzzfeed/android/activity/VideoAdViewerActivity$IntentBuilder;->duration(J)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/activity/VideoAdViewerActivity$IntentBuilder;

    .line 74
    invoke-virtual {p1}, Lcom/buzzfeed/ads/model/VideoAd;->getAspectRatio()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/activity/VideoAdViewerActivity$IntentBuilder;->aspectRatio(F)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/activity/VideoAdViewerActivity$IntentBuilder;

    .line 75
    invoke-virtual {p1}, Lcom/buzzfeed/ads/model/VideoAd;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/activity/VideoAdViewerActivity$IntentBuilder;->videoTitle(Ljava/lang/String;)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/activity/VideoAdViewerActivity$IntentBuilder;

    .line 76
    invoke-virtual {p1}, Lcom/buzzfeed/ads/model/VideoAd;->getCoverImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/activity/VideoAdViewerActivity$IntentBuilder;->coverImageUrl(Ljava/io/Serializable;)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/activity/VideoAdViewerActivity$IntentBuilder;

    .line 77
    invoke-virtual {p1}, Lcom/buzzfeed/ads/model/VideoAd;->getSponsorDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/activity/VideoAdViewerActivity$IntentBuilder;->sponsorName(Ljava/lang/String;)Lcom/buzzfeed/android/activity/VideoAdViewerActivity$IntentBuilder;

    move-result-object v0

    .line 78
    invoke-virtual {p1}, Lcom/buzzfeed/ads/model/VideoAd;->getShareUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/activity/VideoAdViewerActivity$IntentBuilder;->sourceUri(Ljava/lang/String;)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;

    .line 80
    invoke-virtual {p1}, Lcom/buzzfeed/ads/model/VideoAd;->promotionType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sponsored"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 81
    invoke-virtual {p1}, Lcom/buzzfeed/ads/model/VideoAd;->getShowAvatar()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/activity/VideoAdViewerActivity$IntentBuilder;->avatarUrl(Ljava/lang/String;)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/activity/VideoAdViewerActivity$IntentBuilder;

    .line 82
    invoke-virtual {p1}, Lcom/buzzfeed/ads/model/VideoAd;->getSponsorUserImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/activity/VideoAdViewerActivity$IntentBuilder;->sponsorAvatar(Ljava/lang/String;)Lcom/buzzfeed/android/activity/VideoAdViewerActivity$IntentBuilder;

    .line 87
    :goto_5e
    return-object p0

    .line 84
    :cond_5f
    invoke-virtual {p1}, Lcom/buzzfeed/ads/model/VideoAd;->getSponsorUserImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/activity/VideoAdViewerActivity$IntentBuilder;->avatarUrl(Ljava/lang/String;)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;

    goto :goto_5e
.end method
