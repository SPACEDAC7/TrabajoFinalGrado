.class public Lcom/google/android/gms/ads/AdLoader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/AdLoader$Builder;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzakc:Lcom/google/android/gms/ads/internal/client/zzh;

.field private final zzakd:Lcom/google/android/gms/ads/internal/client/zzr;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzr;)V
    .registers 4

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzh;->zzkb()Lcom/google/android/gms/ads/internal/client/zzh;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/ads/AdLoader;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/ads/internal/client/zzh;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/ads/internal/client/zzh;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/AdLoader;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/AdLoader;->zzakd:Lcom/google/android/gms/ads/internal/client/zzr;

    iput-object p3, p0, Lcom/google/android/gms/ads/AdLoader;->zzakc:Lcom/google/android/gms/ads/internal/client/zzh;

    return-void
.end method

.method private zza(Lcom/google/android/gms/ads/internal/client/zzad;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader;->zzakd:Lcom/google/android/gms/ads/internal/client/zzr;

    iget-object v1, p0, Lcom/google/android/gms/ads/AdLoader;->zzakc:Lcom/google/android/gms/ads/internal/client/zzh;

    iget-object v2, p0, Lcom/google/android/gms/ads/AdLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/ads/internal/client/zzh;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzad;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzr;->zzf(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    const-string v1, "Failed to load ad."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method


# virtual methods
.method public getMediationAdapterClassName()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader;->zzakd:Lcom/google/android/gms/ads/internal/client/zzr;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzr;->getMediationAdapterClassName()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "Failed to get the mediation adapter class name."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isLoading()Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader;->zzakd:Lcom/google/android/gms/ads/internal/client/zzr;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzr;->isLoading()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    :goto_6
    return v0

    :catch_7
    move-exception v0

    const-string v1, "Failed to check if ad is loading."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    .registers 3
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest;->zzdt()Lcom/google/android/gms/ads/internal/client/zzad;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/AdLoader;->zza(Lcom/google/android/gms/ads/internal/client/zzad;)V

    return-void
.end method

.method public loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V
    .registers 3

    invoke-virtual {p1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zzdt()Lcom/google/android/gms/ads/internal/client/zzad;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/AdLoader;->zza(Lcom/google/android/gms/ads/internal/client/zzad;)V

    return-void
.end method
