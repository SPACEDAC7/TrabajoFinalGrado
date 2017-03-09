.class public Lcom/google/android/gms/analytics/internal/zzn;
.super Lcom/google/android/gms/analytics/internal/zzd;


# instance fields
.field private volatile cj:Ljava/lang/String;

.field private dU:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzd;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/analytics/internal/zzn;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzn;->zzaeb()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private zzaeb()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzn;->zzaec()Ljava/lang/String;

    move-result-object v0

    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzn;->zzacc()Lcom/google/android/gms/analytics/zzi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/zzi;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzn;->zzq(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v0, "0"
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_15

    :cond_14
    :goto_14
    return-object v0

    :catch_15
    move-exception v0

    const-string v1, "Error saving clientId file"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzn;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "0"

    goto :goto_14
.end method

.method private zzq(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzaa;->zzib(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "ClientId should be saved from worker thread"

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzaa;->zzht(Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_a
    const-string v1, "Storing clientId"

    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/analytics/internal/zzn;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "gaClientId"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_1d} :catch_2b
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1d} :catch_3e
    .catchall {:try_start_a .. :try_end_1d} :catchall_51

    if-eqz v2, :cond_22

    :try_start_1f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_24

    :cond_22
    :goto_22
    const/4 v0, 0x1

    :cond_23
    :goto_23
    return v0

    :catch_24
    move-exception v0

    const-string v1, "Failed to close clientId writing stream"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzn;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_22

    :catch_2b
    move-exception v1

    :try_start_2c
    const-string v3, "Error creating clientId file"

    invoke-virtual {p0, v3, v1}, Lcom/google/android/gms/analytics/internal/zzn;->zze(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_51

    if-eqz v2, :cond_23

    :try_start_33
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_23

    :catch_37
    move-exception v1

    const-string v2, "Failed to close clientId writing stream"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/analytics/internal/zzn;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_23

    :catch_3e
    move-exception v1

    :try_start_3f
    const-string v3, "Error writing to clientId file"

    invoke-virtual {p0, v3, v1}, Lcom/google/android/gms/analytics/internal/zzn;->zze(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_51

    if-eqz v2, :cond_23

    :try_start_46
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_23

    :catch_4a
    move-exception v1

    const-string v2, "Failed to close clientId writing stream"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/analytics/internal/zzn;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_23

    :catchall_51
    move-exception v0

    if-eqz v2, :cond_57

    :try_start_54
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58

    :cond_57
    :goto_57
    throw v0

    :catch_58
    move-exception v1

    const-string v2, "Failed to close clientId writing stream"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/analytics/internal/zzn;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_57
.end method


# virtual methods
.method public zzady()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzn;->zzacj()V

    monitor-enter p0

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->cj:Ljava/lang/String;

    if-nez v0, :cond_17

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzn;->zzacc()Lcom/google/android/gms/analytics/zzi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/zzn$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/analytics/internal/zzn$1;-><init>(Lcom/google/android/gms/analytics/internal/zzn;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzi;->zzc(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->dU:Ljava/util/concurrent/Future;

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->dU:Ljava/util/concurrent/Future;
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_46

    if-eqz v0, :cond_37

    :try_start_1b
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->dU:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->cj:Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_25} :catch_3b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1b .. :try_end_25} :catch_49
    .catchall {:try_start_1b .. :try_end_25} :catchall_46

    :goto_25
    :try_start_25
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->cj:Ljava/lang/String;

    if-nez v0, :cond_2d

    const-string v0, "0"

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->cj:Ljava/lang/String;

    :cond_2d
    const-string v0, "Loaded clientId"

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzn;->cj:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/internal/zzn;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->dU:Ljava/util/concurrent/Future;

    :cond_37
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->cj:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :catch_3b
    move-exception v0

    const-string v1, "ClientId loading or generation was interrupted"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzn;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "0"

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->cj:Ljava/lang/String;

    goto :goto_25

    :catchall_46
    move-exception v0

    monitor-exit p0
    :try_end_48
    .catchall {:try_start_25 .. :try_end_48} :catchall_46

    throw v0

    :catch_49
    move-exception v0

    :try_start_4a
    const-string v1, "Failed to load or generate client id"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzn;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "0"

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->cj:Ljava/lang/String;
    :try_end_53
    .catchall {:try_start_4a .. :try_end_53} :catchall_46

    goto :goto_25
.end method

.method zzadz()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->cj:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzn;->zzacc()Lcom/google/android/gms/analytics/zzi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/zzn$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/analytics/internal/zzn$2;-><init>(Lcom/google/android/gms/analytics/internal/zzn;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzi;->zzc(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->dU:Ljava/util/concurrent/Future;

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_19

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzn;->zzady()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method zzaea()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzn;->zzacc()Lcom/google/android/gms/analytics/zzi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzi;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzn;->zzay(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzn;->zzaeb()Ljava/lang/String;

    move-result-object v0

    :cond_12
    return-object v0
.end method

.method protected zzaec()Ljava/lang/String;
    .registers 2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected zzay(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    const-string v1, "ClientId should be loaded from worker thread"

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzaa;->zzht(Ljava/lang/String;)V

    :try_start_6
    const-string v1, "gaClientId"

    invoke-virtual {p1, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_b} :catch_71
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_80
    .catchall {:try_start_6 .. :try_end_b} :catchall_99

    move-result-object v2

    const/16 v1, 0x24

    :try_start_e
    new-array v3, v1, [B

    const/4 v1, 0x0

    const/16 v4, 0x24

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v1

    if-lez v1, :cond_37

    const-string v1, "clientId file seems corrupted, deleting it."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/internal/zzn;->zzev(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    const-string v1, "gaClientId"

    invoke-virtual {p1, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_2a} :catch_ad
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_2a} :catch_ab
    .catchall {:try_start_e .. :try_end_2a} :catchall_a9

    if-eqz v2, :cond_2f

    :try_start_2c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    :cond_2f
    :goto_2f
    return-object v0

    :catch_30
    move-exception v1

    const-string v2, "Failed to close client id reading stream"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/analytics/internal/zzn;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2f

    :cond_37
    const/16 v1, 0xe

    if-ge v4, v1, :cond_55

    :try_start_3b
    const-string v1, "clientId file is empty, deleting it."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/internal/zzn;->zzev(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    const-string v1, "gaClientId"

    invoke-virtual {p1, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_48
    .catch Ljava/io/FileNotFoundException; {:try_start_3b .. :try_end_48} :catch_ad
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_48} :catch_ab
    .catchall {:try_start_3b .. :try_end_48} :catchall_a9

    if-eqz v2, :cond_2f

    :try_start_4a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_2f

    :catch_4e
    move-exception v1

    const-string v2, "Failed to close client id reading stream"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/analytics/internal/zzn;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2f

    :cond_55
    :try_start_55
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    new-instance v1, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5, v4}, Ljava/lang/String;-><init>([BII)V

    const-string v3, "Read client id from disk"

    invoke-virtual {p0, v3, v1}, Lcom/google/android/gms/analytics/internal/zzn;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_63
    .catch Ljava/io/FileNotFoundException; {:try_start_55 .. :try_end_63} :catch_ad
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_63} :catch_ab
    .catchall {:try_start_55 .. :try_end_63} :catchall_a9

    if-eqz v2, :cond_68

    :try_start_65
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_6a

    :cond_68
    :goto_68
    move-object v0, v1

    goto :goto_2f

    :catch_6a
    move-exception v0

    const-string v2, "Failed to close client id reading stream"

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/internal/zzn;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_68

    :catch_71
    move-exception v1

    move-object v1, v0

    :goto_73
    if-eqz v1, :cond_2f

    :try_start_75
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_79

    goto :goto_2f

    :catch_79
    move-exception v1

    const-string v2, "Failed to close client id reading stream"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/analytics/internal/zzn;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2f

    :catch_80
    move-exception v1

    move-object v2, v0

    :goto_82
    :try_start_82
    const-string v3, "Error reading client id file, deleting it"

    invoke-virtual {p0, v3, v1}, Lcom/google/android/gms/analytics/internal/zzn;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "gaClientId"

    invoke-virtual {p1, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_8c
    .catchall {:try_start_82 .. :try_end_8c} :catchall_a9

    if-eqz v2, :cond_2f

    :try_start_8e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_92

    goto :goto_2f

    :catch_92
    move-exception v1

    const-string v2, "Failed to close client id reading stream"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/analytics/internal/zzn;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2f

    :catchall_99
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_9c
    if-eqz v2, :cond_a1

    :try_start_9e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_a2

    :cond_a1
    :goto_a1
    throw v0

    :catch_a2
    move-exception v1

    const-string v2, "Failed to close client id reading stream"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/analytics/internal/zzn;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_a1

    :catchall_a9
    move-exception v0

    goto :goto_9c

    :catch_ab
    move-exception v1

    goto :goto_82

    :catch_ad
    move-exception v1

    move-object v1, v2

    goto :goto_73
.end method

.method protected zzzy()V
    .registers 1

    return-void
.end method
