.class public Lcom/google/android/gms/internal/zzkg;
.super Lcom/google/android/gms/ads/internal/reward/mediation/client/zza$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private volatile zzcrf:Lcom/google/android/gms/internal/zzkh;

.field private volatile zzcrr:Lcom/google/android/gms/internal/zzke;

.field private volatile zzcrs:Lcom/google/android/gms/internal/zzkf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzkf;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/reward/mediation/client/zza$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkg;->zzcrs:Lcom/google/android/gms/internal/zzkf;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkg;->zzcrs:Lcom/google/android/gms/internal/zzkf;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkg;->zzcrs:Lcom/google/android/gms/internal/zzkf;

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/zzkf;->zzc(Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;)V

    :cond_9
    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzke;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkg;->zzcrr:Lcom/google/android/gms/internal/zzke;

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzkh;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkg;->zzcrf:Lcom/google/android/gms/internal/zzkh;

    return-void
.end method

.method public zzb(Lcom/google/android/gms/dynamic/zzd;I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkg;->zzcrr:Lcom/google/android/gms/internal/zzke;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkg;->zzcrr:Lcom/google/android/gms/internal/zzke;

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/zzke;->zzbb(I)V

    :cond_9
    return-void
.end method

.method public zzc(Lcom/google/android/gms/dynamic/zzd;I)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkg;->zzcrf:Lcom/google/android/gms/internal/zzkh;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkg;->zzcrf:Lcom/google/android/gms/internal/zzkh;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzae(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/zzkh;->zza(Ljava/lang/String;I)V

    :cond_15
    return-void
.end method

.method public zzq(Lcom/google/android/gms/dynamic/zzd;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkg;->zzcrr:Lcom/google/android/gms/internal/zzke;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkg;->zzcrr:Lcom/google/android/gms/internal/zzke;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzke;->zzty()V

    :cond_9
    return-void
.end method

.method public zzr(Lcom/google/android/gms/dynamic/zzd;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkg;->zzcrf:Lcom/google/android/gms/internal/zzkh;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkg;->zzcrf:Lcom/google/android/gms/internal/zzkh;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzae(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzkh;->zzcq(Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public zzs(Lcom/google/android/gms/dynamic/zzd;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkg;->zzcrs:Lcom/google/android/gms/internal/zzkf;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkg;->zzcrs:Lcom/google/android/gms/internal/zzkf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzkf;->onRewardedVideoAdOpened()V

    :cond_9
    return-void
.end method

.method public zzt(Lcom/google/android/gms/dynamic/zzd;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkg;->zzcrs:Lcom/google/android/gms/internal/zzkf;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkg;->zzcrs:Lcom/google/android/gms/internal/zzkf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzkf;->onRewardedVideoStarted()V

    :cond_9
    return-void
.end method

.method public zzu(Lcom/google/android/gms/dynamic/zzd;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkg;->zzcrs:Lcom/google/android/gms/internal/zzkf;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkg;->zzcrs:Lcom/google/android/gms/internal/zzkf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzkf;->onRewardedVideoAdClosed()V

    :cond_9
    return-void
.end method

.method public zzv(Lcom/google/android/gms/dynamic/zzd;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkg;->zzcrs:Lcom/google/android/gms/internal/zzkf;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkg;->zzcrs:Lcom/google/android/gms/internal/zzkf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzkf;->zztv()V

    :cond_9
    return-void
.end method

.method public zzw(Lcom/google/android/gms/dynamic/zzd;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkg;->zzcrs:Lcom/google/android/gms/internal/zzkf;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkg;->zzcrs:Lcom/google/android/gms/internal/zzkf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzkf;->onRewardedVideoAdLeftApplication()V

    :cond_9
    return-void
.end method
