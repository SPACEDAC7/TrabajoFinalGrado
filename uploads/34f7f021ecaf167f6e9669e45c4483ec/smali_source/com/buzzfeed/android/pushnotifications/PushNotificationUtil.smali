.class public Lcom/buzzfeed/android/pushnotifications/PushNotificationUtil;
.super Ljava/lang/Object;
.source "PushNotificationUtil.java"


# static fields
.field public static final PUSH_NOTIFICATION_KEY_BUZZ:Ljava/lang/String; = "buzz"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-class v0, Lcom/buzzfeed/android/pushnotifications/PushNotificationUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/pushnotifications/PushNotificationUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBuzzUriFromPushMessage(Lcom/urbanairship/push/PushMessage;)Ljava/lang/String;
    .registers 5
    .param p0, "message"    # Lcom/urbanairship/push/PushMessage;

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/urbanairship/push/PushMessage;->getPushBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 60
    .local v2, "extras":Landroid/os/Bundle;
    const-string v3, "buzz"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "buzzUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 62
    invoke-virtual {p0}, Lcom/urbanairship/push/PushMessage;->getActions()Ljava/util/Map;

    move-result-object v0

    .line 63
    .local v0, "actions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/urbanairship/actions/ActionValue;>;"
    const-string v3, "deep_link_action"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    const-string v3, "^d"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 64
    :cond_24
    const-string v3, "deep_link_action"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_38

    .line 65
    const-string v3, "deep_link_action"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/urbanairship/actions/ActionValue;

    invoke-virtual {v3}, Lcom/urbanairship/actions/ActionValue;->getString()Ljava/lang/String;

    move-result-object v1

    .line 67
    :cond_38
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_52

    const-string v3, "^d"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_52

    .line 68
    const-string v3, "^d"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/urbanairship/actions/ActionValue;

    invoke-virtual {v3}, Lcom/urbanairship/actions/ActionValue;->getString()Ljava/lang/String;

    move-result-object v1

    .line 72
    .end local v0    # "actions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/urbanairship/actions/ActionValue;>;"
    :cond_52
    return-object v1
.end method

.method public static handleShowPageOpened(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "showId"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {}, Lcom/buzzfeed/android/pushnotifications/ShowNotificationStorageProvider;->getInstance()Lcom/buzzfeed/android/pushnotifications/ShowNotificationStorageProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/buzzfeed/android/pushnotifications/ShowNotificationStorageProvider;->handleShowPageOpened(Ljava/lang/String;)I

    move-result v0

    .line 44
    .local v0, "notificationId":I
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 45
    return-void
.end method

.method private static logPushMessage(Lcom/urbanairship/push/PushMessage;)V
    .registers 9
    .param p0, "message"    # Lcom/urbanairship/push/PushMessage;

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/urbanairship/push/PushMessage;->getPushBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 77
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 79
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "collapse_key"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "from"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "com.urbanairship.push.NOTIFICATION_ID"

    aput-object v6, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 82
    .local v1, "ignoredKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_22
    :goto_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_61

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 83
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_22

    .line 84
    sget-object v5, Lcom/buzzfeed/android/pushnotifications/PushNotificationUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Push Notification Message Bundle: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    .line 86
    .end local v2    # "key":Ljava/lang/String;
    :cond_61
    return-void
.end method

.method public static notificationReceived(Lcom/urbanairship/push/PushMessage;)V
    .registers 5
    .param p0, "message"    # Lcom/urbanairship/push/PushMessage;

    .prologue
    .line 38
    invoke-static {p0}, Lcom/buzzfeed/android/pushnotifications/PushNotificationUtil;->logPushMessage(Lcom/urbanairship/push/PushMessage;)V

    .line 39
    invoke-static {}, Lcom/buzzfeed/analytics/client/DustbusterClient;->getInstance()Lcom/buzzfeed/analytics/client/DustbusterClient;

    move-result-object v0

    invoke-virtual {p0}, Lcom/urbanairship/push/PushMessage;->getAlert()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/buzzfeed/android/pushnotifications/PushNotificationUtil;->getBuzzUriFromPushMessage(Lcom/urbanairship/push/PushMessage;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackNotificationReceived(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static notificationStatusChanged(Landroid/content/Context;Z)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "optIn"    # Z

    .prologue
    .line 48
    invoke-static {p1}, Lcom/buzzfeed/android/pushnotifications/PushNotificationUtil;->setPushNotificationsEnabled(Z)V

    .line 49
    new-instance v6, Lcom/buzzfeed/android/data/preferences/PushNotificationPreference;

    invoke-direct {v6, p0}, Lcom/buzzfeed/android/data/preferences/PushNotificationPreference;-><init>(Landroid/content/Context;)V

    .line 50
    .local v6, "pushNotificationPreference":Lcom/buzzfeed/android/data/preferences/PushNotificationPreference;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/buzzfeed/android/data/preferences/PushNotificationPreference;->setValue(Ljava/lang/Boolean;)V

    .line 51
    new-instance v7, Lcom/buzzfeed/android/data/preferences/PushNotificationTrendingPreference;

    invoke-direct {v7, p0}, Lcom/buzzfeed/android/data/preferences/PushNotificationTrendingPreference;-><init>(Landroid/content/Context;)V

    .line 52
    .local v7, "pushNotificationTrendingPreference":Lcom/buzzfeed/android/data/preferences/PushNotificationTrendingPreference;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/buzzfeed/android/data/preferences/PushNotificationTrendingPreference;->setValue(Ljava/lang/Boolean;)V

    .line 54
    invoke-static {}, Lcom/buzzfeed/android/util/DiscriminatingTracker;->getInstance()Lcom/buzzfeed/android/util/DiscriminatingTracker;

    move-result-object v0

    const v1, 0x7f0901ff

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_43

    const v2, 0x7f0901b9

    :goto_2b
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/android/util/DiscriminatingTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 55
    invoke-static {}, Lcom/buzzfeed/analytics/client/DustbusterClient;->getInstance()Lcom/buzzfeed/analytics/client/DustbusterClient;

    move-result-object v1

    if-eqz p1, :cond_47

    const-string v0, "opt_in"

    :goto_3e
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackNotificationStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void

    .line 54
    :cond_43
    const v2, 0x7f0901b8

    goto :goto_2b

    .line 55
    :cond_47
    const-string v0, "opt_out"

    goto :goto_3e
.end method

.method public static setPushNotificationsEnabled(Z)V
    .registers 4
    .param p0, "enabled"    # Z

    .prologue
    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/buzzfeed/android/pushnotifications/PushNotificationUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".setPushNotifications"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "TAG":Ljava/lang/String;
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/urbanairship/push/PushManager;->setPushEnabled(Z)V

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Push Notifications "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p0, :cond_3b

    const-string v1, "enabled"

    :goto_2f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void

    .line 91
    :cond_3b
    const-string v1, "disabled"

    goto :goto_2f
.end method
