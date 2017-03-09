.class Lcom/google/android/gms/ads/internal/request/zzb$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/request/zzb;->zzfp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcjk:Lcom/google/android/gms/ads/internal/request/zzb;

.field final synthetic zzcjl:Lcom/google/android/gms/internal/zzlw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/request/zzb;Lcom/google/android/gms/internal/zzlw;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzb$2;->zzcjk:Lcom/google/android/gms/ads/internal/request/zzb;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/zzb$2;->zzcjl:Lcom/google/android/gms/internal/zzlw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb$2;->zzcjk:Lcom/google/android/gms/ads/internal/request/zzb;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/request/zzb;->zza(Lcom/google/android/gms/ads/internal/request/zzb;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb$2;->zzcjk:Lcom/google/android/gms/ads/internal/request/zzb;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzb$2;->zzcjk:Lcom/google/android/gms/ads/internal/request/zzb;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/request/zzb$2;->zzcjk:Lcom/google/android/gms/ads/internal/request/zzb;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/request/zzb;->zzb(Lcom/google/android/gms/ads/internal/request/zzb;)Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzari:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/request/zzb$2;->zzcjl:Lcom/google/android/gms/internal/zzlw;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/ads/internal/request/zzb;->zza(Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzlw;)Lcom/google/android/gms/internal/zzld;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/request/zzb;->zzcjj:Lcom/google/android/gms/internal/zzld;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb$2;->zzcjk:Lcom/google/android/gms/ads/internal/request/zzb;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/zzb;->zzcjj:Lcom/google/android/gms/internal/zzld;

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb$2;->zzcjk:Lcom/google/android/gms/ads/internal/request/zzb;

    const/4 v2, 0x0

    const-string v3, "Could not start the ad request service."

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/ads/internal/request/zzb;->zza(Lcom/google/android/gms/ads/internal/request/zzb;ILjava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/zzlb;->zzcvl:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzb$2;->zzcjk:Lcom/google/android/gms/ads/internal/request/zzb;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/request/zzb;->zzc(Lcom/google/android/gms/ads/internal/request/zzb;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_34
    monitor-exit v1

    return-void

    :catchall_36
    move-exception v0

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_36

    throw v0
.end method
