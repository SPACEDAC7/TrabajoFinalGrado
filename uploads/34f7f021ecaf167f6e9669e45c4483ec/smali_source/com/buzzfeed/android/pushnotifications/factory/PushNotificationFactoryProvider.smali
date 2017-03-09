.class public interface abstract Lcom/buzzfeed/android/pushnotifications/factory/PushNotificationFactoryProvider;
.super Ljava/lang/Object;
.source "PushNotificationFactoryProvider.java"


# virtual methods
.method public abstract getNotification(Lcom/urbanairship/push/PushMessage;I)Landroid/app/Notification;
.end method

.method public abstract getNotificationId(Lcom/urbanairship/push/PushMessage;)I
.end method

.method public abstract handleNotificationDismissed(Ljava/lang/String;)V
.end method

.method public abstract handleNotificationOpened(Lcom/urbanairship/push/PushMessage;)V
.end method

.method public abstract handlesPushMessage(Lcom/urbanairship/push/PushMessage;)Z
.end method
