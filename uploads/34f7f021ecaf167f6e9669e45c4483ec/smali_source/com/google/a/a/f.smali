.class public Lcom/google/a/a/f;
.super Lcom/google/a/a/e;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/a/a/f$b;,
        Lcom/google/a/a/f$a;
    }
.end annotation


# static fields
.field private static e:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

.field private static f:Ljava/util/concurrent/CountDownLatch;

.field private static volatile g:Z


# instance fields
.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/google/a/a/f;->e:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    .line 48
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/google/a/a/f;->f:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/google/a/a/i;Lcom/google/a/a/j;Z)V
    .registers 5

    .prologue
    .line 151
    invoke-direct {p0, p1, p2, p3}, Lcom/google/a/a/e;-><init>(Landroid/content/Context;Lcom/google/a/a/i;Lcom/google/a/a/j;)V

    .line 152
    iput-boolean p4, p0, Lcom/google/a/a/f;->h:Z

    .line 153
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Lcom/google/a/a/f;
    .registers 3

    .prologue
    .line 106
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/a/a/f;->a(Ljava/lang/String;Landroid/content/Context;Z)Lcom/google/a/a/f;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;Z)Lcom/google/a/a/f;
    .registers 7

    .prologue
    .line 130
    new-instance v0, Lcom/google/a/a/a;

    invoke-direct {v0}, Lcom/google/a/a/a;-><init>()V

    .line 132
    invoke-static {p0, p1, v0}, Lcom/google/a/a/f;->a(Ljava/lang/String;Landroid/content/Context;Lcom/google/a/a/i;)V

    .line 134
    if-eqz p2, :cond_1f

    .line 135
    const-class v1, Lcom/google/a/a/f;

    monitor-enter v1

    .line 136
    :try_start_d
    sget-object v2, Lcom/google/a/a/f;->e:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    if-nez v2, :cond_1e

    .line 137
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/google/a/a/f$b;

    invoke-direct {v3, p1}, Lcom/google/a/a/f$b;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 139
    :cond_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_2c

    .line 142
    :cond_1f
    new-instance v1, Lcom/google/a/a/f;

    new-instance v2, Lcom/google/a/a/l;

    const/16 v3, 0xef

    invoke-direct {v2, v3}, Lcom/google/a/a/l;-><init>(I)V

    invoke-direct {v1, p1, v0, v2, p2}, Lcom/google/a/a/f;-><init>(Landroid/content/Context;Lcom/google/a/a/i;Lcom/google/a/a/j;Z)V

    return-object v1

    .line 139
    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
    .registers 1

    .prologue
    .line 25
    sput-object p0, Lcom/google/a/a/f;->e:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    return-object p0
.end method

.method static synthetic a(Z)Z
    .registers 1

    .prologue
    .line 25
    sput-boolean p0, Lcom/google/a/a/f;->g:Z

    return p0
.end method

.method static synthetic f()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/a/a/f;->e:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    return-object v0
.end method

.method static synthetic g()Ljava/util/concurrent/CountDownLatch;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/a/a/f;->f:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method


# virtual methods
.method protected b(Landroid/content/Context;)V
    .registers 8

    .prologue
    .line 191
    invoke-super {p0, p1}, Lcom/google/a/a/e;->b(Landroid/content/Context;)V

    .line 198
    :try_start_3
    sget-boolean v0, Lcom/google/a/a/f;->g:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/google/a/a/f;->h:Z

    if-nez v0, :cond_15

    .line 209
    :cond_b
    const/16 v0, 0x18

    invoke-static {p1}, Lcom/google/a/a/f;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/a/a/f;->a(ILjava/lang/String;)V

    .line 231
    :cond_14
    :goto_14
    return-void

    .line 214
    :cond_15
    invoke-virtual {p0}, Lcom/google/a/a/f;->e()Lcom/google/a/a/f$a;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Lcom/google/a/a/f$a;->a()Ljava/lang/String;

    move-result-object v2

    .line 217
    if-eqz v2, :cond_14

    .line 218
    const/16 v3, 0x1c

    invoke-virtual {v0}, Lcom/google/a/a/f$a;->b()Z

    move-result v0

    if-eqz v0, :cond_3b

    const-wide/16 v0, 0x1

    :goto_29
    invoke-virtual {p0, v3, v0, v1}, Lcom/google/a/a/f;->a(IJ)V

    .line 219
    const/16 v0, 0x1a

    const-wide/16 v4, 0x5

    invoke-virtual {p0, v0, v4, v5}, Lcom/google/a/a/f;->a(IJ)V

    .line 220
    const/16 v0, 0x18

    invoke-virtual {p0, v0, v2}, Lcom/google/a/a/f;->a(ILjava/lang/String;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_38} :catch_39
    .catch Lcom/google/a/a/e$a; {:try_start_3 .. :try_end_38} :catch_3e

    goto :goto_14

    .line 223
    :catch_39
    move-exception v0

    goto :goto_14

    .line 218
    :cond_3b
    const-wide/16 v0, 0x0

    goto :goto_29

    .line 227
    :catch_3e
    move-exception v0

    goto :goto_14
.end method

.method e()Lcom/google/a/a/f$a;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 163
    :try_start_2
    sget-object v0, Lcom/google/a/a/f;->f:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 165
    if-nez v0, :cond_1d

    .line 168
    new-instance v0, Lcom/google/a/a/f$a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/a/a/f$a;-><init>(Lcom/google/a/a/f;Ljava/lang/String;Z)V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_15} :catch_16

    .line 186
    :goto_15
    return-object v0

    .line 170
    :catch_16
    move-exception v0

    .line 171
    new-instance v0, Lcom/google/a/a/f$a;

    invoke-direct {v0, p0, v5, v4}, Lcom/google/a/a/f$a;-><init>(Lcom/google/a/a/f;Ljava/lang/String;Z)V

    goto :goto_15

    .line 176
    :cond_1d
    const-class v1, Lcom/google/a/a/f;

    monitor-enter v1

    .line 177
    :try_start_20
    sget-object v0, Lcom/google/a/a/f;->e:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    if-nez v0, :cond_30

    .line 179
    new-instance v0, Lcom/google/a/a/f$a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/google/a/a/f$a;-><init>(Lcom/google/a/a/f;Ljava/lang/String;Z)V

    monitor-exit v1

    goto :goto_15

    .line 183
    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_20 .. :try_end_2f} :catchall_2d

    throw v0

    .line 182
    :cond_30
    :try_start_30
    sget-object v0, Lcom/google/a/a/f;->e:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getInfo()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v2

    .line 183
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_2d

    .line 185
    invoke-virtual {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/a/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    new-instance v0, Lcom/google/a/a/f$a;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/a/a/f$a;-><init>(Lcom/google/a/a/f;Ljava/lang/String;Z)V

    goto :goto_15
.end method
