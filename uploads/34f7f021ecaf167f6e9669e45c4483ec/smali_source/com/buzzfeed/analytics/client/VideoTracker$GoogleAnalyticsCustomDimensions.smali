.class Lcom/buzzfeed/analytics/client/VideoTracker$GoogleAnalyticsCustomDimensions;
.super Ljava/lang/Object;
.source "VideoTracker.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/analytics/client/VideoTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GoogleAnalyticsCustomDimensions"
.end annotation


# static fields
.field public static final ORIENTATION:I = 0xb

.field public static final VIDEO_ID:I = 0x9

.field public static final VIDEO_TITLE:I = 0xa


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
