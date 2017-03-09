.class Lcom/google/android/gms/common/zzd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/zzd$zzd;,
        Lcom/google/android/gms/common/zzd$zzc;,
        Lcom/google/android/gms/common/zzd$zzb;,
        Lcom/google/android/gms/common/zzd$zza;
    }
.end annotation


# static fields
.field private static wU:Lcom/google/android/gms/common/internal/zzu;

.field private static wV:Landroid/content/Context;


# direct methods
.method static zza(Ljava/lang/String;Lcom/google/android/gms/common/zzd$zza;)Z
    .registers 6

    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gms/common/zzd;->wU:Lcom/google/android/gms/common/internal/zzu;

    if-nez v1, :cond_c

    invoke-static {}, Lcom/google/android/gms/common/zzd;->zzaqm()Z

    move-result v1

    if-nez v1, :cond_c

    :goto_b
    return v0

    :cond_c
    :try_start_c
    sget-object v1, Lcom/google/android/gms/common/zzd;->wU:Lcom/google/android/gms/common/internal/zzu;

    invoke-virtual {p1}, Lcom/google/android/gms/common/zzd$zza;->zzaqn()Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Lcom/google/android/gms/common/internal/zzu;->zzd(Ljava/lang/String;Lcom/google/android/gms/dynamic/zzd;)Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    move-result v0

    goto :goto_b

    :catch_17
    move-exception v1

    const-string v1, "GoogleCertificates"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2c

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Error checking if "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is Google release signed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method private static declared-synchronized zzaqm()Z
    .registers 5

    const/4 v0, 0x1

    const-class v1, Lcom/google/android/gms/common/zzd;

    monitor-enter v1

    :try_start_4
    sget-object v2, Lcom/google/android/gms/common/zzd;->wU:Lcom/google/android/gms/common/internal/zzu;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_57

    if-eqz v2, :cond_a

    :cond_8
    :goto_8
    monitor-exit v1

    return v0

    :cond_a
    :try_start_a
    sget-object v2, Lcom/google/android/gms/common/zzd;->wV:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/google/android/gms/common/zzd;->wU:Lcom/google/android/gms/common/internal/zzu;
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_57

    if-nez v2, :cond_8

    :try_start_13
    sget-object v2, Lcom/google/android/gms/common/zzd;->wV:Landroid/content/Context;

    sget-object v3, Lcom/google/android/gms/internal/zztl;->Qq:Lcom/google/android/gms/internal/zztl$zzb;

    const-string v4, "com.google.android.gms.googlecertificates"

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/zztl;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zztl$zzb;Ljava/lang/String;)Lcom/google/android/gms/internal/zztl;

    move-result-object v2

    const-string v3, "GoogleCertificates"

    const-string v4, "com.google.android.gms.googlecertificates module is loaded"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "com.google.android.gms.common.GoogleCertificatesImpl"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zztl;->zzjd(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzu$zza;->zzdv(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzu;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/common/zzd;->wU:Lcom/google/android/gms/common/internal/zzu;
    :try_end_30
    .catch Lcom/google/android/gms/internal/zztl$zza; {:try_start_13 .. :try_end_30} :catch_31
    .catchall {:try_start_13 .. :try_end_30} :catchall_57

    goto :goto_8

    :catch_31
    move-exception v0

    :try_start_32
    const-string v2, "GoogleCertificates"

    const-string v3, "Failed to load com.google.android.gms.googlecertificates: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zztl$zza;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_51

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4c
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_8

    :cond_51
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_56
    .catchall {:try_start_32 .. :try_end_56} :catchall_57

    goto :goto_4c

    :catchall_57
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static zzb(Ljava/lang/String;Lcom/google/android/gms/common/zzd$zza;)Z
    .registers 6

    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gms/common/zzd;->wU:Lcom/google/android/gms/common/internal/zzu;

    if-nez v1, :cond_c

    invoke-static {}, Lcom/google/android/gms/common/zzd;->zzaqm()Z

    move-result v1

    if-nez v1, :cond_c

    :goto_b
    return v0

    :cond_c
    :try_start_c
    sget-object v1, Lcom/google/android/gms/common/zzd;->wU:Lcom/google/android/gms/common/internal/zzu;

    invoke-virtual {p1}, Lcom/google/android/gms/common/zzd$zza;->zzaqn()Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Lcom/google/android/gms/common/internal/zzu;->zze(Ljava/lang/String;Lcom/google/android/gms/dynamic/zzd;)Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    move-result v0

    goto :goto_b

    :catch_17
    move-exception v1

    const-string v1, "GoogleCertificates"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x24

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Error checking if "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is Google signed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method static declared-synchronized zzbo(Landroid/content/Context;)V
    .registers 4

    const-class v1, Lcom/google/android/gms/common/zzd;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/common/zzd;->wV:Landroid/content/Context;

    if-nez v0, :cond_11

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/zzd;->wV:Landroid/content/Context;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_19

    :cond_f
    :goto_f
    monitor-exit v1

    return-void

    :cond_11
    :try_start_11
    const-string v0, "GoogleCertificates"

    const-string v2, "GoogleCertificates has been initialized already"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_19

    goto :goto_f

    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method
