.class public final Lcom/buzzfeed/android/data/preferences/PushNotificationBucketPreference;
.super Lcom/buzzfeed/android/data/preferences/IntegerPreference;
.source "PushNotificationBucketPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/data/preferences/IntegerPreference;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected getDefaultValue(Landroid/content/Context;)Ljava/lang/Integer;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getDefaultValue(Landroid/content/Context;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/data/preferences/PushNotificationBucketPreference;->getDefaultValue(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected getKeyResourceId()I
    .registers 2

    .prologue
    .line 18
    const v0, 0x7f090297

    return v0
.end method
