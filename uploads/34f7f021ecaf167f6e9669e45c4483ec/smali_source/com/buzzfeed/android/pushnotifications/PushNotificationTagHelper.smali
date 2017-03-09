.class public Lcom/buzzfeed/android/pushnotifications/PushNotificationTagHelper;
.super Ljava/lang/Object;
.source "PushNotificationTagHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-class v0, Lcom/buzzfeed/android/pushnotifications/PushNotificationTagHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/pushnotifications/PushNotificationTagHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initializePushNotifications(Landroid/content/Context;)V
    .registers 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-static {p0}, Lcom/buzzfeed/android/pushnotifications/PushNotificationTagHelper;->initializePushTags(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method private static initializePushTags(Landroid/content/Context;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/buzzfeed/android/pushnotifications/PushNotificationTagHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".insertPushTags"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "TAG":Ljava/lang/String;
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/push/PushManager;->getTags()Ljava/util/Set;

    move-result-object v1

    .line 31
    .local v1, "currentTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 33
    .local v4, "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v3, "pushTags":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/android/pushnotifications/tags/PushTag;>;"
    new-instance v5, Lcom/buzzfeed/android/pushnotifications/tags/SignUpSourceTag;

    invoke-direct {v5, p0}, Lcom/buzzfeed/android/pushnotifications/tags/SignUpSourceTag;-><init>(Landroid/content/Context;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v5, Lcom/buzzfeed/android/pushnotifications/tags/DeviceTag;

    invoke-direct {v5}, Lcom/buzzfeed/android/pushnotifications/tags/DeviceTag;-><init>()V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v5, Lcom/buzzfeed/android/pushnotifications/tags/AuthenticationTag;

    invoke-direct {v5, p0}, Lcom/buzzfeed/android/pushnotifications/tags/AuthenticationTag;-><init>(Landroid/content/Context;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v5, Lcom/buzzfeed/android/pushnotifications/tags/TrendingTag;

    invoke-direct {v5, p0}, Lcom/buzzfeed/android/pushnotifications/tags/TrendingTag;-><init>(Landroid/content/Context;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v5, Lcom/buzzfeed/android/pushnotifications/tags/RandomBucketTag;

    invoke-direct {v5, p0}, Lcom/buzzfeed/android/pushnotifications/tags/RandomBucketTag;-><init>(Landroid/content/Context;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_57
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_67

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/buzzfeed/android/pushnotifications/tags/PushTag;

    .line 41
    .local v2, "pushTag":Lcom/buzzfeed/android/pushnotifications/tags/PushTag;
    invoke-interface {v2, v4}, Lcom/buzzfeed/android/pushnotifications/tags/PushTag;->addTag(Ljava/util/Set;)V

    goto :goto_57

    .line 44
    .end local v2    # "pushTag":Lcom/buzzfeed/android/pushnotifications/tags/PushTag;
    :cond_67
    invoke-interface {v4, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7b

    .line 45
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/urbanairship/push/PushManager;->setTags(Ljava/util/Set;)V

    .line 46
    invoke-static {p0}, Lcom/buzzfeed/android/pushnotifications/PushNotificationTagHelper;->setPushNotificationsAliases(Landroid/content/Context;)V

    .line 49
    :cond_7b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Push Notification Tags: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method private static setPushNotificationsAliases(Landroid/content/Context;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-static {p0}, Lcom/buzzfeed/android/data/BuzzUser;->getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/data/BuzzUser;

    move-result-object v1

    .line 56
    .local v1, "buzzUser":Lcom/buzzfeed/android/data/BuzzUser;
    if-eqz v1, :cond_47

    invoke-virtual {v1}, Lcom/buzzfeed/android/data/BuzzUser;->getUserid()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_47

    .line 57
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/PushManager;->getAlias()Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "currentAlias":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/buzzfeed/android/data/BuzzUser;->getUserid()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "alias":Ljava/lang/String;
    if-eqz v2, :cond_24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    .line 60
    :cond_24
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/urbanairship/push/PushManager;->setAlias(Ljava/lang/String;)V

    .line 61
    sget-object v3, Lcom/buzzfeed/android/pushnotifications/PushNotificationTagHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Push Notification Alias: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .end local v0    # "alias":Ljava/lang/String;
    .end local v2    # "currentAlias":Ljava/lang/String;
    :cond_47
    return-void
.end method
