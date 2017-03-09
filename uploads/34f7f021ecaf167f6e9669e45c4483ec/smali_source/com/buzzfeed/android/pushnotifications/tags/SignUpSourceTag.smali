.class public Lcom/buzzfeed/android/pushnotifications/tags/SignUpSourceTag;
.super Ljava/lang/Object;
.source "SignUpSourceTag.java"

# interfaces
.implements Lcom/buzzfeed/android/pushnotifications/tags/PushTag;


# static fields
.field private static final PUSH_NOTIFICATION_KEY_SIGNEDUPFROMONBOARDING:Ljava/lang/String; = "signedUpFromOnboarding"

.field private static final PUSH_NOTIFICATION_KEY_SIGNEDUPFROMSETTINGS:Ljava/lang/String; = "signedUpFromSettings"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/pushnotifications/tags/SignUpSourceTag;->mContext:Landroid/content/Context;

    .line 17
    return-void
.end method


# virtual methods
.method public addTag(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Lcom/buzzfeed/android/data/preferences/PushNotificationPreference;

    iget-object v2, p0, Lcom/buzzfeed/android/pushnotifications/tags/SignUpSourceTag;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/buzzfeed/android/data/preferences/PushNotificationPreference;-><init>(Landroid/content/Context;)V

    .line 22
    .local v1, "pushNotificationPreference":Lcom/buzzfeed/android/data/preferences/PushNotificationPreference;
    invoke-virtual {v1}, Lcom/buzzfeed/android/data/preferences/PushNotificationPreference;->getValue()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 25
    .local v0, "isPushNotificationsEnabled":Z
    if-nez v0, :cond_1c

    .line 27
    const-string v2, "signedUpFromSettings"

    invoke-interface {p1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 28
    const-string v2, "signedUpFromOnboarding"

    invoke-interface {p1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 33
    :cond_1b
    :goto_1b
    return-void

    .line 29
    :cond_1c
    const-string v2, "signedUpFromSettings"

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    const-string v2, "signedUpFromOnboarding"

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 30
    const-string v2, "signedUpFromOnboarding"

    invoke-interface {p1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 31
    const-string v2, "signedUpFromSettings"

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1b
.end method
