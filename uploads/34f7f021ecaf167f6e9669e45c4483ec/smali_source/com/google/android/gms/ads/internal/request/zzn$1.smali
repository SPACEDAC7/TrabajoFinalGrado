.class Lcom/google/android/gms/ads/internal/request/zzn$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/request/zzn;->zzfp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzamk:Lcom/google/android/gms/internal/zzko$zza;

.field final synthetic zzcmq:Lcom/google/android/gms/ads/internal/request/zzn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/request/zzn;Lcom/google/android/gms/internal/zzko$zza;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzn$1;->zzcmq:Lcom/google/android/gms/ads/internal/request/zzn;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/zzn$1;->zzamk:Lcom/google/android/gms/internal/zzko$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzn$1;->zzcmq:Lcom/google/android/gms/ads/internal/request/zzn;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/request/zzn;->zza(Lcom/google/android/gms/ads/internal/request/zzn;)Lcom/google/android/gms/ads/internal/request/zza$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzn$1;->zzamk:Lcom/google/android/gms/internal/zzko$zza;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/request/zza$zza;->zza(Lcom/google/android/gms/internal/zzko$zza;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzn$1;->zzcmq:Lcom/google/android/gms/ads/internal/request/zzn;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/request/zzn;->zzb(Lcom/google/android/gms/ads/internal/request/zzn;)Lcom/google/android/gms/internal/zzgh$zzc;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzn$1;->zzcmq:Lcom/google/android/gms/ads/internal/request/zzn;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/request/zzn;->zzb(Lcom/google/android/gms/ads/internal/request/zzn;)Lcom/google/android/gms/internal/zzgh$zzc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgh$zzc;->release()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzn$1;->zzcmq:Lcom/google/android/gms/ads/internal/request/zzn;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/request/zzn;->zza(Lcom/google/android/gms/ads/internal/request/zzn;Lcom/google/android/gms/internal/zzgh$zzc;)Lcom/google/android/gms/internal/zzgh$zzc;

    :cond_22
    return-void
.end method
