.class Lcom/google/android/gms/ads/internal/client/zzak$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/client/zzak;->zzb(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbbu:Lcom/google/android/gms/ads/internal/client/zzak;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/client/zzak;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzak$1;->zzbbu:Lcom/google/android/gms/ads/internal/client/zzak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzak$1;->zzbbu:Lcom/google/android/gms/ads/internal/client/zzak;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzak;->zza(Lcom/google/android/gms/ads/internal/client/zzak;)Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v0

    if-eqz v0, :cond_12

    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzak$1;->zzbbu:Lcom/google/android/gms/ads/internal/client/zzak;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzak;->zza(Lcom/google/android/gms/ads/internal/client/zzak;)Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzq;->onAdFailedToLoad(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    :cond_12
    :goto_12
    return-void

    :catch_13
    move-exception v0

    const-string v1, "Could not notify onAdFailedToLoad event."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12
.end method
