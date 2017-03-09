.class public final Lcom/google/android/gms/ads/Correlator;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private zzakl:Lcom/google/android/gms/ads/internal/client/zzn;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzn;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzn;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/Correlator;->zzakl:Lcom/google/android/gms/ads/internal/client/zzn;

    return-void
.end method


# virtual methods
.method public reset()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/Correlator;->zzakl:Lcom/google/android/gms/ads/internal/client/zzn;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzn;->zzkt()V

    return-void
.end method

.method public zzdu()Lcom/google/android/gms/ads/internal/client/zzn;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/Correlator;->zzakl:Lcom/google/android/gms/ads/internal/client/zzn;

    return-object v0
.end method
