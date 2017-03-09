.class public Lcom/google/android/gms/gcm/GcmPubSub;
.super Ljava/lang/Object;


# static fields
.field private static agP:Lcom/google/android/gms/gcm/GcmPubSub;

.field private static final agR:Ljava/util/regex/Pattern;


# instance fields
.field private agQ:Lcom/google/android/gms/iid/InstanceID;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "/topics/[a-zA-Z0-9-_.~%]{1,900}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/gcm/GcmPubSub;->agR:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/iid/InstanceID;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/iid/InstanceID;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gcm/GcmPubSub;->agQ:Lcom/google/android/gms/iid/InstanceID;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GcmPubSub;
    .registers 3

    const-class v1, Lcom/google/android/gms/gcm/GcmPubSub;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/gcm/GcmPubSub;->agP:Lcom/google/android/gms/gcm/GcmPubSub;

    if-nez v0, :cond_e

    new-instance v0, Lcom/google/android/gms/gcm/GcmPubSub;

    invoke-direct {v0, p0}, Lcom/google/android/gms/gcm/GcmPubSub;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/gcm/GcmPubSub;->agP:Lcom/google/android/gms/gcm/GcmPubSub;

    :cond_e
    sget-object v0, Lcom/google/android/gms/gcm/GcmPubSub;->agP:Lcom/google/android/gms/gcm/GcmPubSub;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public subscribe(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 8
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "com.google.android.c2dm.permission.RECEIVE"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid appInstanceToken: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1a
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1e
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1a

    :cond_24
    if-eqz p2, :cond_32

    sget-object v0, Lcom/google/android/gms/gcm/GcmPubSub;->agR:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_4e

    :cond_32
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid topic name: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_48

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_44
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_48
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_44

    :cond_4e
    if-nez p3, :cond_55

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_55
    const-string v0, "gcm.topic"

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmPubSub;->agQ:Lcom/google/android/gms/iid/InstanceID;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/iid/InstanceID;->getToken(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    return-void
.end method

.method public unsubscribe(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "com.google.android.c2dm.permission.RECEIVE"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "gcm.topic"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmPubSub;->agQ:Lcom/google/android/gms/iid/InstanceID;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/android/gms/iid/InstanceID;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
