.class public Lcom/google/android/gms/internal/zzev;
.super Lcom/google/android/gms/internal/zzeq$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private final zzbpe:Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeq$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzev;->zzbpe:Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzek;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzev;->zzbpe:Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzev;->zzb(Lcom/google/android/gms/internal/zzek;)Lcom/google/android/gms/internal/zzel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;->onAppInstallAdLoaded(Lcom/google/android/gms/ads/formats/NativeAppInstallAd;)V

    return-void
.end method

.method zzb(Lcom/google/android/gms/internal/zzek;)Lcom/google/android/gms/internal/zzel;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/zzel;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzel;-><init>(Lcom/google/android/gms/internal/zzek;)V

    return-object v0
.end method
