.class Lcom/google/android/gms/ads/internal/cache/zza$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/zze$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/cache/zza;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzayb:Lcom/google/android/gms/ads/internal/cache/zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/cache/zza;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/cache/zza$4;->zzayb:Lcom/google/android/gms/ads/internal/cache/zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 5
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/cache/zza$4;->zzayb:Lcom/google/android/gms/ads/internal/cache/zza;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/cache/zza;->zzc(Lcom/google/android/gms/ads/internal/cache/zza;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/cache/zza$4;->zzayb:Lcom/google/android/gms/ads/internal/cache/zza;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/ads/internal/cache/zza;->zza(Lcom/google/android/gms/ads/internal/cache/zza;Lcom/google/android/gms/ads/internal/cache/zzc;)Lcom/google/android/gms/ads/internal/cache/zzc;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/cache/zza$4;->zzayb:Lcom/google/android/gms/ads/internal/cache/zza;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/ads/internal/cache/zza;->zza(Lcom/google/android/gms/ads/internal/cache/zza;Lcom/google/android/gms/ads/internal/cache/zzf;)Lcom/google/android/gms/ads/internal/cache/zzf;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/cache/zza$4;->zzayb:Lcom/google/android/gms/ads/internal/cache/zza;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/cache/zza;->zzc(Lcom/google/android/gms/ads/internal/cache/zza;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzhc()Lcom/google/android/gms/internal/zzlj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlj;->zzwk()V

    monitor-exit v1

    return-void

    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_25

    throw v0
.end method
