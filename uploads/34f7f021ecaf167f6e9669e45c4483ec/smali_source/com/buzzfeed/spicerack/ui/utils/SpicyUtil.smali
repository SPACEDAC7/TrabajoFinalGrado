.class public Lcom/buzzfeed/spicerack/ui/utils/SpicyUtil;
.super Ljava/lang/Object;
.source "SpicyUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateTopOffset(Landroid/content/Context;I)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "top"    # I

    .prologue
    .line 16
    invoke-static {p0}, Lcom/buzzfeed/toolkit/util/UIUtil;->getActionBarHeight(Landroid/content/Context;)I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method public static isYoutubeSubbuzzAndYoutubeAvailable(Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;Landroid/content/Context;)Z
    .registers 3
    .param p0, "subBuzz"    # Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->isYoutube()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p1}, Lcom/buzzfeed/spicerack/ui/utils/SpicyUtil;->youTubeApiServiceIsAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static youTubeApiServiceIsAvailable(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/buzzfeed/spicerack/ui/utils/SpicyUtil;

    invoke-static {v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".youTubeApiServiceIsAvailable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "TAG":Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/youtube/player/YouTubeApiServiceUtil;->isYouTubeApiServiceAvailable(Landroid/content/Context;)Lcom/google/android/youtube/player/YouTubeInitializationResult;

    move-result-object v1

    .line 26
    .local v1, "result":Lcom/google/android/youtube/player/YouTubeInitializationResult;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "youTubeApiServiceIsAvailable check: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/youtube/player/YouTubeInitializationResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v1}, Lcom/google/android/youtube/player/YouTubeInitializationResult;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/youtube/player/YouTubeInitializationResult;->SUCCESS:Lcom/google/android/youtube/player/YouTubeInitializationResult;

    invoke-virtual {v3}, Lcom/google/android/youtube/player/YouTubeInitializationResult;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_58

    invoke-virtual {v1}, Lcom/google/android/youtube/player/YouTubeInitializationResult;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/youtube/player/YouTubeInitializationResult;->NETWORK_ERROR:Lcom/google/android/youtube/player/YouTubeInitializationResult;

    invoke-virtual {v3}, Lcom/google/android/youtube/player/YouTubeInitializationResult;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    :cond_58
    const/4 v2, 0x1

    :goto_59
    return v2

    :cond_5a
    const/4 v2, 0x0

    goto :goto_59
.end method
