.class public Lcom/buzzfeed/analytics/client/VideoTracker$GoogleAnalyticsAction;
.super Ljava/lang/Object;
.source "VideoTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/analytics/client/VideoTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GoogleAnalyticsAction"
.end annotation


# static fields
.field public static final CLICK_BACK:Ljava/lang/String; = "click:back"

.field public static final CLICK_ENTER_MEDIA_VIEWER:Ljava/lang/String; = "click:enter-media-viewer"

.field public static final CLICK_FEED_MODULE_SHARE_SHEET:Ljava/lang/String; = "click:feed-module/share-sheet"

.field public static final CLICK_MEDIA_VIEWER_SHARE_SHEET:Ljava/lang/String; = "click:media-viewer/share-sheet"

.field public static final CLICK_OPEN_SHARE_SHEET:Ljava/lang/String; = "click:open-share-sheet"

.field public static final CLICK_SHOW_ICON:Ljava/lang/String; = "click:show-icon"

.field public static final CLICK_VIDEO_PAUSE:Ljava/lang/String; = "click:video-pause"

.field public static final CLICK_VIDEO_PLAY:Ljava/lang/String; = "click:video-play"

.field public static final CLICK_VIDEO_RESUME:Ljava/lang/String; = "click:video-resume"

.field public static final VIDEO_AUTOPLAY:Ljava/lang/String; = "video:auto-play"

.field public static final VIDEO_PLAYBACK:Ljava/lang/String; = "video:playback"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
