.class public Lcom/buzzfeed/android/pushnotifications/tags/RandomBucketTag;
.super Ljava/lang/Object;
.source "RandomBucketTag.java"

# interfaces
.implements Lcom/buzzfeed/android/pushnotifications/tags/PushTag;


# static fields
.field private static final PUSH_NOTIFICATION_KEY_BUCKET_PREFIX:Ljava/lang/String; = "bucket_"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const-class v0, Lcom/buzzfeed/android/pushnotifications/tags/RandomBucketTag;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/pushnotifications/tags/RandomBucketTag;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/pushnotifications/tags/RandomBucketTag;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method


# virtual methods
.method public addTag(Ljava/util/Set;)V
    .registers 8
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
    .line 22
    .local p1, "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Lcom/buzzfeed/android/data/preferences/PushNotificationBucketPreference;

    iget-object v2, p0, Lcom/buzzfeed/android/pushnotifications/tags/RandomBucketTag;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/buzzfeed/android/data/preferences/PushNotificationBucketPreference;-><init>(Landroid/content/Context;)V

    .line 23
    .local v1, "pushNotificationBucketPreference":Lcom/buzzfeed/android/data/preferences/PushNotificationBucketPreference;
    invoke-virtual {v1}, Lcom/buzzfeed/android/data/preferences/PushNotificationBucketPreference;->getValue()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 24
    .local v0, "bucket":I
    if-nez v0, :cond_3a

    .line 25
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4024000000000000L

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/lit8 v0, v2, 0x1

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/data/preferences/PushNotificationBucketPreference;->setValue(Ljava/lang/Integer;)V

    .line 28
    sget-object v2, Lcom/buzzfeed/android/pushnotifications/tags/RandomBucketTag;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Push notification bucket tag created and persisted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_3a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bucket_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    return-void
.end method
