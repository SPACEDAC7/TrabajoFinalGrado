.class public Lcom/google/android/gms/common/util/zzd;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Landroid/content/pm/PackageInfo;)I
    .registers 4

    const/4 v0, -0x1

    if-eqz p0, :cond_7

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_7

    const-string v2, "com.google.android.gms.version"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_7
.end method

.method public static zzayi()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static zzv(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    invoke-static {p0, p1}, Lcom/google/android/gms/common/util/zzd;->zzw(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzd;->zza(Landroid/content/pm/PackageInfo;)I

    move-result v0

    return v0
.end method

.method public static zzw(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/zzsz;->zzco(Landroid/content/Context;)Lcom/google/android/gms/internal/zzsy;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzsy;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static zzx(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzayo()Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    const-string v1, "com.google.android.gms"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-static {}, Lcom/google/android/gms/common/util/zzd;->zzayi()Z

    move-result v1

    if-nez v1, :cond_7

    :cond_16
    :try_start_16
    invoke-static {p0}, Lcom/google/android/gms/internal/zzsz;->zzco(Landroid/content/Context;)Lcom/google/android/gms/internal/zzsy;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/zzsy;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_21} :catch_28

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7

    :catch_28
    move-exception v1

    goto :goto_7
.end method
