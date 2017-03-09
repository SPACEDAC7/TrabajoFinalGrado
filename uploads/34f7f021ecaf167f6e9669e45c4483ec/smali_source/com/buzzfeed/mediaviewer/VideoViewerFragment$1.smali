.class final Lcom/buzzfeed/mediaviewer/VideoViewerFragment$1;
.super Landroid/content/IntentFilter;
.source "VideoViewerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/mediaviewer/VideoViewerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 59
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p0, v0}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$1;->addAction(Ljava/lang/String;)V

    .line 60
    return-void
.end method
