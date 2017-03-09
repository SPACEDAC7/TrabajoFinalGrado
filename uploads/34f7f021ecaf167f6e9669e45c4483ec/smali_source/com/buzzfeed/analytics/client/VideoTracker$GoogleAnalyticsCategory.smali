.class public Lcom/buzzfeed/analytics/client/VideoTracker$GoogleAnalyticsCategory;
.super Ljava/lang/Object;
.source "VideoTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/analytics/client/VideoTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GoogleAnalyticsCategory"
.end annotation


# static fields
.field public static final FEED:Ljava/lang/String; = "Feed"

.field public static final MEDIA_VIEWER:Ljava/lang/String; = "MediaViewer"

.field public static final SHARE:Ljava/lang/String; = "Share"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
