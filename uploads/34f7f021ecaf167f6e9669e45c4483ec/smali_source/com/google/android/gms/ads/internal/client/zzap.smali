.class public final Lcom/google/android/gms/ads/internal/client/zzap;
.super Lcom/google/android/gms/ads/internal/client/zzac$zza;


# instance fields
.field private final zzakq:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzac$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzap;->zzakq:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    return-void
.end method


# virtual methods
.method public onVideoEnd()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzap;->zzakq:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;->onVideoEnd()V

    return-void
.end method

.method public zzkw()V
    .registers 1

    return-void
.end method

.method public zzkx()V
    .registers 1

    return-void
.end method

.method public zzky()V
    .registers 1

    return-void
.end method
