.class public Lcom/buzzfeed/android/pushnotifications/PushNotificationIdGenerator;
.super Ljava/lang/Object;
.source "PushNotificationIdGenerator.java"


# static fields
.field private static final DEFAULT_ID:I = 0x3e8

.field private static final KEY_PUSH_LAST_ID:Ljava/lang/String; = "last_id"

.field private static final MAX_NOTIFICATIONS:I = 0x6

.field private static final PUSH_NOTIFICATION_SETTINGS:Ljava/lang/String; = "com.buzzfeed.pushnotifications"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/android/pushnotifications/PushNotificationIdGenerator;->mContext:Landroid/content/Context;

    .line 18
    invoke-direct {p0}, Lcom/buzzfeed/android/pushnotifications/PushNotificationIdGenerator;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "last_id"

    const/16 v3, 0x3e8

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 19
    .local v0, "lastSent":I
    invoke-static {v0}, Lcom/urbanairship/util/NotificationIdGenerator;->setStart(I)V

    .line 20
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/urbanairship/util/NotificationIdGenerator;->setRange(I)V

    .line 21
    return-void
.end method

.method private getPreferences()Landroid/content/SharedPreferences;
    .registers 4

    .prologue
    .line 24
    iget-object v0, p0, Lcom/buzzfeed/android/pushnotifications/PushNotificationIdGenerator;->mContext:Landroid/content/Context;

    const-string v1, "com.buzzfeed.pushnotifications"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private saveLastIdSent(I)V
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/buzzfeed/android/pushnotifications/PushNotificationIdGenerator;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 29
    return-void
.end method


# virtual methods
.method public getNextId()I
    .registers 5

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/buzzfeed/android/pushnotifications/PushNotificationIdGenerator;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "last_id"

    const/16 v3, 0x3e8

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 33
    .local v0, "lastSent":I
    add-int/lit8 v0, v0, 0x1

    .line 34
    const/16 v1, 0x3ee

    if-le v0, v1, :cond_14

    .line 35
    const/16 v0, 0x3e9

    .line 38
    :cond_14
    invoke-direct {p0, v0}, Lcom/buzzfeed/android/pushnotifications/PushNotificationIdGenerator;->saveLastIdSent(I)V

    .line 39
    return v0
.end method
