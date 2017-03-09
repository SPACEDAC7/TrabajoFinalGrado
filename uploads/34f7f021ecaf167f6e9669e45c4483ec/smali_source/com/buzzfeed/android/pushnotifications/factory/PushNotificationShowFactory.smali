.class public Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationShowFactory;
.super Ljava/lang/Object;
.source "PushNotificationShowFactory.java"

# interfaces
.implements Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationFactoryProvider;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationShowFactory;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method


# virtual methods
.method public getNotification(Lcom/urbanairship/push/PushMessage;I)Landroid/app/Notification;
    .registers 5
    .param p1, "message"    # Lcom/urbanairship/push/PushMessage;
    .param p2, "i"    # I

    .prologue
    .line 31
    iget-object v0, p0, Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationShowFactory;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationShowFactory;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/buzzfeed/android/pushnotifications/ShowNotificationIntentService;->getStartIntent(Landroid/content/Context;Lcom/urbanairship/push/PushMessage;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNotificationId(Lcom/urbanairship/push/PushMessage;)I
    .registers 4
    .param p1, "message"    # Lcom/urbanairship/push/PushMessage;

    .prologue
    .line 27
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getPushBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "show_title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public handleNotificationDismissed(Ljava/lang/String;)V
    .registers 3
    .param p1, "showId"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {p1}, Lcom/buzzfeed/toolkit/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 48
    invoke-static {}, Lcom/buzzfeed/android/pushnotifications/ShowNotificationStorageProvider;->getInstance()Lcom/buzzfeed/android/pushnotifications/ShowNotificationStorageProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/android/pushnotifications/ShowNotificationStorageProvider;->getShowSubscriptionNotificationStorage()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_11
    return-void
.end method

.method public handleNotificationOpened(Lcom/urbanairship/push/PushMessage;)V
    .registers 4
    .param p1, "message"    # Lcom/urbanairship/push/PushMessage;

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationShowFactory;->handlesPushMessage(Lcom/urbanairship/push/PushMessage;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 44
    :cond_6
    :goto_6
    return-void

    .line 40
    :cond_7
    invoke-static {p1}, Lcom/buzzfeed/android/pushnotifications/ShowNotificationUtils;->getShowIdFromPushMessage(Lcom/urbanairship/push/PushMessage;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "showId":Ljava/lang/String;
    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 42
    invoke-static {}, Lcom/buzzfeed/android/pushnotifications/ShowNotificationStorageProvider;->getInstance()Lcom/buzzfeed/android/pushnotifications/ShowNotificationStorageProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/buzzfeed/android/pushnotifications/ShowNotificationStorageProvider;->getShowSubscriptionNotificationStorage()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6
.end method

.method public handlesPushMessage(Lcom/urbanairship/push/PushMessage;)Z
    .registers 4
    .param p1, "message"    # Lcom/urbanairship/push/PushMessage;

    .prologue
    .line 22
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getPushBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "show_title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
