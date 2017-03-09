.class public Lcom/buzzfeed/android/pushnotifications/ShowNotificationUtils;
.super Ljava/lang/Object;
.source "ShowNotificationUtils.java"


# static fields
.field public static final SHOW_ICON_URL:Ljava/lang/String; = "show_icon_url"

.field public static final SHOW_ID:Ljava/lang/String; = "show_id"

.field public static final SHOW_TITLE:Ljava/lang/String; = "show_title"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getShowIdFromPushMessage(Lcom/urbanairship/push/PushMessage;)Ljava/lang/String;
    .registers 3
    .param p0, "message"    # Lcom/urbanairship/push/PushMessage;

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/urbanairship/push/PushMessage;->getPushBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "show_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
