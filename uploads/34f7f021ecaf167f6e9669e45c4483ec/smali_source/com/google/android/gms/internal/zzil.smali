.class public final Lcom/google/android/gms/internal/zzil;
.super Lcom/google/android/gms/internal/zzig$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private final zzbbg:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzig$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzil;->zzbbg:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzif;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzil;->zzbbg:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    new-instance v1, Lcom/google/android/gms/internal/zzio;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzio;-><init>(Lcom/google/android/gms/internal/zzif;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;->onInAppPurchaseRequested(Lcom/google/android/gms/ads/purchase/InAppPurchase;)V

    return-void
.end method
