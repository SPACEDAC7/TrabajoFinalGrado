.class public Lcom/google/android/gms/ads/internal/client/zzl;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/client/zzl$zza;
    }
.end annotation


# instance fields
.field private final zzako:Ljava/lang/Object;

.field private zzazy:Lcom/google/android/gms/ads/internal/client/zzx;

.field private final zzazz:Lcom/google/android/gms/ads/internal/client/zze;

.field private final zzbaa:Lcom/google/android/gms/ads/internal/client/zzd;

.field private final zzbab:Lcom/google/android/gms/ads/internal/client/zzai;

.field private final zzbac:Lcom/google/android/gms/internal/zzeu;

.field private final zzbad:Lcom/google/android/gms/ads/internal/reward/client/zzf;

.field private final zzbae:Lcom/google/android/gms/internal/zzim;

.field private final zzbaf:Lcom/google/android/gms/internal/zzhx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/zze;Lcom/google/android/gms/ads/internal/client/zzd;Lcom/google/android/gms/ads/internal/client/zzai;Lcom/google/android/gms/internal/zzeu;Lcom/google/android/gms/ads/internal/reward/client/zzf;Lcom/google/android/gms/internal/zzim;Lcom/google/android/gms/internal/zzhx;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzako:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzazz:Lcom/google/android/gms/ads/internal/client/zze;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzbaa:Lcom/google/android/gms/ads/internal/client/zzd;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzbab:Lcom/google/android/gms/ads/internal/client/zzai;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzbac:Lcom/google/android/gms/internal/zzeu;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzbad:Lcom/google/android/gms/ads/internal/reward/client/zzf;

    iput-object p6, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzbae:Lcom/google/android/gms/internal/zzim;

    iput-object p7, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzbaf:Lcom/google/android/gms/internal/zzhx;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/client/zzl;)Lcom/google/android/gms/ads/internal/client/zzx;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzl;->zzkf()Lcom/google/android/gms/ads/internal/client/zzx;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/client/zzl;Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/ads/internal/client/zzl;->zzc(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static zza(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string/jumbo v1, "useClientJar flag not found in activity intent extras."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->e(Ljava/lang/String;)V

    :goto_11
    return v0

    :cond_12
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_11
.end method

.method static synthetic zzb(Lcom/google/android/gms/ads/internal/client/zzl;)Lcom/google/android/gms/ads/internal/client/zze;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzazz:Lcom/google/android/gms/ads/internal/client/zze;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/ads/internal/client/zzl;)Lcom/google/android/gms/ads/internal/client/zzd;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzbaa:Lcom/google/android/gms/ads/internal/client/zzd;

    return-object v0
.end method

.method private zzc(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "action"

    const-string v1, "no_ads_fallback"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "flow"

    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zzkr()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "gmob-apps"

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/util/client/zza;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/ads/internal/client/zzl;)Lcom/google/android/gms/ads/internal/client/zzai;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzbab:Lcom/google/android/gms/ads/internal/client/zzai;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/ads/internal/client/zzl;)Lcom/google/android/gms/internal/zzeu;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzbac:Lcom/google/android/gms/internal/zzeu;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/ads/internal/client/zzl;)Lcom/google/android/gms/ads/internal/reward/client/zzf;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzbad:Lcom/google/android/gms/ads/internal/reward/client/zzf;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/ads/internal/client/zzl;)Lcom/google/android/gms/internal/zzim;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzbae:Lcom/google/android/gms/internal/zzim;

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/ads/internal/client/zzl;)Lcom/google/android/gms/internal/zzhx;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzbaf:Lcom/google/android/gms/internal/zzhx;

    return-object v0
.end method

.method private static zzke()Lcom/google/android/gms/ads/internal/client/zzx;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    const-class v0, Lcom/google/android/gms/ads/internal/client/zzl;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v2, "com.google.android.gms.ads.internal.ClientApi"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Landroid/os/IBinder;

    if-nez v2, :cond_1c

    const-string v0, "ClientApi class is not an instance of IBinder"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzdi(Ljava/lang/String;)V

    move-object v0, v1

    :goto_1b
    return-object v0

    :cond_1c
    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzx$zza;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/zzx;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_21} :catch_23

    move-result-object v0

    goto :goto_1b

    :catch_23
    move-exception v0

    const-string v2, "Failed to instantiate ClientApi class."

    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1b
.end method

.method private zzkf()Lcom/google/android/gms/ads/internal/client/zzx;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzazy:Lcom/google/android/gms/ads/internal/client/zzx;

    if-nez v0, :cond_d

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzke()Lcom/google/android/gms/ads/internal/client/zzx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzazy:Lcom/google/android/gms/ads/internal/client/zzx;

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzazy:Lcom/google/android/gms/ads/internal/client/zzx;

    monitor-exit v1

    return-object v0

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method


# virtual methods
.method public zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;)Lcom/google/android/gms/ads/internal/client/zzu;
    .registers 6

    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzl$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/ads/internal/client/zzl$2;-><init>(Lcom/google/android/gms/ads/internal/client/zzl;Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/ads/internal/client/zzl;->zza(Landroid/content/Context;ZLcom/google/android/gms/ads/internal/client/zzl$zza;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/client/zzu;

    return-object v0
.end method

.method public zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzgz;)Lcom/google/android/gms/ads/internal/client/zzu;
    .registers 12

    const/4 v6, 0x0

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzl$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/client/zzl$1;-><init>(Lcom/google/android/gms/ads/internal/client/zzl;Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzgz;)V

    invoke-virtual {p0, p1, v6, v0}, Lcom/google/android/gms/ads/internal/client/zzl;->zza(Landroid/content/Context;ZLcom/google/android/gms/ads/internal/client/zzl$zza;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/client/zzu;

    return-object v0
.end method

.method public zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzgz;)Lcom/google/android/gms/ads/internal/reward/client/zzb;
    .registers 5

    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzl$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/ads/internal/client/zzl$7;-><init>(Lcom/google/android/gms/ads/internal/client/zzl;Landroid/content/Context;Lcom/google/android/gms/internal/zzgz;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/ads/internal/client/zzl;->zza(Landroid/content/Context;ZLcom/google/android/gms/ads/internal/client/zzl$zza;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/reward/client/zzb;

    return-object v0
.end method

.method public zza(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/zzei;
    .registers 6

    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzl$6;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/google/android/gms/ads/internal/client/zzl$6;-><init>(Lcom/google/android/gms/ads/internal/client/zzl;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/content/Context;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/ads/internal/client/zzl;->zza(Landroid/content/Context;ZLcom/google/android/gms/ads/internal/client/zzl$zza;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzei;

    return-object v0
.end method

.method zza(Landroid/content/Context;ZLcom/google/android/gms/ads/internal/client/zzl$zza;)Ljava/lang/Object;
    .registers 5
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Z",
            "Lcom/google/android/gms/ads/internal/client/zzl$zza",
            "<TT;>;)TT;"
        }
    .end annotation

    if-nez p2, :cond_12

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zzkr()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzap(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "Google Play Services is not available"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzdg(Ljava/lang/String;)V

    const/4 p2, 0x1

    :cond_12
    if-eqz p2, :cond_1f

    invoke-virtual {p3}, Lcom/google/android/gms/ads/internal/client/zzl$zza;->zzko()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1e

    invoke-virtual {p3}, Lcom/google/android/gms/ads/internal/client/zzl$zza;->zzkp()Ljava/lang/Object;

    move-result-object v0

    :cond_1e
    :goto_1e
    return-object v0

    :cond_1f
    invoke-virtual {p3}, Lcom/google/android/gms/ads/internal/client/zzl$zza;->zzkp()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1e

    invoke-virtual {p3}, Lcom/google/android/gms/ads/internal/client/zzl$zza;->zzko()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1e
.end method

.method public zzb(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzgz;)Lcom/google/android/gms/ads/internal/client/zzs;
    .registers 6

    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzl$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/ads/internal/client/zzl$4;-><init>(Lcom/google/android/gms/ads/internal/client/zzl;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzgz;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/ads/internal/client/zzl;->zza(Landroid/content/Context;ZLcom/google/android/gms/ads/internal/client/zzl$zza;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/client/zzs;

    return-object v0
.end method

.method public zzb(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzgz;)Lcom/google/android/gms/ads/internal/client/zzu;
    .registers 12

    const/4 v6, 0x0

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzl$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/client/zzl$3;-><init>(Lcom/google/android/gms/ads/internal/client/zzl;Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzgz;)V

    invoke-virtual {p0, p1, v6, v0}, Lcom/google/android/gms/ads/internal/client/zzl;->zza(Landroid/content/Context;ZLcom/google/android/gms/ads/internal/client/zzl$zza;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/client/zzu;

    return-object v0
.end method

.method public zzb(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzih;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string v0, "com.google.android.gms.ads.internal.purchase.useClientJar"

    invoke-static {p1, v0}, Lcom/google/android/gms/ads/internal/client/zzl;->zza(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzl$8;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/client/zzl$8;-><init>(Lcom/google/android/gms/ads/internal/client/zzl;Landroid/app/Activity;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/ads/internal/client/zzl;->zza(Landroid/content/Context;ZLcom/google/android/gms/ads/internal/client/zzl$zza;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzih;

    return-object v0
.end method

.method public zzc(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzhy;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string v0, "com.google.android.gms.ads.internal.overlay.useClientJar"

    invoke-static {p1, v0}, Lcom/google/android/gms/ads/internal/client/zzl;->zza(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzl$9;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/client/zzl$9;-><init>(Lcom/google/android/gms/ads/internal/client/zzl;Landroid/app/Activity;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/ads/internal/client/zzl;->zza(Landroid/content/Context;ZLcom/google/android/gms/ads/internal/client/zzl$zza;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzhy;

    return-object v0
.end method

.method public zzk(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/client/zzz;
    .registers 4

    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzl$5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/client/zzl$5;-><init>(Lcom/google/android/gms/ads/internal/client/zzl;Landroid/content/Context;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/ads/internal/client/zzl;->zza(Landroid/content/Context;ZLcom/google/android/gms/ads/internal/client/zzl$zza;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/client/zzz;

    return-object v0
.end method
