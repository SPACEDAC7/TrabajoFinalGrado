.class public final Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils;
.super Ljava/lang/Object;
.source "VideoPlaybackUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLastKnownVideoPosition(Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;Ljava/lang/String;)J
    .registers 8
    .param p0, "presenter"    # Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;
    .param p1, "contentUri"    # Ljava/lang/String;

    .prologue
    .line 41
    if-eqz p0, :cond_8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 42
    :cond_8
    const-wide/16 v4, 0x0

    .line 56
    :goto_a
    return-wide v4

    .line 45
    :cond_b
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->isPlaying()Z

    move-result v2

    .line 46
    .local v2, "isPlaying":Z
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 49
    .local v1, "hasMatchingContent":Z
    if-eqz v2, :cond_20

    if-eqz v1, :cond_20

    .line 50
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/player/VideoSurfacePresenter;->getCurrentPosition()J

    move-result-wide v4

    .local v4, "positionInVideo":J
    goto :goto_a

    .line 52
    .end local v4    # "positionInVideo":J
    :cond_20
    invoke-static {}, Lcom/buzzfeed/android/vcr/VCRConfig;->getInstance()Lcom/buzzfeed/android/vcr/VCRConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/buzzfeed/android/vcr/VCRConfig;->getGlobalPositionCache()Lcom/buzzfeed/android/vcr/toolbox/PositionCache;

    move-result-object v0

    .line 53
    .local v0, "cache":Lcom/buzzfeed/android/vcr/toolbox/PositionCache;
    invoke-interface {v0, p1}, Lcom/buzzfeed/android/vcr/toolbox/PositionCache;->getPosition(Ljava/lang/String;)J

    move-result-wide v4

    .restart local v4    # "positionInVideo":J
    goto :goto_a
.end method

.method public static getProgressMarkerForPosition(JJ)Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;
    .registers 16
    .param p0, "playbackPosition"    # J
    .param p2, "contentDuration"    # J

    .prologue
    const-wide/16 v10, 0x64

    const-wide/16 v8, 0x4b

    const-wide/16 v6, 0x32

    const-wide/16 v4, 0x19

    .line 64
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gtz v2, :cond_11

    .line 65
    sget-object v2, Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;->START:Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;

    .line 79
    :goto_10
    return-object v2

    .line 68
    :cond_11
    mul-long v2, v10, p0

    div-long v0, v2, p2

    .line 70
    .local v0, "percentCompleted":J
    cmp-long v2, v0, v4

    if-gez v2, :cond_1c

    .line 71
    sget-object v2, Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;->START:Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;

    goto :goto_10

    .line 72
    :cond_1c
    cmp-long v2, v0, v4

    if-ltz v2, :cond_27

    cmp-long v2, v0, v6

    if-gez v2, :cond_27

    .line 73
    sget-object v2, Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;->FIRST_QUARTILE:Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;

    goto :goto_10

    .line 74
    :cond_27
    cmp-long v2, v0, v6

    if-ltz v2, :cond_32

    cmp-long v2, v0, v8

    if-gez v2, :cond_32

    .line 75
    sget-object v2, Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;->MIDPOINT:Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;

    goto :goto_10

    .line 76
    :cond_32
    cmp-long v2, v0, v8

    if-ltz v2, :cond_3d

    cmp-long v2, v0, v10

    if-gez v2, :cond_3d

    .line 77
    sget-object v2, Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;->THIRD_QUARTILE:Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;

    goto :goto_10

    .line 79
    :cond_3d
    sget-object v2, Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;->FINISHED:Lcom/buzzfeed/android/vcr/util/VideoPlaybackUtils$ProgressMarker;

    goto :goto_10
.end method
