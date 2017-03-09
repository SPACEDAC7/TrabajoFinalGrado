.class public final Lcom/google/android/gms/internal/zzee;
.super Lcom/google/android/gms/internal/zzed$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private final zzbbh:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzed$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzee;->zzbbh:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzec;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzee;->zzbbh:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    new-instance v1, Lcom/google/android/gms/internal/zzeb;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzeb;-><init>(Lcom/google/android/gms/internal/zzec;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;->onCustomRenderedAdLoaded(Lcom/google/android/gms/ads/doubleclick/CustomRenderedAd;)V

    return-void
.end method
