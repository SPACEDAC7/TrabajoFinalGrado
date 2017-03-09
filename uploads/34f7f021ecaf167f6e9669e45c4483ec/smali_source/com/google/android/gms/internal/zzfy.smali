.class Lcom/google/android/gms/internal/zzfy;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzfy$zza;
    }
.end annotation


# instance fields
.field zzanl:Lcom/google/android/gms/ads/internal/client/zzq;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzbsf:Lcom/google/android/gms/ads/internal/client/zzw;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzbsg:Lcom/google/android/gms/internal/zzig;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzbsh:Lcom/google/android/gms/internal/zzed;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzbsi:Lcom/google/android/gms/ads/internal/client/zzp;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzbsj:Lcom/google/android/gms/ads/internal/reward/client/zzd;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method zzc(Lcom/google/android/gms/ads/internal/zzl;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfy;->zzanl:Lcom/google/android/gms/ads/internal/client/zzq;

    if-eqz v0, :cond_e

    new-instance v0, Lcom/google/android/gms/internal/zzfy$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfy;->zzanl:Lcom/google/android/gms/ads/internal/client/zzq;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzfy$zza;-><init>(Lcom/google/android/gms/ads/internal/client/zzq;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/ads/internal/client/zzq;)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfy;->zzbsf:Lcom/google/android/gms/ads/internal/client/zzw;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfy;->zzbsf:Lcom/google/android/gms/ads/internal/client/zzw;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/ads/internal/client/zzw;)V

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfy;->zzbsg:Lcom/google/android/gms/internal/zzig;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfy;->zzbsg:Lcom/google/android/gms/internal/zzig;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/internal/zzig;)V

    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfy;->zzbsh:Lcom/google/android/gms/internal/zzed;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfy;->zzbsh:Lcom/google/android/gms/internal/zzed;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/internal/zzed;)V

    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfy;->zzbsi:Lcom/google/android/gms/ads/internal/client/zzp;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfy;->zzbsi:Lcom/google/android/gms/ads/internal/client/zzp;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/ads/internal/client/zzp;)V

    :cond_32
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfy;->zzbsj:Lcom/google/android/gms/ads/internal/reward/client/zzd;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfy;->zzbsj:Lcom/google/android/gms/ads/internal/reward/client/zzd;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/ads/internal/reward/client/zzd;)V

    :cond_3b
    return-void
.end method
