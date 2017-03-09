.class final Lcom/google/a/a/f$b;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/f$b;->a:Landroid/content/Context;

    .line 62
    iget-object v0, p0, Lcom/google/a/a/f$b;->a:Landroid/content/Context;

    if-nez v0, :cond_f

    .line 63
    iput-object p1, p0, Lcom/google/a/a/f$b;->a:Landroid/content/Context;

    .line 65
    :cond_f
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 69
    const-class v1, Lcom/google/a/a/f;

    monitor-enter v1

    .line 71
    :try_start_3
    invoke-static {}, Lcom/google/a/a/f;->f()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    move-result-object v0

    if-nez v0, :cond_16

    .line 72
    new-instance v0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    iget-object v2, p0, Lcom/google/a/a/f$b;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;-><init>(Landroid/content/Context;)V

    .line 73
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->start()V

    .line 75
    invoke-static {v0}, Lcom/google/a/a/f;->a(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
    :try_end_16
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_3 .. :try_end_16} :catch_1f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_16} :catch_2f
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_3 .. :try_end_16} :catch_38
    .catchall {:try_start_3 .. :try_end_16} :catchall_41

    .line 86
    :cond_16
    :try_start_16
    invoke-static {}, Lcom/google/a/a/f;->g()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 88
    :goto_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_2c

    .line 89
    return-void

    .line 77
    :catch_1f
    move-exception v0

    .line 80
    const/4 v0, 0x1

    :try_start_21
    invoke-static {v0}, Lcom/google/a/a/f;->a(Z)Z
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_41

    .line 86
    :try_start_24
    invoke-static {}, Lcom/google/a/a/f;->g()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1d

    .line 88
    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_2c

    throw v0

    .line 81
    :catch_2f
    move-exception v0

    .line 86
    :try_start_30
    invoke-static {}, Lcom/google/a/a/f;->g()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1d

    .line 83
    :catch_38
    move-exception v0

    .line 86
    invoke-static {}, Lcom/google/a/a/f;->g()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1d

    :catchall_41
    move-exception v0

    invoke-static {}, Lcom/google/a/a/f;->g()Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
    :try_end_4a
    .catchall {:try_start_30 .. :try_end_4a} :catchall_2c
.end method
