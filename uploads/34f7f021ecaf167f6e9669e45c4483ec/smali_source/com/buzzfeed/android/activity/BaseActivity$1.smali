.class final Lcom/buzzfeed/android/activity/BaseActivity$1;
.super Landroid/content/IntentFilter;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/activity/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 31
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/activity/BaseActivity$1;->addAction(Ljava/lang/String;)V

    .line 32
    return-void
.end method