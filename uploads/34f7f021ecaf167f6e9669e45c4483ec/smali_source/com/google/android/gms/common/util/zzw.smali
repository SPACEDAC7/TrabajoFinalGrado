.class public Lcom/google/android/gms/common/util/zzw;
.super Ljava/lang/Object;


# direct methods
.method public static getNoBackupFilesDir(Landroid/content/Context;)Ljava/io/File;
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzayx()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v2, "no_backup"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/gms/common/util/zzw;->zze(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    goto :goto_a
.end method

.method private static declared-synchronized zze(Ljava/io/File;)Ljava/io/File;
    .registers 6

    const-class v1, Lcom/google/android/gms/common/util/zzw;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Ljava/io/File;->exists()Z
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_38

    move-result v0

    if-eqz v0, :cond_17

    :cond_15
    :goto_15
    monitor-exit v1

    return-object p0

    :cond_17
    :try_start_17
    const-string v2, "SupportV4Utils"

    const-string v3, "Unable to create no-backup dir "

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_32

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2d
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto :goto_15

    :cond_32
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_17 .. :try_end_37} :catchall_38

    goto :goto_2d

    :catchall_38
    move-exception v0

    monitor-exit v1

    throw v0
.end method
