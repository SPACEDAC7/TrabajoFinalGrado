.class public Lcom/google/android/gms/ads/internal/overlay/zzn;
.super Lcom/google/android/gms/ads/internal/overlay/zzj;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzj;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzmd;IZLcom/google/android/gms/internal/zzdz;)Lcom/google/android/gms/ads/internal/overlay/zzi;
    .registers 14
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzn;->zzp(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-instance v6, Lcom/google/android/gms/ads/internal/overlay/zzc;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/ads/internal/overlay/zzn;->zzh(Lcom/google/android/gms/internal/zzmd;)Z

    move-result v7

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzy;

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzmd;->zzxf()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v2

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzmd;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzmd;->zzxl()Lcom/google/android/gms/internal/zzdx;

    move-result-object v5

    move-object v1, p1

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/overlay/zzy;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzdz;Lcom/google/android/gms/internal/zzdx;)V

    invoke-direct {v6, p1, p4, v7, v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Landroid/content/Context;ZZLcom/google/android/gms/ads/internal/overlay/zzy;)V

    move-object v0, v6

    goto :goto_7
.end method
