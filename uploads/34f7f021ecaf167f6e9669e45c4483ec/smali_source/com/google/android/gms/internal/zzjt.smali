.class public abstract Lcom/google/android/gms/internal/zzjt;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzjn;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
.end method

.method protected zze(Lcom/google/android/gms/internal/zzjn;)V
    .registers 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzjn;->zztl()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzjn;->zztj()Lcom/google/android/gms/internal/zzgh$zzc;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzjn;->zztj()Lcom/google/android/gms/internal/zzgh$zzc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgh$zzc;->release()V

    :cond_10
    return-void
.end method
