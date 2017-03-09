.class public Lcom/buzzfeed/android/pushnotifications/ShowNotificationStorageProvider;
.super Ljava/lang/Object;
.source "ShowNotificationStorageProvider.java"


# static fields
.field private static ourInstance:Lcom/buzzfeed/android/pushnotifications/ShowNotificationStorageProvider;


# instance fields
.field private mShowSubscriptionNotifications:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/buzzfeed/android/pushnotifications/ShowSubscriptionNotificationStorage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/pushnotifications/ShowNotificationStorageProvider;->mShowSubscriptionNotifications:Ljava/util/HashMap;

    .line 23
    return-void
.end method

.method public static getInstance()Lcom/buzzfeed/android/pushnotifications/ShowNotificationStorageProvider;
    .registers 2

    .prologue
    .line 9
    sget-object v0, Lcom/buzzfeed/android/pushnotifications/ShowNotificationStorageProvider;->ourInstance:Lcom/buzzfeed/android/pushnotifications/ShowNotificationStorageProvider;

    if-nez v0, :cond_13

    .line 10
    const-class v1, Lcom/buzzfeed/android/pushnotifications/ShowNotificationStorageProvider;

    monitor-enter v1

    .line 11
    :try_start_7
    sget-object v0, Lcom/buzzfeed/android/pushnotifications/ShowNotificationStorageProvider;->ourInstance:Lcom/buzzfeed/android/pushnotifications/ShowNotificationStorageProvider;

    if-nez v0, :cond_12

    .line 12
    new-instance v0, Lcom/buzzfeed/android/pushnotifications/ShowNotificationStorageProvider;

    invoke-direct {v0}, Lcom/buzzfeed/android/pushnotifications/ShowNotificationStorageProvider;-><init>()V

    sput-object v0, Lcom/buzzfeed/android/pushnotifications/ShowNotificationStorageProvider;->ourInstance:Lcom/buzzfeed/android/pushnotifications/ShowNotificationStorageProvider;

    .line 14
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 16
    :cond_13
    sget-object v0, Lcom/buzzfeed/android/pushnotifications/ShowNotificationStorageProvider;->ourInstance:Lcom/buzzfeed/android/pushnotifications/ShowNotificationStorageProvider;

    return-object v0

    .line 14
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public getShowSubscriptionNotificationStorage()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/buzzfeed/android/pushnotifications/ShowSubscriptionNotificationStorage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/buzzfeed/android/pushnotifications/ShowNotificationStorageProvider;->mShowSubscriptionNotifications:Ljava/util/HashMap;

    return-object v0
.end method

.method public handleShowPageOpened(Ljava/lang/String;)I
    .registers 5
    .param p1, "showId"    # Ljava/lang/String;

    .prologue
    .line 30
    iget-object v2, p0, Lcom/buzzfeed/android/pushnotifications/ShowNotificationStorageProvider;->mShowSubscriptionNotifications:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/android/pushnotifications/ShowSubscriptionNotificationStorage;

    .line 31
    .local v1, "storage":Lcom/buzzfeed/android/pushnotifications/ShowSubscriptionNotificationStorage;
    if-nez v1, :cond_c

    .line 32
    const/4 v0, 0x0

    .line 37
    :goto_b
    return v0

    .line 35
    :cond_c
    invoke-virtual {v1}, Lcom/buzzfeed/android/pushnotifications/ShowSubscriptionNotificationStorage;->getNotificationId()I

    move-result v0

    .line 36
    .local v0, "notificationId":I
    iget-object v2, p0, Lcom/buzzfeed/android/pushnotifications/ShowNotificationStorageProvider;->mShowSubscriptionNotifications:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b
.end method
