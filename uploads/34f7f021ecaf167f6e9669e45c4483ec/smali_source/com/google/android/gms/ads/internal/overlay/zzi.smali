.class public abstract Lcom/google/android/gms/ads/internal/overlay/zzi;
.super Landroid/view/TextureView;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzaa$zza;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field protected final zzcbw:Lcom/google/android/gms/ads/internal/overlay/zzv;

.field protected final zzcbx:Lcom/google/android/gms/ads/internal/overlay/zzaa;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzv;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/overlay/zzv;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzi;->zzcbw:Lcom/google/android/gms/ads/internal/overlay/zzv;

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzaa;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzaa;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzaa$zza;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzi;->zzcbx:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    return-void
.end method


# virtual methods
.method public abstract getCurrentPosition()I
.end method

.method public abstract getDuration()I
.end method

.method public abstract getVideoHeight()I
.end method

.method public abstract getVideoWidth()I
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract seekTo(I)V
.end method

.method public abstract setVideoPath(Ljava/lang/String;)V
.end method

.method public abstract stop()V
.end method

.method public abstract zza(FF)V
.end method

.method public abstract zza(Lcom/google/android/gms/ads/internal/overlay/zzh;)V
.end method

.method public zzb(F)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzi;->zzcbx:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzaa;->zzb(F)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzi;->zzpk()V

    return-void
.end method

.method public abstract zzpg()Ljava/lang/String;
.end method

.method public abstract zzpk()V
.end method

.method public zzqh()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzi;->zzcbx:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzaa;->setMuted(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzi;->zzpk()V

    return-void
.end method

.method public zzqi()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzi;->zzcbx:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzaa;->setMuted(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzi;->zzpk()V

    return-void
.end method
