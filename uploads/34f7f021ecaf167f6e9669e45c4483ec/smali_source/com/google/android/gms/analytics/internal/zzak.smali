.class public final Lcom/google/android/gms/analytics/internal/zzak;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/analytics/internal/zzak$zza;
    }
.end annotation


# static fields
.field private static az:Ljava/lang/Boolean;


# instance fields
.field private final fL:Lcom/google/android/gms/analytics/internal/zzak$zza;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/analytics/internal/zzak$zza;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/google/android/gms/analytics/internal/zzak$zza;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzak;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzak;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/zzak;->fL:Lcom/google/android/gms/analytics/internal/zzak$zza;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzak;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/analytics/internal/zzak;)Lcom/google/android/gms/analytics/internal/zzak$zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzak;->fL:Lcom/google/android/gms/analytics/internal/zzak$zza;

    return-object v0
.end method

.method public static zzau(Landroid/content/Context;)Z
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzak;->az:Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzak;->az:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_d
    return v0

    :cond_e
    const-string v0, "com.google.android.gms.analytics.AnalyticsService"

    invoke-static {p0, v0}, Lcom/google/android/gms/analytics/internal/zzao;->zzr(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/analytics/internal/zzak;->az:Ljava/lang/Boolean;

    goto :goto_d
.end method

.method static synthetic zzb(Lcom/google/android/gms/analytics/internal/zzak;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzak;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private zzyz()V
    .registers 4

    :try_start_0
    sget-object v1, Lcom/google/android/gms/analytics/internal/zzaj;->zzaox:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_15

    :try_start_3
    sget-object v0, Lcom/google/android/gms/analytics/internal/zzaj;->ax:Lcom/google/android/gms/internal/zzxr;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzxr;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzxr;->release()V

    :cond_10
    monitor-exit v1

    :goto_11
    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    :try_start_14
    throw v0
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_15} :catch_15

    :catch_15
    move-exception v0

    goto :goto_11
.end method


# virtual methods
.method public onCreate()V
    .registers 3
    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.INTERNET",
            "android.permission.ACCESS_NETWORK_STATE"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzak;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzaw(Landroid/content/Context;)Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzaca()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    const-string v0, "Local AnalyticsService is starting up"

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/internal/zzaf;->zzes(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .registers 3
    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.INTERNET",
            "android.permission.ACCESS_NETWORK_STATE"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzak;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzaw(Landroid/content/Context;)Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzaca()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    const-string v0, "Local AnalyticsService is shutting down"

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/internal/zzaf;->zzes(Ljava/lang/String;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 10
    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.INTERNET",
            "android.permission.ACCESS_NETWORK_STATE"
        }
    .end annotation

    const/4 v5, 0x2

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzak;->zzyz()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzak;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzaw(Landroid/content/Context;)Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzaca()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v1

    if-nez p1, :cond_16

    const-string v0, "AnalyticsService started with null intent"

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/internal/zzaf;->zzev(Ljava/lang/String;)V

    :cond_15
    :goto_15
    return v5

    :cond_16
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    const-string v3, "Local AnalyticsService called. startId, action"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v2}, Lcom/google/android/gms/analytics/internal/zzaf;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzzg()Lcom/google/android/gms/analytics/internal/zzb;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/analytics/internal/zzak$1;

    invoke-direct {v3, p0, p3, v0, v1}, Lcom/google/android/gms/analytics/internal/zzak$1;-><init>(Lcom/google/android/gms/analytics/internal/zzak;ILcom/google/android/gms/analytics/internal/zzf;Lcom/google/android/gms/analytics/internal/zzaf;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/internal/zzb;->zza(Lcom/google/android/gms/analytics/internal/zzw;)V

    goto :goto_15
.end method
