.class public Lcom/buzzfeed/android/pushnotifications/PushNotificationFactory;
.super Lcom/urbanairship/push/notifications/NotificationFactory;
.source "PushNotificationFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDefaultFactory:Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationFactoryProvider;

.field private mPushNotificationFactoryProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationFactoryProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mPushNotificationShowFactory:Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationShowFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-class v0, Lcom/buzzfeed/android/pushnotifications/PushNotificationFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/pushnotifications/PushNotificationFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/urbanairship/push/notifications/NotificationFactory;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationShowFactory;

    invoke-direct {v0, p1}, Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationShowFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/buzzfeed/android/pushnotifications/PushNotificationFactory;->mPushNotificationShowFactory:Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationShowFactory;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/pushnotifications/PushNotificationFactory;->mPushNotificationFactoryProviders:Ljava/util/List;

    .line 29
    iget-object v0, p0, Lcom/buzzfeed/android/pushnotifications/PushNotificationFactory;->mPushNotificationFactoryProviders:Ljava/util/List;

    iget-object v1, p0, Lcom/buzzfeed/android/pushnotifications/PushNotificationFactory;->mPushNotificationShowFactory:Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationShowFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v0, Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationBuzzFactory;

    invoke-direct {v0, p1}, Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationBuzzFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/buzzfeed/android/pushnotifications/PushNotificationFactory;->mDefaultFactory:Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationFactoryProvider;

    .line 31
    return-void
.end method

.method private getProviderForPushMessage(Lcom/urbanairship/push/PushMessage;)Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationFactoryProvider;
    .registers 5
    .param p1, "message"    # Lcom/urbanairship/push/PushMessage;

    .prologue
    .line 55
    iget-object v1, p0, Lcom/buzzfeed/android/pushnotifications/PushNotificationFactory;->mPushNotificationFactoryProviders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationFactoryProvider;

    .line 56
    .local v0, "provider":Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationFactoryProvider;
    invoke-interface {v0, p1}, Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationFactoryProvider;->handlesPushMessage(Lcom/urbanairship/push/PushMessage;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 61
    .end local v0    # "provider":Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationFactoryProvider;
    :goto_18
    return-object v0

    :cond_19
    iget-object v0, p0, Lcom/buzzfeed/android/pushnotifications/PushNotificationFactory;->mDefaultFactory:Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationFactoryProvider;

    goto :goto_18
.end method


# virtual methods
.method public createNotification(Lcom/urbanairship/push/PushMessage;I)Landroid/app/Notification;
    .registers 4
    .param p1, "message"    # Lcom/urbanairship/push/PushMessage;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "i"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/pushnotifications/PushNotificationFactory;->getProviderForPushMessage(Lcom/urbanairship/push/PushMessage;)Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationFactoryProvider;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationFactoryProvider;->getNotification(Lcom/urbanairship/push/PushMessage;I)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getNextId(Lcom/urbanairship/push/PushMessage;)I
    .registers 6
    .param p1, "pushMessage"    # Lcom/urbanairship/push/PushMessage;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/pushnotifications/PushNotificationFactory;->getProviderForPushMessage(Lcom/urbanairship/push/PushMessage;)Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationFactoryProvider;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationFactoryProvider;->getNotificationId(Lcom/urbanairship/push/PushMessage;)I

    move-result v0

    .line 50
    .local v0, "id":I
    sget-object v1, Lcom/buzzfeed/android/pushnotifications/PushNotificationFactory;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Generating new push notification id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return v0
.end method

.method public handleNotificationDismissed(Ljava/lang/String;)V
    .registers 3
    .param p1, "buzzUri"    # Ljava/lang/String;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/buzzfeed/android/pushnotifications/PushNotificationFactory;->mPushNotificationShowFactory:Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationShowFactory;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationShowFactory;->handleNotificationDismissed(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public handleNotificationOpened(Lcom/urbanairship/push/PushMessage;)V
    .registers 3
    .param p1, "message"    # Lcom/urbanairship/push/PushMessage;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/buzzfeed/android/pushnotifications/PushNotificationFactory;->mPushNotificationShowFactory:Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationShowFactory;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationShowFactory;->handleNotificationOpened(Lcom/urbanairship/push/PushMessage;)V

    .line 35
    return-void
.end method
